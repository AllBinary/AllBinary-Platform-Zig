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
// package org.allbinary.game.combat.destroy

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const DestroyableInterface = @import("org/allbinary/game/combat/destroy/DestroyableInterface.zig").DestroyableInterface;

pub const DestroyableBaseBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.combat.destroy.DestroyableBaseBehavior";
    pub const java_interfaces = .{ DestroyableInterface };
    // Implements DestroyableInterface
    var instance: ?*DestroyableBaseBehavior = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = DestroyableBaseBehavior.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*DestroyableBaseBehavior {
        return Inheritance.upcast(?*DestroyableBaseBehavior, DestroyableBaseBehavior.instance);
    }
    

    pub fn getName(self: *Self) ?*String {
        return Inheritance.upcast(?*String, String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self).?.class))).?))).name));
    }
    

    // throws Exception
    pub fn isDestroyed(self: *Self) bool {
        _ = self;
        std.debug.panic("{any}", .{exception: { _ = CommonStrings.getInstance().?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    pub fn setDestroyed(self: *Self, destroyed: bool) void {
        _ = destroyed;
        _ = self;
    }
};

