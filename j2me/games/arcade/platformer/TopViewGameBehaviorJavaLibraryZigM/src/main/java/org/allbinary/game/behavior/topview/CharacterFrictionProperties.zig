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
// package org.allbinary.game.behavior.topview

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const FrictionProperties = @import("org/allbinary/game/physics/FrictionProperties.zig").FrictionProperties;
const FrictionData = @import("org/allbinary/game/physics/friction/FrictionData.zig").FrictionData;

pub const CharacterFrictionProperties = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.behavior.topview.CharacterFrictionProperties";
    base: FrictionProperties = undefined,
    WATER_FRICTION_NOMINATOR: i32 = 0,
    AIR_FRICTION_NOMINATOR: i32 = 0,
    COLLISION_FRICTION_NOMINATOR: i32 = 0,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
    }
    

    pub fn create3(airFriction: i32, waterFriction: i32, collisionFriction: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = FrictionProperties.create().*;
        this.initFields();
        this.AIR_FRICTION_NOMINATOR = FrictionData.getFrictionDenominator() - airFriction;
        this.COLLISION_FRICTION_NOMINATOR = FrictionData.getFrictionDenominator() - collisionFriction;
        this.WATER_FRICTION_NOMINATOR = FrictionData.getFrictionDenominator() - waterFriction;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getWATER_FRICTION_NOMINATOR(self: *Self) i32 {
        return self.WATER_FRICTION_NOMINATOR;
    }
    

    pub fn getAIR_FRICTION_NOMINATOR(self: *Self) i32 {
        return self.AIR_FRICTION_NOMINATOR;
    }
    

    pub fn getCOLLISION_FRICTION_NOMINATOR(self: *Self) i32 {
        return self.COLLISION_FRICTION_NOMINATOR;
    }
};

