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
// package org.allbinary.game.layer.hud.basic

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const OpenGLFeatureUtil = @import("org/allbinary/graphics/opengles/OpenGLFeatureUtil.zig").OpenGLFeatureUtil;
const BasicHud = @import("org/allbinary/game/graphics/hud/BasicHud.zig").BasicHud;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const MathUtil = @import("org/allbinary/logic/math/MathUtil.zig").MathUtil;
const PrimitiveLongSingleton = @import("org/allbinary/logic/math/PrimitiveLongSingleton.zig").PrimitiveLongSingleton;
const PrimitiveLongUtil = @import("org/allbinary/logic/math/PrimitiveLongUtil.zig").PrimitiveLongUtil;

pub const VelocityWidget = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.hud.basic.VelocityWidget";
    base: BasicHud = undefined,
    KILOMETERS_PER_HOUR_STR: []u16 = &.{},
    totalChars: i32 = 0,
    velocity: i32 = 0,
    maxVelocity: i32 = 0,
    string: []u16 = &.{},
    totalDigits: i32 = 0,
    powerOfTenVelocity: i32 = 0,
    primitiveLongUtil: ?*PrimitiveLongUtil = null,
    offset: i32 = 0,
    offset2: i32 = 0,

    fn initFields(this: *Self) void {
        this.KILOMETERS_PER_HOUR_STR = @constCast(&[_]u16{ ' ', 'k', 'm', '/', 'h' })[0..];
        this.totalChars = @as(i32, @intCast(this.KILOMETERS_PER_HOUR_STR.len));
        
        
        this.string = PrimitiveLongSingleton.getInstance().?.ZERO;
        this.totalDigits = 1;
        
        
        this.offset = 0;
        this.offset2 = 0;
    }
    

    pub fn create4(powerOfTenVelocity: i32, location: i32, direction: i32, basicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicHud, "create4", .{ location, direction, 2, basicColor }).*;
        this.initFields();
        this.powerOfTenVelocity = powerOfTenVelocity;
        this.maxVelocity = powerOfTenVelocity;
        this.velocity = 0;
        this.primitiveLongUtil = Inheritance.upcast(@TypeOf(this.primitiveLongUtil), Inheritance.callStatic(PrimitiveLongUtil, "createPowerOfTen", .{ powerOfTenVelocity }));
        Inheritance.fieldPointer(this, "updateMaxHeight").* = 14;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        Inheritance.fieldPointer(self, "updateMaxWidth").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "updateMaxWidth").*), font.?.getSize() * (5 + Inheritance.call(MathUtil.getInstance().?, "getTotalDigits", .{ self.powerOfTenVelocity }) + 1));
        _ = Inheritance.call(&self.base, "updateMeasurement", .{ graphics });
        self.offset = Inheritance.callStatic(MyFontProcessor, "defaultStringWidth", .{ font, self.primitiveLongUtil.?.getMaxDigits() }) + Inheritance.callStatic(MyFontProcessor, "defaultStringWidth", .{ font, 2 });
        self.offset2 = self.offset - Inheritance.callStatic(MyFontProcessor, "defaultStringWidth", .{ font, self.totalDigits }) - Inheritance.callStatic(MyFontProcessor, "defaultStringWidth", .{ font, 2 });
    }
    

    pub fn get(self: *Self) i32 {
        return self.velocity;
    }
    

    pub fn add(self: *Self, value: i32) void {
        _ = Inheritance.call(self, "set", .{ self.velocity + value });
    }
    

    pub fn set(self: *Self, value: i32) void {
        const lastVelocity: i32 = self.velocity;
        self.velocity = value;
        if (self.velocity > self.maxVelocity) {
            self.velocity = 0;
        }
        if (lastVelocity != self.velocity) {
            self.string = Inheritance.upcast(@TypeOf(self.string), Inheritance.call(self.primitiveLongUtil.?, "getCharArray", .{ self.velocity * 18 }));
            if (Inheritance.receiverOf(OpenGLFeatureUtil.getInstance().?, "isAnyThreed").isAnyThreed()) {
                self.totalDigits = self.primitiveLongUtil.?.getCurrentTotalDigits() + 1;
            } else {
                self.totalDigits = self.primitiveLongUtil.?.getCurrentTotalDigits();
            }
            Inheritance.fieldPointer(self, "myFontProcessor").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "myFontProcessor").*), Inheritance.fieldPointer(self, "updateMyFontProcessor").*);
        }
    }
    

    pub fn reduce(self: *Self, value: i32) void {
        _ = Inheritance.call(self, "set", .{ self.velocity - value });
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(&self.base, "paintDXY", .{ graphics, self.string, 0, self.totalDigits, self.KILOMETERS_PER_HOUR_STR, 0, self.totalChars, self.offset2, self.offset });
    }
};

