// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.device

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const OpenGLESGraphics = @import("org/allbinary/device/OpenGLESGraphics.zig").OpenGLESGraphics;
const OpenGLESNullGraphicsFactory = @import("org/allbinary/device/OpenGLESNullGraphicsFactory.zig").OpenGLESNullGraphicsFactory;

pub const OpenGLESGraphicsFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.device.OpenGLESGraphicsFactory";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getOpenGLESGraphicsInstance(self: *Self) ?*OpenGLESGraphics {
        _ = self;
        return Inheritance.upcast(?*OpenGLESGraphics, OpenGLESNullGraphicsFactory.getInstance());
    }
};

