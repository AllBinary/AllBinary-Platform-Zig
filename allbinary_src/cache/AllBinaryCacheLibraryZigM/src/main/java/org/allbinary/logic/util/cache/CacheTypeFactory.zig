// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CacheType = @import("org/allbinary/logic/util/cache/CacheType.zig").CacheType;

pub const CacheTypeFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.util.cache.CacheTypeFactory";
    NO_CACHE: ?*CacheType = null,
    CACHE: ?*CacheType = null,
    SET: ?*CacheType = null,
    CACHE_VECTOR: ?*CacheType = null,
    var instance: ?*CacheTypeFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = CacheTypeFactory.create();
    }

    fn initFields(this: *Self) void {
        this.NO_CACHE = Inheritance.callStatic(CacheType, "create2", .{ StringUtil.getInstance().?.EMPTY_STRING, StringUtil.getInstance().?.EMPTY_STRING });
        this.CACHE = Inheritance.callStatic(CacheType, "create2", .{ StringUtil.getInstance().?.EMPTY_STRING, StringUtil.getInstance().?.EMPTY_STRING });
        this.SET = Inheritance.callStatic(CacheType, "create2", .{ StringUtil.getInstance().?.EMPTY_STRING, String.literal("Set") });
        this.CACHE_VECTOR = Inheritance.callStatic(CacheType, "create2", .{ StringUtil.getInstance().?.EMPTY_STRING, StringUtil.getInstance().?.EMPTY_STRING });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*CacheTypeFactory {
        return Inheritance.upcast(?*CacheTypeFactory, CacheTypeFactory.instance);
    }
};

