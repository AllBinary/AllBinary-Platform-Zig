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
// package org.allbinary.game.ag.ai

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameInput = @import("org/allbinary/game/input/GameInput.zig").GameInput;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const GameTickTimeDelayHelper = @import("org/allbinary/time/GameTickTimeDelayHelper.zig").GameTickTimeDelayHelper;
const GameTickTimeDelayHelperFactory = @import("org/allbinary/time/GameTickTimeDelayHelperFactory.zig").GameTickTimeDelayHelperFactory;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const KeyPressesAI = @import("org/allbinary/game/ag/ai/KeyPressesAI.zig").KeyPressesAI;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const MultiKeyPressesAI = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.MultiKeyPressesAI";
    base: KeyPressesAI = undefined,
    toggleTimeHelper: ?*TimeDelayHelper = null,
    gameTickTimeDelayHelper: ?*GameTickTimeDelayHelper = null,

    fn initFields(this: *Self) void {
        this.toggleTimeHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 600 });
        this.gameTickTimeDelayHelper = Inheritance.upcast(?*GameTickTimeDelayHelper, GameTickTimeDelayHelperFactory.getInstance());
    }
    

    pub fn create3(hashtable: ?*ABHashtable, ownerLayerInterface: ?*AllBinaryLayer, gameInput: ?*GameInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(KeyPressesAI, "create3", .{ hashtable, ownerLayerInterface, gameInput }).*;
        this.initFields();
        _ = this.update();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processAI(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = allBinaryLayerManager;
        _ = self;
    }
    

    // throws Exception
    pub fn update(self: *Self) void {
        const gameInput: ?*GameInput = Inheritance.upcast(?*GameInput, Inheritance.receiver(self, "getGameInput").getGameInput());
        const keys: []?*Integer = Inheritance.fieldPointer(self, "keys").*;
        const size: i32 = @as(i32, @intCast(keys.len));
        if (Inheritance.receiver(self, "isOn").isOn()) {
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const key: i32 = keys[@intCast(index)].?.intValue();
                if (key != -1) {
                    _ = Inheritance.call(gameInput.?, "add", .{ Inheritance.call(Inheritance.fieldPointer(self, "gameKeyEventFactory").*.?, "getInstanceForKey", .{ self, key }) });
                }
                }
            }
        } else {
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const key: i32 = keys[@intCast(index)].?.intValue();
                if (key != -1) {
                    _ = Inheritance.call(gameInput.?, "addForRemoval", .{ Inheritance.call(Inheritance.fieldPointer(self, "gameKeyEventFactory").*.?, "getInstanceForKey", .{ self, key }) });
                }
                }
            }
        }
    }
    

    // throws Exception
    pub fn toggle(self: *Self) void {
        if (Inheritance.call(self.toggleTimeHelper.?, "isTime", .{ self.gameTickTimeDelayHelper.?.startTime })) {
            _ = self.base.toggle();
            _ = self.update();
        }
    }
    

    // throws Exception
    pub fn disable(self: *Self) void {
        if (Inheritance.call(self.toggleTimeHelper.?, "isTime", .{ self.gameTickTimeDelayHelper.?.startTime })) {
            _ = self.base.disable();
            _ = self.update();
        }
    }
    

    // throws Exception
    pub fn enable(self: *Self) void {
        if (Inheritance.call(self.toggleTimeHelper.?, "isTime", .{ self.gameTickTimeDelayHelper.?.startTime })) {
            _ = self.base.enable();
            _ = self.update();
        }
    }
};

