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
// package org.allbinary.graphics.pipeline

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const Angle = @import("org/allbinary/math/Angle.zig").Angle;
const NoDecimalTrigTable = @import("org/allbinary/math/NoDecimalTrigTable.zig").NoDecimalTrigTable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;

pub const BasicGraphicsPipeline = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.pipeline.BasicGraphicsPipeline";
    pointBasicArrayList: ?*BasicArrayList = null,
    noDecimalTrigTable: ?*NoDecimalTrigTable = null,

    fn initFields(this: *Self) void {
        
        this.noDecimalTrigTable = Inheritance.upcast(?*NoDecimalTrigTable, NoDecimalTrigTable.getInstance());
    }
    

    pub fn create1(points: ?*BasicArrayList) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.pointBasicArrayList = points;
        return this;
    }
    

    pub fn setInitMatrix(self: *Self, points: ?*BasicArrayList) void {
        self.pointBasicArrayList = points;
    }
    

    pub fn createMatrix(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn translate(self: *Self, x: i32, y: i32) void {
        const newBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const size: i32 = self.pointBasicArrayList.?.size();
        const pointFactory: ?*PointFactory = Inheritance.upcast(?*PointFactory, PointFactory.getInstance());
        var secondPoint: ?*GPoint = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            secondPoint = Inheritance.cast(?*GPoint, self.pointBasicArrayList.?.objectArray[@intCast(index)]);
            if (secondPoint.?.getX() != 1000) {
                _ = Inheritance.call(newBasicArrayList.?, "add", .{ Inheritance.call(pointFactory.?, "createXY", .{ secondPoint.?.getX() + x, secondPoint.?.getY() + y }) });
            } else {
                _ = Inheritance.call(newBasicArrayList.?, "add", .{ secondPoint });
            }
            }
        }
        self.pointBasicArrayList = newBasicArrayList;
    }
    

    // throws Exception
    pub fn rotateToAngle(self: *Self, angle: ?*Angle) void {
        _ = Inheritance.call(self, "rotate", .{ @as(i32, @intCast(angle.?.getValue())) });
    }
    

    // throws Exception
    pub fn rotate(self: *Self, angle: i32) void {
        const newBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        var secondPoint: ?*GPoint = null;
        var y: i64 = 0;
        var secondX: i64 = 0;
        var secondY: i64 = 0;
        var point: ?*GPoint = null;
        const pointFactory: ?*PointFactory = Inheritance.upcast(?*PointFactory, PointFactory.getInstance());
        const size: i32 = self.pointBasicArrayList.?.size();
        var sin: i64 = 0;
        var cos: i64 = 0;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            secondPoint = Inheritance.cast(?*GPoint, self.pointBasicArrayList.?.objectArray[@intCast(index)]);
            if (secondPoint.?.getX() != 1000) {
                sin = Inheritance.call(self.noDecimalTrigTable.?, "sin", .{ angle });
                cos = Inheritance.call(self.noDecimalTrigTable.?, "cos", .{ angle });
                y = secondPoint.?.getY() * sin;
                secondX = (secondPoint.?.getX() * cos) - y;
                secondY = (secondPoint.?.getX() * sin) + (secondPoint.?.getY() * cos);
                point = Inheritance.upcast(@TypeOf(point), Inheritance.call(pointFactory.?, "createXY", .{ @divTrunc(@as(i32, @intCast(secondX)), 10000), @divTrunc(@as(i32, @intCast(secondY)), 10000) }));
                _ = Inheritance.call(newBasicArrayList.?, "add", .{ point });
            } else {
                _ = Inheritance.call(newBasicArrayList.?, "add", .{ secondPoint });
            }
            }
        }
        self.pointBasicArrayList = newBasicArrayList;
    }
    

    // throws Exception
    pub fn mirror(self: *Self, width: i32) void {
        const pointFactory: ?*PointFactory = Inheritance.upcast(?*PointFactory, PointFactory.getInstance());
        const halfWidth: i32 = (width >> @intCast(1));
        const newBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        var secondPoint: ?*GPoint = null;
        var newX: i32 = 0;
        var point: ?*GPoint = null;
        const size: i32 = self.pointBasicArrayList.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            secondPoint = Inheritance.cast(?*GPoint, self.pointBasicArrayList.?.objectArray[@intCast(index)]);
            if (secondPoint.?.getX() != 1000) {
                newX = 0;
                if (secondPoint.?.getX() > halfWidth) {
                    newX = halfWidth - (secondPoint.?.getX() - halfWidth);
                } else {
                    newX = halfWidth + (halfWidth - secondPoint.?.getX());
                }
                point = Inheritance.upcast(@TypeOf(point), Inheritance.call(pointFactory.?, "createXY", .{ newX, secondPoint.?.getY() }));
                _ = Inheritance.call(newBasicArrayList.?, "add", .{ point });
            } else {
                _ = Inheritance.call(newBasicArrayList.?, "add", .{ secondPoint });
            }
            }
        }
        self.pointBasicArrayList = newBasicArrayList;
    }
    

    pub fn getMatrix(self: *Self) ?*BasicArrayList {
        return self.pointBasicArrayList;
    }
};

