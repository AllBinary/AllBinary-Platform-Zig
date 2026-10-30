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
const GameKey = @import("org/allbinary/game/input/GameKey.zig").GameKey;
const GameKeyFactory = @import("org/allbinary/game/input/GameKeyFactory.zig").GameKeyFactory;
const Input = @import("org/allbinary/game/input/Input.zig").Input;
const PlatformInputMappingFactory = @import("org/allbinary/game/input/PlatformInputMappingFactory.zig").PlatformInputMappingFactory;
const GameInputMapping = @import("org/allbinary/game/input/mapping/GameInputMapping.zig").GameInputMapping;
const PersistentInputMapping = @import("org/allbinary/game/input/mapping/PersistentInputMapping.zig").PersistentInputMapping;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const HelpPaintable = @import("org/allbinary/game/paint/help/HelpPaintable.zig").HelpPaintable;

pub const BasicInputMappingHelpPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.paint.help.BasicInputMappingHelpPaintable";
    base: HelpPaintable = undefined,
    gameInputMappingArray: []?*GameInputMapping = &.{},
    NONE: ?*GameKey = null,

    fn initFields(this: *Self) void {
        
        this.NONE = Inheritance.upcast(?*GameKey, GameKeyFactory.getInstance().?.NONE);
    }
    

    pub fn create2(gameInputMappingArray: []?*GameInputMapping, basicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HelpPaintable, "create3", .{ String.literal("Help Screen"), BasicColorFactory.getInstance().?.BLACK, basicColor }).*;
        this.initFields();
        this.gameInputMappingArray = gameInputMappingArray;
        _ = Inheritance.call(this, "update", .{ this.NONE, this.NONE });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn update(self: *Self, selectedGameKey: ?*GameKey, selectedInput: ?*Input) void {
        _ = selectedGameKey;
        _ = selectedInput;
        const gameKeyMapping: ?*PersistentInputMapping = Inheritance.upcast(?*PersistentInputMapping, Inheritance.receiverOf(PlatformInputMappingFactory.getInstance().?, "getPersistentInputMappingInstance").getPersistentInputMappingInstance());
        const EQUAL: ?*String = String.literal(" = ");
        const stringMaker: ?*StringMaker = StringMaker.create();
        const size: i32 = @as(i32, @intCast(self.gameInputMappingArray.len));
        const keyInfo: []?*String = array_N66429: { const array_N66429_array = allocator.alloc(?*String, @intCast(size)) catch unreachable; @memset(array_N66429_array, null); break :array_N66429 array_N66429_array; };
        var gameInputMapping: ?*GameInputMapping = null;
        var gameKey: ?*GameKey = null;
        var list: ?*BasicArrayList = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            gameInputMapping = Inheritance.upcast(@TypeOf(gameInputMapping), self.gameInputMappingArray[@intCast(index)]);
            gameKey = Inheritance.upcast(@TypeOf(gameKey), gameInputMapping.?.getGameKey());
            list = Inheritance.upcast(@TypeOf(list), Inheritance.call(gameKeyMapping.?.getInputMapping().?, "getMappedInput", .{ gameKey }));
            _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
            keyInfo[@intCast(index)] = Inheritance.upcast(@TypeOf(keyInfo[@intCast(index)]), Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ gameInputMapping.?.getName() }).?, "append", .{ EQUAL }).?, "append", .{ Inheritance.call(self, "get", .{ list }) }))));
            }
        }
        _ = Inheritance.call(&self.base, "setInputInfoP", .{ keyInfo });
    }
    

    pub fn get(self: *Self, keyList: ?*BasicArrayList) ?*String {
        _ = self;
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const AND: ?*String = String.literal("and ");
        var key: ?*Input = null;
        const size: i32 = keyList.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            key = Inheritance.cast(?*Input, keyList.?.objectArray[@intCast(index)]);
            _ = Inheritance.call(stringBuffer.?, "append", .{ key.?.getName() });
            if (index + 1 < keyList.?.size()) {
                if (keyList.?.size() == 2) {
                    _ = Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.SPACE }).?, "append", .{ AND });
                } else {
                    if (index + 2 == keyList.?.size()) {
                        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.COMMA_SEP });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ AND });
                    } else {
                        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.COMMA_SEP });
                    }
                }
            }
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

