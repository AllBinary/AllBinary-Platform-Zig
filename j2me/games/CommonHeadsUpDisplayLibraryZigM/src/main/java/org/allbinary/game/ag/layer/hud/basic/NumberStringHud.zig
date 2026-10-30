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
// package org.allbinary.game.ag.layer.hud.basic

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const BasicHud = @import("org/allbinary/game/graphics/hud/BasicHud.zig").BasicHud;
const BasicHudFactory = @import("org/allbinary/game/graphics/hud/BasicHudFactory.zig").BasicHudFactory;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const PaintableInterface = @import("org/allbinary/graphics/paint/PaintableInterface.zig").PaintableInterface;
const PrimitiveLongSingleton = @import("org/allbinary/logic/math/PrimitiveLongSingleton.zig").PrimitiveLongSingleton;
const PrimitiveLongUtil = @import("org/allbinary/logic/math/PrimitiveLongUtil.zig").PrimitiveLongUtil;

pub const NumberStringHud = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.layer.hud.basic.NumberStringHud";
    base: BasicHud = undefined,
    primitiveLongUtil: ?*PrimitiveLongUtil = null,
    prependString: ?*String = null,
    PREPEND_STRING: []u16 = &.{},
    value: i32 = 0,
    max: i32 = 0,
    offset: i32 = 0,
    valueString: []u16 = &.{},
    valueTotalDigits: i32 = 0,
    // Implements PaintableInterface

    fn initFields(this: *Self) void {
        
        
        
        
        
        this.offset = 0;
        
        this.valueTotalDigits = 0;
    }
    

    pub fn create6(prependString: ?*String, max: i32, location: i32, direction: i32, bufferZone: i32, basicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicHud, "create4", .{ location, direction, bufferZone, basicColor }).*;
        this.initFields();
        this.prependString = prependString;
        this.PREPEND_STRING = Inheritance.upcast(@TypeOf(this.PREPEND_STRING), prependString.?.toCharArray());
        this.valueString = Inheritance.upcast(@TypeOf(this.valueString), PrimitiveLongSingleton.getInstance().?.NUMBER_CHAR_ARRAYS[@intCast(0)]);
        this.primitiveLongUtil = Inheritance.upcast(@TypeOf(this.primitiveLongUtil), Inheritance.callStatic(PrimitiveLongUtil, "createPowerOfTen", .{ max + 1 }));
        this.max = max;
        this.value = 0;
        if (direction == 0) {
            std.debug.panic("{any}", .{exception: { _ = BasicHudFactory.getInstance().?.DIRECTION_EXCEPTION; break :exception error.RuntimeException; }});
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        self.offset = Inheritance.call(font.?, "stringWidth", .{ self.prependString }) + Inheritance.callStatic(MyFontProcessor, "defaultCharWidth", .{ font });
        _ = Inheritance.call(&self.base, "updateMeasurement", .{ graphics });
    }
    

    pub fn get(self: *Self) i32 {
        return self.value;
    }
    

    pub fn add(self: *Self, value: i32) void {
        _ = Inheritance.call(self, "set", .{ self.value + value });
    }
    

    pub fn set(self: *Self, value: i32) void {
        self.value = value;
        if (self.value > self.max) {
            self.value = 0;
        }
        self.valueString = Inheritance.upcast(@TypeOf(self.valueString), Inheritance.call(self.primitiveLongUtil.?, "getCharArray", .{ self.value }));
        self.valueTotalDigits = self.primitiveLongUtil.?.getCurrentTotalDigits();
    }
    

    pub fn reduce(self: *Self, value: i32) void {
        _ = Inheritance.call(self, "set", .{ self.value - value });
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(&self.base, "paintDX", .{ graphics, self.PREPEND_STRING, 0, @as(i32, @intCast(self.PREPEND_STRING.len)), self.valueString, 0, self.valueTotalDigits, self.offset });
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "myFontProcessor").*.?, "process", .{ graphics });
        const charArray: []u16 = self.PREPEND_STRING;
        const len: i32 = @as(i32, @intCast(self.PREPEND_STRING.len));
        const charArray2: []u16 = self.valueString;
        const len2: i32 = self.valueTotalDigits;
        _ = Inheritance.call(Inheritance.fieldPointer(self, "basicSetColorUtil").*.?, "setBasicColorP", .{ graphics, Inheritance.receiver(self, "getBasicColorP").getBasicColorP() });
        _ = Inheritance.call(graphics.?, "drawChars", .{ charArray, 0, len, x, y, 0 });
        _ = Inheritance.call(graphics.?, "drawChars", .{ charArray2, 0, len2, x - self.offset, y, 0 });
    }
    

    pub fn paintThreed(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
};

