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
// package org.allbinary.graphics.opengles.vbo

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;
const ObjectThreedOpenGLProcessor = @import("org/allbinary/graphics/threed/min3d/renderer/processor/ObjectThreedOpenGLProcessor.zig").ObjectThreedOpenGLProcessor;

pub const ColorAttributePointerVBOOpenGLProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.vbo.ColorAttributePointerVBOOpenGLProcessor";
    base: ObjectThreedOpenGLProcessor = undefined,
    var instance: ?*ColorAttributePointerVBOOpenGLProcessor = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ColorAttributePointerVBOOpenGLProcessor.create();
    }
    

    pub fn getInstance() ?*ColorAttributePointerVBOOpenGLProcessor {
        return Inheritance.upcast(?*ColorAttributePointerVBOOpenGLProcessor, ColorAttributePointerVBOOpenGLProcessor.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ObjectThreedOpenGLProcessor.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn process(self: *Self, gl: ?*GL10, anyType: ?Object) void {
        _ = gl;
        _ = anyType;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};

