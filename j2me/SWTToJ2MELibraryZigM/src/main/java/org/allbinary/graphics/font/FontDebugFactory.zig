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
// package org.allbinary.graphics.font

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;

pub const FontDebugFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.font.FontDebugFactory";
    var instance: ?*FontDebugFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = FontDebugFactory.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*FontDebugFactory {
        return Inheritance.upcast(?*FontDebugFactory, FontDebugFactory.instance);
    }
    

    pub fn setFont(self: *Self, font: ?*Font, graphics: ?*Graphics) void {
        _ = self;
        _ = Inheritance.call(graphics.?, "setFont", .{ font });
    }
};

