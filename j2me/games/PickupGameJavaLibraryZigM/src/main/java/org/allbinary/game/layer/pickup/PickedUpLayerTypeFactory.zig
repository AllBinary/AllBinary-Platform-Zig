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
// package org.allbinary.game.layer.pickup

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const PickedUpLayerType = @import("org/allbinary/game/layer/pickup/PickedUpLayerType.zig").PickedUpLayerType;

pub const PickedUpLayerTypeFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory";
    NONE: ?*PickedUpLayerType = null,
    BEAM: ?*PickedUpLayerType = null,
    MINE: ?*PickedUpLayerType = null,
    PROJECTILE: ?*PickedUpLayerType = null,
    ENHANCEMENT: ?*PickedUpLayerType = null,
    MORPH: ?*PickedUpLayerType = null,
    PART: ?*PickedUpLayerType = null,
    HEAL: ?*PickedUpLayerType = null,
    LIFE: ?*PickedUpLayerType = null,
    POINTS: ?*PickedUpLayerType = null,
    var instance: ?*PickedUpLayerTypeFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PickedUpLayerTypeFactory.create();
    }

    fn initFields(this: *Self) void {
        this.NONE = Inheritance.callStatic(PickedUpLayerType, "create1", .{ StringUtil.getInstance().?.NULL_STRING });
        this.BEAM = Inheritance.callStatic(PickedUpLayerType, "create1", .{ String.literal("BEAM") });
        this.MINE = Inheritance.callStatic(PickedUpLayerType, "create1", .{ String.literal("MINE") });
        this.PROJECTILE = Inheritance.callStatic(PickedUpLayerType, "create1", .{ String.literal("PROJECTILE") });
        this.ENHANCEMENT = Inheritance.callStatic(PickedUpLayerType, "create1", .{ String.literal("Enhancement") });
        this.MORPH = Inheritance.callStatic(PickedUpLayerType, "create1", .{ String.literal("Morph") });
        this.PART = Inheritance.callStatic(PickedUpLayerType, "create1", .{ String.literal("Part") });
        this.HEAL = Inheritance.callStatic(PickedUpLayerType, "create1", .{ String.literal("Heal") });
        this.LIFE = Inheritance.callStatic(PickedUpLayerType, "create1", .{ String.literal("Life") });
        this.POINTS = Inheritance.callStatic(PickedUpLayerType, "create1", .{ String.literal("Points") });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*PickedUpLayerTypeFactory {
        return Inheritance.upcast(?*PickedUpLayerTypeFactory, PickedUpLayerTypeFactory.instance);
    }
};

