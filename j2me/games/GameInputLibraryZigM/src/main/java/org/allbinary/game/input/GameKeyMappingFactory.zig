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
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const GameKey = @import("org/allbinary/game/input/GameKey.zig").GameKey;
const GameKeyFactory = @import("org/allbinary/game/input/GameKeyFactory.zig").GameKeyFactory;
const InputFactory = @import("org/allbinary/game/input/InputFactory.zig").InputFactory;

pub const GameKeyMappingFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.GameKeyMappingFactory";
    intKeyToGameKey: []?*GameKey = &.{},
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.intKeyToGameKey = array_N65844: { const array_N65844_array = allocator.alloc(?*GameKey, @intCast(InputFactory.getInstance().?.MAX)) catch unreachable; @memset(array_N65844_array, null); break :array_N65844 array_N65844_array; };
    }
    

    pub fn getInstance() ?*GameKeyMappingFactory {
        if (Object.same(GameKeyMappingFactory.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            GameKeyMappingFactory.instance = Inheritance.upcast(@TypeOf(GameKeyMappingFactory.instance), GameKeyMappingFactory.create());
        }
        return Inheritance.cast(?*GameKeyMappingFactory, GameKeyMappingFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const gameKeyFactory: ?*GameKeyFactory = Inheritance.upcast(?*GameKeyFactory, GameKeyFactory.getInstance());
        _ = Inheritance.call(this, "setGameKey", .{ gameKeyFactory.?.NONE });
        _ = Inheritance.call(this, "setGameKey", .{ gameKeyFactory.?.UP });
        _ = Inheritance.call(this, "setGameKey", .{ gameKeyFactory.?.DOWN });
        _ = Inheritance.call(this, "setGameKey", .{ gameKeyFactory.?.LEFT });
        _ = Inheritance.call(this, "setGameKey", .{ gameKeyFactory.?.RIGHT });
        _ = Inheritance.call(this, "setGameKey", .{ gameKeyFactory.?.KEY_POUND });
        _ = Inheritance.call(this, "setGameKey", .{ gameKeyFactory.?.KEY_STAR });
        _ = Inheritance.call(this, "setGameKey", .{ gameKeyFactory.?.KEY_NUM0 });
        _ = Inheritance.call(this, "setGameKey", .{ gameKeyFactory.?.KEY_NUM1 });
        _ = Inheritance.call(this, "setGameKey", .{ gameKeyFactory.?.KEY_NUM2 });
        _ = Inheritance.call(this, "setGameKey", .{ gameKeyFactory.?.KEY_NUM3 });
        _ = Inheritance.call(this, "setGameKey", .{ gameKeyFactory.?.KEY_NUM4 });
        _ = Inheritance.call(this, "setGameKey", .{ gameKeyFactory.?.KEY_NUM5 });
        _ = Inheritance.call(this, "setGameKey", .{ gameKeyFactory.?.KEY_NUM6 });
        _ = Inheritance.call(this, "setGameKey", .{ gameKeyFactory.?.KEY_NUM7 });
        _ = Inheritance.call(this, "setGameKey", .{ gameKeyFactory.?.KEY_NUM8 });
        _ = Inheritance.call(this, "setGameKey", .{ gameKeyFactory.?.KEY_NUM9 });
        _ = Inheritance.call(this, "setGameKey", .{ gameKeyFactory.?.GAME_A });
        _ = Inheritance.call(this, "setGameKey", .{ gameKeyFactory.?.GAME_B });
        _ = Inheritance.call(this, "setGameKey", .{ gameKeyFactory.?.GAME_C });
        _ = Inheritance.call(this, "setGameKey", .{ gameKeyFactory.?.GAME_D });
        _ = Inheritance.call(this, "setGameKey", .{ gameKeyFactory.?.FIRE });
        _ = Inheritance.call(this, "setGameKey", .{ gameKeyFactory.?.LEVEL_DOWN });
        _ = Inheritance.call(this, "setGameKey", .{ gameKeyFactory.?.LEVEL_UP });
        return this;
    }
    

    pub fn getGameKey(self: *Self, key: i32) ?*GameKey {
        return Inheritance.upcast(?*GameKey, self.intKeyToGameKey[@intCast(key)]);
    }
    

    pub fn setGameKey(self: *Self, gameKey: ?*GameKey) void {
        self.intKeyToGameKey[@intCast(Inheritance.receiver(gameKey.?, "getId").getId())] = Inheritance.upcast(@TypeOf(self.intKeyToGameKey[@intCast(Inheritance.receiver(gameKey.?, "getId").getId())]), gameKey);
    }
};

