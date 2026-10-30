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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const PaintableInterface = @import("org/allbinary/graphics/paint/PaintableInterface.zig").PaintableInterface;
const Layer = @import("org/allbinary/layer/Layer.zig").Layer;

pub const PaintableLayerComposite = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.PaintableLayerComposite";
    base: Paintable = undefined,
    paintableArray: []?*Layer = &.{},

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(paintableArray: []?*Layer) *Self {
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
            var index: i32 = @as(i32, @intCast(self.paintableArray.len));
            while (value_N65893: { index -= 1; break :value_N65893 index; } >= 0) {
            _ = Inheritance.call(self.paintableArray[@intCast(index)].?, "paint", .{ graphics });
            }
        }
    }
    

    pub fn paintThreed(self: *Self, graphics: ?*Graphics) void {
        var paintableInterface: ?*PaintableInterface = null;
        {
            var index: i32 = @as(i32, @intCast(self.paintableArray.len));
            while (value_N66140: { index -= 1; break :value_N66140 index; } >= 0) {
            paintableInterface = Inheritance.cast(?*PaintableInterface, self.paintableArray[@intCast(index)]);
            _ = Inheritance.call(paintableInterface.?, "paintThreed", .{ graphics });
            }
        }
    }
};

