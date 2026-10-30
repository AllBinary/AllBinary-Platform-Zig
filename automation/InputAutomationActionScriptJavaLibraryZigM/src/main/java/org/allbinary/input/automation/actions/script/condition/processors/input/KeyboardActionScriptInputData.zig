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
// package org.allbinary.input.automation.actions.script.condition.processors.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const KeyboardActionScriptInputData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData";
    pub var NAME: ?*String = String.literal("KEY_ACTION_INPUT_NAME");
    pub var KEY: ?*String = String.literal("KEY_ACTION_INPUT_KEY");
    pub var DELAY_BETWEEN_KEYS: ?*String = String.literal("KEY_ACTION_INPUT_DELAY_BETWEEN_KEYS");
    pub var PRESS: ?*String = String.literal("KEY_ACTION_INPUT_PRESS");
    pub var RELEASE: ?*String = String.literal("KEY_ACTION_INPUT_RELEASE");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

