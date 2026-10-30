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
const MathVectorInterface = @import("org/allbinary/logic/math/vector/MathVectorInterface.zig").MathVectorInterface;

pub const MathVector = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.math.vector.MathVector";
    pub const java_interfaces = .{ MathVectorInterface };
    magnitudeBasicDecimal: ?*BasicDecimal = null,
    direction: i32 = 0,
    resultBasicDecimal: ?*BasicDecimal = null,
    // Implements MathVectorInterface

    fn initFields(this: *Self) void {
        
        
        this.resultBasicDecimal = null;
    }
    

    pub fn create2(magnitudeBasicDecimal: ?*BasicDecimal, direction: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.magnitudeBasicDecimal = magnitudeBasicDecimal;
        this.direction = direction;
        return this;
    }
    

    pub fn getMagnitude(self: *Self) ?*BasicDecimal {
        return self.magnitudeBasicDecimal;
    }
    

    pub fn getDirection(self: *Self) i32 {
        return self.direction;
    }
    

    pub fn getResult(self: *Self) ?*BasicDecimal {
        return self.resultBasicDecimal;
    }
};

