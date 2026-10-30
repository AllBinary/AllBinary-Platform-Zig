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
// package org.allbinary.image.opengles

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;

pub const OpenGLESImageDraw = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.opengles.OpenGLESImageDraw";
    var instance: ?*OpenGLESImageDraw = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OpenGLESImageDraw.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*OpenGLESImageDraw {
        return Inheritance.upcast(?*OpenGLESImageDraw, OpenGLESImageDraw.instance);
    }
    

    pub fn drawRegion(self: *Self, gl: ?*GL10, viewHeight: i32, x_src: f32, y_src: f32, width: f32, height: f32, x: i32, y: i32, z: i32) void {
        _ = gl;
        _ = viewHeight;
        _ = x_src;
        _ = y_src;
        _ = width;
        _ = height;
        _ = x;
        _ = y;
        _ = z;
        _ = self;
    }
    

    pub fn draw(self: *Self, gl: ?*GL10, x: i32, y: i32, z: i32) void {
        _ = gl;
        _ = x;
        _ = y;
        _ = z;
        _ = self;
    }
};

