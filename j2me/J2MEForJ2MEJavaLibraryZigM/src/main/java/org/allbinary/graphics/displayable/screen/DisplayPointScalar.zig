// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.graphics.displayable.screen

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;

pub const DisplayPointScalar = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.displayable.screen.DisplayPointScalar";
    var instance: ?*DisplayPointScalar = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = DisplayPointScalar.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*DisplayPointScalar {
        return Inheritance.upcast(?*DisplayPointScalar, DisplayPointScalar.instance);
    }
    

    pub fn processX(self: *Self, value: i32) i32 {
        _ = self;
        return value;
    }
    

    pub fn processY(self: *Self, value: i32) i32 {
        _ = self;
        return value;
    }
    

    pub fn process(self: *Self, point: ?*GPoint) ?*GPoint {
        _ = self;
        return point;
    }
};

