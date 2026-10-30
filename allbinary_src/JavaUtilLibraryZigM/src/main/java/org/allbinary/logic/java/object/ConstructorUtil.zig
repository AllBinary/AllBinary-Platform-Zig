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
// const Constructor = @import("java/lang/reflect/Constructor.zig").Constructor;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;

pub const ConstructorUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.java.anyType.ConstructorUtil";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn viewAll(myClass: ?*anyopaque, lineBreak: ?*String) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const constructor: []?*Constructor = myClass.?.getConstructors();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Constructors: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ lineBreak });
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(constructor.len))) : (index += 1) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.callStatic(ConstructorUtil, "view", .{ constructor[@intCast(index)], lineBreak }) });
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn view(constructor: ?*Constructor, lineBreak: ?*String) ?*String {
        if (constructor != null) {
            const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ constructor.?.getName() });
            const classes: []?*anyopaque = constructor.?.getParameterTypes();
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(classes.len))) : (index += 1) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.SPACE });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(classes[@intCast(index)].?))).name) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.COLON });
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ index });
                }
            }
            _ = Inheritance.call(stringBuffer.?, "append", .{ lineBreak });
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        } else {
            return String.literal("Constructor Null");
        }
    }
};

