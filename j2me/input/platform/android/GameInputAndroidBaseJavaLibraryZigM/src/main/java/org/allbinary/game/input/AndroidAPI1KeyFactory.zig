// Generated Code Do Not Modify
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const AndroidKeyFactory = @import("org/allbinary/game/input/AndroidKeyFactory.zig").AndroidKeyFactory;

pub const AndroidAPI1KeyFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.AndroidAPI1KeyFactory";
    base: AndroidKeyFactory = undefined,
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }
    

    pub fn getInstance() ?*AndroidAPI1KeyFactory {
        if (Object.same(AndroidAPI1KeyFactory.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            AndroidAPI1KeyFactory.instance = Inheritance.upcast(@TypeOf(AndroidAPI1KeyFactory.instance), AndroidAPI1KeyFactory.create());
        }
        return Inheritance.cast(?*AndroidAPI1KeyFactory, AndroidAPI1KeyFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = AndroidKeyFactory.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
};

