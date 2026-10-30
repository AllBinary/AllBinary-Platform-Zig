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
// const Item = @import("javax/microedition/lcdui/Item.zig").Item;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const GameConfiguration = @import("org/allbinary/game/configuration/GameConfiguration.zig").GameConfiguration;
const GameConfigurationCentral = @import("org/allbinary/game/configuration/GameConfigurationCentral.zig").GameConfigurationCentral;
const GameConfigurationGauge = @import("org/allbinary/game/configuration/GameConfigurationGauge.zig").GameConfigurationGauge;
const GameConfigurationSingleton = @import("org/allbinary/game/configuration/GameConfigurationSingleton.zig").GameConfigurationSingleton;
const GameOptionsForm = @import("org/allbinary/game/configuration/GameOptionsForm.zig").GameOptionsForm;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const GameConfigurationUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.GameConfigurationUtil";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    GAUGE_UPDATE: ?*String = null,
    FROM: ?*String = null,
    TO: ?*String = null,
    COMPETITION_VALUE: i32 = 0,
    var instance: ?*GameConfigurationUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GameConfigurationUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.GAUGE_UPDATE = String.literal("Gauge Update: ");
        this.FROM = String.literal(" from: ");
        this.TO = String.literal(" to: ");
        this.COMPETITION_VALUE = 1;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*GameConfigurationUtil {
        return Inheritance.upcast(?*GameConfigurationUtil, GameConfigurationUtil.instance);
    }
    

    // throws Exception
    pub fn change(self: *Self, gameOptionsForm: ?*GameOptionsForm, gauge: ?*GameConfigurationGauge) void {
        _ = Inheritance.call(self, "update", .{ gauge });
        const gameConfigurationSingleton: ?*GameConfigurationSingleton = Inheritance.upcast(?*GameConfigurationSingleton, GameConfigurationSingleton.getInstance());
        const gameConfiguration: ?*GameConfiguration = Inheritance.upcast(?*GameConfiguration, Inheritance.call(gameConfigurationSingleton.?, "getInstanceByName", .{ Inheritance.receiver(gauge.?, "getLabel").getLabel() }));
        _ = Inheritance.call(self, "updateChallange", .{ gameOptionsForm, gameConfiguration });
    }
    

    // throws Exception
    pub fn update(self: *Self, gauge: ?*GameConfigurationGauge) void {
        const gameConfigurationSingleton: ?*GameConfigurationSingleton = Inheritance.upcast(?*GameConfigurationSingleton, GameConfigurationSingleton.getInstance());
        const gameConfiguration: ?*GameConfiguration = Inheritance.upcast(?*GameConfiguration, Inheritance.call(gameConfigurationSingleton.?, "getInstanceByName", .{ Inheritance.receiver(gauge.?, "getLabel").getLabel() }));
        const smallIntegerSingletonFactory: ?*SmallIntegerSingletonFactory = Inheritance.upcast(?*SmallIntegerSingletonFactory, SmallIntegerSingletonFactory.getInstance());
        const value: ?*Integer = Inheritance.upcast(?*Integer, Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ Inheritance.receiver(gauge.?, "getValue").getValue() + Inheritance.receiverOf(gameConfiguration.?.getMinValue().?, "intValue").intValue() }));
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.GAUGE_UPDATE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ gameConfiguration.?.getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.FROM });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiverOf(gameConfiguration.?.getValue().?, "intValue").intValue())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.TO });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(value.?.intValue())) });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, self.commonStrings.?.UPDATE });
        _ = Inheritance.call(gameConfiguration.?, "setValue", .{ value });
    }
    

    // throws Exception
    pub fn setDefault(self: *Self, gauge: ?*GameConfigurationGauge) void {
        const gameConfigurationSingleton: ?*GameConfigurationSingleton = Inheritance.upcast(?*GameConfigurationSingleton, GameConfigurationSingleton.getInstance());
        const gameConfiguration: ?*GameConfiguration = Inheritance.upcast(?*GameConfiguration, Inheritance.call(gameConfigurationSingleton.?, "getInstanceByName", .{ Inheritance.receiver(gauge.?, "getLabel").getLabel() }));
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Gauge Default: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ gameConfiguration.?.getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.TO });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiverOf(gameConfiguration.?.getDefaultValue().?, "intValue").intValue())) });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("setDefault") });
        _ = Inheritance.call(gauge.?, "setValue", .{ Inheritance.receiverOf(gameConfiguration.?.getDefaultValue().?, "intValue").intValue() - Inheritance.receiverOf(gameConfiguration.?.getMinValue().?, "intValue").intValue() });
        _ = Inheritance.call(gameConfiguration.?, "setValue", .{ gameConfiguration.?.getDefaultValue() });
    }
    

    // throws Exception
    pub fn updateChallange(self: *Self, gameOptionsForm: ?*GameOptionsForm, gameConfiguration: ?*GameConfiguration) void {
        const gameConfigurationSingleton: ?*GameConfigurationSingleton = Inheritance.upcast(?*GameConfigurationSingleton, GameConfigurationSingleton.getInstance());
        const gameConfigurationCentral: ?*GameConfigurationCentral = Inheritance.upcast(?*GameConfigurationCentral, GameConfigurationCentral.getInstance());
        if (Object.same(gameConfiguration, gameConfigurationCentral.?.CHALLENGE_LEVEL)) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("updateChallange") });
            _ = Inheritance.call(gameConfigurationCentral.?.COLLIDE_DAMAGE.?, "setValue", .{ gameConfiguration.?.getValue() });
            _ = Inheritance.call(gameConfigurationCentral.?.ATTACK_CHALLENGE_LEVEL.?, "setValue", .{ gameConfiguration.?.getValue() });
            _ = Inheritance.call(gameConfigurationCentral.?.DURABILITY_CHALLENGE_LEVEL.?, "setValue", .{ gameConfiguration.?.getValue() });
            _ = Inheritance.call(gameConfigurationCentral.?.SPEED_CHALLENGE_LEVEL.?, "setValue", .{ gameConfiguration.?.getValue() });
            const size: i32 = Inheritance.receiver(gameOptionsForm.?, "size").size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const item: ?*Item = Inheritance.upcast(?*Item, Inheritance.call(gameOptionsForm.?, "get", .{ index }));
                if (Object.instanceOf(Object.of(item), GameConfigurationGauge)) {
                    const gauge: ?*GameConfigurationGauge = Inheritance.cast(?*GameConfigurationGauge, item);
                    const name: ?*String = Inheritance.upcast(?*String, item.?.getLabel());
                    const nextGameConfiguration: ?*GameConfiguration = Inheritance.upcast(?*GameConfiguration, Inheritance.call(gameConfigurationSingleton.?, "getInstanceByName", .{ name }));
                    if (Object.same(nextGameConfiguration, gameConfigurationCentral.?.COLLIDE_DAMAGE)) {
                        _ = Inheritance.call(gauge.?, "setValue", .{ Inheritance.receiverOf(Inheritance.receiverOf(gameConfigurationCentral.?.COLLIDE_DAMAGE.?, "getValue").getValue().?, "intValue").intValue() - Inheritance.receiverOf(gameConfiguration.?.getMinValue().?, "intValue").intValue() });
                    } else if (Object.same(nextGameConfiguration, gameConfigurationCentral.?.DURABILITY_CHALLENGE_LEVEL)) {
                        _ = Inheritance.call(gauge.?, "setValue", .{ Inheritance.receiverOf(Inheritance.receiverOf(gameConfigurationCentral.?.DURABILITY_CHALLENGE_LEVEL.?, "getValue").getValue().?, "intValue").intValue() - Inheritance.receiverOf(gameConfiguration.?.getMinValue().?, "intValue").intValue() });
                    } else if (Object.same(nextGameConfiguration, gameConfigurationCentral.?.ATTACK_CHALLENGE_LEVEL)) {
                        _ = Inheritance.call(gauge.?, "setValue", .{ Inheritance.receiverOf(Inheritance.receiverOf(gameConfigurationCentral.?.ATTACK_CHALLENGE_LEVEL.?, "getValue").getValue().?, "intValue").intValue() - Inheritance.receiverOf(gameConfiguration.?.getMinValue().?, "intValue").intValue() });
                    } else if (Object.same(nextGameConfiguration, gameConfigurationCentral.?.SPEED_CHALLENGE_LEVEL)) {
                        _ = Inheritance.call(gauge.?, "setValue", .{ Inheritance.receiverOf(Inheritance.receiverOf(gameConfigurationCentral.?.SPEED_CHALLENGE_LEVEL.?, "getValue").getValue().?, "intValue").intValue() - Inheritance.receiverOf(gameConfiguration.?.getMinValue().?, "intValue").intValue() });
                    }
                }
                }
            }
        }
    }
    

    pub fn updateCompetitionValue(self: *Self) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("updateCompetitionValue") });
        const gameConfigurationCentral: ?*GameConfigurationCentral = Inheritance.upcast(?*GameConfigurationCentral, GameConfigurationCentral.getInstance());
        self.COMPETITION_VALUE = Inheritance.receiverOf(Inheritance.receiverOf(gameConfigurationCentral.?.COLLIDE_DAMAGE.?, "getValue").getValue().?, "intValue").intValue() + Inheritance.receiverOf(Inheritance.receiverOf(gameConfigurationCentral.?.ATTACK_CHALLENGE_LEVEL.?, "getValue").getValue().?, "intValue").intValue() + Inheritance.receiverOf(Inheritance.receiverOf(gameConfigurationCentral.?.DURABILITY_CHALLENGE_LEVEL.?, "getValue").getValue().?, "intValue").intValue() + Inheritance.receiverOf(Inheritance.receiverOf(gameConfigurationCentral.?.SPEED_CHALLENGE_LEVEL.?, "getValue").getValue().?, "intValue").intValue();
        self.COMPETITION_VALUE = (self.COMPETITION_VALUE >> @intCast(2));
    }
    

    pub fn getCompetitionValue(self: *Self) i32 {
        return self.COMPETITION_VALUE;
    }
};

