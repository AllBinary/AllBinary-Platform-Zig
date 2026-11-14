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
const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const CommonPhoneStrings = @import("org/allbinary/string/CommonPhoneStrings.zig").CommonPhoneStrings;
const GameKey = @import("org/allbinary/game/input/GameKey.zig").GameKey;
const InputFactory = @import("org/allbinary/game/input/InputFactory.zig").InputFactory;

pub const GameKeyFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.GameKeyFactory";
    NONE: ?*GameKey = null,
    UP: ?*GameKey = null,
    DOWN: ?*GameKey = null,
    LEFT: ?*GameKey = null,
    RIGHT: ?*GameKey = null,
    KEY_POUND: ?*GameKey = null,
    KEY_STAR: ?*GameKey = null,
    KEY_NUM0: ?*GameKey = null,
    KEY_NUM1: ?*GameKey = null,
    KEY_NUM2: ?*GameKey = null,
    KEY_NUM3: ?*GameKey = null,
    KEY_NUM4: ?*GameKey = null,
    KEY_NUM5: ?*GameKey = null,
    KEY_NUM6: ?*GameKey = null,
    KEY_NUM7: ?*GameKey = null,
    KEY_NUM8: ?*GameKey = null,
    KEY_NUM9: ?*GameKey = null,
    GAME_A: ?*GameKey = null,
    GAME_B: ?*GameKey = null,
    GAME_C: ?*GameKey = null,
    GAME_D: ?*GameKey = null,
    FIRE: ?*GameKey = null,
    LEVEL_DOWN: ?*GameKey = null,
    LEVEL_UP: ?*GameKey = null,
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, Inheritance.fieldPointer(NullUtil.getInstance().?, "NULL_OBJECT").*);
    }

    fn initFields(this: *Self) void {
        this.NONE = Inheritance.callStatic(GameKey, "create2", .{ Inheritance.arithmetic(.subtract, Inheritance.fieldPointer(InputFactory.getInstance().?, "MAX").*, 1), String.literal("None") });
        this.UP = Inheritance.callStatic(GameKey, "create2", .{ Canvas.UP, CommonPhoneStrings.getInstance().?.UP });
        this.DOWN = Inheritance.callStatic(GameKey, "create2", .{ Canvas.DOWN, CommonPhoneStrings.getInstance().?.DOWN });
        this.LEFT = Inheritance.callStatic(GameKey, "create2", .{ Canvas.LEFT, CommonPhoneStrings.getInstance().?.LEFT });
        this.RIGHT = Inheritance.callStatic(GameKey, "create2", .{ Canvas.RIGHT, CommonPhoneStrings.getInstance().?.RIGHT });
        this.KEY_POUND = Inheritance.callStatic(GameKey, "create2", .{ Canvas.KEY_POUND, String.literal("POUND") });
        this.KEY_STAR = Inheritance.callStatic(GameKey, "create2", .{ Canvas.KEY_STAR, String.literal("STAR") });
        this.KEY_NUM0 = Inheritance.callStatic(GameKey, "create2", .{ Canvas.KEY_NUM0, Inheritance.fieldPointer(CommonPhoneStrings.getInstance().?, "ZERO").* });
        this.KEY_NUM1 = Inheritance.callStatic(GameKey, "create2", .{ Canvas.KEY_NUM1, Inheritance.fieldPointer(CommonPhoneStrings.getInstance().?, "ONE").* });
        this.KEY_NUM2 = Inheritance.callStatic(GameKey, "create2", .{ Canvas.KEY_NUM2, Inheritance.fieldPointer(CommonPhoneStrings.getInstance().?, "TWO").* });
        this.KEY_NUM3 = Inheritance.callStatic(GameKey, "create2", .{ Canvas.KEY_NUM3, Inheritance.fieldPointer(CommonPhoneStrings.getInstance().?, "THREE").* });
        this.KEY_NUM4 = Inheritance.callStatic(GameKey, "create2", .{ Canvas.KEY_NUM4, Inheritance.fieldPointer(CommonPhoneStrings.getInstance().?, "FOUR").* });
        this.KEY_NUM5 = Inheritance.callStatic(GameKey, "create2", .{ Canvas.KEY_NUM5, Inheritance.fieldPointer(CommonPhoneStrings.getInstance().?, "FIVE").* });
        this.KEY_NUM6 = Inheritance.callStatic(GameKey, "create2", .{ Canvas.KEY_NUM6, Inheritance.fieldPointer(CommonPhoneStrings.getInstance().?, "SIX").* });
        this.KEY_NUM7 = Inheritance.callStatic(GameKey, "create2", .{ Canvas.KEY_NUM7, Inheritance.fieldPointer(CommonPhoneStrings.getInstance().?, "SEVEN").* });
        this.KEY_NUM8 = Inheritance.callStatic(GameKey, "create2", .{ Canvas.KEY_NUM8, Inheritance.fieldPointer(CommonPhoneStrings.getInstance().?, "EIGHT").* });
        this.KEY_NUM9 = Inheritance.callStatic(GameKey, "create2", .{ Canvas.KEY_NUM9, Inheritance.fieldPointer(CommonPhoneStrings.getInstance().?, "NINE").* });
        this.GAME_A = Inheritance.callStatic(GameKey, "create2", .{ Canvas.GAME_A, String.literal("Game A") });
        this.GAME_B = Inheritance.callStatic(GameKey, "create2", .{ Canvas.GAME_B, String.literal("Game B") });
        this.GAME_C = Inheritance.callStatic(GameKey, "create2", .{ Canvas.GAME_C, String.literal("Game C") });
        this.GAME_D = Inheritance.callStatic(GameKey, "create2", .{ Canvas.GAME_D, String.literal("Game D") });
        this.FIRE = Inheritance.callStatic(GameKey, "create2", .{ Canvas.FIRE, CommonPhoneStrings.getInstance().?.FIRE });
        this.LEVEL_DOWN = Inheritance.callStatic(GameKey, "create2", .{ Canvas.KEY_NUM9 + 1, String.literal("Cheat Level Up") });
        this.LEVEL_UP = Inheritance.callStatic(GameKey, "create2", .{ Canvas.KEY_NUM9 + 2, String.literal("Cheat Level Down") });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*GameKeyFactory {
        if (Object.same(GameKeyFactory.instance, Inheritance.fieldPointer(NullUtil.getInstance().?, "NULL_OBJECT").*)) {
            GameKeyFactory.instance = Inheritance.upcast(@TypeOf(GameKeyFactory.instance), GameKeyFactory.create());
        }
        return Inheritance.cast(?*GameKeyFactory, GameKeyFactory.instance);
    }
};

