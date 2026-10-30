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
// package org.allbinary.game.graphics.hud

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;

pub const HudGraphicsPosition = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.graphics.hud.HudGraphicsPosition";
    anchor: i32 = 0,
    point: ?*GPoint = null,
    pub var NULL_HUD_GRAPHICS_POSITION: ?*HudGraphicsPosition = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_HUD_GRAPHICS_POSITION = Inheritance.callStatic(HudGraphicsPosition, "create2", .{ PointFactory.getInstance().?.ZERO_ZERO, 9 });
    }

    fn initFields(this: *Self) void {
        this.anchor = 0;
        this.point = Inheritance.upcast(?*GPoint, PointFactory.getInstance().?.ZERO_ZERO);
    }
    

    pub fn create2(point: ?*GPoint, anchor: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setAnchor", .{ anchor });
        _ = Inheritance.call(this, "setPoint", .{ point });
        return this;
    }
    

    pub fn getAnchor(self: *Self) i32 {
        return self.anchor;
    }
    

    pub fn setAnchor(self: *Self, anchor: i32) void {
        self.anchor = anchor;
    }
    

    pub fn getPoint(self: *Self) ?*GPoint {
        return self.point;
    }
    

    pub fn setPoint(self: *Self, point: ?*GPoint) void {
        self.point = point;
    }
};

