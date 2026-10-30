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
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;
const JsMethod = @import("jsinterop/annotations/JsMethod.zig").JsMethod;
const JsConstructor = @import("jsinterop/annotations/JsConstructor.zig").JsConstructor;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const PositionStrings = @import("org/allbinary/math/PositionStrings.zig").PositionStrings;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;

pub const GPoint = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.GPoint";
    x: i32 = 0,
    y: i32 = 0,
    z: i32 = 0,
    const POINT_LABEL: ?*String = String.literal("Point: ");

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
    }
    

    pub fn getInstance(point: ?*GPoint) ?*GPoint {
        return Inheritance.callStatic(GPoint, "create3", .{ point.?.getX(), point.?.getY(), point.?.getZ() });
    }
    

    pub fn create3(x: i32, y: i32, z: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.x = x;
        this.y = y;
        this.z = z;
        return this;
    }
    

    pub fn getX(self: *Self) i32 {
        return self.x;
    }
    

    pub fn getY(self: *Self) i32 {
        return self.y;
    }
    

    pub fn getZ(self: *Self) i32 {
        return self.z;
    }
    

    pub fn getRawX(self: *Self) i32 {
        return self.x;
    }
    

    pub fn getRawY(self: *Self) i32 {
        return self.y;
    }
    

    pub fn getRawZ(self: *Self) i32 {
        return self.z;
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Inheritance.callStatic(GPoint, "toStringStatic", .{ self.getX(), self.getY(), self.getZ() }));
    }
    

    pub fn toStringStatic(x: i32, y: i32, z: i32) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const positionStrings: ?*PositionStrings = Inheritance.upcast(?*PositionStrings, PositionStrings.getInstance());
        _ = Inheritance.call(stringBuffer.?, "append", .{ GPoint.POINT_LABEL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ positionStrings.?.X_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ x });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ positionStrings.?.Y_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ y });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ positionStrings.?.Z_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ z });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

