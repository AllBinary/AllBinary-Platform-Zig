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
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;

pub const Line = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.Line";
    p1: ?*GPoint = null,
    p2: ?*GPoint = null,
    deltaX: f64 = 0.0,
    deltaY: f64 = 0.0,

    fn initFields(this: *Self) void {
        
        
        this.deltaX = 0.0;
        this.deltaY = 0.0;
    }
    

    pub fn create2(p1: ?*GPoint, p2: ?*GPoint) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.p1 = Inheritance.upcast(@TypeOf(this.p1), PointFactory.getInstance().?.ZERO_ZERO);
        this.p2 = this.p1;
        _ = Inheritance.call(this, "setP1", .{ p1 });
        _ = Inheritance.call(this, "setP2", .{ p2 });
        return this;
    }
    

    pub fn getGradient(self: *Self) f64 {
        return self.getDeltaY() / self.getDeltaX();
    }
    

    pub fn update(self: *Self) void {
        self.deltaX = @as(f64, @floatCast(Inheritance.receiverOf(self.getP1().?, "getX").getX())) - Inheritance.receiverOf(self.getP2().?, "getX").getX();
        self.deltaY = @as(f64, @floatCast(Inheritance.receiverOf(self.getP1().?, "getY").getY())) - Inheritance.receiverOf(self.getP2().?, "getY").getY();
    }
    

    pub fn getDeltaX(self: *Self) f64 {
        return self.deltaX;
    }
    

    pub fn getDeltaY(self: *Self) f64 {
        return self.deltaY;
    }
    

    pub fn getP1(self: *Self) ?*GPoint {
        return self.p1;
    }
    

    pub fn getP2(self: *Self) ?*GPoint {
        return self.p2;
    }
    

    pub fn setP1(self: *Self, p1: ?*GPoint) void {
        self.p1 = p1;
        _ = self.update();
    }
    

    pub fn setP2(self: *Self, p2: ?*GPoint) void {
        self.p2 = p2;
        _ = self.update();
    }
};

