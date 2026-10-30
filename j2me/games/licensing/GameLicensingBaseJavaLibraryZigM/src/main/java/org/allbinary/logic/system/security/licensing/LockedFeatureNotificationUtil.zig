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
// package org.allbinary.logic.system.security.licensing

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameNotificationEvent = @import("org/allbinary/game/layer/hud/event/GameNotificationEvent.zig").GameNotificationEvent;
const GameNotificationEventHandler = @import("org/allbinary/game/layer/hud/event/GameNotificationEventHandler.zig").GameNotificationEventHandler;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const ErrorSound = @import("org/allbinary/media/audio/ErrorSound.zig").ErrorSound;
const PrimaryPlayerQueueFactory = @import("org/allbinary/media/audio/PrimaryPlayerQueueFactory.zig").PrimaryPlayerQueueFactory;
const LicenseStrings = @import("org/allbinary/logic/system/security/licensing/LicenseStrings.zig").LicenseStrings;

pub const LockedFeatureNotificationUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil";
    gameNotificationEvent: ?*GameNotificationEvent = null,
    var instance: ?*LockedFeatureNotificationUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LockedFeatureNotificationUtil.create();
    }

    fn initFields(this: *Self) void {
        this.gameNotificationEvent = Inheritance.callStatic(GameNotificationEvent, "create5", .{ this, LicenseStrings.getInstance().?.LOCKED, Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 3 }), BasicColorFactory.getInstance().?.RED, BooleanFactory.getInstance().?.FALSE });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*LockedFeatureNotificationUtil {
        return Inheritance.upcast(?*LockedFeatureNotificationUtil, LockedFeatureNotificationUtil.instance);
    }
    

    // throws Exception
    pub fn fire(self: *Self) void {
        _ = Inheritance.call(PrimaryPlayerQueueFactory.getInstance().?, "add", .{ ErrorSound.getInstance() });
        _ = Inheritance.call(GameNotificationEventHandler.getInstance().?, "fireEvent", .{ self.gameNotificationEvent });
    }
    

    // throws Exception
    pub fn fireWithColor(self: *Self, basicColor: ?*BasicColor) void {
        _ = Inheritance.call(PrimaryPlayerQueueFactory.getInstance().?, "add", .{ ErrorSound.getInstance() });
        _ = Inheritance.call(self.gameNotificationEvent.?, "setBasicColorP", .{ basicColor });
        _ = Inheritance.call(GameNotificationEventHandler.getInstance().?, "fireEvent", .{ self.gameNotificationEvent });
    }
};

