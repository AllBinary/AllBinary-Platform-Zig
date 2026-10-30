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
// package org.allbinary.game.input.mapping

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
const GameKey = @import("org/allbinary/game/input/GameKey.zig").GameKey;
const GameKeyFactory = @import("org/allbinary/game/input/GameKeyFactory.zig").GameKeyFactory;
const Input = @import("org/allbinary/game/input/Input.zig").Input;
const InputFactory = @import("org/allbinary/game/input/InputFactory.zig").InputFactory;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const InputMapping = @import("org/allbinary/game/input/mapping/InputMapping.zig").InputMapping;

pub const InputToGameKeyMapping = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.mapping.InputToGameKeyMapping";
    base: InputMapping = undefined,
    gameKeyFactory: ?*GameKeyFactory = null,
    mappedGameKeys: []?*GameKey = &.{},
    platformToGameKeyMapping: []?*GameKey = &.{},
    negativePlatformToGameKeyMapping: []?*GameKey = &.{},
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.gameKeyFactory = Inheritance.upcast(?*GameKeyFactory, GameKeyFactory.getInstance());
        this.mappedGameKeys = @constCast(&[_]?*GameKey{ this.gameKeyFactory.?.UP, this.gameKeyFactory.?.DOWN, this.gameKeyFactory.?.LEFT, this.gameKeyFactory.?.RIGHT })[0..];
        this.platformToGameKeyMapping = array_N66372: { const array_N66372_array = allocator.alloc(?*GameKey, @intCast(InputFactory.getInstance().?.MAX)) catch unreachable; @memset(array_N66372_array, null); break :array_N66372 array_N66372_array; };
        this.negativePlatformToGameKeyMapping = array_N66454: { const array_N66454_array = allocator.alloc(?*GameKey, @intCast(0)) catch unreachable; @memset(array_N66454_array, null); break :array_N66454 array_N66454_array; };
    }
    

    pub fn getNullInstance() ?*InputToGameKeyMapping {
        if (Object.same(InputToGameKeyMapping.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            InputToGameKeyMapping.instance = Inheritance.upcast(@TypeOf(InputToGameKeyMapping.instance), InputToGameKeyMapping.create());
        }
        return Inheritance.cast(?*InputToGameKeyMapping, InputToGameKeyMapping.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = InputMapping.create().*;
        this.initFields();
        _ = Inheritance.call(Inheritance.fieldPointer(this, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.START, this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        _ = this.clear();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn clear(self: *Self) void {
        {
            var index: i32 = @as(i32, @intCast(self.platformToGameKeyMapping.len)) - 1;
            while (index >= 0) : (index -= 1) {
            self.platformToGameKeyMapping[@intCast(index)] = Inheritance.upcast(@TypeOf(self.platformToGameKeyMapping[@intCast(index)]), self.gameKeyFactory.?.NONE);
            }
        }
    }
    

    pub fn removeAll(self: *Self) void {
        _ = self.base.removeAll();
        _ = self.clear();
    }
    

    pub fn addMapping(self: *Self, inputToGameKeyMapping: ?*InputToGameKeyMapping) void {
        {
            var index: i32 = Inheritance.receiver(inputToGameKeyMapping.?, "getMaxMappable").getMaxMappable() - 1;
            while (index >= 0) : (index -= 1) {
            const input: ?*Input = Inheritance.upcast(?*Input, Inheritance.call(inputToGameKeyMapping.?, "getInstance", .{ index }));
            if (!Object.same(input, self.gameKeyFactory.?.NONE)) {
                _ = Inheritance.call(self, "addAll", .{ input, Inheritance.call(inputToGameKeyMapping.?, "getMappedInput", .{ input }) });
            }
            }
        }
    }
    

    pub fn addAll(self: *Self, input: ?*Input, list: ?*BasicArrayList) void {
        {
            var index: i32 = list.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            const mappedToInput: ?*Input = Inheritance.cast(?*Input, list.?.objectArray[@intCast(index)]);
            _ = Inheritance.call(self, "add", .{ input, mappedToInput });
            }
        }
    }
    

    pub fn add(self: *Self, input: ?*Input, mappedToInput: ?*Input) void {
        _ = Inheritance.call(&self.base, "add", .{ input, mappedToInput });
        _ = Inheritance.call(self, "set", .{ input, mappedToInput });
    }
    

    pub fn remove(self: *Self, input: ?*Input, mappedToInput: ?*Input) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonLabels.getInstance().?.START_LABEL }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ input }) }).?, "append", .{ String.literal(" == ") }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ mappedToInput }) }))), self, String.literal("InputToGameKeyMapping::remove") });
        _ = Inheritance.call(&self.base, "remove", .{ input, mappedToInput });
        _ = Inheritance.call(self, "set", .{ input, self.gameKeyFactory.?.NONE });
    }
    

    pub fn set(self: *Self, input: ?*Input, mappedToInput: ?*Input) void {
        const id: i32 = mappedToInput.?.getId();
        if (id >= 0 and id < @as(i32, @intCast(self.platformToGameKeyMapping.len))) {
            self.platformToGameKeyMapping[@intCast(id)] = Inheritance.cast(?*GameKey, input);
        }
    }
    

    pub fn getMaxMappable(self: *Self) i32 {
        return @as(i32, @intCast(self.platformToGameKeyMapping.len));
    }
    

    pub fn getReverseInstance(self: *Self, id: i32) ?*BasicArrayList {
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const inputFactory: ?*InputFactory = Inheritance.upcast(?*InputFactory, InputFactory.getInstance());
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(self.platformToGameKeyMapping.len))) : (index += 1) {
            if (Inheritance.receiver(self.platformToGameKeyMapping[@intCast(index)].?, "getId").getId() == id) {
                const input: ?*Input = Inheritance.upcast(?*Input, Inheritance.call(inputFactory.?, "getInstanceById", .{ index }));
                if (input != null) {
                    _ = Inheritance.call(list.?, "add", .{ input });
                }
            }
            }
        }
        return list;
    }
    

    // throws Exception
    pub fn initGameKey(self: *Self, canvas: ?*Canvas, gameKey: ?*GameKey) void {
        const key: i32 = Inheritance.call(canvas.?, "getKeyCode", .{ Inheritance.receiver(gameKey.?, "getId").getId() });
        if (key < 0 and -key < @as(i32, @intCast(self.negativePlatformToGameKeyMapping.len))) {
            self.negativePlatformToGameKeyMapping[@intCast(-key)] = Inheritance.upcast(@TypeOf(self.negativePlatformToGameKeyMapping[@intCast(-key)]), gameKey);
        } else if (key > 0) {
            if (Object.same(self.platformToGameKeyMapping[@intCast(key)], self.gameKeyFactory.?.NONE)) {
                self.platformToGameKeyMapping[@intCast(key)] = Inheritance.upcast(@TypeOf(self.platformToGameKeyMapping[@intCast(key)]), gameKey);
            }
        } else {
            _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Object.toString(Object.of(gameKey)) }).?, "append", .{ CommonSeps.getInstance().?.COLON_SEP }).?, "appendint", .{ key }))), self, Inheritance.fieldPointer(self, "commonStrings").*.?.INIT, error.Exception });
        }
    }
    

    // throws Exception
    pub fn getSmallestCanvasGameKeyCode(self: *Self, canvas: ?*Canvas) i32 {
        var nextKey: i32 = 0;
        var smallestKey: i32 = 0;
        {
            var index: i32 = @as(i32, @intCast(self.mappedGameKeys.len));
            while (value_N69325: { index -= 1; break :value_N69325 index; } >= 0) {
            nextKey = Inheritance.call(canvas.?, "getKeyCode", .{ Inheritance.receiver(self.mappedGameKeys[@intCast(index)].?, "getId").getId() });
            if (nextKey < smallestKey) {
                smallestKey = nextKey;
            }
            }
        }
        return smallestKey;
    }
    

    pub fn init(self: *Self, canvas: ?*Canvas) void {
        { // try
            var negativePlatformToGameKeyMapping: []?*GameKey = array_N69473: { const array_N69473_array = allocator.alloc(?*GameKey, @intCast(0)) catch unreachable; @memset(array_N69473_array, null); break :array_N69473 array_N69473_array; };
            var smallestKey: i32 = Inheritance.call(self, "getSmallestCanvasGameKeyCode", .{ canvas });
            if (smallestKey < 0) {
                smallestKey -= 1;
                if (smallestKey < -256) {
                    smallestKey = -256;
                }
                negativePlatformToGameKeyMapping = Inheritance.upcast(@TypeOf(negativePlatformToGameKeyMapping), array_N69678: { const array_N69678_array = allocator.alloc(?*GameKey, @intCast(-smallestKey)) catch unreachable; @memset(array_N69678_array, null); break :array_N69678 array_N69678_array; });
                {
                    var index: i32 = @as(i32, @intCast(negativePlatformToGameKeyMapping.len));
                    while (value_N69774: { index -= 1; break :value_N69774 index; } >= 0) {
                    negativePlatformToGameKeyMapping[@intCast(index)] = Inheritance.upcast(@TypeOf(negativePlatformToGameKeyMapping[@intCast(index)]), self.gameKeyFactory.?.NONE);
                    }
                }
                self.negativePlatformToGameKeyMapping = negativePlatformToGameKeyMapping;
            }
            {
                var index: i32 = @as(i32, @intCast(self.mappedGameKeys.len));
                while (value_N69925: { index -= 1; break :value_N69925 index; } >= 0) {
                _ = Inheritance.call(self, "initGameKey", .{ canvas, self.mappedGameKeys[@intCast(index)] });
                }
            }
        }
        // catch (Throwable t):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.INIT, t });
    }
    

    pub fn getInstanceForCanvas(self: *Self, canvas: ?*Canvas, id: i32) ?*GameKey {
        _ = canvas;
        if (id >= 0 and id < @as(i32, @intCast(self.platformToGameKeyMapping.len))) {
            return Inheritance.upcast(?*GameKey, self.platformToGameKeyMapping[@intCast(id)]);
        } else if (id < 0 and -id < @as(i32, @intCast(self.negativePlatformToGameKeyMapping.len))) {
            return Inheritance.upcast(?*GameKey, self.negativePlatformToGameKeyMapping[@intCast(-id)]);
        } else {
            return Inheritance.upcast(?*GameKey, self.gameKeyFactory.?.NONE);
        }
    }
    

    pub fn getInstance(self: *Self, id: i32) ?*GameKey {
        if (id >= 0 and id < @as(i32, @intCast(self.platformToGameKeyMapping.len))) {
            return Inheritance.upcast(?*GameKey, self.platformToGameKeyMapping[@intCast(id)]);
        } else if (id < 0 and -id < @as(i32, @intCast(self.negativePlatformToGameKeyMapping.len))) {
            return Inheritance.upcast(?*GameKey, self.negativePlatformToGameKeyMapping[@intCast(-id)]);
        } else {
            return Inheritance.upcast(?*GameKey, self.gameKeyFactory.?.NONE);
        }
    }
};

