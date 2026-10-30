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

pub const MotionLaptopDefaultGameInputMapping = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.MotionLaptopDefaultGameInputMapping";
    base: PersistentInputMapping = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(PersistentInputMapping, "create1", .{ GamePersistanceStrings.getInstance().?.DEFAULT_INPUT_MAPPING_RECORD_ID }).*;
        const pcKeyFactory: ?*PCKeyFactory = Inheritance.upcast(?*PCKeyFactory, PCKeyFactory.getInstance());
        const inputToGameKeyMapping: ?*InputToGameKeyMapping = Inheritance.upcast(?*InputToGameKeyMapping, Inheritance.receiver(this, "getInputMapping").getInputMapping());
        const gameKeyFactory: ?*GameKeyFactory = Inheritance.upcast(?*GameKeyFactory, GameKeyFactory.getInstance());
        const touchMotionGestureFactory: ?*TouchMotionGestureFactory = Inheritance.upcast(?*TouchMotionGestureFactory, TouchMotionGestureFactory.getInstance());
        const basicTouchInputFactory: ?*BasicTouchInputFactory = Inheritance.upcast(?*BasicTouchInputFactory, BasicTouchInputFactory.getInstance());
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.FIRE, pcKeyFactory.?.ENTER });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM1, pcKeyFactory.?.FOUR });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM1, pcKeyFactory.?._P });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM1, pcKeyFactory.?.p });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.UP, pcKeyFactory.?.DPAD_UP });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.DOWN, pcKeyFactory.?.DPAD_DOWN });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.LEFT, pcKeyFactory.?.DPAD_LEFT });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.RIGHT, pcKeyFactory.?.DPAD_RIGHT });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM7, pcKeyFactory.?._Y });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM9, pcKeyFactory.?._I });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.UP, pcKeyFactory.?._U });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.LEFT, pcKeyFactory.?._H });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.RIGHT, pcKeyFactory.?._J });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.DOWN, pcKeyFactory.?._N });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM5, pcKeyFactory.?._M });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM7, pcKeyFactory.?.y });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM9, pcKeyFactory.?.i });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.UP, pcKeyFactory.?.u });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.LEFT, pcKeyFactory.?.h });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.RIGHT, pcKeyFactory.?.j });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.DOWN, pcKeyFactory.?.n });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM5, pcKeyFactory.?.m });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM7, pcKeyFactory.?._Q });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM9, pcKeyFactory.?._E });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.UP, pcKeyFactory.?._W });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.LEFT, pcKeyFactory.?._A });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.RIGHT, pcKeyFactory.?._D });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.DOWN, pcKeyFactory.?._S });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM5, pcKeyFactory.?._X });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM7, pcKeyFactory.?.q });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM9, pcKeyFactory.?.e });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.UP, pcKeyFactory.?.w });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.LEFT, pcKeyFactory.?.a });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.RIGHT, pcKeyFactory.?.d });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.DOWN, pcKeyFactory.?.s });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM5, pcKeyFactory.?.x });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.UP, touchMotionGestureFactory.?.UP });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.DOWN, touchMotionGestureFactory.?.DOWN });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.LEFT, touchMotionGestureFactory.?.LEFT });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.RIGHT, touchMotionGestureFactory.?.RIGHT });
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
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM3, pcKeyFactory.?.THREE });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM0, pcKeyFactory.?.ZERO });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM0, pcKeyFactory.?.ONE });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM0, pcKeyFactory.?.SPACE });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_POUND, pcKeyFactory.?.DEL });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_POUND, pcKeyFactory.?.TWO });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_STAR, pcKeyFactory.?.ESCAPE });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_STAR, pcKeyFactory.?.STAR });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.LEVEL_DOWN, pcKeyFactory.?.COMMA });
        _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.LEVEL_UP, pcKeyFactory.?.PERIOD });
        Inheritance.bindOverrides(this);
        return this;
    }
};

