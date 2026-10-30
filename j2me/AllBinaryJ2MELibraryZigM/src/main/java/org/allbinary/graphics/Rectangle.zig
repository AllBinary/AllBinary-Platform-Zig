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
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;

pub const Rectangle = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.Rectangle";
    point: ?*GPoint = null,
    width: i32 = 0,
    height: i32 = 0,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
    }
    

    pub fn create3(point: ?*GPoint, width: i32, height: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.point = point;
        this.width = width;
        this.height = height;
        return this;
    }
    

    pub fn getPoint(self: *Self) ?*GPoint {
        return self.point;
    }
    

    pub fn setPoint(self: *Self, point: ?*GPoint) void {
        self.point = point;
    }
    

    pub fn getMaxX(self: *Self) i32 {
        return self.point.?.getX() + self.width;
    }
    

    pub fn getMaxY(self: *Self) i32 {
        return self.point.?.getY() + self.height;
    }
    

    pub fn getWidth(self: *Self) i32 {
        return self.width;
    }
    

    pub fn setWidth(self: *Self, width: i32) void {
        self.width = width;
    }
    

    pub fn getHeight(self: *Self) i32 {
        return self.height;
    }
    

    pub fn setHeight(self: *Self, height: i32) void {
        self.height = height;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.getPoint())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonLabels.getInstance().?.WIDTH_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getWidth() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonLabels.getInstance().?.HEIGHT_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getHeight() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" MaxX: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getMaxX() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" MaxY: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getMaxY() });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

