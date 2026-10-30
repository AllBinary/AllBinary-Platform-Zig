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
const ProgressCanvas = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.zig").ProgressCanvas;
const ProgressCanvasFactory = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.zig").ProgressCanvasFactory;
const PaintableComposite = @import("org/allbinary/graphics/paint/PaintableComposite.zig").PaintableComposite;
const PaintableInterface = @import("org/allbinary/graphics/paint/PaintableInterface.zig").PaintableInterface;
const DemoCanvas = @import("org/allbinary/game/displayable/canvas/DemoCanvas.zig").DemoCanvas;

pub const DemoCanvasProgressUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn showProgress(demoCanvas: ?*DemoCanvas) void {
        _ = Inheritance.callStatic(DemoCanvasProgressUtil, "showProgressOptionallyInTheBackground", .{ demoCanvas, false });
    }
    

    pub fn showProgressOptionallyInTheBackground(demoCanvas: ?*DemoCanvas, background: bool) void {
        const progressCanvas: ?*ProgressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
        _ = Inheritance.call(progressCanvas.?, "startBackground", .{ background });
        const paintableArray: []?*PaintableInterface = array_N65912: { const array_N65912_array = allocator.alloc(?*PaintableInterface, @intCast(2)) catch unreachable; @memset(array_N65912_array, null); break :array_N65912 array_N65912_array; };
        paintableArray[@intCast(0)] = Inheritance.upcast(@TypeOf(paintableArray[@intCast(0)]), progressCanvas);
        paintableArray[@intCast(1)] = Inheritance.upcast(@TypeOf(paintableArray[@intCast(1)]), Inheritance.receiver(demoCanvas.?, "getDefaultPaintableInterface").getDefaultPaintableInterface());
        _ = Inheritance.call(demoCanvas.?, "setDefaultPaintableInterface", .{ Inheritance.callStatic(PaintableComposite, "create1", .{ paintableArray }) });
        _ = Inheritance.call(demoCanvas.?, "setPaintableInterface", .{ Inheritance.receiver(demoCanvas.?, "getDefaultPaintableInterface").getDefaultPaintableInterface() });
    }
};

