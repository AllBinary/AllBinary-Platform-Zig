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

pub const Input = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.Input";
    id: i32 = 0,
    name: ?*String = null,

    fn initFields(this: *Self) void {
        this.id = 0;
        this.name = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    pub fn create2(id: i32, name: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setId", .{ id });
        _ = Inheritance.call(this, "setName", .{ name });
        return this;
    }
    

    pub fn getId(self: *Self) i32 {
        return self.id;
    }
    

    pub fn setId(self: *Self, key: i32) void {
        self.id = key;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn setName(self: *Self, keyName: ?*String) void {
        self.name = keyName;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Name: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Id: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getId() });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

