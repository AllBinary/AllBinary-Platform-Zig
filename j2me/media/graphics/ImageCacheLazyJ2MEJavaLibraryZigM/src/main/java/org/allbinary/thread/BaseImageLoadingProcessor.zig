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
// package org.allbinary.thread

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const BaseImageLoadingProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.thread.BaseImageLoadingProcessor";
    var instance: ?*BaseImageLoadingProcessor = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BaseImageLoadingProcessor.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*BaseImageLoadingProcessor {
        return Inheritance.upcast(?*BaseImageLoadingProcessor, BaseImageLoadingProcessor.instance);
    }
    

    pub fn runTask(self: *Self) void {
        _ = self;
    }
};

