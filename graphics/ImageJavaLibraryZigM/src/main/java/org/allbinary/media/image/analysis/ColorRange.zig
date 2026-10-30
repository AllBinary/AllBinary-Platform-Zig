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
const ColorRangeInterface = @import("org/allbinary/media/image/analysis/ColorRangeInterface.zig").ColorRangeInterface;

pub const ColorRange = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.analysis.ColorRange";
    pub const java_interfaces = .{ ColorRangeInterface };
    minRed: i32 = 0,
    maxRed: i32 = 0,
    minGreen: i32 = 0,
    maxGreen: i32 = 0,
    minBlue: i32 = 0,
    maxBlue: i32 = 0,
    // Implements ColorRangeInterface

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.minRed = 0;
        this.maxRed = 0;
        this.minGreen = 0;
        this.maxGreen = 0;
        this.minBlue = 0;
        this.maxBlue = 0;
        return this;
    }
    

    pub fn getMinRed(self: *Self) i32 {
        return self.minRed;
    }
    

    pub fn setMinRed(self: *Self, minRed: i32) void {
        self.minRed = minRed;
    }
    

    pub fn getMaxRed(self: *Self) i32 {
        return self.maxRed;
    }
    

    pub fn setMaxRed(self: *Self, maxRed: i32) void {
        self.maxRed = maxRed;
    }
    

    pub fn getMinGreen(self: *Self) i32 {
        return self.minGreen;
    }
    

    pub fn setMinGreen(self: *Self, minGreen: i32) void {
        self.minGreen = minGreen;
    }
    

    pub fn getMaxGreen(self: *Self) i32 {
        return self.maxGreen;
    }
    

    pub fn setMaxGreen(self: *Self, maxGreen: i32) void {
        self.maxGreen = maxGreen;
    }
    

    pub fn getMinBlue(self: *Self) i32 {
        return self.minBlue;
    }
    

    pub fn setMinBlue(self: *Self, minBlue: i32) void {
        self.minBlue = minBlue;
    }
    

    pub fn getMaxBlue(self: *Self) i32 {
        return self.maxBlue;
    }
    

    pub fn setMaxBlue(self: *Self, maxBlue: i32) void {
        self.maxBlue = maxBlue;
    }
    

    pub fn isInRange(self: *Self, color: ?*Color) bool {
        if (color.?.getRed() >= self.getMinRed() and color.?.getRed() <= self.getMaxRed() and color.?.getGreen() >= self.getMinGreen() and color.?.getGreen() <= self.getMaxGreen() and color.?.getBlue() >= self.getMinBlue() and color.?.getBlue() <= self.getMaxBlue()) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("getMinRed(): ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getMinRed() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("getMaxRed(): ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getMaxRed() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("getMinGreen(): ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getMinGreen() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("getMaxGreen(): ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getMaxGreen() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("getMinBlue(): ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getMinGreen() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("getMaxBlue(): ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getMaxBlue() });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

