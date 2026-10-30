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
const GamePersistanceStrings = @import("org/allbinary/game/configuration/persistance/GamePersistanceStrings.zig").GamePersistanceStrings;
const InputToGameKeyMapping = @import("org/allbinary/game/input/mapping/InputToGameKeyMapping.zig").InputToGameKeyMapping;
const PersistentInputMapping = @import("org/allbinary/game/input/mapping/PersistentInputMapping.zig").PersistentInputMapping;
const BasicTouchInputFactory = @import("org/allbinary/input/motion/button/BasicTouchInputFactory.zig").BasicTouchInputFactory;
const TouchMotionGestureFactory = @import("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.zig").TouchMotionGestureFactory;

pub const MotionJ2MEDefaultGameInputMapping = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping";
    base: PersistentInputMapping = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(PersistentInputMapping, "create1", .{ GamePersistanceStrings.getInstance().?.DEFAULT_INPUT_MAPPING_RECORD_ID }).*;
        const inputToGameKeyMapping: ?*InputToGameKeyMapping = Inheritance.upcast(?*InputToGameKeyMapping, Inheritance.receiver(this, "getInputMapping").getInputMapping());
        const gameKeyFactory: ?*GameKeyFactory = Inheritance.upcast(?*GameKeyFactory, GameKeyFactory.getInstance());
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.UP, gameKeyFactory.?.KEY_NUM2 });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.LEFT, gameKeyFactory.?.KEY_NUM4 });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.RIGHT, gameKeyFactory.?.KEY_NUM6 });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.DOWN, gameKeyFactory.?.KEY_NUM8 });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM1, gameKeyFactory.?.GAME_A });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM3, gameKeyFactory.?.GAME_B });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM7, gameKeyFactory.?.GAME_C });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM9, gameKeyFactory.?.GAME_D });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.LEVEL_DOWN, gameKeyFactory.?.LEVEL_DOWN });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.LEVEL_UP, gameKeyFactory.?.LEVEL_UP });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.UP, gameKeyFactory.?.UP });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.DOWN, gameKeyFactory.?.DOWN });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.LEFT, gameKeyFactory.?.LEFT });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.RIGHT, gameKeyFactory.?.RIGHT });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_POUND, gameKeyFactory.?.KEY_POUND });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_STAR, gameKeyFactory.?.KEY_STAR });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM1, gameKeyFactory.?.KEY_NUM1 });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM3, gameKeyFactory.?.KEY_NUM3 });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM5, gameKeyFactory.?.KEY_NUM5 });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM7, gameKeyFactory.?.KEY_NUM7 });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM9, gameKeyFactory.?.KEY_NUM9 });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM0, gameKeyFactory.?.KEY_NUM0 });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM1, gameKeyFactory.?.FIRE });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.UP, TouchMotionGestureFactory.getInstance().?.UP });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.DOWN, TouchMotionGestureFactory.getInstance().?.DOWN });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.LEFT, TouchMotionGestureFactory.getInstance().?.LEFT });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.RIGHT, TouchMotionGestureFactory.getInstance().?.RIGHT });
        const basicTouchInputFactory: ?*BasicTouchInputFactory = Inheritance.upcast(?*BasicTouchInputFactory, BasicTouchInputFactory.getInstance());
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.UP, basicTouchInputFactory.?.UP });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.LEFT, basicTouchInputFactory.?.LEFT });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.RIGHT, basicTouchInputFactory.?.RIGHT });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.DOWN, basicTouchInputFactory.?.DOWN });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM0, basicTouchInputFactory.?.SPECIAL_BUTTON_FIVE });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM7, basicTouchInputFactory.?.SPECIAL_BUTTON_FOUR });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM9, basicTouchInputFactory.?.SPECIAL_BUTTON_THREE });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM1, basicTouchInputFactory.?.SPECIAL_BUTTON_TWO });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM3, basicTouchInputFactory.?.SPECIAL_BUTTON_ONE });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM2, basicTouchInputFactory.?.SPECIAL_BUTTON_SIX });
        Inheritance.bindOverrides(this);
        return this;
    }
};

