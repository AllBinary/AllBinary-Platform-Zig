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
// package org.allbinary.graphics

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ScreenEmptyListener = @import("org/allbinary/graphics/ScreenEmptyListener.zig").ScreenEmptyListener;
const ScreenListenerInterface = @import("org/allbinary/graphics/ScreenListenerInterface.zig").ScreenListenerInterface;

pub const ScreenListenerHandler = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.ScreenListenerHandler";
    screenListenerInterface: ?*ScreenListenerInterface = null,
    var instance: ?*ScreenListenerHandler = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ScreenListenerHandler.create();
    }

    fn initFields(this: *Self) void {
        this.screenListenerInterface = Inheritance.upcast(?*ScreenListenerInterface, ScreenEmptyListener.create());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ScreenListenerHandler {
        return Inheritance.upcast(?*ScreenListenerHandler, ScreenListenerHandler.instance);
    }
    

    pub fn setListener(self: *Self, screenListenerInterface: ?*ScreenListenerInterface) void {
        self.screenListenerInterface = screenListenerInterface;
    }
    

    pub fn fireWithState(self: *Self, isFullScreen: bool) void {
        _ = Inheritance.call(self.screenListenerInterface.?, "onFullScreen", .{ isFullScreen });
    }
    

    pub fn fire(self: *Self) void {
        _ = self.screenListenerInterface.?.onFullScreenDisplay();
    }
};

