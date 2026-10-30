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
// package org.allbinary.logic.java.anyType

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Method = @import("java/lang/reflect/Method.zig").Method;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const ParamsUtil = @import("org/allbinary/logic/java/anyType/ParamsUtil.zig").ParamsUtil;

pub const MethodUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.java.anyType.MethodUtil";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn viewAll(myClass: ?*anyopaque, lineBreak: ?*String) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const method: []?*Method = myClass.?.getMethods();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Methods: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ lineBreak });
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(method.len))) : (index += 1) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(method[@intCast(index)].?.getReturnType().?, "getName").getName() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ method[@intCast(index)].?.getName() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("(") });
            _ = Inheritance.callStatic(ParamsUtil, "viewParams", .{ method[@intCast(index)].?.getParameterTypes() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(")") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ lineBreak });
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

