//
// AllBinary Open License Version 1
// Copyright (c) 2011 AllBinary
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
// package org.allbinary.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const Processor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.canvas.Processor";
    var SINGLETON: ?*Processor = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = Processor.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*Processor {
        return Inheritance.upcast(?*Processor, Processor.SINGLETON);
    }
    

    // throws Exception
    pub fn process(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn processt(self: *Self, timeDelta: i64) void {
        _ = timeDelta;
        _ = self;
    }
};

