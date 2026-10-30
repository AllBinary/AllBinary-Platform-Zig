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

pub const ShaderStrings = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.shader.ShaderStrings";
    NO_PROGRAM_HANDLE: ?*String = null,
    UNIFORM_BLOCK_HANDLE: ?*String = null,
    UNIFORM_HANDLE: ?*String = null,
    UNIFORM_ATTRIBUTE_HANDLE: ?*String = null,
    var instance: ?*ShaderStrings = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ShaderStrings.create();
    }

    fn initFields(this: *Self) void {
        this.NO_PROGRAM_HANDLE = String.literal("No program handle");
        this.UNIFORM_BLOCK_HANDLE = String.literal("Uniform Block Handle: ");
        this.UNIFORM_HANDLE = String.literal("Uniform Handle: ");
        this.UNIFORM_ATTRIBUTE_HANDLE = String.literal("Uniform Attribute Handle: ");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ShaderStrings {
        return Inheritance.upcast(?*ShaderStrings, ShaderStrings.instance);
    }
};

