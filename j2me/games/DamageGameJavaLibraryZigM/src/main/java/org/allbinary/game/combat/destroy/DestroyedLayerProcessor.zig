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
// package org.allbinary.game.combat.destroy

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DestroyEventCircularStaticPool = @import("org/allbinary/game/combat/destroy/event/DestroyEventCircularStaticPool.zig").DestroyEventCircularStaticPool;
const DestroyedEvent = @import("org/allbinary/game/combat/destroy/event/DestroyedEvent.zig").DestroyedEvent;
const DestroyedEventHandler = @import("org/allbinary/game/combat/destroy/event/DestroyedEventHandler.zig").DestroyedEventHandler;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const BasicLayerProcessor = @import("org/allbinary/layer/BasicLayerProcessor.zig").BasicLayerProcessor;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;

pub const DestroyedLayerProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.combat.destroy.DestroyedLayerProcessor";
    base: BasicLayerProcessor = undefined,
    var DESTROYED_LAYER_PROCESSOR: ?*BasicLayerProcessor = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        DESTROYED_LAYER_PROCESSOR = Inheritance.upcast(?*BasicLayerProcessor, BasicLayerProcessor.NULL_LAYER_PROCESSOR);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicLayerProcessor.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init() void {
        DestroyedLayerProcessor.DESTROYED_LAYER_PROCESSOR = Inheritance.upcast(@TypeOf(DestroyedLayerProcessor.DESTROYED_LAYER_PROCESSOR), DestroyedLayerProcessor.create());
    }
    

    pub fn getInstance() ?*BasicLayerProcessor {
        return Inheritance.upcast(?*BasicLayerProcessor, DestroyedLayerProcessor.DESTROYED_LAYER_PROCESSOR);
    }
    

    // throws Exception
    pub fn process(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(self, "getList").getList());
        const size: i32 = list.?.size();
        const destroyedEventHandler: ?*DestroyedEventHandler = Inheritance.upcast(?*DestroyedEventHandler, DestroyedEventHandler.getInstance());
        const destroyEventCircularStaticPool: ?*DestroyEventCircularStaticPool = Inheritance.upcast(?*DestroyEventCircularStaticPool, DestroyEventCircularStaticPool.getInstance());
        var destroyedEvent: ?*DestroyedEvent = null;
        var layerInterface: ?*AllBinaryLayer = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const layerInterfaceCanBeNull: ?Object = Inheritance.upcast(?Object, list.?.objectArray[@intCast(index)]);
            if (layerInterfaceCanBeNull != null) {
                layerInterface = Inheritance.cast(?*AllBinaryLayer, layerInterfaceCanBeNull);
                _ = Inheritance.call(allBinaryLayerManager.?, "remove", .{ layerInterface });
                destroyedEvent = Inheritance.upcast(@TypeOf(destroyedEvent), Inheritance.call(destroyEventCircularStaticPool.?, "getInstanceForLayer", .{ layerInterface }));
                _ = Inheritance.call(destroyedEventHandler.?, "fireEvent", .{ destroyedEvent });
            } else {
                const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
            }
            }
        }
        _ = list.?.clear();
    }
};

