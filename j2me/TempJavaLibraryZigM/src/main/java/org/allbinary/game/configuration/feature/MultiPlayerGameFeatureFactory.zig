// Generated Code Do Not Modify
// package org.allbinary.game.configuration.feature

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const MultiPlayerGameFeatureFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory";
    var instance: ?*MultiPlayerGameFeatureFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = MultiPlayerGameFeatureFactory.create();
    }
    

    pub fn getInstance() ?*MultiPlayerGameFeatureFactory {
        return Inheritance.upcast(?*MultiPlayerGameFeatureFactory, MultiPlayerGameFeatureFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn addCommands(self: *Self, anyType: ?Object) void {
        _ = anyType;
        _ = self;
    }
};

