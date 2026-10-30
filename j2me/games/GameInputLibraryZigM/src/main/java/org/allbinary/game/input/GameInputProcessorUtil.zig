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
const GameInputProcessor = @import("org/allbinary/game/input/GameInputProcessor.zig").GameInputProcessor;
const InputFactory = @import("org/allbinary/game/input/InputFactory.zig").InputFactory;

pub const GameInputProcessorUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.GameInputProcessorUtil";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn init(inputProcessorArray: []?*GameInputProcessor) void {
        const noInputProcessor: ?*GameInputProcessor = Inheritance.upcast(?*GameInputProcessor, GameInputProcessor.getInstance());
        const total: i32 = InputFactory.getInstance().?.MAX;
        {
            var index: i32 = 0;
            while (index < total) : (index += 1) {
            const inputProcessorCanBeNull: ?*GameInputProcessor = Inheritance.upcast(?*GameInputProcessor, inputProcessorArray[@intCast(index)]);
            if (inputProcessorCanBeNull == null) {
                inputProcessorArray[@intCast(index)] = Inheritance.upcast(@TypeOf(inputProcessorArray[@intCast(index)]), noInputProcessor);
            }
            }
        }
    }
};

