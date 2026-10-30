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
// package org.allbinary.media.image.comparison.color

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CacheableInterface = @import("org/allbinary/logic/util/cache/CacheableInterface.zig").CacheableInterface;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const ColorDelta = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.comparison.color.ColorDelta";
    rgb1: i32 = 0,
    rgb2: i32 = 0,
    key: ?Object = null,
    // Implements CacheableInterface

    fn initFields(this: *Self) void {
        this.rgb1 = 0;
        this.rgb2 = 0;
        
    }
    

    pub fn create2(rgb1: i32, rgb2: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setRgb1", .{ rgb1 });
        _ = Inheritance.call(this, "setRgb2", .{ rgb2 });
        this.key = Inheritance.upcast(@TypeOf(this.key), Inheritance.callStatic(ColorDelta, "getKey", .{ rgb1, rgb2 }));
        return this;
    }
    

    pub fn getKey(self: *Self) ?Object {
        return self.key;
    }
    

    pub fn getKey2(rgb1: i32, rgb2: i32) ?Object {
        return Inheritance.upcast(?Object, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.valueOf(rgb1) }).?, "append", .{ CommonSeps.getInstance().?.UNDERSCORE }).?, "append", .{ String.valueOf(rgb2) }))));
    }
    

    pub fn getRgb1(self: *Self) i32 {
        return self.rgb1;
    }
    

    pub fn setRgb1(self: *Self, rgb1: i32) void {
        self.rgb1 = rgb1;
    }
    

    pub fn getRgb2(self: *Self) i32 {
        return self.rgb2;
    }
    

    pub fn setRgb2(self: *Self, rgb2: i32) void {
        self.rgb2 = rgb2;
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("ColorDelta: ") }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ self.getKey() }) }).?, "append", .{ String.literal(" RGB1: ") }).?, "appendint", .{ self.getRgb1() }).?, "append", .{ String.literal(" RGB2: ") }).?, "appendint", .{ self.getRgb2() }))));
    }
};

