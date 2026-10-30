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
// package org.allbinary.game.ag.layer.hud.basic.life

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const Life = @import("org/allbinary/game/ag/life/Life.zig").Life;
const BasicHud = @import("org/allbinary/game/graphics/hud/BasicHud.zig").BasicHud;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const DisplayChangeEvent = @import("org/allbinary/graphics/displayable/event/DisplayChangeEvent.zig").DisplayChangeEvent;
const PaintableInterface = @import("org/allbinary/graphics/paint/PaintableInterface.zig").PaintableInterface;

pub const LivesHudWidget = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget";
    base: BasicHud = undefined,
    lifeInterface: ?*Life = null,
    xArray: []i32 = &.{},
    animationInterface: ?*Animation = null,
    // Implements PaintableInterface

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
    }
    

    pub fn create4(animationInterface: ?*Animation, lifeInterface: ?*Life, location: i32, direction: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicHud, "create4", .{ location, direction, 2, BasicColorFactory.getInstance().?.WHITE }).*;
        this.initFields();
        this.lifeInterface = lifeInterface;
        const size: i32 = @as(i32, @intCast(Inheritance.receiverOf(this.getLifeInterface().?, "getMaxlives").getMaxlives()));
        this.xArray = Inheritance.upcast(@TypeOf(this.xArray), array_N66110: { const array_N66110_array = allocator.alloc(i32, @intCast(size)) catch unreachable; @memset(array_N66110_array, 0); break :array_N66110 array_N66110_array; });
        this.animationInterface = animationInterface;
        Inheritance.fieldPointer(this, "updateMaxWidth").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "updateMaxWidth").*), this.lifeInterface.?.getMaxlives() * 16);
        Inheritance.fieldPointer(this, "updateMaxHeight").* = 16;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(&self.base, "updateMeasurement", .{ graphics });
        const maxLives: i32 = @as(i32, @intCast(Inheritance.receiverOf(self.getLifeInterface().?, "getMaxlives").getMaxlives()));
        {
            var index: i32 = 0;
            while (index < maxLives) : (index += 1) {
            self.xArray[@intCast(index)] = Inheritance.receiver(self, "getX").getX() + (index * 16);
            }
        }
    }
    

    pub fn onDisplayChangeEvent(self: *Self, displayChangeEvent: ?*DisplayChangeEvent) void {
        _ = Inheritance.call(&self.base, "onDisplayChangeEvent", .{ displayChangeEvent });
        Inheritance.fieldPointer(self, "myFontProcessor").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "myFontProcessor").*), Inheritance.fieldPointer(self, "updateMyFontProcessor").*);
    }
    

    pub fn setX(self: *Self, x: i32) void {
        _ = Inheritance.call(&self.base, "setX", .{ x });
        Inheritance.fieldPointer(self, "myFontProcessor").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "myFontProcessor").*), Inheritance.fieldPointer(self, "updateMyFontProcessor").*);
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "myFontProcessor").*.?, "process", .{ graphics });
        {
            var index: i32 = @as(i32, @intCast(Inheritance.receiverOf(self.getLifeInterface().?, "get").get()));
            while (value_N66959: { index -= 1; break :value_N66959 index; } >= 0) {
            _ = Inheritance.call(self.animationInterface.?, "paintXY", .{ graphics, self.xArray[@intCast(index)], Inheritance.receiver(self, "getY").getY() });
            }
        }
    }
    

    pub fn paintThreed(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
    

    pub fn getLifeInterface(self: *Self) ?*Life {
        return self.lifeInterface;
    }
};

