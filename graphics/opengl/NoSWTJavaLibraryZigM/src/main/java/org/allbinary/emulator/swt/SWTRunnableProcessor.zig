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
const Display = @import("org/eclipse/swt/widgets/Display.zig").Display;
const SWTProcessor = @import("org/allbinary/emulator/swt/SWTProcessor.zig").SWTProcessor;

pub const SWTRunnableProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.emulator.swt.SWTRunnableProcessor";
    base: SWTProcessor = undefined,
    var instanceR: ?*SWTRunnableProcessor = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instanceR = SWTRunnableProcessor.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = SWTProcessor.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*SWTRunnableProcessor {
        return Inheritance.upcast(?*SWTRunnableProcessor, SWTRunnableProcessor.instanceR);
    }
    

    pub fn process(self: *Self, display: ?*Display) void {
        _ = display;
        _ = self;
    }
};

