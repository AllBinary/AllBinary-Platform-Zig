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
const OpenGLESImageTranslate = @import("org/allbinary/image/opengles/OpenGLESImageTranslate.zig").OpenGLESImageTranslate;

pub const OpenGLESDeviceImageTranslate = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.opengles.OpenGLESDeviceImageTranslate";
    base: OpenGLESImageTranslate = undefined,
    translateX: f32 = 0.0,
    translateY: f32 = 0.0,
    translateX2: f32 = 0.0,
    translateY2: f32 = 0.0,

    fn initFields(this: *Self) void {
        this.translateX = 0.0;
        this.translateY = 0.0;
        this.translateX2 = 0.0;
        this.translateY2 = 0.0;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = OpenGLESImageTranslate.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn translate(self: *Self, gl: ?*GL10, openGLESImage: ?*OpenGLESImage, x: f32, y: f32) void {
        _ = Inheritance.call(openGLESImage.?.imageProcessor.?, "translate", .{ gl, self.translateX + (openGLESImage.?.openGLESImageProperties.?.scaleX * x), self.translateY + (openGLESImage.?.openGLESImageProperties.?.scaleY * y) });
    }
    

    pub fn translate2(self: *Self, gl: ?*GL10, openGLESImage: ?*OpenGLESImage) void {
        _ = Inheritance.call(openGLESImage.?.imageProcessor.?, "translate", .{ gl, self.translateX2, self.translateY2 });
    }
};

