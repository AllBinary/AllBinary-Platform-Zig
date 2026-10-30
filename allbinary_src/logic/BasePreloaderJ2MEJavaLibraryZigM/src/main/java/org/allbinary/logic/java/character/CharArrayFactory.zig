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
// package org.allbinary.logic.java.character

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const CharArrayFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.java.character.CharArrayFactory";
    zeroCharArray: []u16 = &.{},
    var instance: ?*CharArrayFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = CharArrayFactory.create();
    }

    fn initFields(this: *Self) void {
        this.zeroCharArray = array_N65708: { const array_N65708_array = allocator.alloc(u16, @intCast(0)) catch unreachable; @memset(array_N65708_array, 0); break :array_N65708 array_N65708_array; };
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*CharArrayFactory {
        return Inheritance.upcast(?*CharArrayFactory, CharArrayFactory.instance);
    }
    

    pub fn getZeroCharArray(self: *Self) []u16 {
        return self.zeroCharArray;
    }
};

