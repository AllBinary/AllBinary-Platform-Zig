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
// package org.allbinary.media.graphics.geography.map

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CellPosition = @import("org/allbinary/graphics/CellPosition.zig").CellPosition;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;

pub const GeographicMapCellPosition = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.GeographicMapCellPosition";
    base: CellPosition = undefined,
    point: ?*GPoint = null,
    midPoint: ?*GPoint = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create6(column: i32, row: i32, columns: i32, rows: i32, width: i32, height: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CellPosition, "create4", .{ column, row, columns, rows }).*;
        this.initFields();
        const x: i32 = Inheritance.receiver(this, "getColumn").getColumn() * width;
        const y: i32 = Inheritance.receiver(this, "getRow").getRow() * height;
        const pointFactory: ?*PointFactory = Inheritance.upcast(?*PointFactory, PointFactory.getInstance());
        this.point = Inheritance.upcast(@TypeOf(this.point), Inheritance.call(pointFactory.?, "createXY", .{ x, y }));
        this.midPoint = Inheritance.upcast(@TypeOf(this.midPoint), Inheritance.call(pointFactory.?, "createXY", .{ x + (width >> @intCast(1)), y + (height >> @intCast(1)) }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getPoint(self: *Self) ?*GPoint {
        return self.point;
    }
    

    pub fn getMidPoint(self: *Self) ?*GPoint {
        return self.midPoint;
    }
    

    pub fn setMidPoint(self: *Self, midPoint: ?*GPoint) void {
        self.midPoint = midPoint;
    }
};

