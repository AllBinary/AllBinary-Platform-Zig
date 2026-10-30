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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const Aggression = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.Aggression";
    ram: ?*Integer = null,
    projectile: ?*Integer = null,
    drops: ?*Integer = null,

    fn initFields(this: *Self) void {
        this.ram = Inheritance.upcast(?*Integer, Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 0 }));
        this.projectile = Inheritance.upcast(?*Integer, Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 0 }));
        this.drops = Inheritance.upcast(?*Integer, Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 0 }));
    }
    

    pub fn create3(ram: ?*Integer, projectile: ?*Integer, drops: ?*Integer) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setRam", .{ ram });
        _ = Inheritance.call(this, "setProjectile", .{ projectile });
        _ = Inheritance.call(this, "setDrops", .{ drops });
        return this;
    }
    

    pub fn getRam(self: *Self) ?*Integer {
        return self.ram;
    }
    

    pub fn setRam(self: *Self, ram: ?*Integer) void {
        self.ram = ram;
    }
    

    pub fn getProjectile(self: *Self) ?*Integer {
        return self.projectile;
    }
    

    pub fn setProjectile(self: *Self, projectile: ?*Integer) void {
        self.projectile = projectile;
    }
    

    pub fn getDrops(self: *Self) ?*Integer {
        return self.drops;
    }
    

    pub fn setDrops(self: *Self, drops: ?*Integer) void {
        self.drops = drops;
    }
};

