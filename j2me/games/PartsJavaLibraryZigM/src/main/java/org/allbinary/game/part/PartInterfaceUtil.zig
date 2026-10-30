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
// package org.allbinary.game.part

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PartInterface = @import("org/allbinary/game/part/PartInterface.zig").PartInterface;

pub const PartInterfaceUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.part.PartInterfaceUtil";
    var SINGLETON: []?*PartInterface = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = array_N65603: { const array_N65603_array = allocator.alloc(?*PartInterface, @intCast(0)) catch unreachable; @memset(array_N65603_array, null); break :array_N65603 array_N65603_array; };
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getZeroArray() []?*PartInterface {
        return PartInterfaceUtil.SINGLETON;
    }
};

