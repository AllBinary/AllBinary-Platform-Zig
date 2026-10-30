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
// package org.allbinary.graphics.draw

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const UpdateMyFontProcessor = @import("org/allbinary/graphics/font/UpdateMyFontProcessor.zig").UpdateMyFontProcessor;
const DrawStringUtil = @import("org/allbinary/graphics/draw/DrawStringUtil.zig").DrawStringUtil;

pub const CanvasDrawLineString = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.draw.CanvasDrawLineString";
    drawStringUtil: ?*DrawStringUtil = null,
    myFontProcessor: ?*MyFontProcessor = null,
    x: i32 = 0,
    y: i32 = 0,
    fontHeight: i32 = 0,
    // Implements UpdateMyFontInterface
    pub var NULL_CANVAS_DRAW_LINE_STRING: ?*CanvasDrawLineString = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_CANVAS_DRAW_LINE_STRING = Inheritance.callStatic(CanvasDrawLineString, "create2", .{ 0, 0 });
    }

    fn initFields(this: *Self) void {
        this.drawStringUtil = Inheritance.upcast(?*DrawStringUtil, DrawStringUtil.getInstance());
        this.myFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        
        
        this.fontHeight = 0;
    }
    

    pub fn create2(x: i32, y: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.x = x;
        this.y = y;
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        self.fontHeight = font.?.getHeight();
        self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics, string: ?*String, line: i32) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
        _ = Inheritance.call(self.drawStringUtil.?, "drawCenterString", .{ graphics, string, 0, string.?.length(), self.x, self.y + (line * self.fontHeight) });
    }
};

