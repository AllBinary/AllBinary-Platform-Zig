// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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

pub const GraphicsStrings = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.GraphicsStrings";
    ANIMATION: ?*String = null,
    ANGLE: ?*String = null,
    MOVEMENT_ANGLE: ?*String = null,
    ROTATION: ?*String = null,
    OPACITY: ?*String = null,
    HTML: ?*String = null,
    WIDTH: ?*String = null,
    HEIGHT: ?*String = null,
    var instance: ?*GraphicsStrings = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GraphicsStrings.create();
    }

    fn initFields(this: *Self) void {
        this.ANIMATION = String.literal("animation");
        this.ANGLE = String.literal("angle");
        this.MOVEMENT_ANGLE = String.literal("movement_angle");
        this.ROTATION = String.literal("rotation");
        this.OPACITY = String.literal("opacity");
        this.HTML = String.literal("HTML");
        this.WIDTH = String.literal("width");
        this.HEIGHT = String.literal("height");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*GraphicsStrings {
        return Inheritance.upcast(?*GraphicsStrings, GraphicsStrings.instance);
    }
};

