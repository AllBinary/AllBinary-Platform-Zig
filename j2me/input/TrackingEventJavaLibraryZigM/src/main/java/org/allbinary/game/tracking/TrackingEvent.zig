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
// package org.allbinary.game.tracking

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const TrackingEventHandler = @import("org/allbinary/game/tracking/TrackingEventHandler.zig").TrackingEventHandler;

pub const TrackingEvent = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.tracking.TrackingEvent";
    base: AllBinaryEventObject = undefined,
    layerInterface: ?*AllBinaryLayer = null,

    fn initFields(this: *Self) void {
        this.layerInterface = Inheritance.upcast(?*AllBinaryLayer, AllBinaryLayer.NULL_ALLBINARY_LAYER);
    }
    

    pub fn create1(allBinaryLayerInterface: ?Object) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryEventObject, "create1", .{ allBinaryLayerInterface }).*;
        this.initFields();
        if (!Object.same(allBinaryLayerInterface, TrackingEventHandler.getInstance())) {
            _ = Inheritance.call(this, "setLayerInterface", .{ Inheritance.cast(?*AllBinaryLayer, allBinaryLayerInterface) });
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self, anyType: ?Object) void {
        _ = Inheritance.call(self, "setSource", .{ anyType });
    }
    

    pub fn getLayerInterface(self: *Self) ?*AllBinaryLayer {
        return self.layerInterface;
    }
    

    pub fn setLayerInterface(self: *Self, layerInterface: ?*AllBinaryLayer) void {
        self.layerInterface = layerInterface;
    }
    

    pub fn setLayerInterfaceForCircularStaticPool(self: *Self, layerInterface: ?*AllBinaryLayer) void {
        self.layerInterface = layerInterface;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("TrackingEvent: \n") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("LayerInterface: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.layerInterface)) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

