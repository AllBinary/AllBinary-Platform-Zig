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
// package org.allbinary.game.layer.hud.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventListenerInterface = @import("org/allbinary/logic/util/event/EventListenerInterface.zig").EventListenerInterface;
const NullEventListener = @import("org/allbinary/logic/util/event/NullEventListener.zig").NullEventListener;
const BasicEventHandler = @import("org/allbinary/logic/util/event/handler/BasicEventHandler.zig").BasicEventHandler;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const GameNotificationEvent = @import("org/allbinary/game/layer/hud/event/GameNotificationEvent.zig").GameNotificationEvent;
const GameNotificationListenerInterface = @import("org/allbinary/game/layer/hud/event/GameNotificationListenerInterface.zig").GameNotificationListenerInterface;

pub const GameNotificationEventHandler = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.hud.event.GameNotificationEventHandler";
    base: BasicEventHandler = undefined,
    enabled: bool = false,
    var instance: ?*GameNotificationEventHandler = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GameNotificationEventHandler.create();
    }

    fn initFields(this: *Self) void {
        this.enabled = true;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicEventHandler.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn removeAllListeners(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        var eventListenerInterface: ?*EventListenerInterface = Inheritance.upcast(?*EventListenerInterface, NullEventListener.NULL_EVENT_LISTENER);
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.fieldPointer(self, "eventListenerInterfaceList").*);
        if (list.?.size() > 0) {
            eventListenerInterface = Inheritance.cast(?*EventListenerInterface, list.?.objectArray[@intCast(0)]);
        }
        _ = self.base.removeAllListeners();
        if (!Object.same(eventListenerInterface, NullEventListener.NULL_EVENT_LISTENER)) {
            _ = Inheritance.call(self, "addListenerInterface", .{ eventListenerInterface });
        }
    }
    

    pub fn getInstance() ?*GameNotificationEventHandler {
        return Inheritance.upcast(?*GameNotificationEventHandler, GameNotificationEventHandler.instance);
    }
    

    // throws Exception
    pub fn process(self: *Self, eventObject: ?*AllBinaryEventObject, eventListenerInterface: ?*EventListenerInterface) void {
        if (!self.enabled) {
            return;
        }
        const gameNotificationListenerInterface: ?*GameNotificationListenerInterface = Inheritance.cast(?*GameNotificationListenerInterface, eventListenerInterface);
        _ = Inheritance.call(gameNotificationListenerInterface.?, "onGameNotificationEvent", .{ Inheritance.cast(?*GameNotificationEvent, eventObject) });
    }
};

