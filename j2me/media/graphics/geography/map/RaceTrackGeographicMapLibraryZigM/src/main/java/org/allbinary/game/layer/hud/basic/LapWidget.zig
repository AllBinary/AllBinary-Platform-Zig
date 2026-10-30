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
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const BasicHud = @import("org/allbinary/game/graphics/hud/BasicHud.zig").BasicHud;
const LapInfo = @import("org/allbinary/game/layer/hud/LapInfo.zig").LapInfo;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;

pub const LapWidget = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.hud.basic.LapWidget";
    base: BasicHud = undefined,
    LAP_STR: ?*String = null,
    OF_STR: ?*String = null,
    string: ?*String = null,

    fn initFields(this: *Self) void {
        this.LAP_STR = String.literal("Lap ");
        this.OF_STR = String.literal(" of ");
        this.string = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    pub fn create3(location: i32, direction: i32, basicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicHud, "create4", .{ location, direction, 2, basicColor }).*;
        this.initFields();
        Inheritance.fieldPointer(this, "updateMaxHeight").* = 15;
        Inheritance.fieldPointer(this, "updateMaxWidth").* = 40;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn update(self: *Self, lapInfo: ?*LapInfo) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.LAP_STR });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(lapInfo.?.getCurrentLap())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.OF_STR });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(lapInfo.?.getTotalLaps())) });
        self.string = Inheritance.upcast(@TypeOf(self.string), Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(&self.base, "paintString", .{ graphics, self.string });
    }
};

