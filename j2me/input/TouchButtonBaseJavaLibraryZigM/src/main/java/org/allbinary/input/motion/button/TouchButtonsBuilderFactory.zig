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
// package org.allbinary.input.motion.button

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BaseTouchInput = @import("org/allbinary/input/motion/button/BaseTouchInput.zig").BaseTouchInput;
const NoButtonsTouchInputFactory = @import("org/allbinary/input/motion/button/NoButtonsTouchInputFactory.zig").NoButtonsTouchInputFactory;

pub const TouchButtonsBuilderFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.TouchButtonsBuilderFactory";
    pub var NO_TOUCH_BUTTON_BUILDER_FACTORY: ?*TouchButtonsBuilderFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NO_TOUCH_BUTTON_BUILDER_FACTORY = TouchButtonsBuilderFactory.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance(self: *Self) ?*BaseTouchInput {
        _ = self;
        return Inheritance.upcast(?*BaseTouchInput, NoButtonsTouchInputFactory.getInstance());
    }
};

