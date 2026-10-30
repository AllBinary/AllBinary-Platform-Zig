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
// package org.allbinary.graphics.displayable.screen

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
// const Command = @import("javax/microedition/lcdui/Command.zig").Command;
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;

pub const AboutCommandProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.displayable.screen.AboutCommandProcessor";
    var instance: ?*AboutCommandProcessor = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AboutCommandProcessor.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*AboutCommandProcessor {
        return Inheritance.upcast(?*AboutCommandProcessor, AboutCommandProcessor.instance);
    }
    

    pub fn process(self: *Self, midletCommandListener: ?*CommandListener, command: ?*Command, canvas: ?*Canvas) void {
        _ = self;
        _ = Inheritance.call(midletCommandListener.?, "commandAction", .{ command, canvas });
    }
};

