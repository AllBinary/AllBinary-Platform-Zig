// 
// AllBinary Open License Version 1 
// Copyright (c) 2006 AllBinary 
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
// package org.allbinary.game.layer.unit

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
const SteeringVisitor = @import("org/allbinary/game/layer/SteeringVisitor.zig").SteeringVisitor;
const AdvancedRTSGameLayer = @import("org/allbinary/game/layer/AdvancedRTSGameLayer.zig").AdvancedRTSGameLayer;
const CollidableCompositeLayer = @import("org/allbinary/game/layer/CollidableCompositeLayer.zig").CollidableCompositeLayer;
const CollidableRTSBehavior = @import("org/allbinary/game/layer/CollidableRTSBehavior.zig").CollidableRTSBehavior;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const GameKeyEventFactory = @import("org/allbinary/game/input/event/GameKeyEventFactory.zig").GameKeyEventFactory;
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const TiledLayerUtil = @import("org/allbinary/game/layer/TiledLayerUtil.zig").TiledLayerUtil;
const LayerPartialCellPositionsUtil = @import("org/allbinary/game/layer/geographic/map/LayerPartialCellPositionsUtil.zig").LayerPartialCellPositionsUtil;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCompositeInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface.zig").GeographicMapCompositeInterface;
const DropCellPositionHistory = @import("org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory.zig").DropCellPositionHistory;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const UnitLayer = @import("org/allbinary/game/layer/unit/UnitLayer.zig").UnitLayer;

pub const CollidableUnitBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.unit.CollidableUnitBehavior";
    base: CollidableRTSBehavior = undefined,
    layerPartialCellPositionsUtil: ?*LayerPartialCellPositionsUtil = null,
    simpleSteeringVisitor: ?*SimpleSteeringVisitor = null,

    fn initFields(this: *Self) void {
        this.layerPartialCellPositionsUtil = Inheritance.upcast(?*LayerPartialCellPositionsUtil, LayerPartialCellPositionsUtil.getInstance());
        this.simpleSteeringVisitor = SimpleSteeringVisitor.create();
    }
    

    pub fn create1(collidable: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CollidableRTSBehavior, "create1", .{ collidable }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn collideNone(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collidableInterfaceCompositeInterface: ?*CollidableCompositeLayer) void {
        _ = Inheritance.call(self, "chase", .{ ownerLayer, collidableInterfaceCompositeInterface });
        const rtsLayer: ?*AdvancedRTSGameLayer = Inheritance.cast(?*AdvancedRTSGameLayer, collidableInterfaceCompositeInterface);
        if (Object.same(Inheritance.receiver(rtsLayer.?, "getType").getType(), UnitLayer.getStaticType())) {
            _ = Inheritance.call(self, "collideUnit", .{ ownerLayer, Inheritance.cast(?*UnitLayer, rtsLayer) });
        }
    }
    

    // throws Exception
    pub fn steer(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collidableInterfaceCompositeInterface: ?*CollidableCompositeLayer) bool {
        _ = self;
        const ownerUnitLayer: ?*UnitLayer = Inheritance.cast(?*UnitLayer, ownerLayer);
        const unitLayer: ?*UnitLayer = Inheritance.cast(?*UnitLayer, collidableInterfaceCompositeInterface);
        const angleInfo2: ?*AngleInfo = Inheritance.upcast(?*AngleInfo, Inheritance.receiverOf(Inheritance.receiver(unitLayer.?, "getRotationAnimationInterface").getRotationAnimationInterface().?, "getAngleInfoP").getAngleInfoP());
        const angleInfo: ?*AngleInfo = Inheritance.upcast(?*AngleInfo, Inheritance.receiverOf(Inheritance.receiver(ownerUnitLayer.?, "getRotationAnimationInterface").getRotationAnimationInterface().?, "getAngleInfoP").getAngleInfoP());
        const angle: i32 = angleInfo.?.getAngle() - angleInfo2.?.getAngle();
        if (angle < 90 or angle > 270) {
            return true;
        } else if (angle >= 90 or angle <= 270) {
            _ = Inheritance.call(Inheritance.receiver(ownerUnitLayer.?, "getGameKeyEventList").getGameKeyEventList().?, "add", .{ Inheritance.call(GameKeyEventFactory.getInstance().?, "getInstanceForKey", .{ ownerUnitLayer, Canvas.RIGHT }) });
            return false;
        }
        std.debug.panic("{any}", .{exception: { _ = String.literal("Error"); break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn chase(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collidableInterfaceCompositeInterface: ?*CollidableCompositeLayer) void {
        const rtsLayer: ?*AdvancedRTSGameLayer = Inheritance.cast(?*AdvancedRTSGameLayer, collidableInterfaceCompositeInterface);
        if (Object.same(Inheritance.receiver(rtsLayer.?, "getType").getType(), UnitLayer.getStaticType())) {
            if (!Inheritance.call(self.simpleSteeringVisitor.?.getList().?, "contains", .{ collidableInterfaceCompositeInterface })) {
                _ = Inheritance.call(self.simpleSteeringVisitor.?.getList().?, "add", .{ collidableInterfaceCompositeInterface });
            }
            const ownerUnitLayer: ?*UnitLayer = Inheritance.cast(?*UnitLayer, ownerLayer);
            const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(Inheritance.receiver(ownerUnitLayer.?, "getUnitWaypointBehavior").getUnitWaypointBehavior().?, "getSteeringVisitorList").getSteeringVisitorList());
            if (!Inheritance.call(list.?, "contains", .{ self.simpleSteeringVisitor })) {
                _ = Inheritance.call(list.?, "add", .{ self.simpleSteeringVisitor });
            }
        }
    }
    

    // throws Exception
    pub fn collideUnit(self: *Self, ownerLayer: ?*CollidableCompositeLayer, unitLayer: ?*UnitLayer) void {
        const ownerUnitLayer: ?*UnitLayer = Inheritance.cast(?*UnitLayer, ownerLayer);
        const partialPositionList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, UnitLayer.getPartialpositionlist());
        const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, ownerUnitLayer.?.allBinaryGameLayerManagerP);
        const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
        const basicGeographicMap: ?*BasicGeographicMap = geographicMapInterface;
        const dropCellPositionHistory: ?*DropCellPositionHistory = Inheritance.upcast(?*DropCellPositionHistory, DropCellPositionHistory.getInstance());
        const tiledLayerUtil: ?*TiledLayerUtil = Inheritance.upcast(?*TiledLayerUtil, TiledLayerUtil.getInstance());
        const tiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(basicGeographicMap.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
        if (Inheritance.receiver(ownerLayer.?, "getXP").getXP() < Inheritance.receiver(unitLayer.?, "getXP").getXP() and Inheritance.receiver(ownerLayer.?, "getX2").getX2() > Inheritance.receiver(unitLayer.?, "getXP").getXP()) {
            const diff: i32 = Inheritance.receiver(ownerLayer.?, "getWidth").getWidth() + 1;
            _ = Inheritance.call(self.layerPartialCellPositionsUtil.?, "getAllDXY", .{ basicGeographicMap, ownerLayer, -diff, 0, partialPositionList });
            if (!Inheritance.call(dropCellPositionHistory.?, "anyCellPositionWithDrop", .{ partialPositionList })) {
                var x: i32 = Inheritance.receiver(unitLayer.?, "getXP").getXP() - diff;
                var y: i32 = Inheritance.receiver(ownerLayer.?, "getYP").getYP();
                x = Inheritance.call(tiledLayerUtil.?, "keepOnMapX", .{ tiledLayer, x, Inheritance.receiver(ownerLayer.?, "getWidth").getWidth() });
                y = Inheritance.call(tiledLayerUtil.?, "keepOnMapY", .{ tiledLayer, y, Inheritance.receiver(ownerLayer.?, "getHeight").getHeight() });
                _ = Inheritance.call(ownerLayer.?, "setPosition", .{ x, y, Inheritance.receiver(ownerLayer.?, "getZP").getZP() });
            }
            _ = Inheritance.call(self.layerPartialCellPositionsUtil.?, "getAllDXY", .{ basicGeographicMap, unitLayer, diff, 0, partialPositionList });
            if (!Inheritance.call(dropCellPositionHistory.?, "anyCellPositionWithDrop", .{ partialPositionList })) {
                var x: i32 = Inheritance.receiver(unitLayer.?, "getXP").getXP() + diff;
                var y: i32 = Inheritance.receiver(unitLayer.?, "getYP").getYP();
                x = Inheritance.call(tiledLayerUtil.?, "keepOnMapX", .{ tiledLayer, x, Inheritance.receiver(unitLayer.?, "getWidth").getWidth() });
                y = Inheritance.call(tiledLayerUtil.?, "keepOnMapY", .{ tiledLayer, y, Inheritance.receiver(unitLayer.?, "getHeight").getHeight() });
                _ = Inheritance.call(unitLayer.?, "setPosition", .{ x, y, Inheritance.receiver(unitLayer.?, "getZP").getZP() });
            }
        }
        if (Inheritance.receiver(ownerLayer.?, "getYP").getYP() < Inheritance.receiver(unitLayer.?, "getYP").getYP() and Inheritance.receiver(ownerLayer.?, "getY2").getY2() > Inheritance.receiver(unitLayer.?, "getYP").getYP()) {
            const diff: i32 = Inheritance.receiver(ownerLayer.?, "getHeight").getHeight() + 1;
            _ = Inheritance.call(self.layerPartialCellPositionsUtil.?, "getAllDXY", .{ basicGeographicMap, ownerLayer, 0, -diff, partialPositionList });
            if (!Inheritance.call(dropCellPositionHistory.?, "anyCellPositionWithDrop", .{ partialPositionList })) {
                var x: i32 = Inheritance.receiver(ownerLayer.?, "getXP").getXP();
                var y: i32 = Inheritance.receiver(unitLayer.?, "getYP").getYP() - diff;
                x = Inheritance.call(tiledLayerUtil.?, "keepOnMapX", .{ tiledLayer, x, Inheritance.receiver(ownerLayer.?, "getWidth").getWidth() });
                y = Inheritance.call(tiledLayerUtil.?, "keepOnMapY", .{ tiledLayer, y, Inheritance.receiver(ownerLayer.?, "getHeight").getHeight() });
                _ = Inheritance.call(ownerLayer.?, "setPosition", .{ x, y, Inheritance.receiver(ownerLayer.?, "getZP").getZP() });
            }
            _ = Inheritance.call(self.layerPartialCellPositionsUtil.?, "getAllDXY", .{ basicGeographicMap, unitLayer, 0, diff, partialPositionList });
            if (!Inheritance.call(dropCellPositionHistory.?, "anyCellPositionWithDrop", .{ partialPositionList })) {
                var x: i32 = Inheritance.receiver(unitLayer.?, "getXP").getXP();
                var y: i32 = Inheritance.receiver(unitLayer.?, "getYP").getYP() + diff;
                x = Inheritance.call(tiledLayerUtil.?, "keepOnMapX", .{ tiledLayer, x, Inheritance.receiver(unitLayer.?, "getWidth").getWidth() });
                y = Inheritance.call(tiledLayerUtil.?, "keepOnMapY", .{ tiledLayer, y, Inheritance.receiver(unitLayer.?, "getHeight").getHeight() });
                _ = Inheritance.call(unitLayer.?, "setPosition", .{ x, y, Inheritance.receiver(unitLayer.?, "getZP").getZP() });
            }
        }
    }
    pub const SimpleSteeringVisitor = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.game.layer.unit.SimpleSteeringVisitor";
        base: SteeringVisitor = undefined,

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = SteeringVisitor.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
        

        pub fn visit(self: *Self, anyType: ?Object) ?Object {
            const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
            { // try
                const ownerLayer: ?*CollidableCompositeLayer = Inheritance.cast(?*CollidableCompositeLayer, anyType);
                if (Inheritance.receiverOf(Inheritance.receiver(self, "getList").getList().?, "size").size() > 0) {
                    const allbinaryLayer: ?*CollidableCompositeLayer = Inheritance.cast(?*CollidableCompositeLayer, Inheritance.call(Inheritance.receiver(self, "getList").getList().?, "get", .{ 0 }));
                    const clear: bool = Inheritance.call(self, "steer", .{ ownerLayer, allbinaryLayer });
                    if (clear) {
                        _ = Inheritance.receiverOf(Inheritance.receiver(self, "getList").getList().?, "clear").clear();
                        return Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
                    }
                    return Inheritance.upcast(?Object, BooleanFactory.getInstance().?.TRUE);
                }
                return Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
            }
            // catch (Exception e):
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("visit"), e });
//                 return Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
        }
    };
};

