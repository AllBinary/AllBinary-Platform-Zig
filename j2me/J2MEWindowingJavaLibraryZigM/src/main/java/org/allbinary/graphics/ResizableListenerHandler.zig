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
const ResizableListenerInterface = @import("org/allbinary/graphics/ResizableListenerInterface.zig").ResizableListenerInterface;

pub const ResizableListenerHandler = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.ResizableListenerHandler";
    var instance: ?*ResizableListenerHandler = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ResizableListenerHandler.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*ResizableListenerHandler {
        return Inheritance.upcast(?*ResizableListenerHandler, ResizableListenerHandler.instance);
    }
    

    pub fn setListener(self: *Self, resizableListenerInterface: ?*ResizableListenerInterface) void {
        _ = resizableListenerInterface;
        _ = self;
    }
    

    pub fn fire(self: *Self, isFullScreen: bool) void {
        _ = isFullScreen;
        _ = self;
    }
    

    // throws Exception
    pub fn fireEvent(self: *Self, value: bool) void {
        _ = value;
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
    }
};

