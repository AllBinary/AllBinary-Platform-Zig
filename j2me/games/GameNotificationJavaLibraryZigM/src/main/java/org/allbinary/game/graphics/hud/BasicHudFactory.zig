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
// package org.allbinary.game.graphics.hud

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const BasicHudFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.graphics.hud.BasicHudFactory";
    DIRECTION_EXCEPTION: ?*String = null,
    VERTICAL: i32 = 0,
    HORIZONTAL: i32 = 0,
    BOTTOMLEFT: i32 = 0,
    BOTTOMRIGHT: i32 = 0,
    TOPLEFT: i32 = 0,
    TOPRIGHT: i32 = 0,
    BOTTOMCENTER: i32 = 0,
    TOPCENTER: i32 = 0,
    ABSOLUTE: i32 = 0,
    var instance: ?*BasicHudFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BasicHudFactory.create();
    }

    fn initFields(this: *Self) void {
        this.DIRECTION_EXCEPTION = String.literal("Only Horizontal Direction is Allowed Currently");
        this.VERTICAL = 0;
        this.HORIZONTAL = 1;
        this.BOTTOMLEFT = 0;
        this.BOTTOMRIGHT = 1;
        this.TOPLEFT = 2;
        this.TOPRIGHT = 3;
        this.BOTTOMCENTER = 4;
        this.TOPCENTER = 5;
        this.ABSOLUTE = 6;
    }
    

    pub fn getInstance() ?*BasicHudFactory {
        return Inheritance.upcast(?*BasicHudFactory, BasicHudFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

