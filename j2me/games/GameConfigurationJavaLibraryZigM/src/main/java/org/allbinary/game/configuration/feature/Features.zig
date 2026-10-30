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
// package org.allbinary.game.configuration.feature

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameFeatureEvent = @import("org/allbinary/game/configuration/event/GameFeatureEvent.zig").GameFeatureEvent;
const GameFeatureEventHandler = @import("org/allbinary/game/configuration/event/GameFeatureEventHandler.zig").GameFeatureEventHandler;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const GenericOperatingSystem = @import("org/allbinary/logic/system/os/GenericOperatingSystem.zig").GenericOperatingSystem;
const OperatingSystemFactory = @import("org/allbinary/logic/system/os/OperatingSystemFactory.zig").OperatingSystemFactory;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const Feature = @import("org/allbinary/game/configuration/feature/Feature.zig").Feature;
const GameFeatureFactory = @import("org/allbinary/game/configuration/feature/GameFeatureFactory.zig").GameFeatureFactory;
const InputFeatureFactory = @import("org/allbinary/game/configuration/feature/InputFeatureFactory.zig").InputFeatureFactory;
const MainFeatureFactory = @import("org/allbinary/game/configuration/feature/MainFeatureFactory.zig").MainFeatureFactory;
const SensorFeatureFactory = @import("org/allbinary/game/configuration/feature/SensorFeatureFactory.zig").SensorFeatureFactory;
const TouchFeatureFactory = @import("org/allbinary/game/configuration/feature/TouchFeatureFactory.zig").TouchFeatureFactory;

pub const Features = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.feature.Features";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    list: ?*BasicArrayList = null,
    defaultList: ?*BasicArrayList = null,
    var SINGLETON: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        
    }
    

    pub fn getInstance() ?*Features {
        if (Object.same(Features.SINGLETON, NullUtil.getInstance().?.NULL_OBJECT)) {
            Features.SINGLETON = Inheritance.upcast(@TypeOf(Features.SINGLETON), Features.create());
        }
        return Inheritance.cast(?*Features, Features.SINGLETON);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.list = Inheritance.upcast(@TypeOf(this.list), BasicArrayListD.create());
        this.defaultList = Inheritance.upcast(@TypeOf(this.defaultList), BasicArrayListD.create());
        _ = this.init();
        return this;
    }
    

    // throws Exception
    pub fn addDefault(self: *Self, gameFeature: ?*Feature) void {
        _ = Inheritance.call(self, "add", .{ gameFeature });
        if (!Inheritance.call(self.defaultList.?, "contains", .{ gameFeature })) {
            _ = Inheritance.call(self.defaultList.?, "add", .{ gameFeature });
        }
    }
    

    // throws Exception
    pub fn add(self: *Self, gameFeature: ?*Feature) void {
        if (!Inheritance.call(self.list.?, "contains", .{ gameFeature })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonLabels.getInstance().?.START_LABEL }).?, "append", .{ Object.toString(Object.of(gameFeature)) }))), self, self.commonStrings.?.ADD });
            _ = Inheritance.call(self.list.?, "add", .{ gameFeature });
            _ = Inheritance.call(GameFeatureEventHandler.getInstance().?, "fireEvent", .{ Inheritance.callStatic(GameFeatureEvent, "create2", .{ gameFeature, Object.toString(Object.of(gameFeature)) }) });
        }
    }
    

    // throws Exception
    pub fn removeDefault(self: *Self, gameFeature: ?*Feature) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonLabels.getInstance().?.START_LABEL }).?, "append", .{ Object.toString(Object.of(gameFeature)) }))), self, String.literal("removeDefault") });
        _ = Inheritance.call(self, "remove", .{ gameFeature });
        _ = Inheritance.call(self.defaultList.?, "remove", .{ gameFeature });
    }
    

    // throws Exception
    pub fn remove(self: *Self, gameFeature: ?*Feature) void {
        if (Inheritance.call(self.list.?, "contains", .{ gameFeature })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.commonStrings.?.REMOVE });
            _ = Inheritance.call(self.list.?, "remove", .{ gameFeature });
            _ = Inheritance.call(GameFeatureEventHandler.getInstance().?, "fireEvent", .{ Inheritance.callStatic(GameFeatureEvent, "create2", .{ gameFeature, Object.toString(Object.of(gameFeature)) }) });
        }
    }
    

    pub fn init(self: *Self) void {
        { // try
            const gameFeatureFactory: ?*GameFeatureFactory = Inheritance.upcast(?*GameFeatureFactory, GameFeatureFactory.getInstance());
            const inputFeatureFactory: ?*InputFeatureFactory = Inheritance.upcast(?*InputFeatureFactory, InputFeatureFactory.getInstance());
            const sensorFeatureFactory: ?*SensorFeatureFactory = Inheritance.upcast(?*SensorFeatureFactory, SensorFeatureFactory.getInstance());
            const touchFeatureFactory: ?*TouchFeatureFactory = Inheritance.upcast(?*TouchFeatureFactory, TouchFeatureFactory.getInstance());
            _ = Inheritance.call(self, "addDefault", .{ gameFeatureFactory.?.ARTIFICIAL_INTELLEGENCE_PROCESSOR });
            _ = Inheritance.call(self, "addDefault", .{ gameFeatureFactory.?.COLLIDABLE_INTERFACE_LAYER_PROCESSOR });
            _ = Inheritance.call(self, "addDefault", .{ gameFeatureFactory.?.GAME_INPUT_LAYER_PROCESSOR });
            _ = Inheritance.call(self, "addDefault", .{ gameFeatureFactory.?.TICKABLE_LAYER_PROCESSOR });
            _ = Inheritance.call(self, "addDefault", .{ inputFeatureFactory.?.MULTI_KEY_PRESS });
            _ = Inheritance.call(self, "addDefault", .{ inputFeatureFactory.?.REMOVE_DUPLICATE_KEY_PRESSES });
            _ = Inheritance.call(self, "addDefault", .{ gameFeatureFactory.?.SCREEN_SHAKE });
            _ = Inheritance.call(self, "addDefault", .{ gameFeatureFactory.?.POST_IMAGE_LOADING_MODIFICATION });
            const operatingSystemInterface: ?*GenericOperatingSystem = Inheritance.upcast(?*GenericOperatingSystem, Inheritance.receiverOf(OperatingSystemFactory.getInstance().?, "getOperatingSystemInstance").getOperatingSystemInstance());
            if (operatingSystemInterface.?.isOverScan()) {
                _ = Inheritance.call(self, "addDefault", .{ sensorFeatureFactory.?.NO_ORIENTATION });
                _ = Inheritance.call(self, "addDefault", .{ touchFeatureFactory.?.HIDE_SCREEN_BUTTONS });
            } else {
                _ = Inheritance.call(self, "addDefault", .{ sensorFeatureFactory.?.ORIENTATION_SENSORS });
                _ = Inheritance.call(self, "addDefault", .{ touchFeatureFactory.?.AUTO_HIDE_SHOW_SCREEN_BUTTONS });
            }
            _ = Inheritance.call(self, "addDefault", .{ touchFeatureFactory.?.TOUCH_ENABLED });
            _ = Inheritance.call(self, "addDefault", .{ MainFeatureFactory.getInstance().?.FULL_SCREEN });
            _ = Inheritance.call(self, "addDefault", .{ MainFeatureFactory.getInstance().?.LOAD_ONDEMAND });
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.INIT, e });
    }
    

    pub fn isDefault(self: *Self, gameFeature: ?*Feature) bool {
        return Inheritance.call(self.defaultList.?, "contains", .{ gameFeature });
    }
    

    pub fn isFeature(self: *Self, gameFeature: ?*Feature) bool {
        return Inheritance.call(self.list.?, "contains", .{ gameFeature });
    }
    

    // throws Exception
    pub fn toggle(self: *Self, gameFeature: ?*Feature) void {
        if (Inheritance.call(self, "isFeature", .{ gameFeature })) {
            _ = Inheritance.call(self, "remove", .{ gameFeature });
        } else {
            _ = Inheritance.call(self, "add", .{ gameFeature });
        }
    }
};

