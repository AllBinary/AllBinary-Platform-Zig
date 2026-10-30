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
// package org.allbinary.game.terrain

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const AllBinaryEventObjectFactoryInterface = @import("org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface.zig").AllBinaryEventObjectFactoryInterface;
const TerrainEvent = @import("org/allbinary/game/terrain/TerrainEvent.zig").TerrainEvent;

pub const TerrainEventFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.terrain.TerrainEventFactory";
    // Implements AllBinaryEventObjectFactoryInterface
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance(self: *Self) ?*AllBinaryEventObject {
        _ = self;
        return Inheritance.upcast(?*AllBinaryEventObject, Inheritance.callStatic(TerrainEvent, "create1", .{ NullUtil.getInstance().?.NULL_OBJECT }));
    }
};

