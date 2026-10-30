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
// package org.allbinary.game.collision

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CollisionType = @import("org/allbinary/game/collision/CollisionType.zig").CollisionType;

pub const CollisionTypeFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.collision.CollisionTypeFactory";
    NONE: ?*CollisionType = null,
    DAMAGE: ?*CollisionType = null,
    PICKUP: ?*CollisionType = null,
    COLLISION: ?*CollisionType = null,
    var SINGLETON: ?*CollisionTypeFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = CollisionTypeFactory.create();
    }

    fn initFields(this: *Self) void {
        this.NONE = Inheritance.callStatic(CollisionType, "create1", .{ String.literal("None") });
        this.DAMAGE = Inheritance.callStatic(CollisionType, "create1", .{ String.literal("Damage") });
        this.PICKUP = Inheritance.callStatic(CollisionType, "create1", .{ String.literal("Pickup") });
        this.COLLISION = Inheritance.callStatic(CollisionType, "create1", .{ String.literal("Collision") });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*CollisionTypeFactory {
        return Inheritance.upcast(?*CollisionTypeFactory, CollisionTypeFactory.SINGLETON);
    }
};

