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
const ViewPosition = @import("org/allbinary/view/ViewPosition.zig").ViewPosition;

pub const StaticViewPosition = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.view.StaticViewPosition";
    base: ViewPosition = undefined,
    

    pub fn create3(x: i32, y: i32, z: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ViewPosition, "create3", .{ x, y, z }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getX(self: *Self) i32 {
        return Inheritance.receiver(self, "getRawX").getRawX();
    }
    

    pub fn getY(self: *Self) i32 {
        return Inheritance.receiver(self, "getRawY").getRawY();
    }
    

    pub fn getZ(self: *Self) i32 {
        return Inheritance.receiver(self, "getRawZ").getRawZ();
    }
};

