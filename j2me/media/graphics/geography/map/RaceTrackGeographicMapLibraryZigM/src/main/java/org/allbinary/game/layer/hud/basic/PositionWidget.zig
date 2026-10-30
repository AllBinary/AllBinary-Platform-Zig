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
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const Integer = @import("java/lang/Integer.zig").Integer;

//super.paint(graphics, positionString, currentPostString, offset2, offset);
pub const PositionWidget = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.hud.basic.PositionWidget";
    base: BasicHud = undefined,
    position: i32 = 0,
    positionString: ?*String = null,

    fn initFields(this: *Self) void {
        this.position = 0;
        this.positionString = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    pub fn create4(position: i32, location: i32, direction: i32, basicColor: ?*BasicColor) *Self {
        _ = position;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicHud, "create4", .{ location, direction, 2, basicColor }).*;
        this.initFields();
        Inheritance.fieldPointer(this, "updateMaxHeight").* = 10;
        Inheritance.fieldPointer(this, "updateMaxWidth").* = 40;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn get(self: *Self) i32 {
        return self.position;
    }
    

    pub fn set(self: *Self, position: i32) void {
        self.position = position;
        self.positionString = Inheritance.upcast(@TypeOf(self.positionString), Inheritance.callStatic(PositionWidget, "toString", .{ self.get() }));
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(&self.base, "paintString", .{ graphics, self.positionString });
    }
    

    pub fn toString(position: i32) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.valueOf(position) });
        if (position == 1) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("st") });
        } else if (position == 2) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("nd") });
        } else if (position == 3) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("rd") });
        } else {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("th") });
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

