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
// package org.allbinary.game.ag.layer.hud.basic.notification

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const BasicHud = @import("org/allbinary/game/graphics/hud/BasicHud.zig").BasicHud;
const BasicHudFactory = @import("org/allbinary/game/graphics/hud/BasicHudFactory.zig").BasicHudFactory;
const GameNotificationEvent = @import("org/allbinary/game/layer/hud/event/GameNotificationEvent.zig").GameNotificationEvent;
const GameNotificationListenerInterface = @import("org/allbinary/game/layer/hud/event/GameNotificationListenerInterface.zig").GameNotificationListenerInterface;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const GameNotification = @import("org/allbinary/game/ag/layer/hud/basic/notification/GameNotification.zig").GameNotification;
const Integer = @import("java/lang/Integer.zig").Integer;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const GameNotificationHud = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud";
    base: BasicHud = undefined,
    METHOD_NAME: ?*String = null,
    lastGameNotificationEvent: ?*GameNotificationEvent = null,
    // Implements GameNotificationListenerInterface
    pub var NULL_GAME_NOTIFICATION: ?*GameNotificationHud = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_GAME_NOTIFICATION = Inheritance.callStatic(GameNotificationHud, "create4", .{ BasicHudFactory.getInstance().?.TOPCENTER, BasicHudFactory.getInstance().?.HORIZONTAL, 0, BasicColorFactory.getInstance().?.RED });
    }

    fn initFields(this: *Self) void {
        this.METHOD_NAME = String.literal("onGameNotificationEvent");
        this.lastGameNotificationEvent = Inheritance.upcast(?*GameNotificationEvent, GameNotification.NULL_GAME_NOTIFICATION_EVENT);
    }
    

    pub fn create4(location: i32, direction: i32, bufferZone: i32, basicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicHud, "create4", .{ location, direction, bufferZone, basicColor }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    // throws Exception
    pub fn onGameNotificationEvent(self: *Self, gameNotificationEvent: ?*GameNotificationEvent) void {
        if (!Object.same(self.lastGameNotificationEvent, gameNotificationEvent)) {
            self.lastGameNotificationEvent = gameNotificationEvent;
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.receiver(gameNotificationEvent.?, "getString").getString(), self, self.METHOD_NAME });
        }
        _ = Inheritance.call(self, "add", .{ Inheritance.receiver(gameNotificationEvent.?, "getString").getString(), Inheritance.receiver(gameNotificationEvent.?, "getSeconds").getSeconds(), Inheritance.receiver(gameNotificationEvent.?, "getBasicColorP").getBasicColorP(), Inheritance.receiver(gameNotificationEvent.?, "getPermanent").getPermanent() });
    }
    

    pub fn add(self: *Self, string: ?*String, seconds: ?*Integer, basicColor: ?*BasicColor, permanent: ?*Boolean) void {
        _ = string;
        _ = seconds;
        _ = basicColor;
        _ = permanent;
        _ = self;
    }
    

    // throws Exception
    pub fn processTick(self: *Self) void {
        _ = self;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
    

    pub fn clear(self: *Self) void {
        _ = self;
    }
};

