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
// const ChoiceGroup = @import("javax/microedition/lcdui/ChoiceGroup.zig").ChoiceGroup;
// const Item = @import("javax/microedition/lcdui/Item.zig").Item;
// const ItemStateListener = @import("javax/microedition/lcdui/ItemStateListener.zig").ItemStateListener;
const GameConfigurationGauge = @import("org/allbinary/game/configuration/GameConfigurationGauge.zig").GameConfigurationGauge;
const GameConfigurationUtil = @import("org/allbinary/game/configuration/GameConfigurationUtil.zig").GameConfigurationUtil;
const GameOptionsForm = @import("org/allbinary/game/configuration/GameOptionsForm.zig").GameOptionsForm;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const GameFeature = @import("org/allbinary/game/configuration/feature/GameFeature.zig").GameFeature;
const GameFeatureFactory = @import("org/allbinary/game/configuration/feature/GameFeatureFactory.zig").GameFeatureFactory;
const GameFeatureUtil = @import("org/allbinary/game/configuration/feature/GameFeatureUtil.zig").GameFeatureUtil;

pub const GameFeatureItemStateListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.feature.GameFeatureItemStateListener";
    logUtil: ?*LogUtil = null,
    gameOptionsForm: ?*GameOptionsForm = null,
    // Implements ItemStateListener
    var toggleList: ?*BasicArrayList = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        toggleList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create1(gameOptionsForm: ?*GameOptionsForm) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.gameOptionsForm = gameOptionsForm;
        const gameFeatureFactory: ?*GameFeatureFactory = Inheritance.upcast(?*GameFeatureFactory, GameFeatureFactory.getInstance());
        _ = Inheritance.callStatic(GameFeatureItemStateListener, "add", .{ gameFeatureFactory.?.ARTIFICIAL_INTELLEGENCE_PROCESSOR });
        _ = Inheritance.callStatic(GameFeatureItemStateListener, "add", .{ gameFeatureFactory.?.COLLIDABLE_INTERFACE_LAYER_PROCESSOR });
        _ = Inheritance.callStatic(GameFeatureItemStateListener, "add", .{ gameFeatureFactory.?.DAMAGE_FLOATERS });
        _ = Inheritance.callStatic(GameFeatureItemStateListener, "add", .{ gameFeatureFactory.?.DROPPED_ITEMS });
        _ = Inheritance.callStatic(GameFeatureItemStateListener, "add", .{ gameFeatureFactory.?.GAME_INPUT_LAYER_PROCESSOR });
        _ = Inheritance.callStatic(GameFeatureItemStateListener, "add", .{ gameFeatureFactory.?.HEALTH_BARS });
        _ = Inheritance.callStatic(GameFeatureItemStateListener, "add", .{ gameFeatureFactory.?.SOUND });
        _ = Inheritance.callStatic(GameFeatureItemStateListener, "add", .{ gameFeatureFactory.?.TICKABLE_LAYER_PROCESSOR });
        return this;
    }
    

    pub fn add(gameFeature: ?*GameFeature) void {
        if (!Inheritance.call(GameFeatureItemStateListener.toggleList.?, "contains", .{ gameFeature })) {
            _ = Inheritance.call(GameFeatureItemStateListener.toggleList.?, "add", .{ gameFeature });
        }
    }
    

    pub fn itemStateChanged(self: *Self, item: ?*Item) void {
        { // try
            const itemLabel: ?*String = Inheritance.upcast(?*String, item.?.getLabel());
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonLabels.getInstance().?.ITEM_LABEL }).?, "append", .{ itemLabel }))), self, String.literal("itemStateChanged") });
            if (Object.instanceOf(Object.of(item), GameConfigurationGauge)) {
                _ = Inheritance.call(GameConfigurationUtil.getInstance().?, "change", .{ self.gameOptionsForm, Inheritance.cast(?*GameConfigurationGauge, item) });
            } else if (Object.instanceOf(Object.of(item), ChoiceGroup)) {
                const gameFeatureUtil: ?*GameFeatureUtil = Inheritance.upcast(?*GameFeatureUtil, GameFeatureUtil.getInstance());
                if (Inheritance.call(gameFeatureUtil.?, "isExclusive", .{ itemLabel })) {
                    _ = Inheritance.call(gameFeatureUtil.?, "updateExclusiveForChoiceGroup", .{ Inheritance.cast(?*ChoiceGroup, item) });
                } else {
                    _ = Inheritance.call(gameFeatureUtil.?, "updateMultiple", .{ Inheritance.cast(?*ChoiceGroup, item) });
                }
            }
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("itemStateChanged"), e });
    }
};

