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
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const GameStatisticsFactory = @import("org/allbinary/canvas/GameStatisticsFactory.zig").GameStatisticsFactory;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const UpdateMyFontProcessor = @import("org/allbinary/graphics/font/UpdateMyFontProcessor.zig").UpdateMyFontProcessor;
const InitUpdatePaintable = @import("org/allbinary/graphics/paint/InitUpdatePaintable.zig").InitUpdatePaintable;

pub const GamePerformanceInitUpdatePaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.GamePerformanceInitUpdatePaintable";
    base: InitUpdatePaintable = undefined,
    halfHeight: i32 = 0,
    yArray: []i32 = &.{},
    myFontProcessor: ?*MyFontProcessor = null,
    baseRefreshHelperCharArray: [][]u16 = &.{},
    defaultStringWidth: i32 = 0,
    RED: i32 = 0,
    // Implements UpdateMyFontInterface

    fn initFields(this: *Self) void {
        this.halfHeight = Inheritance.receiverOf(DisplayInfoSingleton.getInstance().?, "getLastHalfHeight").getLastHalfHeight();
        this.yArray = @constCast(&[_]i32{ this.halfHeight + 30, this.halfHeight + 30, this.halfHeight + 30 + 15, this.halfHeight + 30 + 15, this.halfHeight + 30 + 30, this.halfHeight + 30 + 30, this.halfHeight + 30 + 45, this.halfHeight + 30 + 45 })[0..];
        this.myFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        this.baseRefreshHelperCharArray = array_N66246: { const array_N66246_array = allocator.alloc([]u16, @intCast(0)) catch unreachable; for (array_N66246_array) |*array_N66246_row| { array_N66246_row.* = allocator.alloc(u16, @intCast(0)) catch unreachable; @memset(array_N66246_row.*, 0); } break :array_N66246 array_N66246_array; };
        this.defaultStringWidth = 0;
        this.RED = Inheritance.receiverOf(BasicColorFactory.getInstance().?.RED.?, "intValue").intValue();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = InitUpdatePaintable.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        self.defaultStringWidth = Inheritance.callStatic(MyFontProcessor, "defaultStringWidth", .{ font, 2 });
        self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
    }
    

    pub fn init(self: *Self) void {
        _ = self;
    }
    

    pub fn update(self: *Self) void {
        self.baseRefreshHelperCharArray = Inheritance.upcast(@TypeOf(self.baseRefreshHelperCharArray), Inheritance.receiverOf(GameStatisticsFactory.getInstance().?, "to2DCharArray").to2DCharArray());
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
        _ = Inheritance.call(graphics.?, "setColor", .{ self.RED });
        var charArray: []u16 = &.{};
        var charArray2: []u16 = &.{};
        var size2: i32 = 0;
        var size3: i32 = 0;
        const size: i32 = @as(i32, @intCast(self.baseRefreshHelperCharArray.len)) - 2;
        {
            var index: i32 = size;
            while (index >= 0) : (index -= 2) {
            charArray = Inheritance.upcast(@TypeOf(charArray), self.baseRefreshHelperCharArray[@intCast(index)]);
            charArray2 = Inheritance.upcast(@TypeOf(charArray2), self.baseRefreshHelperCharArray[@intCast(index + 1)]);
            size2 = @as(i32, @intCast(charArray.len));
            size3 = @as(i32, @intCast(charArray2.len));
            _ = Inheritance.call(graphics.?, "drawChars", .{ charArray, 0, size2, 0, self.yArray[@intCast(index)], 0 });
            _ = Inheritance.call(graphics.?, "drawChars", .{ charArray2, 0, size3, size2 * self.defaultStringWidth, self.yArray[@intCast(index + 1)], 0 });
            }
        }
    }
};

