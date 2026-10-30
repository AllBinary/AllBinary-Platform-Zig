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
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
// const NullCanvas = @import("javax/microedition/lcdui/NullCanvas.zig").NullCanvas;
// const NullImage = @import("javax/microedition/lcdui/NullImage.zig").NullImage;
const Anchor = @import("org/allbinary/graphics/Anchor.zig").Anchor;
const MyCanvas = @import("org/allbinary/graphics/displayable/MyCanvas.zig").MyCanvas;
const ProcessPaintable = @import("org/allbinary/graphics/paint/ProcessPaintable.zig").ProcessPaintable;
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;

pub const BufferedGameCanvasPaintHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.BufferedGameCanvasPaintHelper";
    base: ProcessPaintable = undefined,
    gameCanvas: ?*Canvas = null,
    offScreenImage: []?*Image = &.{},
    previousImage: ?*Image = null,
    circularIndexUtil: ?*CircularIndexUtil = null,
    drawCircularIndexUtil: ?*CircularIndexUtil = null,
    anchor: i32 = 0,
    const MAX_IMAGES: i32 = 4;

    fn initFields(this: *Self) void {
        this.gameCanvas = Inheritance.upcast(?*Canvas, NullCanvas.NULL_CANVAS);
        this.offScreenImage = array_N65941: { const array_N65941_array = allocator.alloc(?*Image, @intCast(BufferedGameCanvasPaintHelper.MAX_IMAGES)) catch unreachable; @memset(array_N65941_array, null); break :array_N65941 array_N65941_array; };
        this.previousImage = Inheritance.upcast(?*Image, NullImage.NULL_IMAGE);
        this.circularIndexUtil = Inheritance.upcast(?*CircularIndexUtil, Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ BufferedGameCanvasPaintHelper.MAX_IMAGES }));
        this.drawCircularIndexUtil = Inheritance.upcast(?*CircularIndexUtil, Inheritance.callStatic(CircularIndexUtil, "createInstanceAt", .{ BufferedGameCanvasPaintHelper.MAX_IMAGES - 1, BufferedGameCanvasPaintHelper.MAX_IMAGES }));
        this.anchor = Anchor.TOP_LEFT;
    }
    

    pub fn create1(gameCanvas: ?*AllBinaryGameCanvas) *Self {
        _ = gameCanvas;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ProcessPaintable.create().*;
        this.initFields();
        std.debug.panic("{any}", .{exception: { _ = String.literal("No Longer Used"); break :exception error.Exception; }});
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn process(self: *Self) void {
        const myCanvas: ?*MyCanvas = Inheritance.upcast(?*MyCanvas, (Inheritance.cast(?*MyCanvas, self.gameCanvas)));
        _ = Inheritance.call(myCanvas.?, "draw", .{ self.offScreenImage[@intCast(self.circularIndexUtil.?.getIndex())].?.getGraphics() });
        _ = self.circularIndexUtil.?.next();
        _ = self.drawCircularIndexUtil.?.next();
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        self.previousImage = Inheritance.upcast(@TypeOf(self.previousImage), self.offScreenImage[@intCast(self.drawCircularIndexUtil.?.getIndex())]);
        _ = Inheritance.call(graphics.?, "drawImage", .{ self.previousImage, 0, 0, self.anchor });
    }
};

