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
// package org.allbinary.game.physics.velocity

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Direction = @import("org/allbinary/direction/Direction.zig").Direction;
const BasicDecimal = @import("org/allbinary/logic/math/BasicDecimal.zig").BasicDecimal;
const Angle = @import("org/allbinary/math/Angle.zig").Angle;

// Java interface: an implementation is a pointer and a table of functions
pub const BasicVelocityInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.physics.velocity.BasicVelocityInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getVelocityXBasicDecimalPFn: *const fn (pointer: *anyopaque) ?*BasicDecimal,
    getVelocityYBasicDecimalPFn: *const fn (pointer: *anyopaque) ?*BasicDecimal,
    zeroFn: *const fn (pointer: *anyopaque) void,
    setVelocityWithBigDecimalAndDirectionFn: *const fn (pointer: *anyopaque, magnitudeBasicDecimal: ?*BasicDecimal, direction: ?*Direction, otherDirection: ?*Direction) void,
    addVelocityWithBigDecimalAndDirectionFn: *const fn (pointer: *anyopaque, magnitudeBasicDecimal: ?*BasicDecimal, direction: ?*Direction, otherDirection: ?*Direction) void,
    setVelocityWithDirectionFn: *const fn (pointer: *anyopaque, magnitude: i64, direction: ?*Direction, otherDirection: ?*Direction) void,
    addVelocityWithDirectionFn: *const fn (pointer: *anyopaque, magnitude: i64, direction: ?*Direction, otherDirection: ?*Direction) void,
    setVelocityWithBigDecimalFn: *const fn (pointer: *anyopaque, magnitudeBasicDecimal: ?*BasicDecimal, angle: ?*Angle, otherAngle: ?*Angle) void,
    addVelocityWithBigDecimalFn: *const fn (pointer: *anyopaque, magnitudeBasicDecimal: ?*BasicDecimal, angle: ?*Angle, otherAngle: ?*Angle) void,
    setVelocityFn: *const fn (pointer: *anyopaque, magnitude: i64, angle: ?*Angle, otherAngle: ?*Angle) void,
    addVelocityFn: *const fn (pointer: *anyopaque, magnitude: i64, angle: ?*Angle, otherAngle: ?*Angle) void,
    addVelocityiFn: *const fn (pointer: *anyopaque, magnitude: i64, angle: i32, otherAngle: i32) void,

    pub fn getVelocityXBasicDecimalP(self: *Self) ?*BasicDecimal {
        return self.getVelocityXBasicDecimalPFn(self.pointer);
    }

    pub fn getVelocityYBasicDecimalP(self: *Self) ?*BasicDecimal {
        return self.getVelocityYBasicDecimalPFn(self.pointer);
    }

    pub fn zero(self: *Self) void {
        return self.zeroFn(self.pointer);
    }

    pub fn setVelocityWithBigDecimalAndDirection(self: *Self, magnitudeBasicDecimal: ?*BasicDecimal, direction: ?*Direction, otherDirection: ?*Direction) void {
        return self.setVelocityWithBigDecimalAndDirectionFn(self.pointer, magnitudeBasicDecimal, direction, otherDirection);
    }

    pub fn addVelocityWithBigDecimalAndDirection(self: *Self, magnitudeBasicDecimal: ?*BasicDecimal, direction: ?*Direction, otherDirection: ?*Direction) void {
        return self.addVelocityWithBigDecimalAndDirectionFn(self.pointer, magnitudeBasicDecimal, direction, otherDirection);
    }

    pub fn setVelocityWithDirection(self: *Self, magnitude: i64, direction: ?*Direction, otherDirection: ?*Direction) void {
        return self.setVelocityWithDirectionFn(self.pointer, magnitude, direction, otherDirection);
    }

    pub fn addVelocityWithDirection(self: *Self, magnitude: i64, direction: ?*Direction, otherDirection: ?*Direction) void {
        return self.addVelocityWithDirectionFn(self.pointer, magnitude, direction, otherDirection);
    }

    pub fn setVelocityWithBigDecimal(self: *Self, magnitudeBasicDecimal: ?*BasicDecimal, angle: ?*Angle, otherAngle: ?*Angle) void {
        return self.setVelocityWithBigDecimalFn(self.pointer, magnitudeBasicDecimal, angle, otherAngle);
    }

    pub fn addVelocityWithBigDecimal(self: *Self, magnitudeBasicDecimal: ?*BasicDecimal, angle: ?*Angle, otherAngle: ?*Angle) void {
        return self.addVelocityWithBigDecimalFn(self.pointer, magnitudeBasicDecimal, angle, otherAngle);
    }

    pub fn setVelocity(self: *Self, magnitude: i64, angle: ?*Angle, otherAngle: ?*Angle) void {
        return self.setVelocityFn(self.pointer, magnitude, angle, otherAngle);
    }

    pub fn addVelocity(self: *Self, magnitude: i64, angle: ?*Angle, otherAngle: ?*Angle) void {
        return self.addVelocityFn(self.pointer, magnitude, angle, otherAngle);
    }

    pub fn addVelocityi(self: *Self, magnitude: i64, angle: i32, otherAngle: i32) void {
        return self.addVelocityiFn(self.pointer, magnitude, angle, otherAngle);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return String.valueOf(implementation);
            }
            fn getVelocityXBasicDecimalP(pointer: *anyopaque) ?*BasicDecimal {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicDecimal, Inheritance.receiver(implementation, "getVelocityXBasicDecimalP").getVelocityXBasicDecimalP());
            }
            fn getVelocityYBasicDecimalP(pointer: *anyopaque) ?*BasicDecimal {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicDecimal, Inheritance.receiver(implementation, "getVelocityYBasicDecimalP").getVelocityYBasicDecimalP());
            }
            fn zero(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "zero").zero();
            }
            fn setVelocityWithBigDecimalAndDirection(pointer: *anyopaque, magnitudeBasicDecimal: ?*BasicDecimal, direction: ?*Direction, otherDirection: ?*Direction) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setVelocityWithBigDecimalAndDirection").setVelocityWithBigDecimalAndDirection(magnitudeBasicDecimal, direction, otherDirection);
            }
            fn addVelocityWithBigDecimalAndDirection(pointer: *anyopaque, magnitudeBasicDecimal: ?*BasicDecimal, direction: ?*Direction, otherDirection: ?*Direction) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "addVelocityWithBigDecimalAndDirection").addVelocityWithBigDecimalAndDirection(magnitudeBasicDecimal, direction, otherDirection);
            }
            fn setVelocityWithDirection(pointer: *anyopaque, magnitude: i64, direction: ?*Direction, otherDirection: ?*Direction) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setVelocityWithDirection").setVelocityWithDirection(magnitude, direction, otherDirection);
            }
            fn addVelocityWithDirection(pointer: *anyopaque, magnitude: i64, direction: ?*Direction, otherDirection: ?*Direction) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "addVelocityWithDirection").addVelocityWithDirection(magnitude, direction, otherDirection);
            }
            fn setVelocityWithBigDecimal(pointer: *anyopaque, magnitudeBasicDecimal: ?*BasicDecimal, angle: ?*Angle, otherAngle: ?*Angle) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setVelocityWithBigDecimal").setVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle);
            }
            fn addVelocityWithBigDecimal(pointer: *anyopaque, magnitudeBasicDecimal: ?*BasicDecimal, angle: ?*Angle, otherAngle: ?*Angle) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "addVelocityWithBigDecimal").addVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle);
            }
            fn setVelocity(pointer: *anyopaque, magnitude: i64, angle: ?*Angle, otherAngle: ?*Angle) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setVelocity").setVelocity(magnitude, angle, otherAngle);
            }
            fn addVelocity(pointer: *anyopaque, magnitude: i64, angle: ?*Angle, otherAngle: ?*Angle) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "addVelocity").addVelocity(magnitude, angle, otherAngle);
            }
            fn addVelocityi(pointer: *anyopaque, magnitude: i64, angle: i32, otherAngle: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "addVelocityi").addVelocityi(magnitude, angle, otherAngle);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getVelocityXBasicDecimalPFn = Methods.getVelocityXBasicDecimalP, .getVelocityYBasicDecimalPFn = Methods.getVelocityYBasicDecimalP, .zeroFn = Methods.zero, .setVelocityWithBigDecimalAndDirectionFn = Methods.setVelocityWithBigDecimalAndDirection, .addVelocityWithBigDecimalAndDirectionFn = Methods.addVelocityWithBigDecimalAndDirection, .setVelocityWithDirectionFn = Methods.setVelocityWithDirection, .addVelocityWithDirectionFn = Methods.addVelocityWithDirection, .setVelocityWithBigDecimalFn = Methods.setVelocityWithBigDecimal, .addVelocityWithBigDecimalFn = Methods.addVelocityWithBigDecimal, .setVelocityFn = Methods.setVelocity, .addVelocityFn = Methods.addVelocity, .addVelocityiFn = Methods.addVelocityi };
        return this;
    }
};

