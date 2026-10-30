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
// package org.allbinary.game.ag.layer.hud.basic

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const HudResources = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.layer.hud.basic.HudResources";
    RESOURCE_LIFE: ?*String = null,
    RESOURCE_HEALTH: ?*String = null,
    var instance: ?*HudResources = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = HudResources.create();
    }

    fn initFields(this: *Self) void {
        this.RESOURCE_LIFE = String.literal("/hud_life_10_by_10.png");
        this.RESOURCE_HEALTH = String.literal("/hud_health_10_by_10.png");
    }
    

    pub fn getInstance() ?*HudResources {
        return Inheritance.upcast(?*HudResources, HudResources.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

