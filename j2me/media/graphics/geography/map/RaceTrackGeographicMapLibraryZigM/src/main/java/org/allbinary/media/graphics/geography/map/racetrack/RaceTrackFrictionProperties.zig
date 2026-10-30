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
// package org.allbinary.media.graphics.geography.map.racetrack

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const FrictionData = @import("org/allbinary/game/physics/friction/FrictionData.zig").FrictionData;

pub const RaceTrackFrictionProperties = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties";
    ROAD_FRICTION_NOMINATOR: i32 = 0,
    GROUND_FRICTION_NOMINATOR: i32 = 0,

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create2(roadFriction: i32, groundFriction: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.ROAD_FRICTION_NOMINATOR = FrictionData.getFrictionDenominator() - roadFriction;
        this.GROUND_FRICTION_NOMINATOR = FrictionData.getFrictionDenominator() - groundFriction;
        return this;
    }
    

    pub fn getRoadFrictionNominator(self: *Self) i32 {
        return self.ROAD_FRICTION_NOMINATOR;
    }
    

    pub fn getGroundFrictionNominator(self: *Self) i32 {
        return self.GROUND_FRICTION_NOMINATOR;
    }
};

