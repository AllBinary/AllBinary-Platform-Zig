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
// package org.allbinary.graphics.color

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const JsMethod = @import("jsinterop/annotations/JsMethod.zig").JsMethod;
const JsProperty = @import("jsinterop/annotations/JsProperty.zig").JsProperty;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorUtil = @import("org/allbinary/graphics/color/BasicColorUtil.zig").BasicColorUtil;

pub const BasicColorFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.color.BasicColorFactory";
    NULL_COLOR: ?*BasicColor = null,
    TAN: ?*BasicColor = null,
    SKIN_PINK: ?*BasicColor = null,
    RED: ?*BasicColor = null,
    LIGHT_RED: ?*BasicColor = null,
    DARK_GREEN: ?*BasicColor = null,
    GREEN: ?*BasicColor = null,
    LIGHT_GREEN: ?*BasicColor = null,
    PURPLE: ?*BasicColor = null,
    BLUE: ?*BasicColor = null,
    LIGHT_BLUE: ?*BasicColor = null,
    VERY_LIGHT_BLUE: ?*BasicColor = null,
    PUCE: ?*BasicColor = null,
    AQUA: ?*BasicColor = null,
    YELLOW: ?*BasicColor = null,
    PINK: ?*BasicColor = null,
    BLACK: ?*BasicColor = null,
    GREY: ?*BasicColor = null,
    LIGHT_GREY: ?*BasicColor = null,
    DARK_GREY: ?*BasicColor = null,
    ORANGE: ?*BasicColor = null,
    BROWN: ?*BasicColor = null,
    WHITE: ?*BasicColor = null,
    TRANSPARENT_COLOR: ?*BasicColor = null,
    TRANSPARENT_GREY: ?*BasicColor = null,
    TRANSPARENT_BLACK: ?*BasicColor = null,
    TRANSPARENT_RED: ?*BasicColor = null,
    CLEAR_COLOR: ?*BasicColor = null,
    BORDER_COLOR: ?*BasicColor = null,
    var instance: ?*BasicColorFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BasicColorFactory.create();
    }

    fn initFields(this: *Self) void {
        this.NULL_COLOR = Inheritance.upcast(?*BasicColor, Inheritance.call(this, "createInstanceARGB", .{ 255, 255, 255, 255, String.literal("null color") }));
        this.TAN = Inheritance.upcast(?*BasicColor, Inheritance.call(this, "createInstance", .{ 0xE9D8B5 }));
        this.SKIN_PINK = Inheritance.upcast(?*BasicColor, Inheritance.call(this, "createInstance", .{ 0xFDCECE }));
        this.RED = Inheritance.upcast(?*BasicColor, Inheritance.call(this, "createInstanceAN", .{ BasicColorUtil.getInstance().?.ALPHA, 0xFF0000, String.literal("red") }));
        this.LIGHT_RED = Inheritance.upcast(?*BasicColor, Inheritance.call(this, "createInstanceAN", .{ BasicColorUtil.getInstance().?.ALPHA, 0xFFA0A0, String.literal("light red") }));
        this.DARK_GREEN = Inheritance.upcast(?*BasicColor, Inheritance.call(this, "createInstance", .{ 0x00FF00 }));
        this.GREEN = Inheritance.upcast(?*BasicColor, Inheritance.call(this, "createInstanceAN", .{ BasicColorUtil.getInstance().?.ALPHA, 0x00DD00, String.literal("green") }));
        this.LIGHT_GREEN = Inheritance.upcast(?*BasicColor, Inheritance.call(this, "createInstance", .{ 0x007700 }));
        this.PURPLE = Inheritance.upcast(?*BasicColor, Inheritance.call(this, "createInstanceAN", .{ BasicColorUtil.getInstance().?.ALPHA, 0x400040, String.literal("purple") }));
        this.BLUE = Inheritance.upcast(?*BasicColor, Inheritance.call(this, "createInstanceAN", .{ BasicColorUtil.getInstance().?.ALPHA, 0x0000FF, String.literal("blue") }));
        this.LIGHT_BLUE = Inheritance.upcast(?*BasicColor, Inheritance.call(this, "createInstance", .{ 0x00aaff }));
        this.VERY_LIGHT_BLUE = Inheritance.upcast(?*BasicColor, Inheritance.call(this, "createInstance", .{ 0x000033 }));
        this.PUCE = Inheritance.upcast(?*BasicColor, Inheritance.call(this, "createInstance", .{ 0xFF00AA }));
        this.AQUA = Inheritance.upcast(?*BasicColor, Inheritance.call(this, "createInstance", .{ 0x00FFFF }));
        this.YELLOW = Inheritance.upcast(?*BasicColor, Inheritance.call(this, "createInstanceAN", .{ BasicColorUtil.getInstance().?.ALPHA, 0xFFFF00, String.literal("yellow") }));
        this.PINK = Inheritance.upcast(?*BasicColor, Inheritance.call(this, "createInstance", .{ 0xFF00FF }));
        this.BLACK = Inheritance.upcast(?*BasicColor, Inheritance.call(this, "createInstanceAN", .{ BasicColorUtil.getInstance().?.ALPHA, 0x000000, String.literal("black") }));
        this.GREY = Inheritance.upcast(?*BasicColor, Inheritance.call(this, "createInstanceAN", .{ BasicColorUtil.getInstance().?.ALPHA, 0xAAAAAA, String.literal("grey") }));
        this.LIGHT_GREY = Inheritance.upcast(?*BasicColor, Inheritance.call(this, "createInstance", .{ 0xC0C0C0 }));
        this.DARK_GREY = Inheritance.upcast(?*BasicColor, Inheritance.call(this, "createInstance", .{ 0x404040 }));
        this.ORANGE = Inheritance.upcast(?*BasicColor, Inheritance.call(this, "createInstance", .{ 0xe07718 }));
        this.BROWN = Inheritance.upcast(?*BasicColor, Inheritance.call(this, "createInstance", .{ 0x956B00 }));
        this.WHITE = Inheritance.upcast(?*BasicColor, Inheritance.call(this, "createInstance", .{ 0xFFFFFF }));
        this.TRANSPARENT_COLOR = Inheritance.upcast(?*BasicColor, Inheritance.call(this, "createInstanceAN", .{ 0x00000000, 0x000000, StringUtil.getInstance().?.EMPTY_STRING }));
        this.TRANSPARENT_GREY = Inheritance.upcast(?*BasicColor, Inheritance.call(this, "createInstanceAN", .{ 0x52000000, 0xECECEC, StringUtil.getInstance().?.EMPTY_STRING }));
        this.TRANSPARENT_BLACK = Inheritance.upcast(?*BasicColor, Inheritance.call(this, "createInstanceAN", .{ 0x52000000, 0x000000, StringUtil.getInstance().?.EMPTY_STRING }));
        this.TRANSPARENT_RED = Inheritance.upcast(?*BasicColor, Inheritance.call(this, "createInstanceAN", .{ 0x52000000, 0xFF0000, StringUtil.getInstance().?.EMPTY_STRING }));
        this.CLEAR_COLOR = this.BLACK;
        this.BORDER_COLOR = this.WHITE;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*BasicColorFactory {
        return Inheritance.upcast(?*BasicColorFactory, BasicColorFactory.instance);
    }
    

    pub fn createInstance(self: *Self, value: i32) ?*BasicColor {
        _ = self;
        return Inheritance.callStatic(BasicColor, "create3", .{ BasicColorUtil.getInstance().?.ALPHA, value, StringUtil.getInstance().?.EMPTY_STRING });
    }
    

    pub fn createInstanceA(self: *Self, alphaValue: i32, value: i32) ?*BasicColor {
        _ = self;
        return Inheritance.callStatic(BasicColor, "create3", .{ alphaValue, value, StringUtil.getInstance().?.EMPTY_STRING });
    }
    

    pub fn createInstanceAN(self: *Self, alphaValue: i32, value: i32, name: ?*String) ?*BasicColor {
        _ = self;
        return Inheritance.callStatic(BasicColor, "create3", .{ alphaValue, value, name });
    }
    

    pub fn createInstanceARGB(self: *Self, alphaValue: i32, r: i32, g: i32, b: i32, name: ?*String) ?*BasicColor {
        _ = name;
        _ = self;
        const ALPHA_MASK: i32 = @as(i32, @bitCast(@as(u32, 0xFF000000)));
        return Inheritance.callStatic(BasicColor, "create3", .{ alphaValue, ((alphaValue << @intCast(24)) & ALPHA_MASK) + ((r << @intCast(16)) & 0x00FF0000) + ((g << @intCast(8)) & 0x0000FF00) + (b & 0x000000FF), StringUtil.getInstance().?.EMPTY_STRING });
    }
};

