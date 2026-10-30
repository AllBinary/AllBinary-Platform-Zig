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
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;

pub const OpenGLVUtilBase = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.OpenGLVUtilBase";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn glTexEnvix(self: *Self, gl: ?*GL10, target: i32, pname: i32, param: i32) void {
        _ = gl;
        _ = target;
        _ = pname;
        _ = param;
        _ = self;
    }
    

    pub fn glTexParameterix(self: *Self, gl: ?*GL10, target: i32, pname: i32, param: i32) void {
        _ = gl;
        _ = target;
        _ = pname;
        _ = param;
        _ = self;
    }
    

    pub fn glGenerateMipmap(self: *Self, gl: ?*GL10, textureId: i32, target: i32, generateMipMap: bool) void {
        _ = gl;
        _ = textureId;
        _ = target;
        _ = generateMipMap;
        _ = self;
    }
};

