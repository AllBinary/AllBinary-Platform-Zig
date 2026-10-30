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
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;
const OpenGLObject3dProcessor = @import("org/allbinary/graphics/opengles/shader/OpenGLObject3dProcessor.zig").OpenGLObject3dProcessor;
const ShaderComposite = @import("org/allbinary/graphics/opengles/shader/ShaderComposite.zig").ShaderComposite;

pub const UniformLightPositionOpenGLProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.shader.UniformLightPositionOpenGLProcessor";
    base: OpenGLObject3dProcessor = undefined,
    

    pub fn create2(shaderComposite: ?*ShaderComposite, handleIndex: i32) *Self {
        _ = shaderComposite;
        _ = handleIndex;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = OpenGLObject3dProcessor.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn process(self: *Self, gl: ?*GL10, unused: ?Object) void {
        _ = gl;
        _ = unused;
        _ = self;
    }
};

