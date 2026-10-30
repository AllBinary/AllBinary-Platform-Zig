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
// package org.allbinary.game.combat.destroy.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryEventCircularPool = @import("org/allbinary/logic/util/event/AllBinaryEventCircularPool.zig").AllBinaryEventCircularPool;
const DestroyEventFactory = @import("org/allbinary/game/combat/destroy/event/DestroyEventFactory.zig").DestroyEventFactory;
const DestroyedEvent = @import("org/allbinary/game/combat/destroy/event/DestroyedEvent.zig").DestroyedEvent;

pub const DestroyEventCircularStaticPool = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool";
    EVENT_POOL: ?*AllBinaryEventCircularPool = null,
    var instance: ?*DestroyEventCircularStaticPool = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = DestroyEventCircularStaticPool.create();
    }

    fn initFields(this: *Self) void {
        this.EVENT_POOL = Inheritance.callStatic(AllBinaryEventCircularPool, "create1", .{ 20 });
    }
    

    pub fn getInstance() ?*DestroyEventCircularStaticPool {
        return Inheritance.upcast(?*DestroyEventCircularStaticPool, DestroyEventCircularStaticPool.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn init(self: *Self, combatGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = Inheritance.call(self.EVENT_POOL.?, "initAllBinaryEventCircularPool", .{ Inheritance.callStatic(DestroyEventFactory, "create1", .{ combatGameCanvas }) });
    }
    

    // throws Exception
    pub fn getInstanceForLayer(self: *Self, layerInterface: ?*AllBinaryLayer) ?*DestroyedEvent {
        const destroyedEvent: ?*DestroyedEvent = Inheritance.cast(?*DestroyedEvent, Inheritance.receiver(self.EVENT_POOL.?, "getNextInstance").getNextInstance());
        _ = Inheritance.call(destroyedEvent.?, "setLayerInterfaceForCircularStaticPool", .{ layerInterface });
        return destroyedEvent;
    }
};

