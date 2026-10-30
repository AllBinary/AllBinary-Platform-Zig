// Generated Code Do Not Modify
// package org.allbinary.game.collision

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const CollisionProcessor = @import("org/allbinary/game/collision/CollisionProcessor.zig").CollisionProcessor;

pub const Collision2DProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.collision.Collision2DProcessor";
    base: CollisionProcessor = undefined,

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = CollisionProcessor.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isCollision(self: *Self, myLayer: ?*AllBinaryLayer, myLayer2: ?*AllBinaryLayer) bool {
        _ = self;
        if (Inheritance.receiver(myLayer2.?, "getXP").getXP() >= Inheritance.receiver(myLayer.?, "getX2").getX2() or Inheritance.receiver(myLayer2.?, "getYP").getYP() >= Inheritance.receiver(myLayer.?, "getY2").getY2() or Inheritance.receiver(myLayer2.?, "getX2").getX2() <= Inheritance.receiver(myLayer.?, "getXP").getXP() or Inheritance.receiver(myLayer2.?, "getY2").getY2() <= Inheritance.receiver(myLayer.?, "getYP").getYP()) {
            return false;
        } else {
            return true;
        }
    }
};

