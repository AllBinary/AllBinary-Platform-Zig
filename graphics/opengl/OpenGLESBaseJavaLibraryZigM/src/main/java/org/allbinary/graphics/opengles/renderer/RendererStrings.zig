// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.graphics.opengles.renderer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const RendererStrings = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.renderer.RendererStrings";
    ON_SURFACE_CREATED: ?*String = null,
    ON_SURFACE_CHANGED: ?*String = null,
    ON_DRAW_FRAME: ?*String = null,
    ON_DRAW_FRAME_THREED: ?*String = null,
    ON_DRAW_FRAME_2D: ?*String = null,
    var instance: ?*RendererStrings = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = RendererStrings.create();
    }

    fn initFields(this: *Self) void {
        this.ON_SURFACE_CREATED = String.literal("onSurfaceCreated");
        this.ON_SURFACE_CHANGED = String.literal("onSurfaceChanged");
        this.ON_DRAW_FRAME = String.literal("onDrawFrame");
        this.ON_DRAW_FRAME_THREED = String.literal("onDrawFrameThreed");
        this.ON_DRAW_FRAME_2D = String.literal("onDrawFrame2d");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*RendererStrings {
        return Inheritance.upcast(?*RendererStrings, RendererStrings.instance);
    }
};

