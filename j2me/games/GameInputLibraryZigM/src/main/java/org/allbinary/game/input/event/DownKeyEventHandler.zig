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
// package org.allbinary.game.input.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LocalPlayerInputIdFactory = @import("org/allbinary/game/input/LocalPlayerInputIdFactory.zig").LocalPlayerInputIdFactory;
const EventListenerInterface = @import("org/allbinary/logic/util/event/EventListenerInterface.zig").EventListenerInterface;
const DownKeyEventHandlerBase = @import("org/allbinary/game/input/event/DownKeyEventHandlerBase.zig").DownKeyEventHandlerBase;

pub const DownKeyEventHandler = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.event.DownKeyEventHandler";
    base: DownKeyEventHandlerBase = undefined,
    playerInputIdFactory: ?*LocalPlayerInputIdFactory = null,
    var instance: ?*DownKeyEventHandler = undefined;
    var instanceArray: []?*DownKeyEventHandlerBase = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = DownKeyEventHandler.create();
        instanceArray = @constCast(&[_]?*DownKeyEventHandlerBase{ DownKeyEventHandlerBase.create(), DownKeyEventHandlerBase.create(), DownKeyEventHandlerBase.create(), DownKeyEventHandlerBase.create(), DownKeyEventHandlerBase.create(), DownKeyEventHandlerBase.create() })[0..];
    }

    fn initFields(this: *Self) void {
        this.playerInputIdFactory = Inheritance.upcast(?*LocalPlayerInputIdFactory, LocalPlayerInputIdFactory.getInstance());
    }
    

    pub fn getInstance() ?*DownKeyEventHandler {
        return Inheritance.upcast(?*DownKeyEventHandler, DownKeyEventHandler.instance);
    }
    

    pub fn getInstanceForDevice(self: *Self, deviceId: i32) ?*DownKeyEventHandlerBase {
        const playerInputId: i32 = Inheritance.call(self.playerInputIdFactory.?, "getPlayerForDevice", .{ deviceId });
        return Inheritance.upcast(?*DownKeyEventHandlerBase, DownKeyEventHandler.instanceArray[@intCast(playerInputId)]);
    }
    

    pub fn getInstanceForPlayer(self: *Self, playerInputId: i32) ?*DownKeyEventHandlerBase {
        _ = self;
        return Inheritance.upcast(?*DownKeyEventHandlerBase, DownKeyEventHandler.instanceArray[@intCast(playerInputId)]);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = DownKeyEventHandlerBase.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn removeAllListeners(self: *Self) void {
        _ = self.base.removeAllListeners();
        {
            var index: i32 = @as(i32, @intCast(DownKeyEventHandler.instanceArray.len)) - 1;
            while (index >= 0) : (index -= 1) {
            _ = Inheritance.receiverOf(DownKeyEventHandler.instanceArray[@intCast(index)].?, "removeAllListeners").removeAllListeners();
            }
        }
    }
    

    pub fn removeListenerSingleThreaded(self: *Self, eventListenerInterface: ?*EventListenerInterface) void {
        _ = Inheritance.call(&self.base, "removeListenerSingleThreaded", .{ eventListenerInterface });
        {
            var index: i32 = @as(i32, @intCast(DownKeyEventHandler.instanceArray.len)) - 1;
            while (index >= 0) : (index -= 1) {
            _ = Inheritance.call(DownKeyEventHandler.instanceArray[@intCast(index)].?, "removeListenerSingleThreaded", .{ eventListenerInterface });
            }
        }
    }
    

    pub fn removeListener(self: *Self, eventListenerInterface: ?*EventListenerInterface) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(&self.base, "removeListener", .{ eventListenerInterface });
        {
            var index: i32 = @as(i32, @intCast(DownKeyEventHandler.instanceArray.len)) - 1;
            while (index >= 0) : (index -= 1) {
            _ = Inheritance.call(DownKeyEventHandler.instanceArray[@intCast(index)].?, "removeListener", .{ eventListenerInterface });
            }
        }
    }
};

