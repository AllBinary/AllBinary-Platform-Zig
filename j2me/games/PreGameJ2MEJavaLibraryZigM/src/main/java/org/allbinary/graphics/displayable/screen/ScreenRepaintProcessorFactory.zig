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
// package org.allbinary.graphics.displayable.screen

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Displayable = @import("javax/microedition/lcdui/Displayable.zig").Displayable;
const J2MEUtil = @import("org/allbinary/J2MEUtil.zig").J2MEUtil;
const Processor = @import("org/allbinary/canvas/Processor.zig").Processor;
const ScreenRepaintProcessor = @import("org/allbinary/graphics/displayable/screen/ScreenRepaintProcessor.zig").ScreenRepaintProcessor;

pub const ScreenRepaintProcessorFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory";
    var instance: ?*ScreenRepaintProcessorFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ScreenRepaintProcessorFactory.create();
    }
    

    pub fn getInstance() ?*ScreenRepaintProcessorFactory {
        return Inheritance.upcast(?*ScreenRepaintProcessorFactory, ScreenRepaintProcessorFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn create(self: *Self, displayable: ?*Displayable) ?*Processor {
        _ = self;
        if (!J2MEUtil.isJ2ME()) {
            return Inheritance.upcast(?*Processor, Inheritance.callStatic(ScreenRepaintProcessor, "create1", .{ displayable }));
        } else {
            return Inheritance.upcast(?*Processor, Processor.getInstance());
        }
    }
};

