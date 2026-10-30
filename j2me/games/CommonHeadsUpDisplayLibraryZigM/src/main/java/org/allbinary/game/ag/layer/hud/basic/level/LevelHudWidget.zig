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
// package org.allbinary.game.ag.layer.hud.basic.level

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const BasicHud = @import("org/allbinary/game/graphics/hud/BasicHud.zig").BasicHud;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const PaintableInterface = @import("org/allbinary/graphics/paint/PaintableInterface.zig").PaintableInterface;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const PrimitiveLongUtil = @import("org/allbinary/logic/math/PrimitiveLongUtil.zig").PrimitiveLongUtil;

pub const LevelHudWidget = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget";
    base: BasicHud = undefined,
    level: i32 = 0,
    maxlevel: i32 = 0,
    levelString: []u16 = &.{},
    levelNumberCharArray: []u16 = &.{},
    levelNumberTotalDigits: i32 = 0,
    offset: i32 = 0,
    primitiveLongUtil: ?*PrimitiveLongUtil = null,
    // Implements PaintableInterface

    fn initFields(this: *Self) void {
        
        
        
        this.levelNumberCharArray = NullUtil.getInstance().?.NULL_CHAR_ARRAY;
        this.levelNumberTotalDigits = 0;
        this.offset = 0;
        
    }
    

    // throws Exception
    pub fn createHud(maxlevel: i32, location: i32, direction: i32) ?*LevelHudWidget {
        return Inheritance.callStatic(LevelHudWidget, "create3", .{ maxlevel, location, direction });
    }
    

    pub fn create3(maxlevel: i32, location: i32, direction: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicHud, "create4", .{ location, direction, 2, BasicColorFactory.getInstance().?.GREY }).*;
        this.initFields();
        this.primitiveLongUtil = Inheritance.upcast(@TypeOf(this.primitiveLongUtil), Inheritance.callStatic(PrimitiveLongUtil, "createPowerOfTen", .{ 1000 }));
        const LEVEL: ?*String = String.literal("Lv ");
        this.levelString = Inheritance.upcast(@TypeOf(this.levelString), LEVEL.?.toCharArray());
        this.maxlevel = maxlevel;
        this.level = maxlevel;
        _ = this.update();
        Inheritance.fieldPointer(this, "updateMaxHeight").* = 14;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        Inheritance.fieldPointer(self, "updateMaxWidth").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "updateMaxWidth").*), font.?.getSize() * 4);
        self.offset = Inheritance.call(font.?, "charsWidth", .{ self.levelString, 0, @as(i32, @intCast(self.levelString.len)) }) + font.?.getSize();
        _ = Inheritance.call(&self.base, "updateMeasurement", .{ graphics });
    }
    

    pub fn update(self: *Self) void {
        self.levelNumberCharArray = Inheritance.upcast(@TypeOf(self.levelNumberCharArray), Inheritance.call(self.primitiveLongUtil.?, "getCharArray", .{ self.level }));
        self.levelNumberTotalDigits = self.primitiveLongUtil.?.getCurrentTotalDigits();
    }
    

    pub fn setLevel(self: *Self, level: i32) void {
        self.level = level;
        _ = self.update();
    }
    

    pub fn nextLevel(self: *Self) void {
        self.level += 1;
        _ = self.update();
    }
    

    pub fn previousLevel(self: *Self) void {
        self.level -= 1;
        if (self.level < 0) {
            self.level = 0;
        }
        _ = self.update();
    }
    

    pub fn isComplete(self: *Self) bool {
        if (self.level <= self.maxlevel) {
            return false;
        } else {
            return true;
        }
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(&self.base, "paintDX", .{ graphics, self.levelString, 0, @as(i32, @intCast(self.levelString.len)), self.levelNumberCharArray, 0, self.levelNumberTotalDigits, self.offset });
    }
    

    pub fn paintThreed(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
};

