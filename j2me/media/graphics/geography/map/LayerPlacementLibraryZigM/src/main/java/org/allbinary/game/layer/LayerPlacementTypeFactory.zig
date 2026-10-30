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
const DirectionFactory = @import("org/allbinary/direction/DirectionFactory.zig").DirectionFactory;
const LayerPlacementType = @import("org/allbinary/game/layer/LayerPlacementType.zig").LayerPlacementType;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const LayerPlacementTypeFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.LayerPlacementTypeFactory";
    MAP: ?*LayerPlacementType = null,
    LEFT: ?*LayerPlacementType = null,
    DOWN: ?*LayerPlacementType = null,
    UP: ?*LayerPlacementType = null,
    RIGHT: ?*LayerPlacementType = null,
    var instance: ?*LayerPlacementTypeFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LayerPlacementTypeFactory.create();
    }

    fn initFields(this: *Self) void {
        this.MAP = Inheritance.callStatic(LayerPlacementType, "create1", .{ @as(i32, std.math.maxInt(i32)) });
        this.LEFT = Inheritance.callStatic(LayerPlacementType, "create1", .{ Inheritance.receiverOf(DirectionFactory.getInstance().?.LEFT.?, "getValue").getValue() });
        this.DOWN = Inheritance.callStatic(LayerPlacementType, "create1", .{ Inheritance.receiverOf(DirectionFactory.getInstance().?.DOWN.?, "getValue").getValue() });
        this.UP = Inheritance.callStatic(LayerPlacementType, "create1", .{ Inheritance.receiverOf(DirectionFactory.getInstance().?.UP.?, "getValue").getValue() });
        this.RIGHT = Inheritance.callStatic(LayerPlacementType, "create1", .{ Inheritance.receiverOf(DirectionFactory.getInstance().?.RIGHT.?, "getValue").getValue() });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*LayerPlacementTypeFactory {
        return Inheritance.upcast(?*LayerPlacementTypeFactory, LayerPlacementTypeFactory.instance);
    }
};

