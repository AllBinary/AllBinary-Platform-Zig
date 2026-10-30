// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.game.physics.velocity

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const VelocityBehaviorBase = @import("org/allbinary/game/physics/velocity/VelocityBehaviorBase.zig").VelocityBehaviorBase;

pub const NoDragVelocityBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.physics.velocity.NoDragVelocityBehavior";
    base: VelocityBehaviorBase = undefined,
    pub var instance: ?*NoDragVelocityBehavior = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = NoDragVelocityBehavior.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = VelocityBehaviorBase.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
};

