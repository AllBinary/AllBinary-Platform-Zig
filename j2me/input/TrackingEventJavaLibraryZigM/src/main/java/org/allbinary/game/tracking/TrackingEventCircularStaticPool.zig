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
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryEventCircularPool = @import("org/allbinary/logic/util/event/AllBinaryEventCircularPool.zig").AllBinaryEventCircularPool;
const TrackingEvent = @import("org/allbinary/game/tracking/TrackingEvent.zig").TrackingEvent;
const TrackingEventFactory = @import("org/allbinary/game/tracking/TrackingEventFactory.zig").TrackingEventFactory;

pub const TrackingEventCircularStaticPool = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.tracking.TrackingEventCircularStaticPool";
    EVENT_POOL: ?*AllBinaryEventCircularPool = null,
    var instance: ?*TrackingEventCircularStaticPool = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TrackingEventCircularStaticPool.create();
    }

    fn initFields(this: *Self) void {
        this.EVENT_POOL = Inheritance.callStatic(AllBinaryEventCircularPool, "create1", .{ 20 });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*TrackingEventCircularStaticPool {
        return Inheritance.upcast(?*TrackingEventCircularStaticPool, TrackingEventCircularStaticPool.instance);
    }
    

    pub fn init(self: *Self) void {
        _ = Inheritance.call(self.EVENT_POOL.?, "initAllBinaryEventCircularPool", .{ TrackingEventFactory.create() });
    }
    

    // throws Exception
    pub fn getNextInstance(self: *Self, layerInterface: ?*AllBinaryLayer) ?*TrackingEvent {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const trackingEvent: ?*TrackingEvent = Inheritance.cast(?*TrackingEvent, Inheritance.receiver(self.EVENT_POOL.?, "getNextInstance").getNextInstance());
        _ = Inheritance.call(trackingEvent.?, "setLayerInterfaceForCircularStaticPool", .{ layerInterface });
        return trackingEvent;
    }
};

