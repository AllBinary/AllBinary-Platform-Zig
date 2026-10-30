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
// package org.allbinary.logic.math

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const BasicDecimal = @import("org/allbinary/logic/math/BasicDecimal.zig").BasicDecimal;

pub const Orientation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.math.Orientation";
    yaw: ?*BasicDecimal = null,
    pitch: ?*BasicDecimal = null,
    roll: ?*BasicDecimal = null,
    pub var NONE: ?*Orientation = undefined;
    var SINGLETON: ?*Orientation = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NONE = Inheritance.callStatic(Orientation, "create3", .{ 0, 0, 0 });
        SINGLETON = Inheritance.callStatic(Orientation, "create3", .{ 0, 0, 0 });
    }

    fn initFields(this: *Self) void {
        this.yaw = Inheritance.callStatic(BasicDecimal, "create1", .{ 0 });
        this.pitch = Inheritance.callStatic(BasicDecimal, "create1", .{ 0 });
        this.roll = Inheritance.callStatic(BasicDecimal, "create1", .{ 0 });
    }
    

    pub fn getInstance(yaw: i32, pitch: i32, roll: i32) ?*Orientation {
        _ = Inheritance.call(Orientation.SINGLETON.?.yaw.?, "setint", .{ yaw });
        _ = Inheritance.call(Orientation.SINGLETON.?.pitch.?, "setint", .{ pitch });
        _ = Inheritance.call(Orientation.SINGLETON.?.roll.?, "setint", .{ roll });
        return Inheritance.upcast(?*Orientation, Orientation.SINGLETON);
    }
    

    pub fn create3(yaw: i32, pitch: i32, roll: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this.yaw.?, "setint", .{ yaw });
        _ = Inheritance.call(this.pitch.?, "setint", .{ pitch });
        _ = Inheritance.call(this.roll.?, "setint", .{ roll });
        return this;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Y: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.yaw)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" P: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.pitch)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" R: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.roll)) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

