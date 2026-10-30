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
// package org.allbinary.media.image.analysis

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;

pub const ColorAverage = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.analysis.ColorAverage";
    avgRed: f32 = 0.0,
    avgGreen: f32 = 0.0,
    avgBlue: f32 = 0.0,

    fn initFields(this: *Self) void {
        this.avgRed = 0.0;
        this.avgGreen = 0.0;
        this.avgBlue = 0.0;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setAvgRed", .{ 0 });
        _ = Inheritance.call(this, "setAvgGreen", .{ 0 });
        _ = Inheritance.call(this, "setAvgBlue", .{ 0 });
        return this;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("getAvgRed(): ") });
        _ = Inheritance.call(stringBuffer.?, "appendfloat", .{ self.getAvgRed() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("getAvgRed(): ") });
        _ = Inheritance.call(stringBuffer.?, "appendfloat", .{ self.getAvgRed() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("getAvgGreen(): ") });
        _ = Inheritance.call(stringBuffer.?, "appendfloat", .{ self.getAvgGreen() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.NEW_LINE });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn getAvgRed(self: *Self) f32 {
        return self.avgRed;
    }
    

    pub fn setAvgRed(self: *Self, avgRed: f32) void {
        self.avgRed = avgRed;
    }
    

    pub fn getAvgGreen(self: *Self) f32 {
        return self.avgGreen;
    }
    

    pub fn setAvgGreen(self: *Self, avgGreen: f32) void {
        self.avgGreen = avgGreen;
    }
    

    pub fn getAvgBlue(self: *Self) f32 {
        return self.avgBlue;
    }
    

    pub fn setAvgBlue(self: *Self, avgBlue: f32) void {
        self.avgBlue = avgBlue;
    }
};

