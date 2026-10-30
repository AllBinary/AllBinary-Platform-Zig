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
// package org.allbinary.math

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;
const JsMethod = @import("jsinterop/annotations/JsMethod.zig").JsMethod;
const JsConstructor = @import("jsinterop/annotations/JsConstructor.zig").JsConstructor;

pub const RectangleCollisionUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.math.RectangleCollisionUtil";
    var instance: ?*RectangleCollisionUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = RectangleCollisionUtil.create();
    }
    

    pub fn getInstance() ?*RectangleCollisionUtil {
        return Inheritance.upcast(?*RectangleCollisionUtil, RectangleCollisionUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn isCollision(self: *Self, rectX1: i32, rectY1: i32, rectX2: i32, rectY2: i32, rect2X1: i32, rect2Y1: i32, rect2X2: i32, rect2Y2: i32) bool {
        _ = self;
        if (rect2X1 >= rectX2 or rect2Y1 >= rectY2 or rect2X2 <= rectX1 or rect2Y2 <= rectY1) {
            return false;
        } else {
            return true;
        }
    }
    

    pub fn isInside(self: *Self, rectX1: i32, rectY1: i32, rectX2: i32, rectY2: i32, x: i32, y: i32) bool {
        _ = self;
        if (x >= rectX2 or y >= rectY2 or x <= rectX1 or y <= rectY1) {
            return false;
        } else {
            return true;
        }
    }
};

