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
// package org.allbinary.direction

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;

pub const Direction = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.direction.Direction";
    name: ?*String = null,
    otherName: ?*String = null,
    value: i32 = 0,
    frameFactor: i32 = 0,
    var directionArray: []?*Direction = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        directionArray = array_N65627: { const array_N65627_array = allocator.alloc(?*Direction, @intCast(13)) catch unreachable; @memset(array_N65627_array, null); break :array_N65627 array_N65627_array; };
    }

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
    }
    

    pub fn create4(name: ?*String, otherName: ?*String, value: i32, frameFactor: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.name = name;
        this.otherName = otherName;
        this.value = value;
        this.frameFactor = frameFactor;
        Direction.directionArray[@intCast(value)] = Inheritance.upcast(@TypeOf(Direction.directionArray[@intCast(value)]), this);
        return this;
    }
    

    pub fn getInstance(direction: i32) ?*Direction {
        return Inheritance.upcast(?*Direction, Direction.directionArray[@intCast(direction)]);
    }
    

    pub fn getValue(self: *Self) i32 {
        return self.value;
    }
    

    pub fn getFrameFactor(self: *Self) i32 {
        return self.frameFactor;
    }
    

    pub fn getOtherName(self: *Self) ?*String {
        return self.otherName;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Direction: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Or: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getOtherName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Value: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.value });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

