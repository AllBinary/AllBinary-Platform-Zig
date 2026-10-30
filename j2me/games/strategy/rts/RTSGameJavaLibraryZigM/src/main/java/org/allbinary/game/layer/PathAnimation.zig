// 
// AllBinary Open License Version 1 
// Copyright (c) 2003 AllBinary 
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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const CanvasStrings = @import("org/allbinary/graphics/displayable/CanvasStrings.zig").CanvasStrings;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellHistory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellHistory.zig").GeographicMapCellHistory;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCompositeInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface.zig").GeographicMapCompositeInterface;
const SimpleGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory.zig").SimpleGeographicMapCellPositionFactory;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const LinePathAnimation = @import("org/allbinary/game/layer/LinePathAnimation.zig").LinePathAnimation;
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;
const WaypointBehaviorBase = @import("org/allbinary/game/layer/WaypointBehaviorBase.zig").WaypointBehaviorBase;

pub const PathAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.PathAnimation";
    base: Animation = undefined,
    logUtil: ?*LogUtil = null,
    linePathAnimation: ?*LinePathAnimation = null,
    pathFindingLayer: ?*PathFindingLayerInterface = null,
    allBinaryGameLayerManagerP: ?*AllBinaryGameLayerManager = null,
    startColor: ?*BasicColor = null,
    middleColor: ?*BasicColor = null,
    endColor: ?*BasicColor = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
        this.allBinaryGameLayerManagerP = Inheritance.upcast(?*AllBinaryGameLayerManager, AllBinaryGameLayerManager.getNullInstance());
        this.startColor = Inheritance.upcast(?*BasicColor, BasicColorFactory.getInstance().?.RED);
        this.middleColor = Inheritance.upcast(?*BasicColor, BasicColorFactory.getInstance().?.BLUE);
        this.endColor = Inheritance.upcast(?*BasicColor, BasicColorFactory.getInstance().?.GREEN);
    }
    

    pub fn create2(pathFindingLayer: ?*PathFindingLayerInterface, linePathAnimation: ?*LinePathAnimation) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Animation.create().*;
        this.initFields();
        this.pathFindingLayer = pathFindingLayer;
        this.linePathAnimation = linePathAnimation;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn setAllBinaryGameLayerManager(self: *Self, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager) void {
        self.allBinaryGameLayerManagerP = allBinaryGameLayerManager;
    }
    

    // throws Exception
    pub fn nextFrame(self: *Self) void {
        _ = self;
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = x;
        _ = y;
        { // try
            const waypointBehaviorBase: ?*WaypointBehaviorBase = Inheritance.upcast(?*WaypointBehaviorBase, Inheritance.receiver(self.pathFindingLayer.?, "getWaypointBehavior").getWaypointBehavior());
            if (waypointBehaviorBase != null) {
                const geographicMapCellHistory: ?*GeographicMapCellHistory = Inheritance.upcast(?*GeographicMapCellHistory, waypointBehaviorBase.?.getCurrentGeographicMapCellHistory());
                const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, geographicMapCellHistory.?.getTracked());
                const size: i32 = list.?.size();
                if (size > 0) {
                    const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, self.allBinaryGameLayerManagerP);
                    const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
                    const tiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
                    var geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                    var nextPoint: ?*GPoint = null;
                    var point: ?*GPoint = null;
                    const start: i32 = size - 2;
                    {
                        var index: i32 = 0;
                        while (index < size - 1) : (index += 1) {
                        if (index == start) {
                            _ = Inheritance.call(self, "setBasicColorP", .{ self.startColor });
                            _ = Inheritance.call(Inheritance.fieldPointer(self, "basicSetColorUtil").*.?, "setBasicColorP3", .{ graphics, Inheritance.receiver(self, "getBasicColorP").getBasicColorP(), Inheritance.receiver(self, "getColor").getColor() });
                        } else if (Inheritance.call(geographicMapCellHistory.?, "isVisited", .{ geographicMapCellPosition })) {
                            _ = Inheritance.call(self, "setBasicColorP", .{ self.endColor });
                            _ = Inheritance.call(Inheritance.fieldPointer(self, "basicSetColorUtil").*.?, "setBasicColorP3", .{ graphics, Inheritance.receiver(self, "getBasicColorP").getBasicColorP(), Inheritance.receiver(self, "getColor").getColor() });
                        } else {
                            _ = Inheritance.call(self, "setBasicColorP", .{ self.middleColor });
                            _ = Inheritance.call(Inheritance.fieldPointer(self, "basicSetColorUtil").*.?, "setBasicColorP3", .{ graphics, Inheritance.receiver(self, "getBasicColorP").getBasicColorP(), Inheritance.receiver(self, "getColor").getColor() });
                        }
                        geographicMapCellPosition = Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(list.?, "get", .{ index }));
                        point = Inheritance.upcast(@TypeOf(point), Inheritance.receiver(geographicMapCellPosition.?, "getMidPoint").getMidPoint());
                        geographicMapCellPosition = Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(list.?, "get", .{ index + 1 }));
                        nextPoint = Inheritance.upcast(@TypeOf(nextPoint), Inheritance.receiver(geographicMapCellPosition.?, "getMidPoint").getMidPoint());
                        _ = Inheritance.call(self.linePathAnimation.?, "paint", .{ graphics, point, nextPoint, tiledLayer });
                        }
                    }
                }
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Cleared Target"), self, CanvasStrings.getInstance().?.PAINT });
    }
};

