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
const Shader = @import("org/allbinary/graphics/opengles/shader/Shader.zig").Shader;

pub const ShaderInitializer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.shader.ShaderInitializer";
    commonStrings: ?*CommonStrings = null,
    var instance: ?*ShaderInitializer = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ShaderInitializer.create();
    }

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ShaderInitializer {
        return Inheritance.upcast(?*ShaderInitializer, ShaderInitializer.instance);
    }
    

    pub fn init(self: *Self, gl: ?*GL10, shader: []?*Shader, attributeArray: []?*String) i32 {
        _ = gl;
        _ = shader;
        _ = attributeArray;
        _ = self;
        return -1;
    }
};

