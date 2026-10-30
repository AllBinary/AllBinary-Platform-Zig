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
const FrictionProperties = @import("org/allbinary/game/physics/FrictionProperties.zig").FrictionProperties;
const FrictionData = @import("org/allbinary/game/physics/friction/FrictionData.zig").FrictionData;

pub const VehicleFrictionProperties = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.VehicleFrictionProperties";
    base: FrictionProperties = undefined,
    TIRE_FRICTION_NOMINATOR: i32 = 0,
    BRAKE_FRICTION_NOMINATOR: i32 = 0,
    AIR_FRICTION_NOMINATOR: i32 = 0,
    CRASH_FRICTION_NOMINATOR: i32 = 0,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
    }
    

    pub fn create4(tireFriction: i32, brakeFriction: i32, airFriction: i32, crashFriction: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = FrictionProperties.create().*;
        this.initFields();
        this.TIRE_FRICTION_NOMINATOR = FrictionData.getFrictionDenominator() - tireFriction;
        this.BRAKE_FRICTION_NOMINATOR = FrictionData.getFrictionDenominator() - brakeFriction;
        this.AIR_FRICTION_NOMINATOR = FrictionData.getFrictionDenominator() - airFriction;
        this.CRASH_FRICTION_NOMINATOR = FrictionData.getFrictionDenominator() - crashFriction;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getTireFrictionNominator(self: *Self) i32 {
        return self.TIRE_FRICTION_NOMINATOR;
    }
    

    pub fn getBrakeFrictionNominator(self: *Self) i32 {
        return self.BRAKE_FRICTION_NOMINATOR;
    }
    

    pub fn getAirFrictionNominator(self: *Self) i32 {
        return self.AIR_FRICTION_NOMINATOR;
    }
    

    pub fn getCrashFrictionNominator(self: *Self) i32 {
        return self.CRASH_FRICTION_NOMINATOR;
    }
};

