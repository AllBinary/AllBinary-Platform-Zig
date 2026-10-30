// Generated Code Do Not Modify
// package org.allbinary.game.collision

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;

pub const CollisionProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.collision.CollisionProcessor";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn isCollision(self: *Self, myLayer: ?*AllBinaryLayer, myLayer2: ?*AllBinaryLayer) bool {
        _ = myLayer;
        _ = myLayer2;
        _ = self;
        return false;
    }
};

