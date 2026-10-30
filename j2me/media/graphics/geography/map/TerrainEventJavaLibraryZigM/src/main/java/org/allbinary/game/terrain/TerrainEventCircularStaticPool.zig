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
const AllBinaryEventCircularPool = @import("org/allbinary/logic/util/event/AllBinaryEventCircularPool.zig").AllBinaryEventCircularPool;
const BasicTerrainInfo = @import("org/allbinary/game/terrain/BasicTerrainInfo.zig").BasicTerrainInfo;
const TerrainEvent = @import("org/allbinary/game/terrain/TerrainEvent.zig").TerrainEvent;
const TerrainEventFactory = @import("org/allbinary/game/terrain/TerrainEventFactory.zig").TerrainEventFactory;

pub const TerrainEventCircularStaticPool = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.terrain.TerrainEventCircularStaticPool";
    EVENT_POOL: ?*AllBinaryEventCircularPool = null,
    var instance: ?*TerrainEventCircularStaticPool = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TerrainEventCircularStaticPool.create();
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
    

    pub fn getInstance() ?*TerrainEventCircularStaticPool {
        return Inheritance.upcast(?*TerrainEventCircularStaticPool, TerrainEventCircularStaticPool.instance);
    }
    

    pub fn init(self: *Self) void {
        _ = Inheritance.call(self.EVENT_POOL.?, "initAllBinaryEventCircularPool", .{ TerrainEventFactory.create() });
    }
    

    // throws Exception
    pub fn getNext(self: *Self, basicTerrainInfo: ?*BasicTerrainInfo) ?*TerrainEvent {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const trackingEvent: ?*TerrainEvent = Inheritance.cast(?*TerrainEvent, Inheritance.receiver(self.EVENT_POOL.?, "getNextInstance").getNextInstance());
        _ = Inheritance.call(trackingEvent.?, "setBasicTerrainInfoForCircularStaticPool", .{ basicTerrainInfo });
        return trackingEvent;
    }
};

