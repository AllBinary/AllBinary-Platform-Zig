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
// package org.allbinary.game.combat.damage

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const ExplosionResources = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.combat.damage.ExplosionResources";
    EXPLOSION_90_RESOURCE: ?*String = null,
    EXPLOSION_60_RESOURCE: ?*String = null,
    HALF_EXPLOSION_RESOURCE: ?*String = null,
    THIRD_EXPLOSION_RESOURCE: ?*String = null,
    var instance: ?*ExplosionResources = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ExplosionResources.create();
    }

    fn initFields(this: *Self) void {
        this.EXPLOSION_90_RESOURCE = String.literal("/explosion_sprite_90_by_90.png");
        this.EXPLOSION_60_RESOURCE = String.literal("/explosion_sprite_60_by_60.png");
        this.HALF_EXPLOSION_RESOURCE = String.literal("/explosion_sprite_30_by_30.png");
        this.THIRD_EXPLOSION_RESOURCE = String.literal("/explosion_sprite_15_by_15.png");
    }
    

    pub fn getInstance() ?*ExplosionResources {
        return Inheritance.upcast(?*ExplosionResources, ExplosionResources.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

