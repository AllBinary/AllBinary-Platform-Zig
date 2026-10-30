// Generated Code Do Not Modify
// package org.bouncycastle.jce.provider

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Provider = @import("java/security/Provider.zig").Provider;

pub const BouncyCastleProvider = struct {
    const Self = @This();
    pub const java_name = "org.bouncycastle.jce.provider.BouncyCastleProvider";
    base: Provider = undefined,
    var info: ?*String = String.literal("BouncyCastle Security Provider v1.41");
    pub var PROVIDER_NAME: ?*String = String.literal("BC");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Provider, "create3", .{ BouncyCastleProvider.PROVIDER_NAME, 1.41, BouncyCastleProvider.info }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setParameter(self: *Self, parameterName: ?*String, parameter: ?Object) void {
        _ = parameterName;
        _ = parameter;
        _ = self;
    }
};

