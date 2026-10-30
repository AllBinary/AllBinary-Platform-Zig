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
const DownGameKeyEventHandlerBase = @import("org/allbinary/game/input/event/DownGameKeyEventHandlerBase.zig").DownGameKeyEventHandlerBase;

pub const DownGameKeyEventHandler = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.event.DownGameKeyEventHandler";
    base: DownGameKeyEventHandlerBase = undefined,
    playerInputIdFactory: ?*LocalPlayerInputIdFactory = null,
    var instance: ?*DownGameKeyEventHandler = undefined;
    var instanceArray: []?*DownGameKeyEventHandlerBase = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = DownGameKeyEventHandler.create();
        instanceArray = @constCast(&[_]?*DownGameKeyEventHandlerBase{ DownGameKeyEventHandlerBase.create(), DownGameKeyEventHandlerBase.create(), DownGameKeyEventHandlerBase.create(), DownGameKeyEventHandlerBase.create(), DownGameKeyEventHandlerBase.create(), DownGameKeyEventHandlerBase.create() })[0..];
    }

    fn initFields(this: *Self) void {
        this.playerInputIdFactory = Inheritance.upcast(?*LocalPlayerInputIdFactory, LocalPlayerInputIdFactory.getInstance());
    }
    

    pub fn getInstance() ?*DownGameKeyEventHandler {
        return Inheritance.upcast(?*DownGameKeyEventHandler, DownGameKeyEventHandler.instance);
    }
    

    pub fn getInstanceForDevice(self: *Self, deviceId: i32) ?*DownGameKeyEventHandlerBase {
        const playerInputId: i32 = Inheritance.call(self.playerInputIdFactory.?, "getPlayerForDevice", .{ deviceId });
        return Inheritance.upcast(?*DownGameKeyEventHandlerBase, DownGameKeyEventHandler.instanceArray[@intCast(playerInputId)]);
    }
    

    pub fn getInstanceForPlayer(self: *Self, playerInputId: i32) ?*DownGameKeyEventHandlerBase {
        _ = self;
        return Inheritance.upcast(?*DownGameKeyEventHandlerBase, DownGameKeyEventHandler.instanceArray[@intCast(playerInputId)]);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = DownGameKeyEventHandlerBase.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn removeAllListeners(self: *Self) void {
        _ = self.base.removeAllListeners();
        {
            var index: i32 = @as(i32, @intCast(DownGameKeyEventHandler.instanceArray.len)) - 1;
            while (index >= 0) : (index -= 1) {
            _ = Inheritance.receiverOf(DownGameKeyEventHandler.instanceArray[@intCast(index)].?, "removeAllListeners").removeAllListeners();
            }
        }
    }
    

    pub fn removeListenerSingleThreaded(self: *Self, eventListenerInterface: ?*EventListenerInterface) void {
        _ = Inheritance.call(&self.base, "removeListenerSingleThreaded", .{ eventListenerInterface });
        {
            var index: i32 = @as(i32, @intCast(DownGameKeyEventHandler.instanceArray.len)) - 1;
            while (index >= 0) : (index -= 1) {
            _ = Inheritance.call(DownGameKeyEventHandler.instanceArray[@intCast(index)].?, "removeListenerSingleThreaded", .{ eventListenerInterface });
            }
        }
    }
    

    pub fn removeListener(self: *Self, eventListenerInterface: ?*EventListenerInterface) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(&self.base, "removeListener", .{ eventListenerInterface });
        {
            var index: i32 = @as(i32, @intCast(DownGameKeyEventHandler.instanceArray.len)) - 1;
            while (index >= 0) : (index -= 1) {
            _ = Inheritance.call(DownGameKeyEventHandler.instanceArray[@intCast(index)].?, "removeListener", .{ eventListenerInterface });
            }
        }
    }
};

