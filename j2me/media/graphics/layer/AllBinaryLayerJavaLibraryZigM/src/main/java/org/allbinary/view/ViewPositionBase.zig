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
// package org.allbinary.view

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;

pub const ViewPositionBase = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.view.ViewPositionBase";
    base: GPoint = undefined,
    pub var NULL_VIEW_POSITION: ?*ViewPositionBase = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_VIEW_POSITION = Inheritance.callStatic(ViewPositionBase, "create3", .{ 0, 0, 0 });
    }
    

    pub fn create3(x: i32, y: i32, z: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(GPoint, "create3", .{ x, y, z }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getX2(self: *Self) i32 {
        return Inheritance.receiver(self, "getX").getX();
    }
    

    pub fn getY2(self: *Self) i32 {
        return Inheritance.receiver(self, "getY").getY();
    }
    

    pub fn getZ2(self: *Self) i32 {
        return Inheritance.receiver(self, "getZ").getZ();
    }
    

    pub fn setAllbinaryLayer(self: *Self, allbinaryLayer: ?Object) void {
        _ = allbinaryLayer;
        _ = self;
    }
};

