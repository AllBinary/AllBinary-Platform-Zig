// 
// AllBinary Open License Version 1 
// Copyright (c) 2006 AllBinary 
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
const SensorAction = @import("org/allbinary/game/layer/SensorAction.zig").SensorAction;

pub const SensorActionFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.SensorActionFactory";
    ATTACK: ?*SensorAction = null,
    EVADE: ?*SensorAction = null,
    var instance: ?*SensorActionFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = SensorActionFactory.create();
    }

    fn initFields(this: *Self) void {
        this.ATTACK = Inheritance.callStatic(SensorAction, "create1", .{ String.literal("Attack") });
        this.EVADE = Inheritance.callStatic(SensorAction, "create1", .{ String.literal("Evade") });
    }
    

    pub fn getInstance() ?*SensorActionFactory {
        return Inheritance.upcast(?*SensorActionFactory, SensorActionFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

