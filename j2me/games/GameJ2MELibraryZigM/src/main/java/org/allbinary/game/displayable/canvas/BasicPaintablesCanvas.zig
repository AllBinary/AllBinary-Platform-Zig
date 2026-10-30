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
// package org.allbinary.game.displayable.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const ColorFillBasePaintable = @import("org/allbinary/game/paint/ColorFillBasePaintable.zig").ColorFillBasePaintable;
const ColorFillPaintableFactory = @import("org/allbinary/game/paint/ColorFillPaintableFactory.zig").ColorFillPaintableFactory;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const GameCommandCanvas = @import("org/allbinary/game/displayable/canvas/GameCommandCanvas.zig").GameCommandCanvas;

pub const BasicPaintablesCanvas = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.BasicPaintablesCanvas";
    base: GameCommandCanvas = undefined,
    paintableArray: []?*Paintable = &.{},
    colorFillPaintable: ?*ColorFillBasePaintable = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create4(cmdListener: ?*CommandListener, name: ?*String, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager, paintableArray: []?*Paintable) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(GameCommandCanvas, "create4", .{ cmdListener, name, Inheritance.receiver(allBinaryGameLayerManager.?, "getBackgroundBasicColor").getBackgroundBasicColor(), Inheritance.receiver(allBinaryGameLayerManager.?, "getForegroundBasicColor").getForegroundBasicColor() }).*;
        this.initFields();
        this.paintableArray = paintableArray;
        this.colorFillPaintable = Inheritance.upcast(@TypeOf(this.colorFillPaintable), Inheritance.call(ColorFillPaintableFactory.getInstance().?, "getInstance", .{ Inheritance.receiver(allBinaryGameLayerManager.?, "getBackgroundBasicColor").getBackgroundBasicColor(), false }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.colorFillPaintable.?, "paint", .{ graphics });
        _ = Inheritance.call(graphics.?, "setColor", .{ Inheritance.fieldPointer(self, "foregroundColor").* });
        {
            var index: i32 = @as(i32, @intCast(self.paintableArray.len)) - 1;
            while (index >= 0) : (index -= 1) {
            _ = Inheritance.call(self.paintableArray[@intCast(index)].?, "paint", .{ graphics });
            }
        }
        _ = Inheritance.call(&self.base, "paint", .{ graphics });
    }
};

