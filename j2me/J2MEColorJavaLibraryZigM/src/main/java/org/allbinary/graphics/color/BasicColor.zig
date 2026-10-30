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
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const JsMethod = @import("jsinterop/annotations/JsMethod.zig").JsMethod;
const JsConstructor = @import("jsinterop/annotations/JsConstructor.zig").JsConstructor;
const JsProperty = @import("jsinterop/annotations/JsProperty.zig").JsProperty;
const BasicColorUtil = @import("org/allbinary/graphics/color/BasicColorUtil.zig").BasicColorUtil;

pub const BasicColor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.color.BasicColor";
    name: ?*String = null,
    value: i32 = 0,
    redComponent: f32 = 0.0,
    greenComponent: f32 = 0.0,
    blueComponent: f32 = 0.0,
    alphaComponent: f32 = 0.0,
    red: i16 = 0,
    green: i16 = 0,
    blue: i16 = 0,
    alpha: i16 = 0,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
        
        
        
        
        
    }
    

    pub fn create3(alphaValue: i32, value: i32, name: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.name = name;
        var tempValue: i32 = 0;
        const basicColorUtil: ?*BasicColorUtil = Inheritance.upcast(?*BasicColorUtil, BasicColorUtil.getInstance());
        if (basicColorUtil.?.isAlpha) {
            if (basicColorUtil.?.ffOpaque) {
                tempValue = alphaValue | value;
            } else {
                tempValue = 0x00000000 | value;
            }
        } else {
            tempValue = value;
        }
        const alphaInt: i32 = ((tempValue >> @intCast(24)) & 255);
        this.alpha = @as(i16, @intCast(alphaInt));
        this.alphaComponent = (@as(f32, @floatFromInt(alphaInt))) / 255.0;
        const redInt: i32 = ((tempValue >> @intCast(16)) & 255);
        this.red = @as(i16, @intCast(redInt));
        this.redComponent = (@as(f32, @floatFromInt(redInt))) / 255.0;
        const greenInt: i32 = ((tempValue >> @intCast(8)) & 255);
        this.green = @as(i16, @intCast(greenInt));
        this.greenComponent = (@as(f32, @floatFromInt(greenInt))) / 255.0;
        const blueInt: i32 = ((tempValue) & 255);
        this.blue = @as(i16, @intCast(blueInt));
        this.blueComponent = (@as(f32, @floatFromInt(blueInt))) / 255.0;
        this.value = tempValue;
        return this;
    }
    

    pub fn intValue(self: *Self) i32 {
        return self.value;
    }
    

    pub fn toInt(self: *Self) i32 {
        return self.value;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("BasicColor: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Alpha: ") });
        _ = Inheritance.call(stringBuffer.?, "appendshort", .{ self.alpha });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Red: ") });
        _ = Inheritance.call(stringBuffer.?, "appendshort", .{ self.red });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Green: ") });
        _ = Inheritance.call(stringBuffer.?, "appendshort", .{ self.green });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Blue: ") });
        _ = Inheritance.call(stringBuffer.?, "appendshort", .{ self.blue });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Value: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.value });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn getRedComponent(self: *Self) f32 {
        return self.redComponent;
    }
    

    pub fn getGreenComponent(self: *Self) f32 {
        return self.greenComponent;
    }
    

    pub fn getBlueComponent(self: *Self) f32 {
        return self.blueComponent;
    }
    

    pub fn getAlphaComponent(self: *Self) f32 {
        return self.alphaComponent;
    }
};

