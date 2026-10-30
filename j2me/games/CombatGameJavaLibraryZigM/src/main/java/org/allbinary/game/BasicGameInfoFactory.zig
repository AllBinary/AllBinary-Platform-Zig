// Generated Code Do Not Modify
// package org.allbinary.game

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const BasicGameInfoFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.BasicGameInfoFactory";
    currentReleaseIndex: i32 = 0,
    currentDestroyIndex: i32 = 0,
    total: i32 = 0,
    var SINGLETON: ?*BasicGameInfoFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = BasicGameInfoFactory.create();
    }

    fn initFields(this: *Self) void {
        this.currentReleaseIndex = 0;
        this.currentDestroyIndex = 0;
        this.total = 0;
    }
    

    pub fn getInstance() ?*BasicGameInfoFactory {
        return Inheritance.upcast(?*BasicGameInfoFactory, BasicGameInfoFactory.SINGLETON);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn init(self: *Self, total: i32) void {
        self.currentReleaseIndex = 0;
        self.currentDestroyIndex = 0;
        self.total = total;
    }
    

    pub fn isPeaked(self: *Self) bool {
        if (self.currentDestroyIndex >= self.total) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn howManyLeft(self: *Self) i32 {
        return self.total - self.currentDestroyIndex;
    }
};

