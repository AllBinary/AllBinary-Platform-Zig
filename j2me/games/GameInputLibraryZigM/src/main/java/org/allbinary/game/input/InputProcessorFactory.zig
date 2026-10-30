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
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const InputProcessor = @import("org/allbinary/game/input/InputProcessor.zig").InputProcessor;

pub const InputProcessorFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.InputProcessorFactory";
    inputProcessor: ?*InputProcessor = null,
    var instance: ?*InputProcessorFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = InputProcessorFactory.create();
    }

    fn initFields(this: *Self) void {
        this.inputProcessor = InputProcessor.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*InputProcessorFactory {
        return Inheritance.upcast(?*InputProcessorFactory, InputProcessorFactory.instance);
    }
    

    pub fn getInputProcessor(self: *Self) ?*InputProcessor {
        return self.inputProcessor;
    }
};

