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
// package org.allbinary.game.paint.help

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const GameKey = @import("org/allbinary/game/input/GameKey.zig").GameKey;
const GameKeyFactory = @import("org/allbinary/game/input/GameKeyFactory.zig").GameKeyFactory;
const Input = @import("org/allbinary/game/input/Input.zig").Input;
const PlatformInputMappingFactory = @import("org/allbinary/game/input/PlatformInputMappingFactory.zig").PlatformInputMappingFactory;
const GameInputMapping = @import("org/allbinary/game/input/mapping/GameInputMapping.zig").GameInputMapping;
const PersistentInputMapping = @import("org/allbinary/game/input/mapping/PersistentInputMapping.zig").PersistentInputMapping;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const BasicColorUtil = @import("org/allbinary/graphics/color/BasicColorUtil.zig").BasicColorUtil;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const HelpPaintable = @import("org/allbinary/game/paint/help/HelpPaintable.zig").HelpPaintable;

pub const InputMappingHelpPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.paint.help.InputMappingHelpPaintable";
    base: HelpPaintable = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    commonSeps: ?*CommonSeps = null,
    stringUtil: ?*StringUtil = null,
    basicColorFactory: ?*BasicColorFactory = null,
    NONE: ?*GameKey = null,
    EMPTY_STRING: ?*String = null,
    gameInputMappingArray: []?*GameInputMapping = &.{},
    keyMappingArray: []?*BasicArrayList = &.{},
    actionBasicColor: []?*BasicColor = &.{},
    inputBasicColorArray: [][]?*BasicColor = &.{},
    selectedBasicColor: ?*BasicColor = null,
    updateMyFontProperties: ?*UpdateMyFontProperties = null,
    const AND: ?*String = String.literal(" and ");
    const SEP: ?*String = String.literal(", ");
    const MORE_THAN_TWO_IN_LIST_AND: ?*String = String.literal(", and ");

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.commonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        this.stringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        this.basicColorFactory = Inheritance.upcast(?*BasicColorFactory, BasicColorFactory.getInstance());
        this.NONE = Inheritance.upcast(?*GameKey, GameKeyFactory.getInstance().?.NONE);
        this.EMPTY_STRING = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        
        this.keyMappingArray = array_N66691: { const array_N66691_array = allocator.alloc(?*BasicArrayList, @intCast(0)) catch unreachable; @memset(array_N66691_array, null); break :array_N66691 array_N66691_array; };
        this.actionBasicColor = BasicColorUtil.getInstance().?.ZERO_ARRAY;
        this.inputBasicColorArray = array_N66808: { const array_N66808_array = allocator.alloc([]?*BasicColor, @intCast(0)) catch unreachable; for (array_N66808_array) |*array_N66808_row| { array_N66808_row.* = allocator.alloc(?*BasicColor, @intCast(0)) catch unreachable; @memset(array_N66808_row.*, null); } break :array_N66808 array_N66808_array; };
        this.selectedBasicColor = null;
        this.updateMyFontProperties = UpdateMyFontProperties.create();
    }
    

    pub fn create3(gameInputMappingArray: []?*GameInputMapping, backgroundBasicColor: ?*BasicColor, basicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HelpPaintable, "create3", .{ String.literal("Input Mapping"), backgroundBasicColor, basicColor }).*;
        this.initFields();
        this.gameInputMappingArray = gameInputMappingArray;
        _ = Inheritance.call(this, "update", .{ this.NONE, this.NONE });
        if (Object.same(backgroundBasicColor, this.basicColorFactory.?.WHITE) or Object.same(basicColor, this.basicColorFactory.?.WHITE)) {
            this.selectedBasicColor = Inheritance.upcast(@TypeOf(this.selectedBasicColor), this.basicColorFactory.?.RED);
        } else {
            this.selectedBasicColor = Inheritance.upcast(@TypeOf(this.selectedBasicColor), this.basicColorFactory.?.WHITE);
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        const updateMyFontProperties: ?*UpdateMyFontProperties = UpdateMyFontProperties.create();
        updateMyFontProperties.?.charHeight = Inheritance.upcast(@TypeOf(updateMyFontProperties.?.charHeight), font.?.getHeight());
        const stringMaker: ?*StringMaker = StringMaker.create();
        const inputInfo: []?*String = Inheritance.fieldPointer(self, "inputInfo").*;
        const size: i32 = @as(i32, @intCast(inputInfo.len));
        updateMyFontProperties.?.actionStringArray = Inheritance.upcast(@TypeOf(updateMyFontProperties.?.actionStringArray), array_N67965: { const array_N67965_array = allocator.alloc(?*String, @intCast(size)) catch unreachable; @memset(array_N67965_array, null); break :array_N67965 array_N67965_array; });
        updateMyFontProperties.?.keymappingBeginWidthArray = Inheritance.upcast(@TypeOf(updateMyFontProperties.?.keymappingBeginWidthArray), array_N68017: { const array_N68017_array = allocator.alloc(i32, @intCast(size)) catch unreachable; @memset(array_N68017_array, 0); break :array_N68017 array_N68017_array; });
        updateMyFontProperties.?.actionStringDeltaXArray = Inheritance.upcast(@TypeOf(updateMyFontProperties.?.actionStringDeltaXArray), array_N68065: { const array_N68065_array = allocator.alloc(i32, @intCast(size)) catch unreachable; @memset(array_N68065_array, 0); break :array_N68065 array_N68065_array; });
        updateMyFontProperties.?.inputDeltaXArray = Inheritance.upcast(@TypeOf(updateMyFontProperties.?.inputDeltaXArray), array_N68113: { const array_N68113_array = allocator.alloc([]i32, @intCast(size)) catch unreachable; for (array_N68113_array) |*array_N68113_row| { array_N68113_row.* = allocator.alloc(i32, @intCast(0)) catch unreachable; @memset(array_N68113_row.*, 0); } break :array_N68113 array_N68113_array; });
        updateMyFontProperties.?.sepArray = Inheritance.upcast(@TypeOf(updateMyFontProperties.?.sepArray), array_N68169: { const array_N68169_array = allocator.alloc([]?*String, @intCast(size)) catch unreachable; for (array_N68169_array) |*array_N68169_row| { array_N68169_row.* = allocator.alloc(?*String, @intCast(0)) catch unreachable; @memset(array_N68169_row.*, null); } break :array_N68169 array_N68169_array; });
        updateMyFontProperties.?.sepWidthArray = Inheritance.upcast(@TypeOf(updateMyFontProperties.?.sepWidthArray), array_N68229: { const array_N68229_array = allocator.alloc([]i32, @intCast(size)) catch unreachable; for (array_N68229_array) |*array_N68229_row| { array_N68229_row.* = allocator.alloc(i32, @intCast(0)) catch unreachable; @memset(array_N68229_row.*, 0); } break :array_N68229 array_N68229_array; });
        var list: ?*BasicArrayList = null;
        var keyMappings: ?*String = null;
        var actionString: ?*String = null;
        var input: ?*Input = null;
        var size2: i32 = 0;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            list = Inheritance.upcast(@TypeOf(list), self.keyMappingArray[@intCast(index)]);
            keyMappings = Inheritance.upcast(@TypeOf(keyMappings), Inheritance.call(self, "get", .{ list }));
            _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
            actionString = Inheritance.upcast(@TypeOf(actionString), Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ inputInfo[@intCast(index)] }).?, "append", .{ self.commonSeps.?.COLON }).?, "append", .{ self.commonSeps.?.SPACE }).?, "append", .{ self.commonSeps.?.SPACE }))));
            updateMyFontProperties.?.actionStringArray[@intCast(index)] = Inheritance.upcast(@TypeOf(updateMyFontProperties.?.actionStringArray[@intCast(index)]), actionString);
            _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
            updateMyFontProperties.?.keymappingBeginWidthArray[@intCast(index)] = Inheritance.upcast(@TypeOf(updateMyFontProperties.?.keymappingBeginWidthArray[@intCast(index)]), (Inheritance.call(font.?, "stringWidth", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ updateMyFontProperties.?.actionStringArray[@intCast(index)] }).?, "append", .{ keyMappings }))) }) >> @intCast(1)));
            updateMyFontProperties.?.actionStringDeltaXArray[@intCast(index)] = Inheritance.upcast(@TypeOf(updateMyFontProperties.?.actionStringDeltaXArray[@intCast(index)]), Inheritance.call(font.?, "stringWidth", .{ actionString }));
            size2 = list.?.size();
            updateMyFontProperties.?.inputDeltaXArray[@intCast(index)] = Inheritance.upcast(@TypeOf(updateMyFontProperties.?.inputDeltaXArray[@intCast(index)]), array_N69043: { const array_N69043_array = allocator.alloc(i32, @intCast(size2)) catch unreachable; @memset(array_N69043_array, 0); break :array_N69043 array_N69043_array; });
            updateMyFontProperties.?.sepArray[@intCast(index)] = Inheritance.upcast(@TypeOf(updateMyFontProperties.?.sepArray[@intCast(index)]), array_N69103: { const array_N69103_array = allocator.alloc(?*String, @intCast(size2)) catch unreachable; @memset(array_N69103_array, null); break :array_N69103 array_N69103_array; });
            updateMyFontProperties.?.sepWidthArray[@intCast(index)] = Inheritance.upcast(@TypeOf(updateMyFontProperties.?.sepWidthArray[@intCast(index)]), array_N69167: { const array_N69167_array = allocator.alloc(i32, @intCast(size2)) catch unreachable; @memset(array_N69167_array, 0); break :array_N69167 array_N69167_array; });
            {
                var index2: i32 = 0;
                while (index2 < size2) : (index2 += 1) {
                input = Inheritance.cast(?*Input, list.?.objectArray[@intCast(index2)]);
                updateMyFontProperties.?.inputDeltaXArray[@intCast(index)][@intCast(index2)] = Inheritance.upcast(@TypeOf(updateMyFontProperties.?.inputDeltaXArray[@intCast(index)][@intCast(index2)]), Inheritance.call(font.?, "stringWidth", .{ input.?.getName() }));
                updateMyFontProperties.?.sepArray[@intCast(index)][@intCast(index2)] = Inheritance.upcast(@TypeOf(updateMyFontProperties.?.sepArray[@intCast(index)][@intCast(index2)]), self.EMPTY_STRING);
                if (index2 + 1 < list.?.size()) {
                    if (list.?.size() == 2) {
                        updateMyFontProperties.?.sepArray[@intCast(index)][@intCast(index2)] = Inheritance.upcast(@TypeOf(updateMyFontProperties.?.sepArray[@intCast(index)][@intCast(index2)]), InputMappingHelpPaintable.AND);
                    } else {
                        if (index2 + 2 == list.?.size()) {
                            updateMyFontProperties.?.sepArray[@intCast(index)][@intCast(index2)] = Inheritance.upcast(@TypeOf(updateMyFontProperties.?.sepArray[@intCast(index)][@intCast(index2)]), InputMappingHelpPaintable.MORE_THAN_TWO_IN_LIST_AND);
                        } else {
                            updateMyFontProperties.?.sepArray[@intCast(index)][@intCast(index2)] = Inheritance.upcast(@TypeOf(updateMyFontProperties.?.sepArray[@intCast(index)][@intCast(index2)]), InputMappingHelpPaintable.SEP);
                        }
                    }
                }
                if (!Object.same(updateMyFontProperties.?.sepArray[@intCast(index)][@intCast(index2)], self.EMPTY_STRING)) {
                    updateMyFontProperties.?.sepWidthArray[@intCast(index)][@intCast(index2)] = Inheritance.upcast(@TypeOf(updateMyFontProperties.?.sepWidthArray[@intCast(index)][@intCast(index2)]), Inheritance.call(font.?, "stringWidth", .{ updateMyFontProperties.?.sepArray[@intCast(index)][@intCast(index2)] }));
                }
                }
            }
            }
        }
        self.updateMyFontProperties = updateMyFontProperties;
        _ = Inheritance.call(&self.base, "updateMeasurement", .{ graphics });
    }
    

    pub fn update(self: *Self, selectedGameKey: ?*GameKey, selectedInput: ?*Input) void {
        const stringMaker: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ CommonLabels.getInstance().?.START_LABEL }).?, "append", .{ String.literal("selected GameKey: ") }).?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ selectedGameKey }) }).?, "append", .{ String.literal(" Input: ") }).?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ selectedInput }) }))), self, self.commonStrings.?.UPDATE });
        const gameKeyMapping: ?*PersistentInputMapping = Inheritance.upcast(?*PersistentInputMapping, Inheritance.receiverOf(PlatformInputMappingFactory.getInstance().?, "getPersistentInputMappingInstance").getPersistentInputMappingInstance());
        const size: i32 = @as(i32, @intCast(self.gameInputMappingArray.len));
        const keyInfo: []?*String = array_N70544: { const array_N70544_array = allocator.alloc(?*String, @intCast(size)) catch unreachable; @memset(array_N70544_array, null); break :array_N70544 array_N70544_array; };
        const keyMappingArray: []?*BasicArrayList = array_N70610: { const array_N70610_array = allocator.alloc(?*BasicArrayList, @intCast(size)) catch unreachable; @memset(array_N70610_array, null); break :array_N70610 array_N70610_array; };
        const actionBasicColor: []?*BasicColor = array_N70676: { const array_N70676_array = allocator.alloc(?*BasicColor, @intCast(size)) catch unreachable; @memset(array_N70676_array, null); break :array_N70676 array_N70676_array; };
        const inputBasicColorArray: [][]?*BasicColor = array_N70742: { const array_N70742_array = allocator.alloc([]?*BasicColor, @intCast(size)) catch unreachable; @memset(array_N70742_array, &.{}); break :array_N70742 array_N70742_array; };
        var gameInputMapping: ?*GameInputMapping = null;
        var gameKey: ?*GameKey = null;
        var list: ?*BasicArrayList = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            gameInputMapping = Inheritance.upcast(@TypeOf(gameInputMapping), self.gameInputMappingArray[@intCast(index)]);
            gameKey = Inheritance.upcast(@TypeOf(gameKey), gameInputMapping.?.getGameKey());
            list = Inheritance.upcast(@TypeOf(list), Inheritance.call(gameKeyMapping.?.getInputMapping().?, "getMappedInput", .{ gameKey }));
            const size2: i32 = list.?.size();
            inputBasicColorArray[@intCast(index)] = Inheritance.upcast(@TypeOf(inputBasicColorArray[@intCast(index)]), array_N71078: { const array_N71078_array = allocator.alloc(?*BasicColor, @intCast(size2)) catch unreachable; @memset(array_N71078_array, null); break :array_N71078 array_N71078_array; });
            {
                var index2: i32 = 0;
                while (index2 < size2) : (index2 += 1) {
                inputBasicColorArray[@intCast(index)][@intCast(index2)] = Inheritance.upcast(@TypeOf(inputBasicColorArray[@intCast(index)][@intCast(index2)]), Inheritance.fieldPointer(self, "basicColor").*);
                }
            }
            if (Object.same(gameKey, selectedGameKey)) {
                _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ String.literal("Found: selected GameKey: ") }).?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ selectedGameKey }) }))), self, self.commonStrings.?.UPDATE });
                actionBasicColor[@intCast(index)] = Inheritance.upcast(@TypeOf(actionBasicColor[@intCast(index)]), self.selectedBasicColor);
                const indexOfSelectedInput: i32 = Inheritance.call(list.?, "indexOf", .{ selectedInput });
                if (indexOfSelectedInput >= 0) {
                    _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ String.literal("Found: selected Input: ") }).?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ selectedInput }) }))), self, self.commonStrings.?.UPDATE });
                    inputBasicColorArray[@intCast(index)][@intCast(indexOfSelectedInput)] = Inheritance.upcast(@TypeOf(inputBasicColorArray[@intCast(index)][@intCast(indexOfSelectedInput)]), self.selectedBasicColor);
                }
            } else {
                actionBasicColor[@intCast(index)] = Inheritance.upcast(@TypeOf(actionBasicColor[@intCast(index)]), Inheritance.fieldPointer(self, "basicColor").*);
            }
            keyInfo[@intCast(index)] = Inheritance.upcast(@TypeOf(keyInfo[@intCast(index)]), gameInputMapping.?.getName());
            keyMappingArray[@intCast(index)] = Inheritance.upcast(@TypeOf(keyMappingArray[@intCast(index)]), list);
            }
        }
        self.keyMappingArray = keyMappingArray;
        self.actionBasicColor = actionBasicColor;
        self.inputBasicColorArray = inputBasicColorArray;
        _ = Inheritance.call(&self.base, "setInputInfoP", .{ keyInfo });
        Inheritance.fieldPointer(self, "myFontProcessor").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "myFontProcessor").*), Inheritance.fieldPointer(self, "updateMyFontProcessor").*);
    }
    

    pub fn get(self: *Self, keyList: ?*BasicArrayList) ?*String {
        _ = self;
        const stringBuffer: ?*StringMaker = StringMaker.create();
        var key: ?*Input = null;
        const size: i32 = keyList.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            key = Inheritance.cast(?*Input, keyList.?.objectArray[@intCast(index)]);
            _ = Inheritance.call(stringBuffer.?, "append", .{ key.?.getName() });
            if (index + 1 < keyList.?.size()) {
                if (keyList.?.size() == 2) {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ InputMappingHelpPaintable.AND });
                } else {
                    if (index + 2 == keyList.?.size()) {
                        _ = Inheritance.call(stringBuffer.?, "append", .{ InputMappingHelpPaintable.MORE_THAN_TWO_IN_LIST_AND });
                    } else {
                        _ = Inheritance.call(stringBuffer.?, "append", .{ InputMappingHelpPaintable.SEP });
                    }
                }
            }
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "myFontProcessor").*.?, "process", .{ graphics });
        const halfWidth: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "displayInfo").*.?, "getLastHalfWidth").getLastHalfWidth();
        _ = Inheritance.call(graphics.?, "setColor", .{ Inheritance.fieldPointer(self, "basicColor").*.?.intValue() });
        _ = Inheritance.call(graphics.?, "drawString", .{ Inheritance.fieldPointer(self, "title").*, halfWidth - Inheritance.fieldPointer(self, "titleBeginWidth").*, self.updateMyFontProperties.?.charHeight, Inheritance.fieldPointer(self, "anchor").* });
        const inputInfo: []?*String = Inheritance.fieldPointer(self, "inputInfo").*;
        const size: i32 = @as(i32, @intCast(inputInfo.len));
        var y: i32 = 0;
        var deltaX: i32 = 0;
        var size2: i32 = 0;
        var actionString: ?*String = null;
        var input: ?*Input = null;
        var list: ?*BasicArrayList = null;
        var sep: ?*String = null;
        var beginWidth: i32 = 0;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            y = (index + 3) * self.updateMyFontProperties.?.charHeight;
            deltaX = 0;
            list = Inheritance.upcast(@TypeOf(list), self.keyMappingArray[@intCast(index)]);
            size2 = list.?.size();
            beginWidth = self.updateMyFontProperties.?.keymappingBeginWidthArray[@intCast(index)];
            _ = Inheritance.call(graphics.?, "setColor", .{ self.actionBasicColor[@intCast(index)].?.intValue() });
            actionString = Inheritance.upcast(@TypeOf(actionString), self.updateMyFontProperties.?.actionStringArray[@intCast(index)]);
            _ = Inheritance.call(graphics.?, "drawString", .{ actionString, halfWidth - beginWidth + deltaX, y, Inheritance.fieldPointer(self, "anchor").* });
            deltaX += self.updateMyFontProperties.?.actionStringDeltaXArray[@intCast(index)];
            {
                var index2: i32 = 0;
                while (index2 < size2) : (index2 += 1) {
                input = Inheritance.cast(?*Input, list.?.objectArray[@intCast(index2)]);
                _ = Inheritance.call(graphics.?, "setColor", .{ Inheritance.receiverOf(self.inputBasicColorArray[@intCast(index)][@intCast(index2)].?, "intValue").intValue() });
                _ = Inheritance.call(graphics.?, "drawString", .{ input.?.getName(), halfWidth - beginWidth + deltaX, y, Inheritance.fieldPointer(self, "anchor").* });
                deltaX += self.updateMyFontProperties.?.inputDeltaXArray[@intCast(index)][@intCast(index2)];
                sep = Inheritance.upcast(@TypeOf(sep), self.updateMyFontProperties.?.sepArray[@intCast(index)][@intCast(index2)]);
                _ = Inheritance.call(graphics.?, "setColor", .{ Inheritance.fieldPointer(self, "basicColor").*.?.intValue() });
                _ = Inheritance.call(graphics.?, "drawString", .{ sep, halfWidth - beginWidth + deltaX, y, Inheritance.fieldPointer(self, "anchor").* });
                deltaX += self.updateMyFontProperties.?.sepWidthArray[@intCast(index)][@intCast(index2)];
                }
            }
            }
        }
    }
    pub const UpdateMyFontProperties = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.game.paint.help.UpdateMyFontProperties";
        actionStringArray: []?*String = &.{},
        keymappingBeginWidthArray: []i32 = &.{},
        actionStringDeltaXArray: []i32 = &.{},
        inputDeltaXArray: [][]i32 = &.{},
        sepArray: [][]?*String = &.{},
        sepWidthArray: [][]i32 = &.{},
        charHeight: i32 = 0,

    fn initFields(this: *Self) void {
            this.actionStringArray = Inheritance.receiverOf(StringUtil.getInstance().?, "getArrayInstance").getArrayInstance();
            this.keymappingBeginWidthArray = NullUtil.getInstance().?.NULL_INT_ARRAY;
            this.actionStringDeltaXArray = NullUtil.getInstance().?.NULL_INT_ARRAY;
            this.inputDeltaXArray = NullUtil.getInstance().?.NULL_INT_ARRAY_ARRAY;
            this.sepArray = array_N67113: { const array_N67113_array = allocator.alloc([]?*String, @intCast(0)) catch unreachable; for (array_N67113_array) |*array_N67113_row| { array_N67113_row.* = allocator.alloc(?*String, @intCast(0)) catch unreachable; @memset(array_N67113_row.*, null); } break :array_N67113 array_N67113_array; };
            this.sepWidthArray = NullUtil.getInstance().?.NULL_INT_ARRAY_ARRAY;
            this.charHeight = 0;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    };
};

