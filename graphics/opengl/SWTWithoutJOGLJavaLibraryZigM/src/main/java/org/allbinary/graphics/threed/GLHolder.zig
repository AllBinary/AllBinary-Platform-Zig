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
// package org.allbinary.graphics.threed

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const GLHolder = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.threed.GLHolder";
    isCreated: bool = false,

    fn initFields(this: *Self) void {
        this.isCreated = true;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn runOnSurfaceCreated(self: *Self, renderer: ?Object) void {
        _ = renderer;
        _ = self;
    }
    

    pub fn runOnSurfaceChanged(self: *Self, renderer: ?Object, width: i32, height: i32) void {
        _ = renderer;
        _ = width;
        _ = height;
        _ = self;
    }
    

    pub fn run(self: *Self, renderer: ?Object) void {
        _ = renderer;
        _ = self;
    }
};

