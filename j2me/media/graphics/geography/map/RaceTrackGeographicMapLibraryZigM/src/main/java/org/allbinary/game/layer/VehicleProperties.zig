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
const VelocityProperties = @import("org/allbinary/game/physics/velocity/VelocityProperties.zig").VelocityProperties;
const VehicleFrictionProperties = @import("org/allbinary/game/layer/VehicleFrictionProperties.zig").VehicleFrictionProperties;

pub const VehicleProperties = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.VehicleProperties";
    velocityProperties: ?*VelocityProperties = null,
    vehicleFrictionProperties: ?*VehicleFrictionProperties = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create2(velocityProperties: ?*VelocityProperties, vehicleFrictionProperties: ?*VehicleFrictionProperties) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.velocityProperties = velocityProperties;
        this.vehicleFrictionProperties = vehicleFrictionProperties;
        return this;
    }
    

    pub fn getVehicleFrictionProperties(self: *Self) ?*VehicleFrictionProperties {
        return self.vehicleFrictionProperties;
    }
    

    pub fn setVehicleFrictionProperties(self: *Self, vehicleFrictionProperties: ?*VehicleFrictionProperties) void {
        self.vehicleFrictionProperties = vehicleFrictionProperties;
    }
    

    pub fn getVelocityProperties(self: *Self) ?*VelocityProperties {
        return self.velocityProperties;
    }
};

