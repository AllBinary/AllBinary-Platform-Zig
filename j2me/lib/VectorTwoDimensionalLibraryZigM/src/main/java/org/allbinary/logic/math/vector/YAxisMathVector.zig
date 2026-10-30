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
// package org.allbinary.logic.math.vector

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicDecimal = @import("org/allbinary/logic/math/BasicDecimal.zig").BasicDecimal;

pub const YAxisMathVector = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.math.vector.YAxisMathVector";
    base: MathVector = undefined,
    

    pub fn create2(magnitudeBasicDecimal: ?*BasicDecimal, direction: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(MathVector, "create2", .{ magnitudeBasicDecimal, direction }).*;
        _ = this.calculate();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getResult(self: *Self) ?*BasicDecimal {
        _ = self;
        return Inheritance.upcast(?*BasicDecimal, Inheritance.fieldPointer(self, "resultBasicDecimal").*);
    }
    

    pub fn calculate(self: *Self) void {
        const result: i64 = Inheritance.callStatic(YAxisMathVectorUtil, "calculate", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getMagnitude").getMagnitude().?, "getUnscaled").getUnscaled(), Inheritance.receiver(self, "getDirection").getDirection() });
        Inheritance.fieldPointer(self, "resultBasicDecimal").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "resultBasicDecimal").*), Inheritance.callStatic(BasicDecimal, "create1", .{ result }));
    }
};

