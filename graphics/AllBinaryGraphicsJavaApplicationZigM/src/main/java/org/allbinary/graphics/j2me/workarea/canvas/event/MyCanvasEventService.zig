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
// package org.allbinary.graphics.j2me.workarea.canvas.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const MyCanvasEvent = @import("org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEvent.zig").MyCanvasEvent;
const MyCanvasEventListener = @import("org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEventListener.zig").MyCanvasEventListener;

pub const MyCanvasEventService = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService";
    var listenerList: ?*EventListenerList = undefined;
    pub var DELETE: ?*String = String.literal("delete");
    pub var DUPLICATE: ?*String = String.literal("duplicate");
    pub var SELECT: ?*String = String.literal("select");
    pub var ROTATE: ?*String = String.literal("rotate");
    pub var EXPLODE: ?*String = String.literal("explode");
    pub var AUTOEXPLODE: ?*String = String.literal("autoExplode");
    pub var CENTER: ?*String = String.literal("center");

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        listenerList = EventListenerList.create();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn addListener(listener: ?*MyCanvasEventListener) void {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(MyCanvasEventService.listenerList.?, "add", .{ Inheritance.cast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(listener).?.class)))), Inheritance.cast(?*EventListener, listener) });
    }
    

    pub fn removeListener(listener: ?*MyCanvasEventListener) void {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(MyCanvasEventService.listenerList.?, "remove", .{ Inheritance.cast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(listener).?.class)))), Inheritance.cast(?*EventListener, listener) });
    }
    

    // throws Exception
    pub fn fire(evt: ?*MyCanvasEvent) void {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        const listeners: []?Object = MyCanvasEventService.listenerList.?.getListenerList();
        {
            var i: i32 = 0;
            while (i < @as(i32, @intCast(listeners.len))) : (i += 2) {
            if (Object.same(listeners[@intCast(i)], @as(?*anyopaque, @ptrCast(@constCast(Object.of(listeners[@intCast(i + 1)]).?.class))))) {
                if (Inheritance.call(Inheritance.receiver(evt.?, "getCommand").getCommand().?, "compareTo", .{ MyCanvasEventService.DELETE }) == 0) {
                    _ = Inheritance.call((Inheritance.cast(?*MyCanvasEventListener, listeners[@intCast(i + 1)])).?, "delete", .{ evt });
                } else if (Inheritance.call(Inheritance.receiver(evt.?, "getCommand").getCommand().?, "compareTo", .{ MyCanvasEventService.DUPLICATE }) == 0) {
                    _ = Inheritance.call((Inheritance.cast(?*MyCanvasEventListener, listeners[@intCast(i + 1)])).?, "duplicate", .{ evt });
                } else if (Inheritance.call(Inheritance.receiver(evt.?, "getCommand").getCommand().?, "compareTo", .{ MyCanvasEventService.SELECT }) == 0) {
                    _ = Inheritance.call((Inheritance.cast(?*MyCanvasEventListener, listeners[@intCast(i + 1)])).?, "select", .{ evt });
                } else if (Inheritance.call(Inheritance.receiver(evt.?, "getCommand").getCommand().?, "compareTo", .{ MyCanvasEventService.ROTATE }) == 0) {
                    _ = Inheritance.call((Inheritance.cast(?*MyCanvasEventListener, listeners[@intCast(i + 1)])).?, "rotate", .{ evt });
                } else if (Inheritance.call(Inheritance.receiver(evt.?, "getCommand").getCommand().?, "compareTo", .{ MyCanvasEventService.EXPLODE }) == 0) {
                    _ = Inheritance.call((Inheritance.cast(?*MyCanvasEventListener, listeners[@intCast(i + 1)])).?, "explode", .{ evt });
                } else if (Inheritance.call(Inheritance.receiver(evt.?, "getCommand").getCommand().?, "compareTo", .{ MyCanvasEventService.AUTOEXPLODE }) == 0) {
                    _ = Inheritance.call((Inheritance.cast(?*MyCanvasEventListener, listeners[@intCast(i + 1)])).?, "autoExplode", .{ evt });
                } else if (Inheritance.call(Inheritance.receiver(evt.?, "getCommand").getCommand().?, "compareTo", .{ MyCanvasEventService.CENTER }) == 0) {
                    _ = Inheritance.call((Inheritance.cast(?*MyCanvasEventListener, listeners[@intCast(i + 1)])).?, "center", .{ evt });
                }
            }
            }
        }
    }
};

