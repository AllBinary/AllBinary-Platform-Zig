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
// package org.allbinary.graphics

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const RendererStateFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.RendererStateFactory";
    loaded: bool = false,
    surfaceChanged: bool = false,
    var instance: ?*RendererStateFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = RendererStateFactory.create();
    }

    fn initFields(this: *Self) void {
        this.loaded = false;
        this.surfaceChanged = false;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*RendererStateFactory {
        return Inheritance.upcast(?*RendererStateFactory, RendererStateFactory.instance);
    }
    

    pub fn setLoaded(self: *Self, loaded: bool) void {
        self.loaded = loaded;
    }
    

    pub fn isLoaded(self: *Self) bool {
        return self.loaded;
    }
    

    pub fn setSurfaceChanged(self: *Self, initialized: bool) void {
        self.surfaceChanged = initialized;
    }
    

    pub fn isSurfaceChanged(self: *Self) bool {
        return self.surfaceChanged;
    }
};

