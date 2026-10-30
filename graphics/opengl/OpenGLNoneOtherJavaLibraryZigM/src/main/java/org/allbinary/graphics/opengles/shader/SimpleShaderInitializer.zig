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
const ShaderInitializer = @import("org/allbinary/graphics/opengles/shader/ShaderInitializer.zig").ShaderInitializer;

pub const SimpleShaderInitializer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.shader.SimpleShaderInitializer";
    base: ShaderInitializer = undefined,
    var instanceC: ?*SimpleShaderInitializer = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instanceC = SimpleShaderInitializer.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ShaderInitializer.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*SimpleShaderInitializer {
        return Inheritance.upcast(?*SimpleShaderInitializer, SimpleShaderInitializer.instanceC);
    }
};

