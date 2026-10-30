// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CacheTypeFactory = @import("org/allbinary/logic/util/cache/CacheTypeFactory.zig").CacheTypeFactory;
const PoolType = @import("org/allbinary/logic/util/cache/PoolType.zig").PoolType;

pub const PoolTypeFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.util.cache.PoolTypeFactory";
    VECTOR_POOL: ?*PoolType = null,
    var instance: ?*PoolTypeFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PoolTypeFactory.create();
    }

    fn initFields(this: *Self) void {
        this.VECTOR_POOL = Inheritance.callStatic(PoolType, "create1", .{ CacheTypeFactory.getInstance().?.NO_CACHE });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*PoolTypeFactory {
        return Inheritance.upcast(?*PoolTypeFactory, PoolTypeFactory.instance);
    }
};

