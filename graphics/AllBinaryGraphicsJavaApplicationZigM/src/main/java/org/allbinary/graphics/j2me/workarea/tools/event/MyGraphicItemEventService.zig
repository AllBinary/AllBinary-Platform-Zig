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
// package org.allbinary.graphics.j2me.workarea.tools.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const MyGraphicItemEvent = @import("org/allbinary/graphics/j2me/workarea/tools/event/MyGraphicItemEvent.zig").MyGraphicItemEvent;
const MyGraphicItemEventListener = @import("org/allbinary/graphics/j2me/workarea/tools/event/MyGraphicItemEventListener.zig").MyGraphicItemEventListener;

pub const MyGraphicItemEventService = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService";
    var listenerList: ?*EventListenerList = undefined;
    pub var DELETE: ?*String = String.literal("delete");
    pub var DESELECT: ?*String = String.literal("deselect");
    pub var SELECT: ?*String = String.literal("select");
    pub var DUPLICATE: ?*String = String.literal("duplicate");
    pub var ROTATE: ?*String = String.literal("rotate");

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        listenerList = EventListenerList.create();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn addListener(listener: ?*MyGraphicItemEventListener) void {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(MyGraphicItemEventService.listenerList.?, "add", .{ Inheritance.cast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(listener).?.class)))), Inheritance.cast(?*EventListener, listener) });
    }
    

    pub fn removeListener(listener: ?*MyGraphicItemEventListener) void {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(MyGraphicItemEventService.listenerList.?, "remove", .{ Inheritance.cast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(listener).?.class)))), Inheritance.cast(?*EventListener, listener) });
    }
    

    // throws Exception
    pub fn fire(evt: ?*MyGraphicItemEvent) void {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        const listeners: []?Object = MyGraphicItemEventService.listenerList.?.getListenerList();
        {
            var i: i32 = 0;
            while (i < @as(i32, @intCast(listeners.len))) : (i += 2) {
            if (Object.same(listeners[@intCast(i)], @as(?*anyopaque, @ptrCast(@constCast(Object.of(listeners[@intCast(i + 1)]).?.class))))) {
                if (Inheritance.call(Inheritance.receiver(evt.?, "getCommand").getCommand().?, "compareTo", .{ MyGraphicItemEventService.SELECT }) == 0) {
                    _ = Inheritance.call((Inheritance.cast(?*MyGraphicItemEventListener, listeners[@intCast(i + 1)])).?, "highlight", .{ evt });
                } else if (Inheritance.call(Inheritance.receiver(evt.?, "getCommand").getCommand().?, "compareTo", .{ MyGraphicItemEventService.DESELECT }) == 0) {
                    _ = Inheritance.call((Inheritance.cast(?*MyGraphicItemEventListener, listeners[@intCast(i + 1)])).?, "deselect", .{ evt });
                } else if (Inheritance.call(Inheritance.receiver(evt.?, "getCommand").getCommand().?, "compareTo", .{ MyGraphicItemEventService.DELETE }) == 0) {
                    _ = Inheritance.call((Inheritance.cast(?*MyGraphicItemEventListener, listeners[@intCast(i + 1)])).?, "delete", .{ evt });
                } else if (Inheritance.call(Inheritance.receiver(evt.?, "getCommand").getCommand().?, "compareTo", .{ MyGraphicItemEventService.DUPLICATE }) == 0) {
                    _ = Inheritance.call((Inheritance.cast(?*MyGraphicItemEventListener, listeners[@intCast(i + 1)])).?, "duplicate", .{ evt });
                } else if (Inheritance.call(Inheritance.receiver(evt.?, "getCommand").getCommand().?, "compareTo", .{ MyGraphicItemEventService.ROTATE }) == 0) {
                    _ = Inheritance.call((Inheritance.cast(?*MyGraphicItemEventListener, listeners[@intCast(i + 1)])).?, "rotate", .{ evt });
                }
            }
            }
        }
    }
};

