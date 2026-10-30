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
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const PaintableInterface = @import("org/allbinary/graphics/paint/PaintableInterface.zig").PaintableInterface;

pub const PaintableComposite = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.paint.PaintableComposite";
    base: Paintable = undefined,
    paintableArray: []?*PaintableInterface = &.{},

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(paintableArray: []?*PaintableInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Paintable.create().*;
        this.initFields();
        this.paintableArray = paintableArray;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        {
            var index: i32 = @as(i32, @intCast(self.paintableArray.len)) - 1;
            while (index >= 0) : (index -= 1) {
            _ = Inheritance.call(self.paintableArray[@intCast(index)].?, "paint", .{ graphics });
            }
        }
    }
    

    pub fn paintThreed(self: *Self, graphics: ?*Graphics) void {
        {
            var index: i32 = @as(i32, @intCast(self.paintableArray.len)) - 1;
            while (index >= 0) : (index -= 1) {
            _ = Inheritance.call(self.paintableArray[@intCast(index)].?, "paintThreed", .{ graphics });
            }
        }
    }
};

