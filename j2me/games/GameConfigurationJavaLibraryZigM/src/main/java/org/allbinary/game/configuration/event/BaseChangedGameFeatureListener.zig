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
// package org.allbinary.game.configuration.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Feature = @import("org/allbinary/game/configuration/feature/Feature.zig").Feature;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const GameFeatureUtil = @import("org/allbinary/game/configuration/feature/GameFeatureUtil.zig").GameFeatureUtil;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const GameFeatureEvent = @import("org/allbinary/game/configuration/event/GameFeatureEvent.zig").GameFeatureEvent;
const GameFeatureListenerInterface = @import("org/allbinary/game/configuration/event/GameFeatureListenerInterface.zig").GameFeatureListenerInterface;

pub const BaseChangedGameFeatureListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.event.BaseChangedGameFeatureListener";
    pub const java_interfaces = .{ GameFeatureListenerInterface };
    logUtil: ?*LogUtil = null,
    gameFeatureUtil: ?*GameFeatureUtil = null,
    list: ?*BasicArrayList = null,
    changed: bool = false,
    // Implements GameFeatureListenerInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.gameFeatureUtil = Inheritance.upcast(?*GameFeatureUtil, GameFeatureUtil.getInstance());
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.changed = true;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ CommonStrings.getInstance().?.NOT_IMPLEMENTED, self });
    }
    

    pub fn onGameFeatureChange(self: *Self, gameFeatureEvent: ?*GameFeatureEvent) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.gameFeatureUtil.?.GAME_FEATURE_CHANGED }).?, "append", .{ Inheritance.receiver(gameFeatureEvent.?, "getWhatChanged").getWhatChanged() }))), self, self.gameFeatureUtil.?.ON_GAME_FEATURE_CHANGE });
        _ = Inheritance.call(self.list.?, "add", .{ Inheritance.receiver(gameFeatureEvent.?, "getGameOption").getGameOption() });
        _ = Inheritance.call(self, "setChanged", .{ true });
    }
    

    pub fn add(self: *Self, gameFeature: ?*Feature) void {
        _ = Inheritance.call(self.list.?, "add", .{ gameFeature });
    }
    

    pub fn remove(self: *Self, gameFeature: ?*Feature) void {
        _ = Inheritance.call(self.list.?, "remove", .{ gameFeature });
    }
    

    pub fn setChanged(self: *Self, initialized: bool) void {
        self.changed = initialized;
        if (!self.isChanged()) {
            _ = self.list.?.clear();
        }
    }
    

    pub fn isChangedFeature(self: *Self, gameFeature: ?*Feature) bool {
        const isChanged_: bool = Inheritance.call(self.list.?, "contains", .{ gameFeature });
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("GameFeature: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ gameFeature }) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" isFeature: ") });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ Inheritance.call(Features.getInstance().?, "isFeature", .{ gameFeature }) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" isChanged: ") });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ isChanged_ });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("isChanged") });
        return isChanged_;
    }
    

    pub fn isChanged(self: *Self) bool {
        return self.changed;
    }
};

