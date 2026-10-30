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
// package org.allbinary.string

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;

pub const CommonPhoneStrings = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.string.CommonPhoneStrings";
    UP: ?*String = null,
    DOWN: ?*String = null,
    LEFT: ?*String = null,
    RIGHT: ?*String = null,
    ZERO: ?*String = null,
    ONE: ?*String = null,
    TWO: ?*String = null,
    THREE: ?*String = null,
    FOUR: ?*String = null,
    FIVE: ?*String = null,
    SIX: ?*String = null,
    SEVEN: ?*String = null,
    EIGHT: ?*String = null,
    NINE: ?*String = null,
    POUND: ?*String = null,
    STAR: ?*String = null,
    FIRE: ?*String = null,
    var instance: ?*CommonPhoneStrings = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = CommonPhoneStrings.create();
    }

    fn initFields(this: *Self) void {
        this.UP = String.literal("UP");
        this.DOWN = String.literal("DOWN");
        this.LEFT = String.literal("LEFT");
        this.RIGHT = String.literal("RIGHT");
        this.ZERO = String.literal("0");
        this.ONE = String.literal("1");
        this.TWO = String.literal("2");
        this.THREE = String.literal("3");
        this.FOUR = String.literal("4");
        this.FIVE = String.literal("5");
        this.SIX = String.literal("6");
        this.SEVEN = String.literal("7");
        this.EIGHT = String.literal("8");
        this.NINE = String.literal("9");
        this.POUND = String.literal("#");
        this.STAR = String.literal("*");
        this.FIRE = String.literal("FIRE");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*CommonPhoneStrings {
        return Inheritance.upcast(?*CommonPhoneStrings, CommonPhoneStrings.instance);
    }
};

