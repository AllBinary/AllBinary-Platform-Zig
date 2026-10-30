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
// package org.allbinary.system

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const Runtime = @import("java/lang/Runtime.zig").Runtime;

//ActualPlatform
pub const Memory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.system.Memory";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInfo() ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Memory: Free: ") });
        _ = Inheritance.call(stringBuffer.?, "appendlong", .{ @as(i64, @intCast(Inheritance.receiverOf(Runtime.getRuntime().?, "freeMemory").freeMemory())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Total: ") });
        _ = Inheritance.call(stringBuffer.?, "appendlong", .{ @as(i64, @intCast(Inheritance.receiverOf(Runtime.getRuntime().?, "totalMemory").totalMemory())) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

