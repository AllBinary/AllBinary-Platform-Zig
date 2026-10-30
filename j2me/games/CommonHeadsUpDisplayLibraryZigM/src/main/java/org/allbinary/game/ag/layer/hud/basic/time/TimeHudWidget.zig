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
// package org.allbinary.game.ag.layer.hud.basic.time

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const BasicHud = @import("org/allbinary/game/graphics/hud/BasicHud.zig").BasicHud;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const PrimitiveLongSingleton = @import("org/allbinary/logic/math/PrimitiveLongSingleton.zig").PrimitiveLongSingleton;
const Timer = @import("org/allbinary/game/ag/layer/hud/basic/time/Timer.zig").Timer;

pub const TimeHudWidget = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.layer.hud.basic.time.TimeHudWidget";
    base: BasicHud = undefined,
    TIME_STRING: ?*String = null,
    TIME_CHAR_ARRAY: []u16 = &.{},
    offset: i32 = 0,
    string: []u16 = &.{},
    totalDigits: i32 = 0,
    timer: ?*Timer = null,

    fn initFields(this: *Self) void {
        this.TIME_STRING = String.literal("Time ");
        this.TIME_CHAR_ARRAY = @constCast(&[_]u16{ 'T', 'i', 'm', 'e', ' ' })[0..];
        this.offset = 0;
        this.string = PrimitiveLongSingleton.getInstance().?.ZERO;
        this.totalDigits = 1;
        
    }
    

    // throws Exception
    pub fn getInstance(location: i32, direction: i32, basicColor: ?*BasicColor, timer: ?*Timer) ?*TimeHudWidget {
        return Inheritance.callStatic(TimeHudWidget, "create5", .{ location, direction, 2, basicColor, timer });
    }
    

    pub fn create5(location: i32, direction: i32, bufferZone: i32, basicColor: ?*BasicColor, timer: ?*Timer) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicHud, "create4", .{ location, direction, bufferZone, basicColor }).*;
        this.initFields();
        this.timer = timer;
        _ = this.set();
        Inheritance.fieldPointer(this, "updateMaxHeight").* = 14;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        Inheritance.fieldPointer(self, "updateMaxWidth").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "updateMaxWidth").*), font.?.getSize() * 5);
        self.offset = Inheritance.call(font.?, "stringWidth", .{ self.TIME_STRING }) + Inheritance.callStatic(MyFontProcessor, "defaultStringWidth", .{ font, 3 });
        _ = Inheritance.call(&self.base, "updateMeasurement", .{ graphics });
    }
    

    pub fn update(self: *Self) void {
        _ = self.timer.?.update();
        _ = self.set();
    }
    

    pub fn set(self: *Self) void {
        self.string = Inheritance.upcast(@TypeOf(self.string), self.timer.?.getTimeChars());
        self.totalDigits = self.timer.?.getCurrentTotalDigits();
    }
    

    pub fn getTimer(self: *Self) ?*Timer {
        return self.timer;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(&self.base, "paintDX", .{ graphics, self.TIME_CHAR_ARRAY, 0, @as(i32, @intCast(self.TIME_CHAR_ARRAY.len)), self.string, 0, self.totalDigits, self.offset });
    }
};

