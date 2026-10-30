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
const JsProperty = @import("jsinterop/annotations/JsProperty.zig").JsProperty;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;

pub const PointFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.PointFactory";
    ZERO_ZERO: ?*GPoint = null,
    var instance: ?*PointFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PointFactory.create();
    }

    fn initFields(this: *Self) void {
        this.ZERO_ZERO = Inheritance.upcast(?*GPoint, Inheritance.call(this, "createXYZ", .{ 0, 0, 0 }));
    }
    

    pub fn getInstance() ?*PointFactory {
        return Inheritance.upcast(?*PointFactory, PointFactory.instance);
    }
    

    pub fn init(self: *Self) void {
        _ = self;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn createXY(self: *Self, x: i32, y: i32) ?*GPoint {
        _ = self;
        return Inheritance.callStatic(GPoint, "create3", .{ x, y, 0 });
    }
    

    pub fn createXYZ(self: *Self, x: i32, y: i32, z: i32) ?*GPoint {
        _ = self;
        return Inheritance.callStatic(GPoint, "create3", .{ x, y, z });
    }
};

