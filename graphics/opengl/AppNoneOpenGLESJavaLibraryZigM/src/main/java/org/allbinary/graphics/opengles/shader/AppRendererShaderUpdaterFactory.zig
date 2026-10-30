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
const ShaderComposite = @import("org/allbinary/graphics/opengles/shader/ShaderComposite.zig").ShaderComposite;
const ShaderOpenGLProcessor = @import("org/allbinary/graphics/opengles/shader/ShaderOpenGLProcessor.zig").ShaderOpenGLProcessor;
const ShaderUpdater = @import("org/allbinary/graphics/opengles/shader/ShaderUpdater.zig").ShaderUpdater;

pub const AppRendererShaderUpdaterFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.shader.AppRendererShaderUpdaterFactory";
    base: ShaderUpdater = undefined,
    NULL_SHADER_COMPOSITE_ARRAY: []?*ShaderComposite = &.{},
    shaderCompositeArray: []?*ShaderComposite = &.{},
    shaderOpenGLProcessorArray: []?*ShaderOpenGLProcessor = &.{},
    var instanceC: ?*AppRendererShaderUpdaterFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instanceC = AppRendererShaderUpdaterFactory.create();
    }

    fn initFields(this: *Self) void {
        this.NULL_SHADER_COMPOSITE_ARRAY = array_N65727: { const array_N65727_array = allocator.alloc(?*ShaderComposite, @intCast(0)) catch unreachable; @memset(array_N65727_array, null); break :array_N65727 array_N65727_array; };
        this.shaderCompositeArray = this.NULL_SHADER_COMPOSITE_ARRAY;
        this.shaderOpenGLProcessorArray = array_N65839: { const array_N65839_array = allocator.alloc(?*ShaderOpenGLProcessor, @intCast(0)) catch unreachable; @memset(array_N65839_array, null); break :array_N65839 array_N65839_array; };
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ShaderUpdater.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*AppRendererShaderUpdaterFactory {
        return Inheritance.upcast(?*AppRendererShaderUpdaterFactory, AppRendererShaderUpdaterFactory.instanceC);
    }
    

    pub fn getTestShaders(self: *Self) []?*ShaderOpenGLProcessor {
        return self.shaderOpenGLProcessorArray;
    }
    

    pub fn setShaderComposite(self: *Self, object3d: ?Object) void {
        _ = object3d;
        _ = self;
    }
};

