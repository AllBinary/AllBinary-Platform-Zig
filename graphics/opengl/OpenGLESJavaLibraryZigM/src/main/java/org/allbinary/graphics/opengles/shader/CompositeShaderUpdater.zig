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
// const EGLConfig = @import("javax/microedition/khronos/egl/EGLConfig.zig").EGLConfig;
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const ShaderStrings = @import("org/allbinary/graphics/opengles/shader/ShaderStrings.zig").ShaderStrings;
const ShaderUpdater = @import("org/allbinary/graphics/opengles/shader/ShaderUpdater.zig").ShaderUpdater;

pub const CompositeShaderUpdater = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.shader.CompositeShaderUpdater";
    base: ShaderUpdater = undefined,
    commonSeps: ?*CommonSeps = null,
    shaderStrings: ?*ShaderStrings = null,
    uniformBlockHandleArray: []i32 = &.{},
    uniformBlockArray: []?*String = &.{},
    uniformHandleArray: []i32 = &.{},
    uniformArray: []?*String = &.{},
    attributeHandleArray: []i32 = &.{},
    attributeArray: []?*String = &.{},
    var instanceC: ?*CompositeShaderUpdater = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instanceC = Inheritance.callStatic(CompositeShaderUpdater, "create4", .{ Inheritance.receiverOf(StringUtil.getInstance().?, "getArrayInstance").getArrayInstance(), Inheritance.receiverOf(StringUtil.getInstance().?, "getArrayInstance").getArrayInstance(), Inheritance.receiverOf(StringUtil.getInstance().?, "getArrayInstance").getArrayInstance(), NullUtil.getInstance().?.NULL_INT_ARRAY });
    }

    fn initFields(this: *Self) void {
        this.commonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        this.shaderStrings = Inheritance.upcast(?*ShaderStrings, ShaderStrings.getInstance());
        
        
        
        
        
        
    }
    

    pub fn getInstance() ?*CompositeShaderUpdater {
        return Inheritance.upcast(?*CompositeShaderUpdater, CompositeShaderUpdater.instanceC);
    }
    

    pub fn create4(uniformBlockArray: []?*String, uniformArray: []?*String, attributeArray: []?*String, attributeHandleArray: []i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ShaderUpdater.create().*;
        this.initFields();
        this.uniformBlockArray = uniformBlockArray;
        this.uniformBlockHandleArray = Inheritance.upcast(@TypeOf(this.uniformBlockHandleArray), array_N66326: { const array_N66326_array = allocator.alloc(i32, @intCast(@as(i32, @intCast(this.uniformBlockArray.len)))) catch unreachable; @memset(array_N66326_array, 0); break :array_N66326 array_N66326_array; });
        this.uniformArray = uniformArray;
        this.uniformHandleArray = Inheritance.upcast(@TypeOf(this.uniformHandleArray), array_N66408: { const array_N66408_array = allocator.alloc(i32, @intCast(@as(i32, @intCast(this.uniformArray.len)))) catch unreachable; @memset(array_N66408_array, 0); break :array_N66408 array_N66408_array; });
        this.attributeArray = attributeArray;
        this.attributeHandleArray = attributeHandleArray;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn onSurfaceCreated(self: *Self, gl: ?*GL10, eglConfig: ?*EGLConfig, programHandle: i32) void {
        _ = gl;
        _ = eglConfig;
        _ = programHandle;
        _ = self;
    }
    

    pub fn onSurfaceDestroyed(self: *Self, gl: ?*GL10) void {
        _ = gl;
        _ = self;
    }
};

