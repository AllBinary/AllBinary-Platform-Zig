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
// package org.allbinary.layer.relationship

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const RelativeRelationship = @import("org/allbinary/graphics/RelativeRelationship.zig").RelativeRelationship;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;

pub const RelativeLayerRelationship = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.layer.relationship.RelativeLayerRelationship";
    base: RelativeRelationship = undefined,
    layer: ?*AllBinaryLayer = null,

    fn initFields(this: *Self) void {
        this.layer = Inheritance.upcast(?*AllBinaryLayer, AllBinaryLayer.NULL_ALLBINARY_LAYER);
    }
    

    pub fn create3(layer: ?*AllBinaryLayer, point: ?*GPoint, typesAllowedList: ?*BasicArrayList) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RelativeRelationship, "create2", .{ point, typesAllowedList }).*;
        this.initFields();
        this.layer = layer;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getX(self: *Self) i32 {
        return Inheritance.receiver(self.layer.?, "getXP").getXP() + self.base.getX();
    }
    

    pub fn getY(self: *Self) i32 {
        return Inheritance.receiver(self.layer.?, "getYP").getYP() + self.base.getY();
    }
    

    pub fn getZ(self: *Self) i32 {
        return Inheritance.receiver(self.layer.?, "getZP").getZP() + self.base.getZ();
    }
};

