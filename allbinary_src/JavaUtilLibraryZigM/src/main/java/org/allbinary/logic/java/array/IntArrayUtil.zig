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
// package org.allbinary.logic.java.array

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;

pub const IntArrayUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.java.array.IntArrayUtil";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn toString(array: []i32) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(array.len))) : (index += 1) {
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ array[@intCast(index)] });
            if (index < @as(i32, @intCast(array.len))) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(", ") });
            }
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn toString(array: [][]i32) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(array.len))) : (index += 1) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("{") });
            {
                var index2: i32 = 0;
                while (index2 < @as(i32, @intCast(array[@intCast(index)].len))) : (index2 += 1) {
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(array[@intCast(index)][@intCast(index2)])) });
                if (index2 < @as(i32, @intCast(array[@intCast(index)].len)) - 1) {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(", ") });
                }
                }
            }
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("}") });
            if (index < @as(i32, @intCast(array.len)) - 1) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(", \n") });
            }
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn toString(array: [][][]i32) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(array.len))) : (index += 1) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("{") });
            {
                var index2: i32 = 0;
                while (index2 < @as(i32, @intCast(array[@intCast(index)].len))) : (index2 += 1) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("{") });
                {
                    var index3: i32 = 0;
                    while (index3 < @as(i32, @intCast(array[@intCast(index)][@intCast(index2)].len))) : (index3 += 1) {
                    _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(array[@intCast(index)][@intCast(index2)][@intCast(index3)])) });
                    if (index3 < @as(i32, @intCast(array[@intCast(index)][@intCast(index2)].len)) - 1) {
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(", ") });
                    }
                    }
                }
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("}") });
                if (index2 < @as(i32, @intCast(array[@intCast(index)].len)) - 1) {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(", ") });
                }
                }
            }
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("}") });
            if (index < @as(i32, @intCast(array.len)) - 1) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(", \n") });
            }
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

