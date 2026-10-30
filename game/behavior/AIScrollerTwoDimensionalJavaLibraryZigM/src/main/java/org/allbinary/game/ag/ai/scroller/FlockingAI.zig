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
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
const BasicAI = @import("org/allbinary/game/ai/BasicAI.zig").BasicAI;
const BasicGroupFactory = @import("org/allbinary/game/identification/BasicGroupFactory.zig").BasicGroupFactory;
const GameInput = @import("org/allbinary/game/input/GameInput.zig").GameInput;
const GroupLayerManagerListener = @import("org/allbinary/game/layer/identification/GroupLayerManagerListener.zig").GroupLayerManagerListener;
const WeaponLayer = @import("org/allbinary/game/layer/weapon/WeaponLayer.zig").WeaponLayer;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const MathUtil = @import("org/allbinary/logic/math/MathUtil.zig").MathUtil;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasePatrolAI = @import("org/allbinary/game/ag/ai/scroller/BasePatrolAI.zig").BasePatrolAI;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const FlockingAI = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.scroller.FlockingAI";
    base: BasicAI = undefined,
    allowedDistance: i32 = 0,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create3(hashtable: ?*ABHashtable, ownerLayerInterface: ?*AllBinaryLayer, gameInput: ?*GameInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicAI, "create2", .{ ownerLayerInterface, gameInput }).*;
        this.initFields();
        const allowedDistance: ?*Integer = Inheritance.cast(?*Integer, Inheritance.call(hashtable.?, "get", .{ BasePatrolAI.MAX_DISTANCE }));
        this.allowedDistance = allowedDistance.?.intValue();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processAI(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = allBinaryLayerManager;
        var maxDistance: i32 = 0;
        var farAllbinaryLayer: ?*AllBinaryLayer = Inheritance.upcast(?*AllBinaryLayer, AllBinaryLayer.NULL_ALLBINARY_LAYER);
        const groupLayerManagerListener: ?*GroupLayerManagerListener = Inheritance.upcast(?*GroupLayerManagerListener, GroupLayerManagerListener.getInstance());
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(groupLayerManagerListener.?, "getList", .{ BasicGroupFactory.getInstance().?.ENEMY }));
        const size: i32 = list.?.size();
        var allBinaryLayer: ?*AllBinaryLayer = null;
        var ownerLayerInterface: ?*AllBinaryLayer = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            allBinaryLayer = Inheritance.cast(?*AllBinaryLayer, Inheritance.call(list.?, "get", .{ index }));
            if (!Object.same(Inheritance.receiver(allBinaryLayer.?, "getType").getType(), WeaponLayer.getStaticType())) {
                const distance: i32 = Inheritance.call(self, "getXYDistance", .{ allBinaryLayer });
                if (distance > maxDistance) {
                    maxDistance = distance;
                    farAllbinaryLayer = allBinaryLayer;
                    if (distance > self.allowedDistance) {
                        break;
                    }
                }
            }
            }
        }
        if (maxDistance > self.allowedDistance) {
            if (!Object.same(farAllbinaryLayer, AllBinaryLayer.NULL_ALLBINARY_LAYER)) {
                ownerLayerInterface = Inheritance.upcast(@TypeOf(ownerLayerInterface), Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface());
                if (Inheritance.receiver(farAllbinaryLayer.?, "getXP").getXP() < Inheritance.receiver(ownerLayerInterface.?, "getXP").getXP()) {
                    _ = Inheritance.call(self, "processKeyAI", .{ Canvas.LEFT });
                } else if (Inheritance.receiver(farAllbinaryLayer.?, "getXP").getXP() > Inheritance.receiver(ownerLayerInterface.?, "getXP").getXP()) {
                    _ = Inheritance.call(self, "processKeyAI", .{ Canvas.RIGHT });
                } else if (Inheritance.receiver(farAllbinaryLayer.?, "getYP").getYP() > Inheritance.receiver(ownerLayerInterface.?, "getYP").getYP()) {
                    _ = Inheritance.call(self, "processKeyAI", .{ Canvas.UP });
                } else if (Inheritance.receiver(farAllbinaryLayer.?, "getYP").getYP() < Inheritance.receiver(ownerLayerInterface.?, "getYP").getYP()) {
                    _ = Inheritance.call(self, "processKeyAI", .{ Canvas.DOWN });
                }
            }
        }
    }
    

    pub fn getXYDistance(self: *Self, allBinaryLayer: ?*AllBinaryLayer) i32 {
        const ownerLayerInterface: ?*AllBinaryLayer = Inheritance.upcast(?*AllBinaryLayer, Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface());
        const xTotalDistance: i32 = (Inheritance.receiver(allBinaryLayer.?, "getXP").getXP() + Inheritance.receiver(allBinaryLayer.?, "getHalfWidth").getHalfWidth()) - (Inheritance.receiver(ownerLayerInterface.?, "getXP").getXP() + Inheritance.receiver(ownerLayerInterface.?, "getHalfWidth").getHalfWidth());
        const yTotalDistance: i32 = (Inheritance.receiver(allBinaryLayer.?, "getYP").getYP() + Inheritance.receiver(allBinaryLayer.?, "getHalfHeight").getHalfHeight()) - (Inheritance.receiver(ownerLayerInterface.?, "getYP").getYP() + Inheritance.receiver(ownerLayerInterface.?, "getHalfHeight").getHalfHeight());
        const mathUtil: ?*MathUtil = Inheritance.upcast(?*MathUtil, MathUtil.getInstance());
        const totalDistance: i32 = Inheritance.call(mathUtil.?, "abs", .{ xTotalDistance }) + Inheritance.call(mathUtil.?, "abs", .{ yTotalDistance });
        return totalDistance;
    }
};

