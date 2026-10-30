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
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const ViewPositionBase = @import("org/allbinary/view/ViewPositionBase.zig").ViewPositionBase;

pub const GameLayerUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.GameLayerUtil";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn isOnScreen(layer: ?*AllBinaryLayer) bool {
        const displayInfo: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        const viewPosition: ?*ViewPositionBase = Inheritance.upcast(?*ViewPositionBase, Inheritance.receiver(layer.?, "getViewPosition").getViewPosition());
        return Inheritance.callStatic(GameLayerUtil, "isInside", .{ Inheritance.receiver(viewPosition.?, "getX").getX(), Inheritance.receiver(viewPosition.?, "getY").getY(), Inheritance.receiver(viewPosition.?, "getX2").getX2(), Inheritance.receiver(viewPosition.?, "getY2").getY2(), 0, 0, displayInfo.?.getLastWidth(), displayInfo.?.getLastHeight() });
    }
    

    pub fn isInside(rectX1: i32, rectY1: i32, rectX2: i32, rectY2: i32, rect2X1: i32, rect2Y1: i32, rect2X2: i32, rect2Y2: i32) bool {
        if (rectX1 > rect2X1 and rectX2 < rect2X2 and rectY1 > rect2Y1 and rectY2 < rect2Y2) {
            return true;
        } else {
            return false;
        }
    }
};

