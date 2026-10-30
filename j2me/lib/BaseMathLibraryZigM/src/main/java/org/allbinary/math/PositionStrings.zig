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
const JsProperty = @import("jsinterop/annotations/JsProperty.zig").JsProperty;

pub const PositionStrings = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.math.PositionStrings";
    X: ?*String = null,
    Y: ?*String = null,
    X_LABEL: ?*String = null,
    Y_LABEL: ?*String = null,
    Z_LABEL: ?*String = null,
    DX_LABEL: ?*String = null,
    DY_LABEL: ?*String = null,
    DZ_LABEL: ?*String = null,
    var instance: ?*PositionStrings = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PositionStrings.create();
    }

    fn initFields(this: *Self) void {
        this.X = String.literal("x");
        this.Y = String.literal("y");
        this.X_LABEL = String.literal("x: ");
        this.Y_LABEL = String.literal("y: ");
        this.Z_LABEL = String.literal("z: ");
        this.DX_LABEL = String.literal("dx: ");
        this.DY_LABEL = String.literal("dy: ");
        this.DZ_LABEL = String.literal("dz: ");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*PositionStrings {
        return Inheritance.upcast(?*PositionStrings, PositionStrings.instance);
    }
};

