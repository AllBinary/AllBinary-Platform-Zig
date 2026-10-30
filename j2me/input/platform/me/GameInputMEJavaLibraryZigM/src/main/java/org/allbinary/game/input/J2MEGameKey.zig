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

pub const J2MEGameKey = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.J2MEGameKey";
    base: Input = undefined,
    

    pub fn create2(key: i32, keyName: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Input, "create2", .{ key, keyName }).*;
        const id: i32 = Inheritance.receiver(this, "getId").getId();
        if (id >= 0) {
            const inputFactory: ?*InputFactory = Inheritance.upcast(?*InputFactory, InputFactory.getInstance());
            _ = Inheritance.call(inputFactory.?, "add", .{ id, this });
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("J2MEGameKey: ") }).?, "append", .{ self.base.toString() }))));
    }
    

    pub fn getString(keyCode: i32) ?*String {
        const input: ?*Input = Inheritance.upcast(?*Input, Inheritance.call(InputFactory.getInstance().?, "getInstanceById", .{ keyCode }));
        if (input != null) {
            return Inheritance.upcast(?*String, input.?.getName());
        } else {
            return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        }
    }
};

