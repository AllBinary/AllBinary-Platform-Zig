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
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;

pub const InterfaceUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.java.anyType.InterfaceUtil";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn viewAll(myClass: ?*anyopaque, lineBreak: ?*String) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const interfaces: []?*anyopaque = myClass.?.getInterfaces();
        _ = Inheritance.call(stringBuffer.?, "append", .{ lineBreak });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Interfaces: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ lineBreak });
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(interfaces.len))) : (index += 1) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Interface: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(interfaces[@intCast(index)].?))).name) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ lineBreak });
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn getClass(interfaceName: ?*String, interfaces: []?*anyopaque) ?*anyopaque {
        if (interfaceName != null and interfaces != null and @as(i32, @intCast(interfaces.len)) > 0) {
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(interfaces.len))) : (index += 1) {
                if (Inheritance.call(String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(interfaces[@intCast(index)].?))).name).?, "indexOf", .{ interfaceName }) >= 0) {
                    return Inheritance.upcast(?*anyopaque, interfaces[@intCast(index)]);
                }
                }
            }
        }
        return null;
    }
    

    pub fn isImplemented(clazz: ?*anyopaque, anyType: ?Object) bool {
        const classes: []?*anyopaque = Inheritance.receiverOf(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?, "getInterfaces").getInterfaces();
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(classes.len))) : (index += 1) {
            if (Inheritance.call(String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(clazz.?))).name).?, "compareTo", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(classes[@intCast(index)].?))).name) }) == 0) {
                return true;
            }
            }
        }
        return false;
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn isImplemented(className: ?*String, anyType: ?Object) bool {
        const classes: []?*anyopaque = Inheritance.receiverOf(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?, "getInterfaces").getInterfaces();
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(classes.len))) : (index += 1) {
            if (Inheritance.call(String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(classes[@intCast(index)].?))).name).?, "indexOf", .{ className }) == 0) {
                return true;
            }
            }
        }
        return false;
    }
    

    pub fn isImplementedView(clazz: ?*anyopaque, anyType: ?Object) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const classes: []?*anyopaque = Inheritance.receiverOf(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?, "getInterfaces").getInterfaces();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("isImplementedView: \n") });
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(classes.len))) : (index += 1) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(clazz.?))).name) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" should be = ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(classes[@intCast(index)].?))).name) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(classes[@intCast(index)].?))).name) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.NEW_LINE });
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

