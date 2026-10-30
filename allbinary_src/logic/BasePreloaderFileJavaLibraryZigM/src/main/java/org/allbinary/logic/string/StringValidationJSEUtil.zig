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
// package org.allbinary.logic.string

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Character = @import("java/lang/Character.zig").Character;

pub const StringValidationJSEUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.string.StringValidationJSEUtil";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn isBlank(string: ?*String) bool {
        const len: i32 = string.?.length();
        {
            var i: i32 = 0;
            while (i < len) : (i += 1) {
            const c: u16 = Inheritance.call(string.?, "charAt", .{ i });
            if (std.ascii.isWhitespace(@intCast(c)) == false) {
                return false;
            }
            }
        }
        return true;
    }
};

