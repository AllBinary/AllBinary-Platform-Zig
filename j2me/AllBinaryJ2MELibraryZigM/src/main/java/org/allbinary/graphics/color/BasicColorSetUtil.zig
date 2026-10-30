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
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;

pub const BasicColorSetUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.color.BasicColorSetUtil";
    var instance: ?*BasicColorSetUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BasicColorSetUtil.create();
    }
    

    pub fn getInstance() ?*BasicColorSetUtil {
        return Inheritance.upcast(?*BasicColorSetUtil, BasicColorSetUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn setBasicColorP(self: *Self, graphics: ?*Graphics, basicColor: ?*BasicColor) void {
        _ = self;
        _ = Inheritance.call(graphics.?, "setColor", .{ basicColor.?.intValue() });
    }
    

    pub fn setBasicColorP3(self: *Self, graphics: ?*Graphics, basicColor: ?*BasicColor, value: i32) void {
        _ = basicColor;
        _ = self;
        _ = Inheritance.call(graphics.?, "setColor", .{ value });
    }
};

