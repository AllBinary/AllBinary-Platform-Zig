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
const GameKey = @import("org/allbinary/game/input/GameKey.zig").GameKey;
const GameKeyFactory = @import("org/allbinary/game/input/GameKeyFactory.zig").GameKeyFactory;
const Input = @import("org/allbinary/game/input/Input.zig").Input;
const InputFactory = @import("org/allbinary/game/input/InputFactory.zig").InputFactory;

pub const J2MEKeyFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.J2MEKeyFactory";
    gameKeyFactory: ?*GameKeyFactory = null,
    var instance: ?*J2MEKeyFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = J2MEKeyFactory.create();
    }

    fn initFields(this: *Self) void {
        this.gameKeyFactory = Inheritance.upcast(?*GameKeyFactory, GameKeyFactory.getInstance());
    }
    

    pub fn getInstance() ?*J2MEKeyFactory {
        return Inheritance.upcast(?*J2MEKeyFactory, J2MEKeyFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn init(self: *Self) void {
        const gameKeyArray: []?*GameKey = @constCast(&[_]?*GameKey{ Inheritance.upcast(?*GameKey, Inheritance.fieldPointer(self.gameKeyFactory.?, "DOWN").*), Inheritance.upcast(?*GameKey, Inheritance.fieldPointer(self.gameKeyFactory.?, "FIRE").*), Inheritance.upcast(?*GameKey, Inheritance.fieldPointer(self.gameKeyFactory.?, "GAME_A").*), Inheritance.upcast(?*GameKey, Inheritance.fieldPointer(self.gameKeyFactory.?, "GAME_B").*), Inheritance.upcast(?*GameKey, Inheritance.fieldPointer(self.gameKeyFactory.?, "GAME_C").*), Inheritance.upcast(?*GameKey, Inheritance.fieldPointer(self.gameKeyFactory.?, "GAME_D").*), Inheritance.upcast(?*GameKey, Inheritance.fieldPointer(self.gameKeyFactory.?, "KEY_NUM0").*), Inheritance.upcast(?*GameKey, Inheritance.fieldPointer(self.gameKeyFactory.?, "KEY_NUM1").*), Inheritance.upcast(?*GameKey, Inheritance.fieldPointer(self.gameKeyFactory.?, "KEY_NUM2").*), Inheritance.upcast(?*GameKey, Inheritance.fieldPointer(self.gameKeyFactory.?, "KEY_NUM3").*), Inheritance.upcast(?*GameKey, Inheritance.fieldPointer(self.gameKeyFactory.?, "KEY_NUM4").*), Inheritance.upcast(?*GameKey, Inheritance.fieldPointer(self.gameKeyFactory.?, "KEY_NUM5").*), Inheritance.upcast(?*GameKey, Inheritance.fieldPointer(self.gameKeyFactory.?, "KEY_NUM6").*), Inheritance.upcast(?*GameKey, Inheritance.fieldPointer(self.gameKeyFactory.?, "KEY_NUM7").*), Inheritance.upcast(?*GameKey, Inheritance.fieldPointer(self.gameKeyFactory.?, "KEY_NUM8").*), Inheritance.upcast(?*GameKey, Inheritance.fieldPointer(self.gameKeyFactory.?, "KEY_NUM9").*), Inheritance.upcast(?*GameKey, Inheritance.fieldPointer(self.gameKeyFactory.?, "KEY_POUND").*), Inheritance.upcast(?*GameKey, Inheritance.fieldPointer(self.gameKeyFactory.?, "KEY_STAR").*), Inheritance.upcast(?*GameKey, Inheritance.fieldPointer(self.gameKeyFactory.?, "LEFT").*), Inheritance.upcast(?*GameKey, Inheritance.fieldPointer(self.gameKeyFactory.?, "LEVEL_DOWN").*), Inheritance.upcast(?*GameKey, Inheritance.fieldPointer(self.gameKeyFactory.?, "LEVEL_UP").*), Inheritance.upcast(?*GameKey, Inheritance.fieldPointer(self.gameKeyFactory.?, "NONE").*), Inheritance.upcast(?*GameKey, Inheritance.fieldPointer(self.gameKeyFactory.?, "RIGHT").*), Inheritance.upcast(?*GameKey, Inheritance.fieldPointer(self.gameKeyFactory.?, "UP").*) })[0..];
        const inputFactory: ?*InputFactory = Inheritance.upcast(?*InputFactory, InputFactory.getInstance());
        {
            var index: i32 = @as(i32, @intCast(gameKeyArray.len));
            while (value_N66391: { index -= 1; break :value_N66391 index; } >= 0) {
            _ = Inheritance.call(inputFactory.?, "add", .{ Inheritance.receiver(gameKeyArray[@intCast(index)].?, "getId").getId(), gameKeyArray[@intCast(index)] });
            }
        }
    }
    

    pub fn isSubmission(self: *Self, input: ?*Input) bool {
        if (Object.same(input, Inheritance.fieldPointer(self.gameKeyFactory.?, "FIRE").*)) {
            return true;
        }
        return false;
    }
    

    pub fn isDelete(self: *Self, input: ?*Input) bool {
        if (Object.same(input, Inheritance.fieldPointer(self.gameKeyFactory.?, "GAME_D").*)) {
            return true;
        }
        return false;
    }
    

    pub fn isBackSpace(self: *Self, input: ?*Input) bool {
        _ = input;
        _ = self;
        return false;
    }
    

    pub fn isUp(self: *Self, input: ?*Input) bool {
        if (Object.same(input, Inheritance.fieldPointer(self.gameKeyFactory.?, "UP").*)) {
            return true;
        }
        return false;
    }
    

    pub fn isDown(self: *Self, input: ?*Input) bool {
        if (Object.same(input, Inheritance.fieldPointer(self.gameKeyFactory.?, "DOWN").*)) {
            return true;
        }
        return false;
    }
    

    pub fn isLeft(self: *Self, input: ?*Input) bool {
        if (Object.same(input, Inheritance.fieldPointer(self.gameKeyFactory.?, "LEFT").*)) {
            return true;
        }
        return false;
    }
    

    pub fn isRight(self: *Self, input: ?*Input) bool {
        if (Object.same(input, Inheritance.fieldPointer(self.gameKeyFactory.?, "RIGHT").*)) {
            return true;
        }
        return false;
    }
    

    pub fn isEnter(self: *Self, input: ?*Input) bool {
        if (Object.same(input, Inheritance.fieldPointer(self.gameKeyFactory.?, "FIRE").*)) {
            return true;
        }
        return false;
    }
};

