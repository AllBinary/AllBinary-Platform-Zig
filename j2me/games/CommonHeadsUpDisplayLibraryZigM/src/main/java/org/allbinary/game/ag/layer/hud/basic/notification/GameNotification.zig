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
const GameNotificationEvent = @import("org/allbinary/game/layer/hud/event/GameNotificationEvent.zig").GameNotificationEvent;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const GameNotification = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.layer.hud.basic.notification.GameNotification";
    stringList: ?*BasicArrayList = null,
    timeList: ?*BasicArrayList = null,
    colorList: ?*BasicArrayList = null,
    pub var NULL_GAME_NOTIFICATION_EVENT: ?*GameNotificationEvent = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_GAME_NOTIFICATION_EVENT = Inheritance.callStatic(GameNotificationEvent, "create5", .{ NullUtil.getInstance().?.NULL_OBJECT, StringUtil.getInstance().?.EMPTY_STRING, Inheritance.callStatic(Integer, "create1", .{ 0 }), BasicColorFactory.getInstance().?.RED, BooleanFactory.getInstance().?.FALSE });
    }

    fn initFields(this: *Self) void {
        this.stringList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.timeList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.colorList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn add(self: *Self, string: ?*String, seconds: ?*Integer, basicColor: ?*BasicColor) void {
        if (!Inheritance.call(self.stringList.?, "contains", .{ string })) {
            _ = Inheritance.call(self.stringList.?, "add", .{ string });
            _ = Inheritance.call(self.timeList.?, "add", .{ seconds });
            _ = Inheritance.call(self.colorList.?, "add", .{ basicColor });
        }
    }
    

    pub fn clear(self: *Self) void {
        _ = self.stringList.?.clear();
        _ = self.timeList.?.clear();
        _ = self.colorList.?.clear();
    }
    

    pub fn getSize(self: *Self) i32 {
        return self.stringList.?.size();
    }
};

