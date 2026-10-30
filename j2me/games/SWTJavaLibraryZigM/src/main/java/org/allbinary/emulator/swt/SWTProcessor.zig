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
// package org.allbinary.emulator.swt

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NullRunnable = @import("org/allbinary/thread/NullRunnable.zig").NullRunnable;
const Display = @import("org/eclipse/swt/widgets/Display.zig").Display;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

pub const SWTProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.emulator.swt.SWTProcessor";
    runnable: ?*Runnable = null,
    var instance: ?*SWTProcessor = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = SWTProcessor.create();
    }

    fn initFields(this: *Self) void {
        this.runnable = Inheritance.upcast(?*Runnable, NullRunnable.getInstance());
    }
    

    pub fn getInstance() ?*SWTProcessor {
        return Inheritance.upcast(?*SWTProcessor, SWTProcessor.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn process(self: *Self, display: ?*Display) void {
        _ = self;
        _ = display.?.sleep();
    }
};

