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
const PCKeyFactory = @import("org/allbinary/game/input/PCKeyFactory.zig").PCKeyFactory;

pub const DesktopDefaultGameInputMapping = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.DesktopDefaultGameInputMapping";
    base: PersistentInputMapping = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(PersistentInputMapping, "create1", .{ Inheritance.fieldPointer(GamePersistanceStrings.getInstance().?, "DEFAULT_INPUT_MAPPING_RECORD_ID").* }).*;
        const pcKeyFactory: ?*PCKeyFactory = Inheritance.upcast(?*PCKeyFactory, PCKeyFactory.getInstance());
        const inputToGameKeyMapping: ?*InputToGameKeyMapping = Inheritance.upcast(?*InputToGameKeyMapping, Inheritance.receiver(this, "getInputMapping").getInputMapping());
        const gameKeyFactory: ?*GameKeyFactory = Inheritance.upcast(?*GameKeyFactory, GameKeyFactory.getInstance());
        const touchMotionGestureFactory: ?*TouchMotionGestureFactory = Inheritance.upcast(?*TouchMotionGestureFactory, TouchMotionGestureFactory.getInstance());
        const basicTouchInputFactory: ?*BasicTouchInputFactory = Inheritance.upcast(?*BasicTouchInputFactory, BasicTouchInputFactory.getInstance());
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "FIRE").*, Inheritance.fieldPointer(pcKeyFactory.?, "ENTER").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM1").*, Inheritance.fieldPointer(pcKeyFactory.?, "FOUR").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM1").*, Inheritance.fieldPointer(pcKeyFactory.?, "_P").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM1").*, Inheritance.fieldPointer(pcKeyFactory.?, "p").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "UP").*, Inheritance.fieldPointer(pcKeyFactory.?, "DPAD_UP").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "DOWN").*, Inheritance.fieldPointer(pcKeyFactory.?, "DPAD_DOWN").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "LEFT").*, Inheritance.fieldPointer(pcKeyFactory.?, "DPAD_LEFT").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "RIGHT").*, Inheritance.fieldPointer(pcKeyFactory.?, "DPAD_RIGHT").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM7").*, Inheritance.fieldPointer(pcKeyFactory.?, "_Y").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM9").*, Inheritance.fieldPointer(pcKeyFactory.?, "_I").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "UP").*, Inheritance.fieldPointer(pcKeyFactory.?, "_U").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "LEFT").*, Inheritance.fieldPointer(pcKeyFactory.?, "_H").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "RIGHT").*, Inheritance.fieldPointer(pcKeyFactory.?, "_J").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "DOWN").*, Inheritance.fieldPointer(pcKeyFactory.?, "_N").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM5").*, Inheritance.fieldPointer(pcKeyFactory.?, "_M").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM7").*, Inheritance.fieldPointer(pcKeyFactory.?, "y").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM9").*, Inheritance.fieldPointer(pcKeyFactory.?, "i").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "UP").*, Inheritance.fieldPointer(pcKeyFactory.?, "u").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "LEFT").*, Inheritance.fieldPointer(pcKeyFactory.?, "h").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "RIGHT").*, Inheritance.fieldPointer(pcKeyFactory.?, "j").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "DOWN").*, Inheritance.fieldPointer(pcKeyFactory.?, "n").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM5").*, Inheritance.fieldPointer(pcKeyFactory.?, "m").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM7").*, Inheritance.fieldPointer(pcKeyFactory.?, "_Q").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM9").*, Inheritance.fieldPointer(pcKeyFactory.?, "_E").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "UP").*, Inheritance.fieldPointer(pcKeyFactory.?, "_W").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "LEFT").*, Inheritance.fieldPointer(pcKeyFactory.?, "_A").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "RIGHT").*, Inheritance.fieldPointer(pcKeyFactory.?, "_D").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "DOWN").*, Inheritance.fieldPointer(pcKeyFactory.?, "_S").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM5").*, Inheritance.fieldPointer(pcKeyFactory.?, "_X").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM7").*, Inheritance.fieldPointer(pcKeyFactory.?, "q").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM9").*, Inheritance.fieldPointer(pcKeyFactory.?, "e").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "UP").*, Inheritance.fieldPointer(pcKeyFactory.?, "w").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "LEFT").*, Inheritance.fieldPointer(pcKeyFactory.?, "a").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "RIGHT").*, Inheritance.fieldPointer(pcKeyFactory.?, "d").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "DOWN").*, Inheritance.fieldPointer(pcKeyFactory.?, "s").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM5").*, Inheritance.fieldPointer(pcKeyFactory.?, "x").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "UP").*, Inheritance.fieldPointer(touchMotionGestureFactory.?, "UP").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "DOWN").*, Inheritance.fieldPointer(touchMotionGestureFactory.?, "DOWN").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "LEFT").*, Inheritance.fieldPointer(touchMotionGestureFactory.?, "LEFT").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "RIGHT").*, Inheritance.fieldPointer(touchMotionGestureFactory.?, "RIGHT").* });
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
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM3").*, Inheritance.fieldPointer(pcKeyFactory.?, "THREE").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM0").*, Inheritance.fieldPointer(pcKeyFactory.?, "ZERO").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM0").*, Inheritance.fieldPointer(pcKeyFactory.?, "ONE").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_NUM0").*, Inheritance.fieldPointer(pcKeyFactory.?, "SPACE").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_POUND").*, Inheritance.fieldPointer(pcKeyFactory.?, "DEL").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_POUND").*, Inheritance.fieldPointer(pcKeyFactory.?, "TWO").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_STAR").*, Inheritance.fieldPointer(pcKeyFactory.?, "ESCAPE").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "KEY_STAR").*, Inheritance.fieldPointer(pcKeyFactory.?, "STAR").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "LEVEL_DOWN").*, Inheritance.fieldPointer(pcKeyFactory.?, "COMMA").* });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ Inheritance.fieldPointer(gameKeyFactory.?, "LEVEL_UP").*, Inheritance.fieldPointer(pcKeyFactory.?, "PERIOD").* });
        Inheritance.bindOverrides(this);
        return this;
    }
};

