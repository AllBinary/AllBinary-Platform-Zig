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
// package org.allbinary.graphics.canvas.transition.progress

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const NullPaintable = @import("org/allbinary/graphics/paint/NullPaintable.zig").NullPaintable;
const PaintableInterface = @import("org/allbinary/graphics/paint/PaintableInterface.zig").PaintableInterface;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AndroidBasicTitleProgressBar = @import("org/allbinary/graphics/canvas/transition/progress/AndroidBasicTitleProgressBar.zig").AndroidBasicTitleProgressBar;
const ProgressCanvas = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.zig").ProgressCanvas;

pub const ProgressCanvasFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory";
    var PROGRESS_FORM_SCREEN: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        PROGRESS_FORM_SCREEN = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*ProgressCanvas {
        if (Object.same(ProgressCanvasFactory.PROGRESS_FORM_SCREEN, NullUtil.getInstance().?.NULL_OBJECT)) {
            ProgressCanvasFactory.PROGRESS_FORM_SCREEN = Inheritance.upcast(@TypeOf(ProgressCanvasFactory.PROGRESS_FORM_SCREEN), Inheritance.callStatic(AndroidBasicTitleProgressBar, "create3", .{ StringUtil.getInstance().?.EMPTY_STRING, BasicColorFactory.getInstance().?.BLACK, BasicColorFactory.getInstance().?.WHITE }));
        }
        return Inheritance.cast(?*ProgressCanvas, ProgressCanvasFactory.PROGRESS_FORM_SCREEN);
    }
    

    pub fn getLazyInstance() ?*PaintableInterface {
        return Inheritance.upcast(?*PaintableInterface, NullPaintable.getInstance());
    }
};

