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
// package org.allbinary.game.tracking

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const AllBinaryEventObjectFactoryInterface = @import("org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface.zig").AllBinaryEventObjectFactoryInterface;
const TrackingEvent = @import("org/allbinary/game/tracking/TrackingEvent.zig").TrackingEvent;
const TrackingEventHandler = @import("org/allbinary/game/tracking/TrackingEventHandler.zig").TrackingEventHandler;

pub const TrackingEventFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.tracking.TrackingEventFactory";
    // Implements AllBinaryEventObjectFactoryInterface
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance(self: *Self) ?*AllBinaryEventObject {
        _ = self;
        return Inheritance.upcast(?*AllBinaryEventObject, Inheritance.callStatic(TrackingEvent, "create1", .{ TrackingEventHandler.getInstance() }));
    }
};

