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
// const NullImage = @import("javax/microedition/lcdui/NullImage.zig").NullImage;
const GameConfigurationGauge = @import("org/allbinary/game/configuration/GameConfigurationGauge.zig").GameConfigurationGauge;
const GameConfigurationUtil = @import("org/allbinary/game/configuration/GameConfigurationUtil.zig").GameConfigurationUtil;
const CommandForm = @import("org/allbinary/graphics/displayable/screen/CommandForm.zig").CommandForm;
const MEUtil = @import("org/allbinary/logic/MEUtil.zig").MEUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const HashtableUtil = @import("org/allbinary/util/HashtableUtil.zig").HashtableUtil;
const Feature = @import("org/allbinary/game/configuration/feature/Feature.zig").Feature;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const GameFeatureUtil = @import("org/allbinary/game/configuration/feature/GameFeatureUtil.zig").GameFeatureUtil;

pub const GameFeatureFormUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.feature.GameFeatureFormUtil";
    logUtil: ?*LogUtil = null,
    meUtil: ?*MEUtil = null,
    var instance: ?*GameFeatureFormUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GameFeatureFormUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.meUtil = Inheritance.upcast(?*MEUtil, MEUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*GameFeatureFormUtil {
        return Inheritance.upcast(?*GameFeatureFormUtil, GameFeatureFormUtil.instance);
    }
    

    pub fn getChoiceGroup(self: *Self, hashtable: ?*ABHashtable, name: ?*String, option: i32) ?*ChoiceGroup {
        const stringMaker: ?*StringMaker = StringMaker.create();
        const choiceGroup: ?*ChoiceGroup = Inheritance.callStatic(ChoiceGroup, "create4", .{ name, option, Inheritance.receiverOf(StringUtil.getInstance().?, "getArrayInstance").getArrayInstance(), NullImage.NULL_IMAGE_ARRAY });
        const list: ?*BasicArrayList = Inheritance.cast(?*BasicArrayList, Inheritance.call(hashtable.?, "get", .{ Inheritance.cast(?Object, name) }));
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        const ADD_CHOICE: ?*String = String.literal(": Adding Choice: ");
        const GET_CHOICE_GROUP: ?*String = String.literal("getChoiceGroup");
        const size: i32 = list.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const gameFeature: ?*Feature = Inheritance.cast(?*Feature, list.?.objectArray[@intCast(index)]);
            _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ name }).?, "append", .{ ADD_CHOICE }).?, "append", .{ Object.toString(Object.of(gameFeature)) }))), self, GET_CHOICE_GROUP });
            _ = Inheritance.call(choiceGroup.?, "append", .{ Object.toString(Object.of(gameFeature)), NullImage.NULL_IMAGE });
            if (Inheritance.call(features.?, "isFeature", .{ gameFeature })) {
                _ = Inheritance.call(choiceGroup.?, "setSelectedIndex", .{ index, true });
            }
            }
        }
        return choiceGroup;
    }
    

    pub fn addChoiceGroup(self: *Self, form: ?*CommandForm, hashtable: ?*ABHashtable, option: i32) void {
        const stringMaker: ?*StringMaker = StringMaker.create();
        const ADDING_CHOICE_GROUP: ?*String = String.literal("Adding Choice Group: ");
        const ADD_CHOICE_GROUP: ?*String = String.literal("addChoiceGroup");
        const size: i32 = Inheritance.receiver(hashtable.?, "size").size();
        const objectArray: []?Object = Inheritance.call(HashtableUtil.getInstance().?, "getKeysAsArray", .{ hashtable });
        var name: ?*String = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            name = Inheritance.cast(?*String, objectArray[@intCast(index)]);
            _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ ADDING_CHOICE_GROUP }).?, "append", .{ name }))), self, ADD_CHOICE_GROUP });
            _ = Inheritance.call(self.meUtil.?, "appendItem", .{ form, Inheritance.call(self, "getChoiceGroup", .{ hashtable, name, option }) });
            }
        }
    }
    

    // throws Exception
    pub fn setDefault(self: *Self, form: ?*CommandForm) void {
        _ = self;
        const size: i32 = Inheritance.receiver(form.?, "size").size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const item: ?*Item = Inheritance.upcast(?*Item, Inheritance.call(form.?, "get", .{ index }));
            if (Object.instanceOf(Object.of(item), GameConfigurationGauge)) {
                _ = Inheritance.call(GameConfigurationUtil.getInstance().?, "setDefault", .{ Inheritance.cast(?*GameConfigurationGauge, item) });
            } else if (Object.instanceOf(Object.of(item), ChoiceGroup)) {
                _ = Inheritance.call(GameFeatureUtil.getInstance().?, "setDefault", .{ Inheritance.cast(?*ChoiceGroup, item) });
            }
            }
        }
    }
};

