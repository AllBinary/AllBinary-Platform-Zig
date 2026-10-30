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

pub const OpenGLESImageProperties = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.opengles.OpenGLESImageProperties";
    textureID: i32 = 0,
    scaleX: f32 = 0.0,
    scaleY: f32 = 0.0,
    scaleX2: f32 = 0.0,
    scaleY2: f32 = 0.0,
    angle: i32 = 0,
    redf: f32 = 0.0,
    greenf: f32 = 0.0,
    bluef: f32 = 0.0,
    alphaf: f32 = 0.0,

    fn initFields(this: *Self) void {
        this.textureID = -1;
        this.scaleX = 1.0;
        this.scaleY = 1.0;
        this.scaleX2 = 1.0;
        this.scaleY2 = 1.0;
        this.angle = 0;
        this.redf = 1.0;
        this.greenf = 1.0;
        this.bluef = 1.0;
        this.alphaf = 0.0;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

