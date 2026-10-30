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
const CollidableAlwaysPickupNeverCollideBehavior = @import("org/allbinary/game/collision/CollidableAlwaysPickupNeverCollideBehavior.zig").CollidableAlwaysPickupNeverCollideBehavior;
const CollidableBaseBehavior = @import("org/allbinary/game/collision/CollidableBaseBehavior.zig").CollidableBaseBehavior;
const CollidableBaseBehaviorFactory = @import("org/allbinary/game/collision/CollidableBaseBehaviorFactory.zig").CollidableBaseBehaviorFactory;

pub const CollidableAlwaysPickupNeverCollideBehaviorFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehaviorFactory";
    base: CollidableBaseBehaviorFactory = undefined,
    instance: ?*CollidableAlwaysPickupNeverCollideBehavior = null,
    var instanceC: ?*CollidableAlwaysPickupNeverCollideBehaviorFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instanceC = CollidableAlwaysPickupNeverCollideBehaviorFactory.create();
    }

    fn initFields(this: *Self) void {
        this.instance = CollidableAlwaysPickupNeverCollideBehavior.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = CollidableBaseBehaviorFactory.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*CollidableAlwaysPickupNeverCollideBehaviorFactory {
        return Inheritance.upcast(?*CollidableAlwaysPickupNeverCollideBehaviorFactory, CollidableAlwaysPickupNeverCollideBehaviorFactory.instanceC);
    }
    

    pub fn createBehavior(self: *Self) ?*CollidableBaseBehavior {
        return Inheritance.upcast(?*CollidableBaseBehavior, self.instance);
    }
};

