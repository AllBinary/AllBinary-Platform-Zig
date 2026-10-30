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
// package org.allbinary.game

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;

pub const PlayerType = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.PlayerType";
    id: i32 = 0,
    name: ?*String = null,

    fn initFields(this: *Self) void {
        
        this.name = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    pub fn create2(name: ?*String, value: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.name = name;
        this.id = value;
        return this;
    }
    

    pub fn getId(self: *Self) i32 {
        return self.id;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.getName());
    }
};

