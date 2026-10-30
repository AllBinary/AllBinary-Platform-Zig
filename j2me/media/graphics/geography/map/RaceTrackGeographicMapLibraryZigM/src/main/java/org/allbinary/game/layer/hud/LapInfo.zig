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
// package org.allbinary.game.layer.hud

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;

pub const LapInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.hud.LapInfo";
    numberOfLaps: i32 = 0,
    totalLaps: i32 = 0,
    pub var NULL_LAP_INFO: ?*LapInfo = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_LAP_INFO = Inheritance.callStatic(LapInfo, "create1", .{ -1 });
    }

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create1(totalLaps: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.totalLaps = totalLaps;
        this.numberOfLaps = 1;
        return this;
    }
    

    pub fn add(self: *Self) void {
        self.numberOfLaps += 1;
    }
    

    pub fn getCurrentLap(self: *Self) i32 {
        return self.numberOfLaps;
    }
    

    pub fn getTotalLaps(self: *Self) i32 {
        return self.totalLaps;
    }
    

    pub fn isDone(self: *Self) bool {
        if (self.numberOfLaps >= self.totalLaps) {
            return true;
        }
        return false;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("isDone: ") });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ self.isDone() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" CurrentLap: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getCurrentLap() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Total Laps: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getTotalLaps() });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

