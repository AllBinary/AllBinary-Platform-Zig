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
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Input = @import("org/allbinary/game/input/Input.zig").Input;

pub const GameKey = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.GameKey";
    base: Input = undefined,
    pub var NULL_GAME_KEY: ?*GameKey = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_GAME_KEY = Inheritance.callStatic(GameKey, "create2", .{ -1, StringUtil.getInstance().?.NULL_STRING });
    }
    

    pub fn create2(key: i32, name: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Input, "create2", .{ key, name }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("GameKey ") }).?, "append", .{ self.base.toString() }))));
    }
};

