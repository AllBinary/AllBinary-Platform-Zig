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
// package org.allbinary.graphics.paint

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const LocationPaintableInterface = @import("org/allbinary/graphics/paint/LocationPaintableInterface.zig").LocationPaintableInterface;

pub const LocationPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.paint.LocationPaintable";
    pub const java_interfaces = .{ LocationPaintableInterface };
    // Implements LocationPaintableInterface
    var instance: ?*LocationPaintable = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LocationPaintable.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*LocationPaintable {
        return Inheritance.upcast(?*LocationPaintable, LocationPaintable.instance);
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = graphics;
        _ = x;
        _ = y;
        _ = self;
    }
};

