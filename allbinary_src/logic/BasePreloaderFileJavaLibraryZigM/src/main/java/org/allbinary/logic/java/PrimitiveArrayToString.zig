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
// package org.allbinary.logic.java

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;

pub const PrimitiveArrayToString = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.java.PrimitiveArrayToString";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn toString(floats: []f32) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(floats.len))) : (index += 1) {
            _ = Inheritance.call(stringBuffer.?, "appendfloat", .{ floats[@intCast(index)] });
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

