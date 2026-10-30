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
// package org.allbinary.view

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const StaticViewPosition = @import("org/allbinary/view/StaticViewPosition.zig").StaticViewPosition;
const ViewPositionBase = @import("org/allbinary/view/ViewPositionBase.zig").ViewPositionBase;

pub const CenterStaticViewPositionFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.view.CenterStaticViewPositionFactory";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance(self: *Self, z: i32) ?*ViewPositionBase {
        _ = self;
        const displayInfoSingleton: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        return Inheritance.upcast(?*ViewPositionBase, Inheritance.callStatic(StaticViewPosition, "create3", .{ (displayInfoSingleton.?.getLastWidth() >> @intCast(1)), (displayInfoSingleton.?.getLastHeight() >> @intCast(1)), z }));
    }
};

