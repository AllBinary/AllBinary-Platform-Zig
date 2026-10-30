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
// package org.allbinary.bounds

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const BoundsVisitorInterface = @import("org/allbinary/bounds/BoundsVisitorInterface.zig").BoundsVisitorInterface;
const LayerBounds = @import("org/allbinary/bounds/LayerBounds.zig").LayerBounds;

pub const RectangleLayerBounds = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.bounds.RectangleLayerBounds";
    base: LayerBounds = undefined,
    

    pub fn create1(rectangle: ?*Rectangle) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(LayerBounds, "create1", .{ rectangle }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn visit(self: *Self, boundsVisitorInterface: ?*BoundsVisitorInterface) void {
        if (boundsVisitorInterface.?.getX() > Inheritance.fieldPointer(self, "rectangle").*.?.getMaxX()) {
            _ = boundsVisitorInterface.?.maxX();
        }
        if (boundsVisitorInterface.?.getY() > Inheritance.fieldPointer(self, "rectangle").*.?.getMaxY()) {
            _ = boundsVisitorInterface.?.maxY();
        }
        if (boundsVisitorInterface.?.getX() < Inheritance.receiverOf(Inheritance.fieldPointer(self, "rectangle").*.?.getPoint().?, "getX").getX()) {
            _ = boundsVisitorInterface.?.minX();
        }
        if (boundsVisitorInterface.?.getY() < Inheritance.receiverOf(Inheritance.fieldPointer(self, "rectangle").*.?.getPoint().?, "getY").getY()) {
            _ = boundsVisitorInterface.?.minY();
        }
    }
};

