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
// package org.allbinary.math

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const MathUtil = @import("org/allbinary/logic/math/MathUtil.zig").MathUtil;

pub const DistanceUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.math.DistanceUtil";
    mathUtil: ?*MathUtil = null,
    var instance: ?*DistanceUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = DistanceUtil.create();
    }

    fn initFields(this: *Self) void {
        this.mathUtil = Inheritance.upcast(?*MathUtil, MathUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*DistanceUtil {
        return Inheritance.upcast(?*DistanceUtil, DistanceUtil.instance);
    }
    

    pub fn getDistance(self: *Self, x1: i32, y1: i32, x2: i32, y2: i32) i32 {
        const dx: i32 = x1 - x2;
        const dy: i32 = y1 - y2;
        return @as(i32, @intCast(Inheritance.call(self.mathUtil.?, "sqrt", .{ (dx * dx) + (dy * dy) })));
    }
};

