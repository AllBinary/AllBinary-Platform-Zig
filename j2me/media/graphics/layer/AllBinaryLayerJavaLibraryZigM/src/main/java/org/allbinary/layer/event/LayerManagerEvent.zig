//
// AllBinary Open License Version 1
// Copyright (c) 2011 AllBinary
// 
// By agreeing to this license you and any business entity you represent are
// legally bound to the AllBinary Open License Version 1 legal agreement.
// 
// You may obtain the AllBinary Open License Version 1 legal agreement from
// AllBinary or the root directory of AllBinary's AllBinary Platform repository.
// 
// Created By: Travis Berthelot
//  
// Generated Code Do Not Modify
// package org.allbinary.layer.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const LayerManager = @import("org/allbinary/layer/LayerManager.zig").LayerManager;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;

pub const LayerManagerEvent = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.layer.event.LayerManagerEvent";
    base: AllBinaryEventObject = undefined,
    layerInterface: ?*AllBinaryLayer = null,
    crud: ?*String = null,

    fn initFields(this: *Self) void {
        this.layerInterface = Inheritance.upcast(?*AllBinaryLayer, AllBinaryLayer.NULL_ALLBINARY_LAYER);
        
    }
    

    pub fn create2(layerManager: ?*LayerManager, crud: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryEventObject, "create1", .{ layerManager }).*;
        this.initFields();
        this.crud = crud;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getLayerInterface(self: *Self) ?*AllBinaryLayer {
        return self.layerInterface;
    }
    

    pub fn setLayerInterface(self: *Self, layerInterface: ?*AllBinaryLayer) void {
        self.layerInterface = layerInterface;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("LayerManagerEvent: \n") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("LayerInterface: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.getLayerInterface())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nCRUD: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.crud.?.toString() });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

