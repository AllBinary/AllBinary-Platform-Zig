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
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;

pub const ShaderManager = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.shader.ShaderManager";
    commonStrings: ?*CommonStrings = null,
    LOAD_SHADER: ?*String = null,
    __VERSION__: ?*String = null,
    GL_VERTEX_SHADER: i32 = 0,
    GL_FRAGMENT_SHADER: i32 = 0,
    var instance: ?*ShaderManager = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.callStatic(ShaderManager, "create2", .{ -1, -1 });
    }

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.LOAD_SHADER = String.literal("loadShader");
        this.__VERSION__ = String.literal("__VERSION__");
        
        
    }
    

    pub fn getInstance() ?*ShaderManager {
        return Inheritance.upcast(?*ShaderManager, ShaderManager.instance);
    }
    

    pub fn create2(GL_VERTEX_SHADER: i32, GL_FRAGMENT_SHADER: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.GL_VERTEX_SHADER = GL_VERTEX_SHADER;
        this.GL_FRAGMENT_SHADER = GL_FRAGMENT_SHADER;
        return this;
    }
    

    pub fn load(self: *Self, gl: ?*GL10, resource: ?*String, shaderAsStringArray: []?*String, shaderType: i32) i32 {
        _ = gl;
        _ = resource;
        _ = shaderAsStringArray;
        _ = shaderType;
        _ = self;
        return -1;
    }
    

    pub fn loadShader(self: *Self, gl: ?*GL10, resource: ?*String, stringList: ?*BasicArrayList, shaderType: i32) i32 {
        _ = gl;
        _ = resource;
        _ = stringList;
        _ = shaderType;
        _ = self;
        return -1;
    }
};

