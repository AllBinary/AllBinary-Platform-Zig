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
// package org.allbinary.graphics.opengles.shader

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const OpenGLObject3dProcessor = @import("org/allbinary/graphics/opengles/shader/OpenGLObject3dProcessor.zig").OpenGLObject3dProcessor;

pub const NullOpenGLTextureProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor";
    var instance: ?*OpenGLObject3dProcessor = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OpenGLObject3dProcessor.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*OpenGLObject3dProcessor {
        return Inheritance.upcast(?*OpenGLObject3dProcessor, NullOpenGLTextureProcessor.instance);
    }
};

