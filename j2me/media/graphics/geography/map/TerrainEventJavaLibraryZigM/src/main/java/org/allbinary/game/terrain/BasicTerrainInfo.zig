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
// package org.allbinary.game.terrain

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Angle = @import("org/allbinary/math/Angle.zig").Angle;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;

pub const BasicTerrainInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.terrain.BasicTerrainInfo";
    angle: ?*Angle = null,
    pub var NULL_BASIC_TERRAIN_INFO: ?*BasicTerrainInfo = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_BASIC_TERRAIN_INFO = Inheritance.callStatic(BasicTerrainInfo, "create1", .{ AngleFactory.getInstance().?.NOT_ANGLE });
    }

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(angle: ?*Angle) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.angle = angle;
        return this;
    }
    

    pub fn getAngle(self: *Self) ?*Angle {
        return self.angle;
    }
    

    pub fn setAngle(self: *Self, angle: ?*Angle) void {
        self.angle = angle;
    }
};

