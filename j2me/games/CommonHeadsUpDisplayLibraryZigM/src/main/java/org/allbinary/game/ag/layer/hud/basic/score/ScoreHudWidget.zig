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
// package org.allbinary.game.ag.layer.hud.basic.score

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const NumberStringHud = @import("org/allbinary/game/ag/layer/hud/basic/NumberStringHud.zig").NumberStringHud;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;

pub const ScoreHudWidget = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget";
    base: NumberStringHud = undefined,
    

    // throws Exception
    pub fn getInstance(maxscore: i32, location: i32, direction: i32) ?*ScoreHudWidget {
        return Inheritance.callStatic(ScoreHudWidget, "create5", .{ maxscore, location, direction, 2, BasicColorFactory.getInstance().?.GREY });
    }
    

    pub fn create5(maxscore: i32, location: i32, direction: i32, bufferZone: i32, basicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(NumberStringHud, "create6", .{ String.literal("Pts "), maxscore, location, direction, bufferZone, basicColor }).*;
        Inheritance.fieldPointer(this, "updateMaxHeight").* = 14;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        Inheritance.fieldPointer(self, "updateMaxWidth").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "updateMaxWidth").*), font.?.getSize() * 5);
        _ = Inheritance.call(&self.base, "updateMeasurement", .{ graphics });
    }
};

