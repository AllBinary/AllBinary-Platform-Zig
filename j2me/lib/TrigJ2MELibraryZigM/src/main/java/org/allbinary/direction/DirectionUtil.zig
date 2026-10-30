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
// package org.allbinary.direction

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Angle = @import("org/allbinary/math/Angle.zig").Angle;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const Direction = @import("org/allbinary/direction/Direction.zig").Direction;
const DirectionFactory = @import("org/allbinary/direction/DirectionFactory.zig").DirectionFactory;

pub const DirectionUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.direction.DirectionUtil";
    directionArray: []?*Angle = &.{},
    directionArray2: []?*Angle = &.{},
    var instance: ?*DirectionUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = DirectionUtil.create();
    }

    fn initFields(this: *Self) void {
        this.directionArray = array_N65747: { const array_N65747_array = allocator.alloc(?*Angle, @intCast(10)) catch unreachable; @memset(array_N65747_array, null); break :array_N65747 array_N65747_array; };
        this.directionArray2 = array_N65805: { const array_N65805_array = allocator.alloc(?*Angle, @intCast(10)) catch unreachable; @memset(array_N65805_array, null); break :array_N65805 array_N65805_array; };
    }
    

    pub fn getInstance() ?*DirectionUtil {
        return Inheritance.upcast(?*DirectionUtil, DirectionUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const angleFactory: ?*AngleFactory = Inheritance.upcast(?*AngleFactory, AngleFactory.getInstance());
        const directionFactory: ?*DirectionFactory = Inheritance.upcast(?*DirectionFactory, DirectionFactory.getInstance());
        this.directionArray[@intCast(Inheritance.receiverOf(directionFactory.?.LEFT.?, "getValue").getValue())] = Inheritance.upcast(@TypeOf(this.directionArray[@intCast(Inheritance.receiverOf(directionFactory.?.LEFT.?, "getValue").getValue())]), angleFactory.?.LEFT);
        this.directionArray[@intCast(Inheritance.receiverOf(directionFactory.?.RIGHT.?, "getValue").getValue())] = Inheritance.upcast(@TypeOf(this.directionArray[@intCast(Inheritance.receiverOf(directionFactory.?.RIGHT.?, "getValue").getValue())]), angleFactory.?.RIGHT);
        this.directionArray[@intCast(Inheritance.receiverOf(directionFactory.?.UP.?, "getValue").getValue())] = Inheritance.upcast(@TypeOf(this.directionArray[@intCast(Inheritance.receiverOf(directionFactory.?.UP.?, "getValue").getValue())]), angleFactory.?.UP);
        this.directionArray[@intCast(Inheritance.receiverOf(directionFactory.?.DOWN.?, "getValue").getValue())] = Inheritance.upcast(@TypeOf(this.directionArray[@intCast(Inheritance.receiverOf(directionFactory.?.DOWN.?, "getValue").getValue())]), angleFactory.?.DOWN);
        this.directionArray2[@intCast(Inheritance.receiverOf(directionFactory.?.LEFT.?, "getValue").getValue())] = Inheritance.upcast(@TypeOf(this.directionArray2[@intCast(Inheritance.receiverOf(directionFactory.?.LEFT.?, "getValue").getValue())]), angleFactory.?.LEFT);
        this.directionArray2[@intCast(Inheritance.receiverOf(directionFactory.?.RIGHT.?, "getValue").getValue())] = Inheritance.upcast(@TypeOf(this.directionArray2[@intCast(Inheritance.receiverOf(directionFactory.?.RIGHT.?, "getValue").getValue())]), angleFactory.?.RIGHT);
        this.directionArray2[@intCast(Inheritance.receiverOf(directionFactory.?.UP.?, "getValue").getValue())] = Inheritance.upcast(@TypeOf(this.directionArray2[@intCast(Inheritance.receiverOf(directionFactory.?.UP.?, "getValue").getValue())]), angleFactory.?.UP);
        this.directionArray2[@intCast(Inheritance.receiverOf(directionFactory.?.DOWN.?, "getValue").getValue())] = Inheritance.upcast(@TypeOf(this.directionArray2[@intCast(Inheritance.receiverOf(directionFactory.?.DOWN.?, "getValue").getValue())]), angleFactory.?.DOWN);
        return this;
    }
    

    pub fn getAngle(self: *Self, direction: ?*Direction) ?*Angle {
        return Inheritance.upcast(?*Angle, self.directionArray2[@intCast(direction.?.getValue())]);
    }
    

    pub fn getFrameAngle(self: *Self, direction: ?*Direction) ?*Angle {
        return Inheritance.upcast(?*Angle, self.directionArray[@intCast(direction.?.getValue())]);
    }
};

