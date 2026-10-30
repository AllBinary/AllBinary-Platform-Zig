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
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const InputFeatureFactory = @import("org/allbinary/game/configuration/feature/InputFeatureFactory.zig").InputFeatureFactory;
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;

pub const GameInput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.GameInput";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    gameKeyEventList: ?*BasicArrayList = null,
    removalGameKeyEventList: ?*BasicArrayList = null,
    isRemoveDuplicateKeyPresses: bool = false,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        
        
    }
    

    pub fn create2(gameKeyEventList: ?*BasicArrayList, removalGameKeyEventList: ?*BasicArrayList) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.gameKeyEventList = gameKeyEventList;
        this.removalGameKeyEventList = removalGameKeyEventList;
        this.isRemoveDuplicateKeyPresses = Inheritance.call(Features.getInstance().?, "isFeature", .{ InputFeatureFactory.getInstance().?.REMOVE_DUPLICATE_KEY_PRESSES });
        return this;
    }
    

    pub fn add(self: *Self, gameKeyEvent: ?*GameKeyEvent) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        if (self.isRemoveDuplicateKeyPresses and Inheritance.call(self.gameKeyEventList.?, "contains", .{ gameKeyEvent })) {
            return;
        }
        if (gameKeyEvent != null) {
            _ = Inheritance.call(self.gameKeyEventList.?, "add", .{ gameKeyEvent });
        } else {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Danger Passed Null GameKeyEvent"), self, self.commonStrings.?.ADD });
        }
    }
    

    pub fn addForRemoval(self: *Self, gameKeyEvent: ?*GameKeyEvent) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self.removalGameKeyEventList.?, "add", .{ gameKeyEvent });
    }
    

    pub fn isForRemoval(self: *Self, gameKeyEvent: ?*GameKeyEvent) bool {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        return Inheritance.call(self.removalGameKeyEventList.?, "contains", .{ gameKeyEvent });
    }
    

    pub fn clear(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = self.gameKeyEventList.?.clear();
    }
    

    pub fn removeNonAIInputGameKeyEvents(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const list: ?*BasicArrayList = self.gameKeyEventList;
        var gameKeyEvent: ?*GameKeyEvent = null;
        {
            var index: i32 = list.?.size();
            while (value_N66847: { index -= 1; break :value_N66847 index; } >= 0) {
            gameKeyEvent = Inheritance.cast(?*GameKeyEvent, list.?.objectArray[@intCast(index)]);
            if (Inheritance.receiver(gameKeyEvent.?, "getSourceId").getSourceId() != 1) {
                _ = Inheritance.call(list.?, "removeAt", .{ index });
            }
            }
        }
    }
    

    pub fn update(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const removeList: ?*BasicArrayList = self.removalGameKeyEventList;
        const list: ?*BasicArrayList = self.gameKeyEventList;
        const size: i32 = removeList.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const anyType: ?Object = Inheritance.upcast(?Object, removeList.?.objectArray[@intCast(index)]);
            {
                var index2: i32 = list.?.size();
                while (value_N67208: { index2 -= 1; break :value_N67208 index2; } >= 0) {
                if (Object.same(list.?.objectArray[@intCast(index2)], anyType)) {
                    _ = Inheritance.call(list.?, "removeAt", .{ index2 });
                }
                }
            }
            }
        }
        _ = removeList.?.clear();
    }
    

    pub fn getRemovalGameKeyEventList(self: *Self) ?*BasicArrayList {
        return self.removalGameKeyEventList;
    }
    

    pub fn getGameKeyEventList(self: *Self) ?*BasicArrayList {
        return self.gameKeyEventList;
    }
};

