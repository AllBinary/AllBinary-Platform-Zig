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
const Enumeration = @import("java/util/Enumeration.zig").Enumeration;
// const ChoiceGroup = @import("javax/microedition/lcdui/ChoiceGroup.zig").ChoiceGroup;
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const EnumerationUtil = @import("org/allbinary/util/EnumerationUtil.zig").EnumerationUtil;
const HashtableUtil = @import("org/allbinary/util/HashtableUtil.zig").HashtableUtil;
const Feature = @import("org/allbinary/game/configuration/feature/Feature.zig").Feature;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const GameFeatureChoiceGroups = @import("org/allbinary/game/configuration/feature/GameFeatureChoiceGroups.zig").GameFeatureChoiceGroups;

pub const GameFeatureUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.feature.GameFeatureUtil";
    logUtil: ?*LogUtil = null,
    tsUtil: ?*TsUtil = null,
    enumerationUtil: ?*EnumerationUtil = null,
    ON_GAME_FEATURE_CHANGE: ?*String = null,
    GAME_FEATURE_CHANGED: ?*String = null,
    var instance: ?*GameFeatureUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GameFeatureUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.tsUtil = Inheritance.upcast(?*TsUtil, TsUtil.getInstance());
        this.enumerationUtil = Inheritance.upcast(?*EnumerationUtil, EnumerationUtil.getInstance());
        this.ON_GAME_FEATURE_CHANGE = String.literal("onGameFeatureChange");
        this.GAME_FEATURE_CHANGED = String.literal("Game Feature Changed: ");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*GameFeatureUtil {
        return Inheritance.upcast(?*GameFeatureUtil, GameFeatureUtil.instance);
    }
    

    // throws Exception
    pub fn setDefault(self: *Self, choiceGroup: ?*ChoiceGroup) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const METHOD_NAME: ?*String = String.literal("setDefault");
        const SELECTED_ARRAY_RETURN: ?*String = String.literal("selectedArray_return[");
        const SELECTED_SEP: ?*String = String.literal("] = ");
        const selectedArray_return: []bool = array_N66345: { const array_N66345_array = allocator.alloc(bool, @intCast(choiceGroup.?.size())) catch unreachable; @memset(array_N66345_array, false); break :array_N66345 array_N66345_array; };
        const total: i32 = Inheritance.call(choiceGroup.?, "getSelectedFlags", .{ selectedArray_return });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Multiple Total Choices: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ total });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, METHOD_NAME });
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(selectedArray_return.len))) : (index += 1) {
            const isSelected: bool = selectedArray_return[@intCast(index)];
            _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ SELECTED_ARRAY_RETURN });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ index });
            _ = Inheritance.call(stringBuffer.?, "append", .{ SELECTED_SEP });
            _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ isSelected });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, METHOD_NAME });
            const selectedChoiceLabel: ?*String = Inheritance.upcast(?*String, Inheritance.call(choiceGroup.?, "getString", .{ index }));
            const gameFeature: ?*Feature = Inheritance.upcast(?*Feature, Inheritance.callStatic(Feature, "getInstance", .{ selectedChoiceLabel }));
            if (Inheritance.call(features.?, "isDefault", .{ gameFeature })) {
                _ = Inheritance.call(features.?, "add", .{ gameFeature });
                _ = Inheritance.call(choiceGroup.?, "setSelectedIndex", .{ index, true });
            } else {
                _ = Inheritance.call(features.?, "remove", .{ gameFeature });
                _ = Inheritance.call(choiceGroup.?, "setSelectedIndex", .{ index, false });
            }
            }
        }
    }
    

    // throws Exception
    pub fn updateMultiple(self: *Self, choiceGroup: ?*ChoiceGroup) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const METHOD_NAME: ?*String = String.literal("updateMultiple");
        const SELECTED_ARRAY_RETURN: ?*String = String.literal("selectedArray_return[");
        const SELECTED_SEP: ?*String = String.literal("] = ");
        const selectedArray_return: []bool = array_N67447: { const array_N67447_array = allocator.alloc(bool, @intCast(choiceGroup.?.size())) catch unreachable; @memset(array_N67447_array, false); break :array_N67447 array_N67447_array; };
        const total: i32 = Inheritance.call(choiceGroup.?, "getSelectedFlags", .{ selectedArray_return });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Multiple Total Choices: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ total });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, METHOD_NAME });
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(selectedArray_return.len))) : (index += 1) {
            const isSelected: bool = selectedArray_return[@intCast(index)];
            _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ SELECTED_ARRAY_RETURN });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ index });
            _ = Inheritance.call(stringBuffer.?, "append", .{ SELECTED_SEP });
            _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ isSelected });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, METHOD_NAME });
            const selectedChoiceLabel: ?*String = Inheritance.upcast(?*String, Inheritance.call(choiceGroup.?, "getString", .{ index }));
            const gameFeature: ?*Feature = Inheritance.upcast(?*Feature, Inheritance.callStatic(Feature, "getInstance", .{ selectedChoiceLabel }));
            if (!isSelected and Inheritance.call(features.?, "isFeature", .{ gameFeature })) {
                _ = Inheritance.call(features.?, "remove", .{ gameFeature });
            } else if (isSelected and !Inheritance.call(features.?, "isFeature", .{ gameFeature })) {
                _ = Inheritance.call(features.?, "add", .{ gameFeature });
            }
            }
        }
    }
    

    // throws Exception
    pub fn updateExclusiveForChoiceGroup(self: *Self, choiceGroup: ?*ChoiceGroup) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const METHOD_NAME: ?*String = String.literal("updateExclusive");
        const SELECTED_ARRAY_RETURN: ?*String = String.literal("selectedArray_return[");
        const SELECTED_SEP: ?*String = String.literal("] = ");
        const selectedArray_return: []bool = array_N68546: { const array_N68546_array = allocator.alloc(bool, @intCast(choiceGroup.?.size())) catch unreachable; @memset(array_N68546_array, false); break :array_N68546 array_N68546_array; };
        const total: i32 = Inheritance.call(choiceGroup.?, "getSelectedFlags", .{ selectedArray_return });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Exclusive Total Choices: 1==") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ total });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, METHOD_NAME });
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(selectedArray_return.len))) : (index += 1) {
            const isSelected: bool = selectedArray_return[@intCast(index)];
            _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ SELECTED_ARRAY_RETURN });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ index });
            _ = Inheritance.call(stringBuffer.?, "append", .{ SELECTED_SEP });
            _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ isSelected });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, METHOD_NAME });
            if (isSelected) {
                const selectedChoiceLabel: ?*String = Inheritance.upcast(?*String, Inheritance.call(choiceGroup.?, "getString", .{ index }));
                _ = Inheritance.call(self, "updateExclusive", .{ selectedChoiceLabel });
            }
            }
        }
    }
    

    pub fn isExclusive(self: *Self, itemLabel: ?*String) bool {
        const enumeration: ?*Enumeration = Inheritance.upcast(?*Enumeration, Inheritance.receiverOf(Inheritance.receiverOf(GameFeatureChoiceGroups.getExclusiveInstance().?, "get").get().?, "keys").keys());
        var name: ?*String = null;
        while (Inheritance.call(self.enumerationUtil.?, "hasMoreElements", .{ enumeration })) {
            name = Inheritance.cast(?*String, Inheritance.call(self.enumerationUtil.?, "nextElement", .{ enumeration }));
            if (Inheritance.call(self.tsUtil.?, "compareTo", .{ itemLabel, name }) == 0) {
                return true;
            }
        }
        return false;
    }
    

    // throws Exception
    pub fn updateExclusive(self: *Self, selectedChoiceLabel: ?*String) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonLabels.getInstance().?.ITEM_LABEL }).?, "append", .{ selectedChoiceLabel }))), self, String.literal("updateExclusive") });
        const gameFeature: ?*Feature = Inheritance.upcast(?*Feature, Inheritance.callStatic(Feature, "getInstance", .{ selectedChoiceLabel }));
        const hashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(GameFeatureChoiceGroups.getExclusiveInstance().?, "get").get());
        const objectArray: []?Object = Inheritance.call(HashtableUtil.getInstance().?, "getKeysAsArray", .{ hashtable });
        var basicArrayList: ?*BasicArrayList = null;
        var anyType: ?Object = null;
        const size: i32 = @as(i32, @intCast(objectArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            anyType = Inheritance.cast(?Object, objectArray[@intCast(index)]);
            basicArrayList = Inheritance.cast(?*BasicArrayList, Inheritance.call(hashtable.?, "get", .{ anyType }));
            _ = Inheritance.call(self, "updateExclusiveList", .{ gameFeature, basicArrayList });
            }
        }
    }
    

    // throws Exception
    pub fn updateExclusiveList(self: *Self, gameFeature: ?*Feature, list: ?*BasicArrayList) void {
        _ = self;
        if (Inheritance.call(list.?, "contains", .{ gameFeature })) {
            const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
            const addIndex: i32 = Inheritance.call(list.?, "indexOf", .{ gameFeature });
            const size: i32 = list.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                if (addIndex != index) {
                    _ = Inheritance.call(features.?, "remove", .{ Inheritance.cast(?*Feature, list.?.objectArray[@intCast(index)]) });
                } else {
                    _ = Inheritance.call(features.?, "add", .{ Inheritance.cast(?*Feature, list.?.objectArray[@intCast(index)]) });
                }
                }
            }
        }
    }
};

