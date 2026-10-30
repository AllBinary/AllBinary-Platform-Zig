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
// package org.allbinary.game.input.motion.action

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const GameKeyCompleteMotionGestureInputEvent = @import("org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.zig").GameKeyCompleteMotionGestureInputEvent;

pub const GameKeyCompleteMotionGestureInputEventFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory";
    logUtil: ?*LogUtil = null,
    eventList: ?*BasicArrayList = null,
    var SINGLETON: ?*GameKeyCompleteMotionGestureInputEventFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = GameKeyCompleteMotionGestureInputEventFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.eventList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*GameKeyCompleteMotionGestureInputEventFactory {
        return Inheritance.upcast(?*GameKeyCompleteMotionGestureInputEventFactory, GameKeyCompleteMotionGestureInputEventFactory.SINGLETON);
    }
    

    pub fn add(self: *Self, gameKeyCompleteMotionGestureInputEvent: ?*GameKeyCompleteMotionGestureInputEvent) void {
        _ = Inheritance.call(self.eventList.?, "add", .{ gameKeyCompleteMotionGestureInputEvent });
    }
    

    pub fn updateAll(self: *Self) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonLabels.getInstance().?.START_LABEL }).?, "appendint", .{ self.eventList.?.size() }))), self, String.literal("updateAll") });
        {
            var index: i32 = self.eventList.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            const gameKeyCompleteMotionGestureInputEvent: ?*GameKeyCompleteMotionGestureInputEvent = Inheritance.cast(?*GameKeyCompleteMotionGestureInputEvent, self.eventList.?.objectArray[@intCast(index)]);
            _ = Inheritance.receiver(gameKeyCompleteMotionGestureInputEvent.?, "update").update();
            }
        }
    }
};

