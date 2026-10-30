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
        const gameKeyArray: []?*GameKey = @constCast(&[_]?*GameKey{ self.gameKeyFactory.?.DOWN, self.gameKeyFactory.?.FIRE, self.gameKeyFactory.?.GAME_A, self.gameKeyFactory.?.GAME_B, self.gameKeyFactory.?.GAME_C, self.gameKeyFactory.?.GAME_D, self.gameKeyFactory.?.KEY_NUM0, self.gameKeyFactory.?.KEY_NUM1, self.gameKeyFactory.?.KEY_NUM2, self.gameKeyFactory.?.KEY_NUM3, self.gameKeyFactory.?.KEY_NUM4, self.gameKeyFactory.?.KEY_NUM5, self.gameKeyFactory.?.KEY_NUM6, self.gameKeyFactory.?.KEY_NUM7, self.gameKeyFactory.?.KEY_NUM8, self.gameKeyFactory.?.KEY_NUM9, self.gameKeyFactory.?.KEY_POUND, self.gameKeyFactory.?.KEY_STAR, self.gameKeyFactory.?.LEFT, self.gameKeyFactory.?.LEVEL_DOWN, self.gameKeyFactory.?.LEVEL_UP, self.gameKeyFactory.?.NONE, self.gameKeyFactory.?.RIGHT, self.gameKeyFactory.?.UP })[0..];
        const inputFactory: ?*InputFactory = Inheritance.upcast(?*InputFactory, InputFactory.getInstance());
        {
            var index: i32 = @as(i32, @intCast(gameKeyArray.len));
            while (value_N66391: { index -= 1; break :value_N66391 index; } >= 0) {
            _ = Inheritance.call(inputFactory.?, "add", .{ gameKeyArray[@intCast(index)].?.getId(), gameKeyArray[@intCast(index)] });
            }
        }
    }
    

    pub fn isSubmission(self: *Self, input: ?*Input) bool {
        if (Object.same(input, self.gameKeyFactory.?.FIRE)) {
            return true;
        }
        return false;
    }
    

    pub fn isDelete(self: *Self, input: ?*Input) bool {
        if (Object.same(input, self.gameKeyFactory.?.GAME_D)) {
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
        if (Object.same(input, self.gameKeyFactory.?.UP)) {
            return true;
        }
        return false;
    }
    

    pub fn isDown(self: *Self, input: ?*Input) bool {
        if (Object.same(input, self.gameKeyFactory.?.DOWN)) {
            return true;
        }
        return false;
    }
    

    pub fn isLeft(self: *Self, input: ?*Input) bool {
        if (Object.same(input, self.gameKeyFactory.?.LEFT)) {
            return true;
        }
        return false;
    }
    

    pub fn isRight(self: *Self, input: ?*Input) bool {
        if (Object.same(input, self.gameKeyFactory.?.RIGHT)) {
            return true;
        }
        return false;
    }
    

    pub fn isEnter(self: *Self, input: ?*Input) bool {
        if (Object.same(input, self.gameKeyFactory.?.FIRE)) {
            return true;
        }
        return false;
    }
};

