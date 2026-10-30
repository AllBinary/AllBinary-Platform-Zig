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
// package org.allbinary.graphics

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;

pub const CustomGPoint = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.CustomGPoint";
    base: GPoint = undefined,
    cx: i32 = 0,
    cy: i32 = 0,
    cz: i32 = 0,
    pub var NULL_CUSTOM_POINT: ?*CustomGPoint = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_CUSTOM_POINT = Inheritance.callStatic(CustomGPoint, "create3", .{ 0, 0, 0 });
    }

    fn initFields(this: *Self) void {
        this.cx = 0;
        this.cy = 0;
        this.cz = 0;
    }
    

    pub fn getInstance(point: ?*GPoint) ?*CustomGPoint {
        return Inheritance.callStatic(CustomGPoint, "create3", .{ point.?.getX(), point.?.getY(), point.?.getZ() });
    }
    

    pub fn getInstance3(x: i32, y: i32) ?*CustomGPoint {
        return Inheritance.callStatic(CustomGPoint, "create3", .{ x, y, 3 });
    }
    

    pub fn create3(x: i32, y: i32, z: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(GPoint, "create3", .{ x, y, z }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setX(self: *Self, x: i32) void {
        self.cx = x;
    }
    

    pub fn getX(self: *Self) i32 {
        return self.cx;
    }
    

    pub fn setY(self: *Self, y: i32) void {
        self.cy = y;
    }
    

    pub fn getY(self: *Self) i32 {
        return self.cy;
    }
    

    pub fn setZ(self: *Self, z: i32) void {
        self.cz = z;
    }
    

    pub fn getZ(self: *Self) i32 {
        return self.cz;
    }
};

