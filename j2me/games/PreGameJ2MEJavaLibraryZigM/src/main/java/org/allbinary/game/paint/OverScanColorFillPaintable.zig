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
// package org.allbinary.game.paint

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const ColorFillPaintable = @import("org/allbinary/game/paint/ColorFillPaintable.zig").ColorFillPaintable;

pub const OverScanColorFillPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.paint.OverScanColorFillPaintable";
    base: ColorFillPaintable = undefined,
    

    pub fn create1(basicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ColorFillPaintable, "create1", .{ basicColor }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(graphics.?, "setColor", .{ Inheritance.fieldPointer(self, "colorP").* });
        _ = Inheritance.call(graphics.?, "fillRect", .{ -graphics.?.getClipX(), -graphics.?.getClipY(), Inheritance.receiverOf(Inheritance.fieldPointer(self, "displayInfoSingleton").*.?, "getLastWidth").getLastWidth() + (graphics.?.getClipX() * 2), Inheritance.receiverOf(Inheritance.fieldPointer(self, "displayInfoSingleton").*.?, "getLastHeight").getLastHeight() + (graphics.?.getClipY() * 2) });
    }
};

