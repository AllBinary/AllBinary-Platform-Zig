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
// package org.allbinary.game.ag.ai.scroller

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameInput = @import("org/allbinary/game/input/GameInput.zig").GameInput;
const BasicTerrainInfo = @import("org/allbinary/game/terrain/BasicTerrainInfo.zig").BasicTerrainInfo;
const TerrainEvent = @import("org/allbinary/game/terrain/TerrainEvent.zig").TerrainEvent;
const TerrainEventCircularStaticPool = @import("org/allbinary/game/terrain/TerrainEventCircularStaticPool.zig").TerrainEventCircularStaticPool;
const TerrainEventHandler = @import("org/allbinary/game/terrain/TerrainEventHandler.zig").TerrainEventHandler;
const TerrainEventListener = @import("org/allbinary/game/terrain/TerrainEventListener.zig").TerrainEventListener;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const Angle = @import("org/allbinary/math/Angle.zig").Angle;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const PacePatrolAI = @import("org/allbinary/game/ag/ai/scroller/PacePatrolAI.zig").PacePatrolAI;

pub const TerrainPatrolAI = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.scroller.TerrainPatrolAI";
    base: PacePatrolAI = undefined,
    terrainEventListener: ?*TerrainEventListener = null,
    DOWN: ?*Angle = null,
    CLIFF: ?*BasicTerrainInfo = null,

    fn initFields(this: *Self) void {
        this.terrainEventListener = TerrainEventListener.create();
        this.DOWN = Inheritance.upcast(?*Angle, AngleFactory.getInstance().?.DOWN);
        this.CLIFF = Inheritance.callStatic(BasicTerrainInfo, "create1", .{ this.DOWN });
    }
    

    pub fn create3(hashtable: ?*ABHashtable, ownerLayerInterface: ?*AllBinaryLayer, gameInput: ?*GameInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(PacePatrolAI, "create3", .{ hashtable, ownerLayerInterface, gameInput }).*;
        this.initFields();
        _ = Inheritance.call(Inheritance.callStatic(TerrainEventHandler, "getInstance", .{ ownerLayerInterface }).?, "addListener", .{ this.terrainEventListener });
        _ = Inheritance.call(this.terrainEventListener.?, "onTerrainEvent", .{ Inheritance.call(TerrainEventCircularStaticPool.getInstance().?, "getNext", .{ this.CLIFF }) });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn update(self: *Self) void {
        _ = self.base.update();
        _ = self.changeDirectionIfCliffReached();
    }
    

    pub fn changeDirectionIfCliffReached(self: *Self) void {
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, self.terrainEventListener.?.getList());
        const size: i32 = list.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const terrainEvent: ?*TerrainEvent = Inheritance.cast(?*TerrainEvent, Inheritance.call(list.?, "removeAt", .{ index }));
            const basicTerrainInfo: ?*BasicTerrainInfo = Inheritance.upcast(?*BasicTerrainInfo, Inheritance.receiver(terrainEvent.?, "getBasicTerrainInfo").getBasicTerrainInfo());
            const angle: ?*Angle = Inheritance.upcast(?*Angle, basicTerrainInfo.?.getAngle());
            if (Object.same(angle, self.DOWN)) {
                _ = Inheritance.receiver(self, "nextDirection").nextDirection();
                if (!Inheritance.fieldPointer(self, "isFollowLimitedByTerrain").*) {
                    _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("Following Limited"), self, String.literal("onTerrainEvent") });
                    Inheritance.fieldPointer(self, "isFollowLimitedByTerrain").* = true;
                }
            }
            }
        }
    }
};

