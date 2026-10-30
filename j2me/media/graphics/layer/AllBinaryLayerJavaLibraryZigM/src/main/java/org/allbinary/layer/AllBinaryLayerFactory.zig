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
// package org.allbinary.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const ViewPosition = @import("org/allbinary/view/ViewPosition.zig").ViewPosition;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerFactoryInterface = @import("org/allbinary/layer/AllBinaryLayerFactoryInterface.zig").AllBinaryLayerFactoryInterface;

pub const AllBinaryLayerFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.layer.AllBinaryLayerFactory";
    pub const java_interfaces = .{ AllBinaryLayerFactoryInterface };
    rectangle: ?*Rectangle = null,
    // Implements AllBinaryLayerFactoryInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(rectangle: ?*Rectangle) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.rectangle = rectangle;
        return this;
    }
    

    pub fn getInstance(self: *Self) ?*AllBinaryLayer {
        return Inheritance.callStatic(AllBinaryLayer, "create3", .{ StringUtil.getInstance().?.EMPTY_STRING, self.rectangle, ViewPosition.getInstanceD() });
    }
};

