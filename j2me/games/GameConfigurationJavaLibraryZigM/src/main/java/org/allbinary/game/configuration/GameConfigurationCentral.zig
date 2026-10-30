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
// package org.allbinary.game.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameConfigurationPersistanceSingleton = @import("org/allbinary/game/configuration/persistance/GameConfigurationPersistanceSingleton.zig").GameConfigurationPersistanceSingleton;
const KeyValuePersistance = @import("org/allbinary/game/configuration/persistance/KeyValuePersistance.zig").KeyValuePersistance;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const GameConfiguration = @import("org/allbinary/game/configuration/GameConfiguration.zig").GameConfiguration;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const GameConfigurationCentral = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.GameConfigurationCentral";
    logUtil: ?*LogUtil = null,
    SCALE: ?*GameConfiguration = null,
    ORIENTATION: ?*GameConfiguration = null,
    SENSOR_UPDATE_RATE: ?*GameConfiguration = null,
    VIBRATION: ?*GameConfiguration = null,
    CHALLENGE_LEVEL: ?*GameConfiguration = null,
    COLLIDE_DAMAGE: ?*GameConfiguration = null,
    DURABILITY_CHALLENGE_LEVEL: ?*GameConfiguration = null,
    SPEED_CHALLENGE_LEVEL: ?*GameConfiguration = null,
    ATTACK_CHALLENGE_LEVEL: ?*GameConfiguration = null,
    CONTROL_LEVEL: ?*GameConfiguration = null,
    PLAYER_INPUT_WAIT: ?*GameConfiguration = null,
    SPEED: ?*GameConfiguration = null,
    SOUND_VOLUME: ?*GameConfiguration = null,
    MAX_GAME_OBJECTS: ?*GameConfiguration = null,
    MAX_LAYERS: ?*GameConfiguration = null,
    gameControlFidelity: i32 = 0,
    var SINGLETON: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        this.gameControlFidelity = 36;
    }
    

    pub fn getInstance() ?*GameConfigurationCentral {
        if (Object.same(GameConfigurationCentral.SINGLETON, NullUtil.getInstance().?.NULL_OBJECT)) {
            GameConfigurationCentral.SINGLETON = Inheritance.upcast(@TypeOf(GameConfigurationCentral.SINGLETON), GameConfigurationCentral.create());
        }
        return Inheritance.cast(?*GameConfigurationCentral, GameConfigurationCentral.SINGLETON);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const smallIntegerSingletonFactory: ?*SmallIntegerSingletonFactory = Inheritance.upcast(?*SmallIntegerSingletonFactory, SmallIntegerSingletonFactory.getInstance());
        this.SCALE = Inheritance.callStatic(GameConfiguration, "create4", .{ String.literal("Scale"), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 2 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 2 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 3 }) });
        this.ORIENTATION = Inheritance.callStatic(GameConfiguration, "create4", .{ String.literal("Orientation"), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 0 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 0 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 8 }) });
        this.SENSOR_UPDATE_RATE = Inheritance.callStatic(GameConfiguration, "create4", .{ String.literal("Sensor Update Rate"), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 0 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 0 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 3 }) });
        this.VIBRATION = Inheritance.callStatic(GameConfiguration, "create4", .{ String.literal("Vibration"), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 0 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 0 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 3 }) });
        this.CHALLENGE_LEVEL = Inheritance.callStatic(GameConfiguration, "create4", .{ String.literal("Global Challenge Level"), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 3 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 1 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 10 }) });
        this.COLLIDE_DAMAGE = Inheritance.callStatic(GameConfiguration, "create4", .{ String.literal("Collide Damage Challenge Level"), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 3 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 1 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 10 }) });
        this.DURABILITY_CHALLENGE_LEVEL = Inheritance.callStatic(GameConfiguration, "create4", .{ String.literal("Enemy Durability Challenge Level"), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 3 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 1 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 10 }) });
        this.SPEED_CHALLENGE_LEVEL = Inheritance.callStatic(GameConfiguration, "create4", .{ String.literal("Enemy Speed Challenge Level"), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 3 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 1 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 10 }) });
        this.ATTACK_CHALLENGE_LEVEL = Inheritance.callStatic(GameConfiguration, "create4", .{ String.literal("Enemy Attack Challenge Level"), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 3 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 1 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 10 }) });
        this.CONTROL_LEVEL = Inheritance.callStatic(GameConfiguration, "create4", .{ String.literal("Control Fidelity"), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 5 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 1 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 10 }) });
        this.PLAYER_INPUT_WAIT = Inheritance.callStatic(GameConfiguration, "create4", .{ String.literal("Input Wait"), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 5 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 1 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 10 }) });
        this.SPEED = Inheritance.callStatic(GameConfiguration, "create4", .{ String.literal("Game Speed (Device Specific)"), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 5 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 1 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 10 }) });
        this.SOUND_VOLUME = Inheritance.callStatic(GameConfiguration, "create4", .{ String.literal("Sound Volume"), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 6 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 0 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 10 }) });
        this.MAX_GAME_OBJECTS = Inheritance.callStatic(GameConfiguration, "create4", .{ String.literal("Max Game Objects"), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 20 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 1 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 50 }) });
        this.MAX_LAYERS = Inheritance.callStatic(GameConfiguration, "create4", .{ String.literal("Max Layers"), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 20 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 1 }), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 50 }) });
        return this;
    }
    

    pub fn load(self: *Self, abeClientInformation: ?*AbeClientInformationInterface) void {
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        { // try
            const smallIntegerSingletonFactory: ?*SmallIntegerSingletonFactory = Inheritance.upcast(?*SmallIntegerSingletonFactory, SmallIntegerSingletonFactory.getInstance());
            const keyValuePersistance: ?*KeyValuePersistance = Inheritance.upcast(?*KeyValuePersistance, GameConfigurationPersistanceSingleton.getInstance());
            _ = Inheritance.receiver(keyValuePersistance.?, "clear").clear();
            _ = Inheritance.call(keyValuePersistance.?, "loadAll", .{ abeClientInformation });
            const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(keyValuePersistance.?, "getIds").getIds());
            if (list.?.size() > 0) {
                const hashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, Inheritance.call(keyValuePersistance.?, "get", .{ 0 }));
                const anyType: ?Object = Inheritance.cast(?Object, self.SCALE.?.getName());
                const value: ?*String = Inheritance.cast(?*String, Inheritance.call(hashtable.?, "get", .{ anyType }));
                _ = Inheritance.call(self.SCALE.?, "setValue", .{ Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ Inheritance.receiverOf(Inheritance.callStatic(Integer, "valueOf", .{ value }).?, "intValue").intValue() }) });
            } else {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("No Game Configuration To Load"), self, commonStrings.?.LOAD });
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.LOAD, e });
    }
    

    pub fn setGameControlFidelity(self: *Self, gameControlFidelity: i32) void {
        self.gameControlFidelity = gameControlFidelity;
    }
    

    pub fn getGameControlFidelity(self: *Self) i32 {
        return self.gameControlFidelity;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const commonStrings: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonStrings.?.COMMA_SEP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.SCALE.?.getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiverOf(self.SCALE.?.getValue().?, "intValue").intValue())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonStrings.?.COMMA_SEP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.ORIENTATION.?.getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiverOf(self.ORIENTATION.?.getValue().?, "intValue").intValue())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonStrings.?.COMMA_SEP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.SENSOR_UPDATE_RATE.?.getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiverOf(self.SENSOR_UPDATE_RATE.?.getValue().?, "intValue").intValue())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonStrings.?.COMMA_SEP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.VIBRATION.?.getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiverOf(self.VIBRATION.?.getValue().?, "intValue").intValue())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonStrings.?.COMMA_SEP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.CHALLENGE_LEVEL.?.getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiverOf(self.CHALLENGE_LEVEL.?.getValue().?, "intValue").intValue())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonStrings.?.COMMA_SEP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.COLLIDE_DAMAGE.?.getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiverOf(self.COLLIDE_DAMAGE.?.getValue().?, "intValue").intValue())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonStrings.?.COMMA_SEP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.DURABILITY_CHALLENGE_LEVEL.?.getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiverOf(self.DURABILITY_CHALLENGE_LEVEL.?.getValue().?, "intValue").intValue())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonStrings.?.COMMA_SEP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.SPEED_CHALLENGE_LEVEL.?.getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiverOf(self.SPEED_CHALLENGE_LEVEL.?.getValue().?, "intValue").intValue())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonStrings.?.COMMA_SEP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.ATTACK_CHALLENGE_LEVEL.?.getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiverOf(self.ATTACK_CHALLENGE_LEVEL.?.getValue().?, "intValue").intValue())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonStrings.?.COMMA_SEP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.CONTROL_LEVEL.?.getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiverOf(self.CONTROL_LEVEL.?.getValue().?, "intValue").intValue())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonStrings.?.COMMA_SEP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.SPEED.?.getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiverOf(self.SPEED.?.getValue().?, "intValue").intValue())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonStrings.?.COMMA_SEP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.MAX_GAME_OBJECTS.?.getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiverOf(self.MAX_GAME_OBJECTS.?.getValue().?, "intValue").intValue())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonStrings.?.COMMA_SEP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.MAX_LAYERS.?.getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiverOf(self.MAX_LAYERS.?.getValue().?, "intValue").intValue())) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

