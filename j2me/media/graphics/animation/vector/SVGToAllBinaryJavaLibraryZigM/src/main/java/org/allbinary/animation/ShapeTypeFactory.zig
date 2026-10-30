// 
// AllBinary Open License Version 1 
// Copyright (c) 2026 AllBinary 
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
// package org.allbinary.animation

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ShapeType = @import("org/allbinary/animation/ShapeType.zig").ShapeType;

pub const ShapeTypeFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.ShapeTypeFactory";
    KEY_LINE: ?*String = null,
    KEY_CIRCLE: ?*String = null,
    KEY_RECTANGLE: ?*String = null,
    KEY_RECT: ?*String = null,
    LINE: ?*ShapeType = null,
    CIRCLE: ?*ShapeType = null,
    RECTANGLE: ?*ShapeType = null,
    var instance: ?*ShapeTypeFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ShapeTypeFactory.create();
    }

    fn initFields(this: *Self) void {
        this.KEY_LINE = String.literal("line");
        this.KEY_CIRCLE = String.literal("circle");
        this.KEY_RECTANGLE = String.literal("rectangle");
        this.KEY_RECT = String.literal("rect");
        this.LINE = Inheritance.callStatic(ShapeType, "create1", .{ this.KEY_LINE });
        this.CIRCLE = Inheritance.callStatic(ShapeType, "create1", .{ this.KEY_CIRCLE });
        this.RECTANGLE = Inheritance.callStatic(ShapeType, "create1", .{ this.KEY_RECTANGLE });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ShapeTypeFactory {
        return Inheritance.upcast(?*ShapeTypeFactory, ShapeTypeFactory.instance);
    }
};

