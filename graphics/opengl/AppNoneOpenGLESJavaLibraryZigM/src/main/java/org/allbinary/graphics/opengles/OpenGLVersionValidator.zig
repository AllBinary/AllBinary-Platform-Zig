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
// package org.allbinary.graphics.opengles

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ShaderComposite = @import("org/allbinary/graphics/opengles/shader/ShaderComposite.zig").ShaderComposite;

pub const OpenGLVersionValidator = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.OpenGLVersionValidator";
    EGL_CONTEXT_CLIENT_VERSION_VALUE: i32 = 0,
    var instance: ?*OpenGLVersionValidator = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OpenGLVersionValidator.create();
    }

    fn initFields(this: *Self) void {
        this.EGL_CONTEXT_CLIENT_VERSION_VALUE = -1;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*OpenGLVersionValidator {
        return Inheritance.upcast(?*OpenGLVersionValidator, OpenGLVersionValidator.instance);
    }
    

    pub fn isGL31OrHigher(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn isAvailable(self: *Self, glVersionRequired: ?*String) bool {
        _ = glVersionRequired;
        _ = self;
        return false;
    }
    

    pub fn setShaderComposite(self: *Self, shaderComposite: ?*ShaderComposite, anyType: ?Object) void {
        _ = shaderComposite;
        _ = anyType;
        _ = self;
    }
};

