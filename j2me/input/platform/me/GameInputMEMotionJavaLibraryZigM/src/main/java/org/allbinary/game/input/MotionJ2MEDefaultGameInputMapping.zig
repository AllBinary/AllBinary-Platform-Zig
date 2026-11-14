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
const GameKeyFactory = @import("org/allbinary/game/input/GameKeyFactory.zig").GameKeyFactory;

pub const MotionJ2MEDefaultGameInputMapping = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping";
    base: PersistentInputMapping = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(PersistentInputMapping, "create1", .{ Inheritance.fieldPointer(GamePersistanceStrings.getInstance().?, "DEFAULT_INPUT_MAPPING_RECORD_ID").* }).*;
        const inputToGameKeyMapping: ?*InputToGameKeyMapping = Inheritance.upcast(?*InputToGameKeyMapping, Inheritance.receiver(this, "getInputMapping").getInputMapping());
        const gameKeyFactory: ?*GameKeyFactory = Inheritance.upcast(?*GameKeyFactory, GameKeyFactory.getInstance());
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "UP").*, Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM2").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "LEFT").*, Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM4").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "RIGHT").*, Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM6").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "DOWN").*, Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM8").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM1").*, Inheritance.fieldPointer(gameKeyFactory.?, "GAME_A").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM3").*, Inheritance.fieldPointer(gameKeyFactory.?, "GAME_B").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM7").*, Inheritance.fieldPointer(gameKeyFactory.?, "GAME_C").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM9").*, Inheritance.fieldPointer(gameKeyFactory.?, "GAME_D").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "LEVEL_DOWN").*, Inheritance.fieldPointer(gameKeyFactory.?, "LEVEL_DOWN").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "LEVEL_UP").*, Inheritance.fieldPointer(gameKeyFactory.?, "LEVEL_UP").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "UP").*, Inheritance.fieldPointer(gameKeyFactory.?, "UP").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "DOWN").*, Inheritance.fieldPointer(gameKeyFactory.?, "DOWN").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "LEFT").*, Inheritance.fieldPointer(gameKeyFactory.?, "LEFT").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "RIGHT").*, Inheritance.fieldPointer(gameKeyFactory.?, "RIGHT").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_POUND").*, Inheritance.fieldPointer(gameKeyFactory.?, "KEY_POUND").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_STAR").*, Inheritance.fieldPointer(gameKeyFactory.?, "KEY_STAR").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM1").*, Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM1").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM3").*, Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM3").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM5").*, Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM5").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM7").*, Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM7").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM9").*, Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM9").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM0").*, Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM0").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM1").*, Inheritance.fieldPointer(gameKeyFactory.?, "FIRE").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "UP").*, Inheritance.fieldPointer(TouchMotionGestureFactory.getInstance().?, "UP").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "DOWN").*, Inheritance.fieldPointer(TouchMotionGestureFactory.getInstance().?, "DOWN").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "LEFT").*, Inheritance.fieldPointer(TouchMotionGestureFactory.getInstance().?, "LEFT").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "RIGHT").*, Inheritance.fieldPointer(TouchMotionGestureFactory.getInstance().?, "RIGHT").* });
        const basicTouchInputFactory: ?*BasicTouchInputFactory = Inheritance.upcast(?*BasicTouchInputFactory, BasicTouchInputFactory.getInstance());
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "UP").*, Inheritance.fieldPointer(basicTouchInputFactory.?, "UP").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "LEFT").*, Inheritance.fieldPointer(basicTouchInputFactory.?, "LEFT").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "RIGHT").*, Inheritance.fieldPointer(basicTouchInputFactory.?, "RIGHT").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "DOWN").*, Inheritance.fieldPointer(basicTouchInputFactory.?, "DOWN").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM0").*, Inheritance.fieldPointer(basicTouchInputFactory.?, "SPECIAL_BUTTON_FIVE").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM7").*, Inheritance.fieldPointer(basicTouchInputFactory.?, "SPECIAL_BUTTON_FOUR").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM9").*, Inheritance.fieldPointer(basicTouchInputFactory.?, "SPECIAL_BUTTON_THREE").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM1").*, Inheritance.fieldPointer(basicTouchInputFactory.?, "SPECIAL_BUTTON_TWO").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM3").*, Inheritance.fieldPointer(basicTouchInputFactory.?, "SPECIAL_BUTTON_ONE").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM2").*, Inheritance.fieldPointer(basicTouchInputFactory.?, "SPECIAL_BUTTON_SIX").* });
        Inheritance.bindOverrides(this);
        return this;
    }
};

