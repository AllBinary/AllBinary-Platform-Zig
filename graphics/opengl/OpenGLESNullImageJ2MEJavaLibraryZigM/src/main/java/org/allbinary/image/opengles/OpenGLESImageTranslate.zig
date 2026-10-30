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
// package org.allbinary.image.opengles

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;
const OpenGLESImage = @import("org/allbinary/image/opengles/OpenGLESImage.zig").OpenGLESImage;

pub const OpenGLESImageTranslate = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.opengles.OpenGLESImageTranslate";
    var instance: ?*OpenGLESImageTranslate = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OpenGLESImageTranslate.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*OpenGLESImageTranslate {
        return Inheritance.upcast(?*OpenGLESImageTranslate, OpenGLESImageTranslate.instance);
    }
    

    pub fn translate(self: *Self, gl: ?*GL10, openGLESImage: ?*OpenGLESImage, x: f32, y: f32) void {
        _ = gl;
        _ = openGLESImage;
        _ = x;
        _ = y;
        _ = self;
    }
    

    pub fn translate2(self: *Self, gl: ?*GL10, openGLESImage: ?*OpenGLESImage) void {
        _ = gl;
        _ = openGLESImage;
        _ = self;
    }
};

