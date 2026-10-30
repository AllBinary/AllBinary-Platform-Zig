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
const NullOpenGLProcessorFactory = @import("org/allbinary/graphics/opengles/NullOpenGLProcessorFactory.zig").NullOpenGLProcessorFactory;
const OpenGLProcessor = @import("org/allbinary/graphics/opengles/OpenGLProcessor.zig").OpenGLProcessor;
const CompositeShaderUpdater = @import("org/allbinary/graphics/opengles/shader/CompositeShaderUpdater.zig").CompositeShaderUpdater;
const ModelViewProjection = @import("org/allbinary/graphics/opengles/shader/ModelViewProjection.zig").ModelViewProjection;
const Shader = @import("org/allbinary/graphics/opengles/shader/Shader.zig").Shader;
const ShaderComposite = @import("org/allbinary/graphics/opengles/shader/ShaderComposite.zig").ShaderComposite;
const ShaderInitializer = @import("org/allbinary/graphics/opengles/shader/ShaderInitializer.zig").ShaderInitializer;

pub const PlatformShaderComposite = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.shader.PlatformShaderComposite";
    base: ShaderComposite = undefined,
    

    pub fn create7(requiresOpenGLVersion: ?*String, shaderArray: []?*Shader, compositeShaderUpdater: ?*CompositeShaderUpdater, shaderInitializer: ?*ShaderInitializer, modelViewProjection: ?*ModelViewProjection, colorOpenGLProcessor: ?*OpenGLProcessor, vertexOpenGLProcessor: ?*OpenGLProcessor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ShaderComposite, "create8", .{ requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, NullOpenGLProcessorFactory.getInstance() }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
};

