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
const ViewPositionBase = @import("org/allbinary/view/ViewPositionBase.zig").ViewPositionBase;
const ViewPositionFactoryInterface = @import("org/allbinary/view/ViewPositionFactoryInterface.zig").ViewPositionFactoryInterface;

pub const ViewPositionFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.view.ViewPositionFactory";
    pub const java_interfaces = .{ ViewPositionFactoryInterface };
    // Implements ViewPositionFactoryInterface

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance(self: *Self) ?*ViewPositionBase {
        _ = self;
        return Inheritance.upcast(?*ViewPositionBase, ViewPosition.getInstanceD());
    }
};

