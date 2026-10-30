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
const OpenGLESGraphicsFactory = @import("org/allbinary/device/OpenGLESGraphicsFactory.zig").OpenGLESGraphicsFactory;

pub const OpenGLESGraphicsCompositeFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.device.OpenGLESGraphicsCompositeFactory";
    openGLESGraphicsFactory: ?*OpenGLESGraphicsFactory = null,
    var instance: ?*OpenGLESGraphicsCompositeFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OpenGLESGraphicsCompositeFactory.create();
    }

    fn initFields(this: *Self) void {
        this.openGLESGraphicsFactory = OpenGLESGraphicsFactory.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*OpenGLESGraphicsCompositeFactory {
        return Inheritance.upcast(?*OpenGLESGraphicsCompositeFactory, OpenGLESGraphicsCompositeFactory.instance);
    }
    

    pub fn set(self: *Self, openGLESGraphicsFactory: ?*OpenGLESGraphicsFactory) void {
        self.openGLESGraphicsFactory = openGLESGraphicsFactory;
    }
    

    pub fn get(self: *Self) ?*OpenGLESGraphicsFactory {
        return self.openGLESGraphicsFactory;
    }
};

