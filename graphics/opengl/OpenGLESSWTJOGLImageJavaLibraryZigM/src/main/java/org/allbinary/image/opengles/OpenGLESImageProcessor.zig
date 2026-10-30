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

pub const OpenGLESImageProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.opengles.OpenGLESImageProcessor";
    var instance: ?*OpenGLESImageProcessor = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OpenGLESImageProcessor.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*OpenGLESImageProcessor {
        return Inheritance.upcast(?*OpenGLESImageProcessor, OpenGLESImageProcessor.instance);
    }
    

    pub fn translate(self: *Self, gl: ?*GL10, translateX: f32, translateY: f32) void {
        _ = self;
        _ = Inheritance.call(gl.?, "glTranslatef", .{ translateX, translateY, 0 });
    }
    

    pub fn rotate(self: *Self, gl: ?*GL10, angle: f32) void {
        _ = self;
        _ = Inheritance.call(gl.?, "glRotatef", .{ -angle, 0, 0, 1 });
    }
    

    pub fn scale(self: *Self, gl: ?*GL10, scaleX: f32, scaleY: f32) void {
        _ = self;
        _ = Inheritance.call(gl.?, "glScalef", .{ scaleX, scaleY, 1 });
    }
    

    pub fn colorMask(self: *Self, gl: ?*GL10, red: f32, green: f32, blue: f32, alpha: f32) void {
        _ = gl;
        _ = red;
        _ = green;
        _ = blue;
        _ = alpha;
        _ = self;
    }
};

