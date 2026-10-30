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
const LocationPaintable = @import("org/allbinary/graphics/paint/LocationPaintable.zig").LocationPaintable;

pub const StringLocationPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.paint.StringLocationPaintable";
    base: LocationPaintable = undefined,
    value: ?*String = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(value: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = LocationPaintable.create().*;
        this.initFields();
        this.value = value;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(graphics.?, "drawString", .{ self.value, x, y, 0 });
    }
};

