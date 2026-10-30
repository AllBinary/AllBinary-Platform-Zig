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
const NullOpenGLProcessorFactory = @import("org/allbinary/graphics/opengles/NullOpenGLProcessorFactory.zig").NullOpenGLProcessorFactory;
const OpenGLCapabilities = @import("org/allbinary/graphics/opengles/OpenGLCapabilities.zig").OpenGLCapabilities;
const OpenGLProcessor = @import("org/allbinary/graphics/opengles/OpenGLProcessor.zig").OpenGLProcessor;
const CompositeShaderUpdater = @import("org/allbinary/graphics/opengles/shader/CompositeShaderUpdater.zig").CompositeShaderUpdater;
const ModelViewProjection = @import("org/allbinary/graphics/opengles/shader/ModelViewProjection.zig").ModelViewProjection;
const Shader = @import("org/allbinary/graphics/opengles/shader/Shader.zig").Shader;
const ShaderComposite = @import("org/allbinary/graphics/opengles/shader/ShaderComposite.zig").ShaderComposite;
const ShaderInitializer = @import("org/allbinary/graphics/opengles/shader/ShaderInitializer.zig").ShaderInitializer;

pub const NullShaderComposite = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.shader.NullShaderComposite";
    base: ShaderComposite = undefined,
    var instance: ?*NullShaderComposite = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = NullShaderComposite.create8(OpenGLCapabilities.getInstance().?.VERSION_2_0, @constCast(&[_]?*Shader{ Shader.create(), Shader.create() })[0..], CompositeShaderUpdater.getInstance(), ShaderInitializer.getInstance(), ModelViewProjection.getInstance(), NullOpenGLProcessorFactory.getInstance(), NullOpenGLProcessorFactory.getInstance(), NullOpenGLProcessorFactory.getInstance()) // Java anonymous class body: implement it as a named type
//         
// 
//         pub fn init(self: *Self, gl: ?*GL10) void {
//             _ = gl;
//             _ = self;
//         }
;
    }
    

    pub fn getInstance() ?*ShaderComposite {
        return Inheritance.upcast(?*ShaderComposite, NullShaderComposite.instance);
    }
    

    pub fn create8(requiresOpenGLVersion: ?*String, shaderArray: []?*Shader, compositeShaderUpdater: ?*CompositeShaderUpdater, shaderInitializer: ?*ShaderInitializer, modelViewProjection: ?*ModelViewProjection, colorOpenGLProcessor: ?*OpenGLProcessor, vertexOpenGLProcessor: ?*OpenGLProcessor, disableProgramShaderOpenGLProcessor: ?*OpenGLProcessor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ShaderComposite, "create8", .{ requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, disableProgramShaderOpenGLProcessor }).*;
        Inheritance.fieldPointer(this, "useProgramShaderOpenGLProcessor").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "useProgramShaderOpenGLProcessor").*), NullOpenGLProcessorFactory.getInstance());
        Inheritance.bindOverrides(this);
        return this;
    }
};

