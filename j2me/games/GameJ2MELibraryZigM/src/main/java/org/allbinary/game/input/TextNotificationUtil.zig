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
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameNotificationEvent = @import("org/allbinary/game/layer/hud/event/GameNotificationEvent.zig").GameNotificationEvent;
const GameNotificationEventHandler = @import("org/allbinary/game/layer/hud/event/GameNotificationEventHandler.zig").GameNotificationEventHandler;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const ErrorSound = @import("org/allbinary/media/audio/ErrorSound.zig").ErrorSound;
const PrimaryPlayerQueueFactory = @import("org/allbinary/media/audio/PrimaryPlayerQueueFactory.zig").PrimaryPlayerQueueFactory;
const SelectSound = @import("org/allbinary/media/audio/SelectSound.zig").SelectSound;
const Integer = @import("java/lang/Integer.zig").Integer;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const TextNotificationUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.TextNotificationUtil";
    TWO: ?*Integer = null,
    FALSE: ?*Boolean = null,
    gameNotificationEventHandler: ?*GameNotificationEventHandler = null,
    var instance: ?*TextNotificationUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TextNotificationUtil.create();
    }

    fn initFields(this: *Self) void {
        this.TWO = Inheritance.upcast(?*Integer, Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 2 }));
        this.FALSE = Inheritance.upcast(?*Boolean, BooleanFactory.getInstance().?.FALSE);
        this.gameNotificationEventHandler = Inheritance.upcast(?*GameNotificationEventHandler, GameNotificationEventHandler.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*TextNotificationUtil {
        return Inheritance.upcast(?*TextNotificationUtil, TextNotificationUtil.instance);
    }
    

    // throws Exception
    pub fn fireError(self: *Self, message: ?*String) void {
        _ = Inheritance.call(PrimaryPlayerQueueFactory.getInstance().?, "add", .{ ErrorSound.getInstance() });
        _ = Inheritance.call(self, "fire", .{ message });
    }
    

    // throws Exception
    pub fn fireNew(self: *Self, message: ?*String) void {
        _ = Inheritance.call(PrimaryPlayerQueueFactory.getInstance().?, "add", .{ SelectSound.getInstance() });
        _ = Inheritance.call(self, "fire", .{ message });
    }
    

    // throws Exception
    pub fn fireSuccess(self: *Self, message: ?*String) void {
        _ = Inheritance.call(PrimaryPlayerQueueFactory.getInstance().?, "add", .{ SelectSound.getInstance() });
        _ = Inheritance.call(self, "fire", .{ message });
    }
    

    // throws Exception
    pub fn fire(self: *Self, message: ?*String) void {
        const gameNotificationEvent: ?*GameNotificationEvent = Inheritance.callStatic(GameNotificationEvent, "create5", .{ self, message, self.TWO, BasicColorFactory.getInstance().?.RED, self.FALSE });
        _ = Inheritance.call(self.gameNotificationEventHandler.?, "fireEvent", .{ gameNotificationEvent });
    }
};

