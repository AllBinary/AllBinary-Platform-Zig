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
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const AngleIncrementInfo = @import("org/allbinary/math/AngleIncrementInfo.zig").AngleIncrementInfo;

pub const AngleIncrementInfoFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.math.AngleIncrementInfoFactory";
    angleIncrementInfo: []?*AngleIncrementInfo = &.{},
    var instance: ?*AngleIncrementInfoFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AngleIncrementInfoFactory.create();
    }

    fn initFields(this: *Self) void {
        this.angleIncrementInfo = array_N65698: { const array_N65698_array = allocator.alloc(?*AngleIncrementInfo, @intCast(@as(i32, @intCast(AngleFactory.getInstance().?.TOTAL_ANGLE)))) catch unreachable; @memset(array_N65698_array, null); break :array_N65698 array_N65698_array; };
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*AngleIncrementInfoFactory {
        return Inheritance.upcast(?*AngleIncrementInfoFactory, AngleIncrementInfoFactory.instance);
    }
    

    pub fn getAt(self: *Self, angleIncrement: i16) ?*AngleIncrementInfo {
        const halfAngleIncrement: i32 = (@as(i32, @intCast(angleIncrement)) >> @intCast(1));
        var angleIncrementInfo: ?*AngleIncrementInfo = null;
        const angleIncrementInfoCanBeNull: ?*AngleIncrementInfo = Inheritance.upcast(?*AngleIncrementInfo, self.angleIncrementInfo[@intCast(halfAngleIncrement)]);
        if (angleIncrementInfoCanBeNull == null) {
            angleIncrementInfo = Inheritance.upcast(@TypeOf(angleIncrementInfo), Inheritance.callStatic(AngleIncrementInfo, "create1", .{ angleIncrement }));
            self.angleIncrementInfo[@intCast(halfAngleIncrement)] = Inheritance.upcast(@TypeOf(self.angleIncrementInfo[@intCast(halfAngleIncrement)]), angleIncrementInfo);
            return Inheritance.upcast(?*AngleIncrementInfo, angleIncrementInfo);
        } else {
            angleIncrementInfo = Inheritance.upcast(@TypeOf(angleIncrementInfo), angleIncrementInfoCanBeNull);
        }
        return Inheritance.upcast(?*AngleIncrementInfo, angleIncrementInfo);
    }
};

