// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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

pub const ColorUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.color.ColorUtil";
    var instance: ?*ColorUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ColorUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*ColorUtil {
        return Inheritance.upcast(?*ColorUtil, ColorUtil.instance);
    }
    

    pub fn isGreyishOrWhiteLike(self: *Self, color: ?*Color) bool {
        _ = self;
        if (@abs(color.?.getRed() - color.?.getGreen()) > 20 or @abs(color.?.getRed() - color.?.getBlue()) > 20 or @abs(color.?.getGreen() - color.?.getBlue()) > 20) {
            return false;
        }
        return true;
    }
    

    pub fn isDark(self: *Self, color: ?*Color) bool {
        _ = self;
        if (color.?.getRed() < 0x77 and color.?.getRed() < 0x77 and color.?.getRed() < 0x77) {
            return true;
        }
        return false;
    }
};

