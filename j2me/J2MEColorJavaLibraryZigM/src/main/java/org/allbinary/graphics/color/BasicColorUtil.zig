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
// package org.allbinary.graphics.color

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;

pub const BasicColorUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.color.BasicColorUtil";
    ZERO_ARRAY: []?*BasicColor = &.{},
    ALPHA: i32 = 0,
    isAlpha: bool = false,
    ffOpaque: bool = false,
    var instance: ?*BasicColorUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BasicColorUtil.create();
    }

    fn initFields(this: *Self) void {
        this.ZERO_ARRAY = array_N65703: { const array_N65703_array = allocator.alloc(?*BasicColor, @intCast(0)) catch unreachable; @memset(array_N65703_array, null); break :array_N65703 array_N65703_array; };
        this.ALPHA = @as(i32, @bitCast(@as(u32, 0xFF000000)));
        this.isAlpha = true;
        this.ffOpaque = true;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*BasicColorUtil {
        return Inheritance.upcast(?*BasicColorUtil, BasicColorUtil.instance);
    }
    

    pub fn getRGB(self: *Self, red: i32, green: i32, blue: i32) i32 {
        var value: i32 = 0;
        if (self.isAlpha) {
            if (self.ffOpaque) {
                value = self.ALPHA;
            }
        }
        value = (red << @intCast(16)) | value;
        value = (green << @intCast(8)) | value;
        value = blue | value;
        return value;
    }
    

    pub fn getARGB(self: *Self, alphaValue: i32, r: i32, g: i32, b: i32) i32 {
        return ((alphaValue << @intCast(24)) & self.ALPHA) + ((r << @intCast(16)) & 0x00FF0000) + ((g << @intCast(8)) & 0x0000FF00) + (b & 0x000000FF);
    }
    

    pub fn get(self: *Self, alphaValue: i32, color: i32) i32 {
        return ((alphaValue << @intCast(24)) & self.ALPHA) + color;
    }
    

    pub fn invert(self: *Self, color: i32) i32 {
        return (0xFFFFFF - color) | self.ALPHA;
    }
};

