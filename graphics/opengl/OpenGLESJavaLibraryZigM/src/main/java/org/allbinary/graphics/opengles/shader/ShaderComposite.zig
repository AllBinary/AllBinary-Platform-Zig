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
const OpenGLProcessor = @import("org/allbinary/graphics/opengles/OpenGLProcessor.zig").OpenGLProcessor;
const NullOpenGLProcessorFactory = @import("org/allbinary/graphics/opengles/NullOpenGLProcessorFactory.zig").NullOpenGLProcessorFactory;
const CompositeShaderUpdater = @import("org/allbinary/graphics/opengles/shader/CompositeShaderUpdater.zig").CompositeShaderUpdater;
const ModelViewProjection = @import("org/allbinary/graphics/opengles/shader/ModelViewProjection.zig").ModelViewProjection;
const NullOpenGLTextureProcessor = @import("org/allbinary/graphics/opengles/shader/NullOpenGLTextureProcessor.zig").NullOpenGLTextureProcessor;
const OpenGLObject3dProcessor = @import("org/allbinary/graphics/opengles/shader/OpenGLObject3dProcessor.zig").OpenGLObject3dProcessor;
const Shader = @import("org/allbinary/graphics/opengles/shader/Shader.zig").Shader;
const ShaderInitializer = @import("org/allbinary/graphics/opengles/shader/ShaderInitializer.zig").ShaderInitializer;

pub const ShaderComposite = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.shader.ShaderComposite";
    disableProgramShaderOpenGLProcessor: ?*OpenGLProcessor = null,
    requiresOpenGLVersion: ?*String = null,
    shaderArray: []?*Shader = &.{},
    shaderInitializer: ?*ShaderInitializer = null,
    compositeShaderUpdater: ?*CompositeShaderUpdater = null,
    modelViewProjection: ?*ModelViewProjection = null,
    colorOpenGLProcessor: ?*OpenGLProcessor = null,
    vertexOpenGLProcessor: ?*OpenGLProcessor = null,
    useProgramShaderOpenGLProcessor: ?*OpenGLProcessor = null,
    shaderMatrixOpenGLProcessor: ?*OpenGLProcessor = null,
    colorEnableVertexAttribArrayOpenGLProcessor: ?*OpenGLProcessor = null,
    normalEnableVertexAttribArrayOpenGLProcessor: ?*OpenGLProcessor = null,
    vertexEnableVertexAttribArrayOpenGLProcessor: ?*OpenGLProcessor = null,
    textureEnableVertexAttribArrayOpenGLProcessor: ?*OpenGLProcessor = null,
    colorDisableVertexAttribArrayOpenGLProcessor: ?*OpenGLProcessor = null,
    normalDisableVertexAttribArrayOpenGLProcessor: ?*OpenGLProcessor = null,
    vertexDisableVertexAttribArrayOpenGLProcessor: ?*OpenGLProcessor = null,
    textureDisableVertexAttribArrayOpenGLProcessor: ?*OpenGLProcessor = null,
    uniformLightPositionOpenGLProcessor: ?*OpenGLObject3dProcessor = null,
    uniformLightColorOpenGLProcessor: ?*OpenGLObject3dProcessor = null,
    uniformCameraPositionOpenGLProcessor: ?*OpenGLObject3dProcessor = null,
    uniformTextureUnitOpenGLProcessor: ?*OpenGLObject3dProcessor = null,
    programHandle: i32 = 0,

    fn initFields(this: *Self) void {
        
        
        
        
        
        
        
        
        this.useProgramShaderOpenGLProcessor = Inheritance.upcast(?*OpenGLProcessor, NullOpenGLProcessorFactory.getInstance());
        this.shaderMatrixOpenGLProcessor = Inheritance.upcast(?*OpenGLProcessor, NullOpenGLProcessorFactory.getInstance());
        this.colorEnableVertexAttribArrayOpenGLProcessor = Inheritance.upcast(?*OpenGLProcessor, NullOpenGLProcessorFactory.getInstance());
        this.normalEnableVertexAttribArrayOpenGLProcessor = Inheritance.upcast(?*OpenGLProcessor, NullOpenGLProcessorFactory.getInstance());
        this.vertexEnableVertexAttribArrayOpenGLProcessor = Inheritance.upcast(?*OpenGLProcessor, NullOpenGLProcessorFactory.getInstance());
        this.textureEnableVertexAttribArrayOpenGLProcessor = Inheritance.upcast(?*OpenGLProcessor, NullOpenGLProcessorFactory.getInstance());
        this.colorDisableVertexAttribArrayOpenGLProcessor = Inheritance.upcast(?*OpenGLProcessor, NullOpenGLProcessorFactory.getInstance());
        this.normalDisableVertexAttribArrayOpenGLProcessor = Inheritance.upcast(?*OpenGLProcessor, NullOpenGLProcessorFactory.getInstance());
        this.vertexDisableVertexAttribArrayOpenGLProcessor = Inheritance.upcast(?*OpenGLProcessor, NullOpenGLProcessorFactory.getInstance());
        this.textureDisableVertexAttribArrayOpenGLProcessor = Inheritance.upcast(?*OpenGLProcessor, NullOpenGLProcessorFactory.getInstance());
        this.uniformLightPositionOpenGLProcessor = Inheritance.upcast(?*OpenGLObject3dProcessor, NullOpenGLTextureProcessor.getInstance());
        this.uniformLightColorOpenGLProcessor = Inheritance.upcast(?*OpenGLObject3dProcessor, NullOpenGLTextureProcessor.getInstance());
        this.uniformCameraPositionOpenGLProcessor = Inheritance.upcast(?*OpenGLObject3dProcessor, NullOpenGLTextureProcessor.getInstance());
        this.uniformTextureUnitOpenGLProcessor = Inheritance.upcast(?*OpenGLObject3dProcessor, NullOpenGLTextureProcessor.getInstance());
        this.programHandle = 0;
    }
    

    pub fn create8(requiresOpenGLVersion: ?*String, shaderArray: []?*Shader, compositeShaderUpdater: ?*CompositeShaderUpdater, shaderInitializer: ?*ShaderInitializer, modelViewProjection: ?*ModelViewProjection, colorOpenGLProcessor: ?*OpenGLProcessor, vertexOpenGLProcessor: ?*OpenGLProcessor, disableProgramShaderOpenGLProcessor: ?*OpenGLProcessor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.requiresOpenGLVersion = requiresOpenGLVersion;
        this.shaderArray = shaderArray;
        this.shaderInitializer = shaderInitializer;
        this.compositeShaderUpdater = compositeShaderUpdater;
        this.modelViewProjection = modelViewProjection;
        this.colorOpenGLProcessor = colorOpenGLProcessor;
        this.vertexOpenGLProcessor = vertexOpenGLProcessor;
        this.disableProgramShaderOpenGLProcessor = disableProgramShaderOpenGLProcessor;
        return this;
    }
    

    pub fn init(self: *Self, gl: ?*GL10) void {
        self.programHandle = Inheritance.call(self.shaderInitializer.?, "init", .{ gl, self.shaderArray, self.compositeShaderUpdater.?.attributeArray });
    }
};

