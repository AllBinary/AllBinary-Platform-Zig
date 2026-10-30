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
// package org.allbinary.media.graphics.geography.map.racetrack

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellTypeFactory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory.zig").GeographicMapCellTypeFactory;
const PathFindingInfo = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo.zig").PathFindingInfo;
const PathFindingNode = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingNode.zig").PathFindingNode;
const GeographicMapCellPositionFactoryInitVisitorInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInitVisitorInterface.zig").GeographicMapCellPositionFactoryInitVisitorInterface;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const RaceTrackRoadsGeographicMapCellHistoryFactory = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackRoadsGeographicMapCellHistoryFactory.zig").RaceTrackRoadsGeographicMapCellHistoryFactory;

pub const BasePathFindingInfoFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory";
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self, geographicMapInterface: ?*BasicGeographicMap, pathFindingInfo: ?*PathFindingInfo, mapArray: [][]i32) void {
        const RaceTrackGeographicMapCellPositionFactoryInitVisitor = struct {
            const Self = @This();
            pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellPositionFactoryInitVisitor";
            startLineId: i32 = 0,
            finishLineId: i32 = 0,
    // Implements GeographicMapCellPositionFactoryInitVisitorInterface

    fn initFields(this: *Self) void {
        _ = this;
                
                
    }
            

            pub fn create() *Self {
                const this = allocator.create(Self) catch unreachable;
                this.* = .{};
                this.initFields();
                const raceTrackGeographicMapCellTypeFactory: ?*GeographicMapCellTypeFactory = Inheritance.upcast(?*GeographicMapCellTypeFactory, Inheritance.receiver(Inheritance.fieldPointer(this, "geographicMapInterface").*.?, "getGeographicMapCellTypeFactory").getGeographicMapCellTypeFactory());
                this.startLineId = raceTrackGeographicMapCellTypeFactory.?.getStartType();
                this.finishLineId = raceTrackGeographicMapCellTypeFactory.?.getEndType();
                return this;
            }
            

            // throws Exception
            pub fn visit(self: *Self, tiledLayer: ?*AllBinaryTiledLayer, cellPosition: ?*GeographicMapCellPosition) void {
                const row: i32 = Inheritance.receiver(cellPosition.?, "getRow").getRow();
                const column: i32 = Inheritance.receiver(cellPosition.?, "getColumn").getColumn();
                { // try
                    const cellTypeId: i32 = Inheritance.fieldPointer(self, "mapArray").*[@intCast(row)][@intCast(column)];
                    const geographicCellType: i32 = Inheritance.call(Inheritance.fieldPointer(self, "geographicMapInterface").*.?, "getCellTypeFromMapCellTypeInt", .{ cellTypeId });
                    if (geographicCellType == self.startLineId) {
                        _ = Inheritance.call(self, "addStartPathFindingNode", .{ Inheritance.fieldPointer(self, "pathFindingInfo").*, cellPosition });
                    }
                    if (geographicCellType == self.finishLineId) {
                        if (geographicCellType == self.startLineId) {
                            _ = Inheritance.call(self, "addEndPathFindingNode", .{ Inheritance.fieldPointer(self, "pathFindingInfo").*, Inheritance.call(Inheritance.receiver(Inheritance.fieldPointer(self, "geographicMapInterface").*.?, "getGeographicMapCellPositionFactoryInterface").getGeographicMapCellPositionFactoryInterface().?, "getInstance", .{ Inheritance.fieldPointer(self, "geographicMapInterface").*, Inheritance.receiver(cellPosition.?, "getColumn").getColumn(), Inheritance.receiver(cellPosition.?, "getRow").getRow(), Inheritance.receiver(tiledLayer.?, "getColumns").getColumns(), Inheritance.receiver(tiledLayer.?, "getRows").getRows(), Inheritance.receiver(tiledLayer.?, "getCellWidth").getCellWidth(), Inheritance.receiver(tiledLayer.?, "getCellHeight").getCellHeight() }) });
                        } else {
                            _ = Inheritance.call(self, "addEndPathFindingNode", .{ Inheritance.fieldPointer(self, "pathFindingInfo").*, cellPosition });
                        }
                    }
                    const raceTrackGeographicMapCellTypeFactory: ?*GeographicMapCellTypeFactory = Inheritance.upcast(?*GeographicMapCellTypeFactory, Inheritance.receiver(Inheritance.fieldPointer(self, "geographicMapInterface").*.?, "getGeographicMapCellTypeFactory").getGeographicMapCellTypeFactory());
                    const geographicMapCellTypeFactory: ?*GeographicMapCellTypeFactory = Inheritance.upcast(?*GeographicMapCellTypeFactory, GeographicMapCellTypeFactory.getInstance());
                    if (Inheritance.call(raceTrackGeographicMapCellTypeFactory.?, "isPath", .{ Inheritance.call(geographicMapCellTypeFactory.?, "get", .{ geographicCellType }) })) {
                        _ = Inheritance.call(RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance().?, "track", .{ cellPosition });
                    } else {
                    }
                }
                // catch (Exception e):
//                     const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance()); _ = commonSeps;
//                     _ = Inheritance.call(self.logUtil.?, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ commonSeps.?.BRACKET_OPEN }).?, "appendint", .{ row }).?, "append", .{ commonSeps.?.BRACKET_CLOSE }).?, "append", .{ commonSeps.?.BRACKET_OPEN }).?, "appendint", .{ column }).?, "append", .{ String.literal("] in [") }).?, "appendint", .{ @as(i32, @intCast(Inheritance.fieldPointer(self, "mapArray").*.len)) }).?, "append", .{ commonSeps.?.BRACKET_CLOSE }).?, "append", .{ commonSeps.?.BRACKET_OPEN }).?, "appendint", .{ @as(i32, @intCast(Inheritance.fieldPointer(self, "mapArray").*[@intCast(0)].len)) }).?, "append", .{ commonSeps.?.BRACKET_CLOSE }))), self, String.literal("visit"), e });
//                     std.debug.panic("{any}", .{e});
            }
        };
        _ = Inheritance.call(Inheritance.receiver(geographicMapInterface.?, "getGeographicMapCellPositionFactory").getGeographicMapCellPositionFactory().?, "visit", .{ RaceTrackGeographicMapCellPositionFactoryInitVisitor.create() });
    }
    

    // throws Exception
    pub fn addStartPathFindingNode(self: *Self, pathFindingInfo: ?*PathFindingInfo, startGeographicMapCellPosition: ?*GeographicMapCellPosition) void {
        _ = self;
        _ = Inheritance.call(pathFindingInfo.?, "addStartPathFindingNode", .{ Inheritance.callStatic(PathFindingNode, "create2", .{ NullUtil.getInstance().?.NULL_OBJECT, startGeographicMapCellPosition }) });
    }
    

    // throws Exception
    pub fn addEndPathFindingNode(self: *Self, pathFindingInfo: ?*PathFindingInfo, endGeographicMapCellPosition: ?*GeographicMapCellPosition) void {
        _ = self;
        _ = Inheritance.call(pathFindingInfo.?, "addEndPathFindingNode", .{ Inheritance.callStatic(PathFindingNode, "create2", .{ NullUtil.getInstance().?.NULL_OBJECT, endGeographicMapCellPosition }) });
    }
    

    // throws Exception
    pub fn getInstancePathFindingInfo(self: *Self, geographicMapInterface: ?*BasicGeographicMap, graphArray: [][]i32) ?*PathFindingInfo {
        _ = geographicMapInterface;
        _ = graphArray;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};

