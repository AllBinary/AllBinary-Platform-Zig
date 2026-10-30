//
// AllBinary Open License Version 1
// Copyright (c) 2011 AllBinary
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
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;

pub const OpenGLCapabilities = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.OpenGLCapabilities";
    CUSTOM_GL_SURFACE_VIEW: bool = false,
    VERSION_1_0: ?*String = null,
    VERSION_1_1: ?*String = null,
    VERSION_2_0: ?*String = null,
    VERSION_3_0: ?*String = null,
    VERSION_3_1: ?*String = null,
    VERSION_3_2: ?*String = null,
    VERSION_HIGHER_THAN_EXISTS: ?*String = null,
    glVersion: ?*String = null,
    shaderVersion: i32 = 0,
    glInstanceVersion: ?*String = null,
    maxTextureSize: i32 = 0,
    var instance: ?*OpenGLCapabilities = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OpenGLCapabilities.create();
    }

    fn initFields(this: *Self) void {
        this.CUSTOM_GL_SURFACE_VIEW = true;
        this.VERSION_1_0 = String.literal("1.0");
        this.VERSION_1_1 = String.literal("1.1");
        this.VERSION_2_0 = String.literal("2.0");
        this.VERSION_3_0 = String.literal("3.0");
        this.VERSION_3_1 = String.literal("3.1");
        this.VERSION_3_2 = String.literal("3.2");
        this.VERSION_HIGHER_THAN_EXISTS = String.literal("999.999");
        this.glVersion = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.shaderVersion = 0;
        this.glInstanceVersion = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.maxTextureSize = 64;
    }
    

    pub fn getInstance() ?*OpenGLCapabilities {
        return Inheritance.upcast(?*OpenGLCapabilities, OpenGLCapabilities.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn isInitialized(self: *Self) bool {
        _ = self;
        return true;
    }
    

    pub fn initCapabilities(self: *Self, gl: ?Object) void {
        _ = gl;
        _ = self;
    }
    

    pub fn isGlExtensionDrawTexture(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn getGlVersion(self: *Self) ?*String {
        return self.glVersion;
    }
    

    pub fn isVertexBufferObjectSupport(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn isTextureSizeValid(self: *Self, widthAndHeight: i32) bool {
        _ = widthAndHeight;
        _ = self;
        return true;
    }
};

