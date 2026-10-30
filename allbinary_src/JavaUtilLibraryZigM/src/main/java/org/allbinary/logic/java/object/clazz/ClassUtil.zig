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
// package org.allbinary.logic.java.anyType.clazz

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ConstructorUtil = @import("org/allbinary/logic/java/anyType/ConstructorUtil.zig").ConstructorUtil;
const InterfaceUtil = @import("org/allbinary/logic/java/anyType/InterfaceUtil.zig").InterfaceUtil;
const MethodUtil = @import("org/allbinary/logic/java/anyType/MethodUtil.zig").MethodUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;

pub const ClassUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.java.anyType.clazz.ClassUtil";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn viewAll(anyType: ?Object, lineBreak: ?*String) ?*String {
        if (anyType != null) {
            return Inheritance.upcast(?*String, Inheritance.callStatic(ClassUtil, "viewAll", .{ @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))), lineBreak }));
        } else {
            return String.literal("Object Null");
        }
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn viewAll(myClass: ?*anyopaque, lineBreak: ?*String) ?*String {
        if (myClass != null) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            const classes: []?*anyopaque = myClass.?.getClasses();
            _ = Inheritance.call(stringBuffer.?, "append", .{ lineBreak });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Class: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(myClass.?))).name) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" uses ") });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(classes.len)) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" other classes") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ lineBreak });
            _ = Inheritance.call(stringBuffer.?, "append", .{ lineBreak });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Classes: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ lineBreak });
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(classes.len))) : (index += 1) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Class: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(classes[@intCast(index)].?))).name) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ lineBreak });
                }
            }
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.callStatic(InterfaceUtil, "viewAll", .{ myClass, lineBreak }) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ lineBreak });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.callStatic(ConstructorUtil, "viewAll", .{ myClass, lineBreak }) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ lineBreak });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.callStatic(MethodUtil, "viewAll", .{ myClass, lineBreak }) });
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        } else {
            return String.literal("Class Null");
        }
    }
};

