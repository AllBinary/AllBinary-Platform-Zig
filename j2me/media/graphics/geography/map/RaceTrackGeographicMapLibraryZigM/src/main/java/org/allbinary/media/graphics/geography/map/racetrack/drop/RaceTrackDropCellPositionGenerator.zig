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
// package org.allbinary.media.graphics.geography.map.racetrack.drop

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellHistory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellHistory.zig").GeographicMapCellHistory;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellTypeFactory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory.zig").GeographicMapCellTypeFactory;
const BaseDropCellPositionGenerator = @import("org/allbinary/media/graphics/geography/map/drop/BaseDropCellPositionGenerator.zig").BaseDropCellPositionGenerator;
const BaseRaceTrackGeographicMap = @import("org/allbinary/media/graphics/geography/map/racetrack/BaseRaceTrackGeographicMap.zig").BaseRaceTrackGeographicMap;
const NullRaceTrackGeographicMap = @import("org/allbinary/media/graphics/geography/map/racetrack/NullRaceTrackGeographicMap.zig").NullRaceTrackGeographicMap;
const RaceTrackGeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType.zig").RaceTrackGeographicMapCellType;
const RaceTrackGeographicMapCellTypeFactory = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellTypeFactory.zig").RaceTrackGeographicMapCellTypeFactory;
const RaceTrackGeographicMapInterface = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapInterface.zig").RaceTrackGeographicMapInterface;
const RaceTrackRoadsGeographicMapCellHistoryFactory = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackRoadsGeographicMapCellHistoryFactory.zig").RaceTrackRoadsGeographicMapCellHistoryFactory;
const GameTickTimeDelayHelperFactory = @import("org/allbinary/time/GameTickTimeDelayHelperFactory.zig").GameTickTimeDelayHelperFactory;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;

pub const RaceTrackDropCellPositionGenerator = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator";
    base: BaseDropCellPositionGenerator = undefined,
    list: ?*BasicArrayList = null,
    timeDelayHelper: ?*TimeDelayHelper = null,
    STRAIGHTAWAY: i32 = 0,
    raceTrackGeographicMap: ?*RaceTrackGeographicMapInterface = null,
    raceTrackGeographicMapCellTypeFactory: ?*GeographicMapCellTypeFactory = null,
    basicArrayListUtil: ?*BasicArrayListUtil = null,

    fn initFields(this: *Self) void {
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        
        this.STRAIGHTAWAY = 4;
        this.raceTrackGeographicMap = Inheritance.upcast(?*RaceTrackGeographicMapInterface, NullRaceTrackGeographicMap.NULL_RACE_TRACK_GEOGRAPHIC_MAP);
        this.raceTrackGeographicMapCellTypeFactory = Inheritance.upcast(?*GeographicMapCellTypeFactory, GeographicMapCellTypeFactory.getInstance());
        this.basicArrayListUtil = Inheritance.upcast(?*BasicArrayListUtil, BasicArrayListUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BaseDropCellPositionGenerator.create().*;
        this.initFields();
        this.timeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 10000 });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self) void {
        _ = self.list.?.clear();
    }
    

    // throws Exception
    pub fn isDropAllowedAt(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) bool {
        const raceTrackGeographicMapCellType: ?*RaceTrackGeographicMapCellType = Inheritance.cast(?*RaceTrackGeographicMapCellType, Inheritance.call(self.raceTrackGeographicMap.?, "getCellTypeAt", .{ geographicMapCellPosition }));
        const raceTrackGeographicMapCellTypeFactory: ?*RaceTrackGeographicMapCellTypeFactory = Inheritance.cast(?*RaceTrackGeographicMapCellTypeFactory, self.raceTrackGeographicMapCellTypeFactory);
        if (Object.same(raceTrackGeographicMapCellType, raceTrackGeographicMapCellTypeFactory.?.HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE) or Object.same(raceTrackGeographicMapCellType, raceTrackGeographicMapCellTypeFactory.?.VERTICAL_STRAIGHT_ROAD_CELL_TYPE)) {
            return true;
        }
        return false;
    }
    

    // throws Exception
    pub fn update(self: *Self, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager, geographicMapInterface: ?*BasicGeographicMap) void {
        _ = self.init();
        const baseRaceTrackGeographicMap: ?*BaseRaceTrackGeographicMap = Inheritance.cast(?*BaseRaceTrackGeographicMap, geographicMapInterface);
        self.raceTrackGeographicMap = Inheritance.upcast(@TypeOf(self.raceTrackGeographicMap), baseRaceTrackGeographicMap);
        self.raceTrackGeographicMapCellTypeFactory = Inheritance.cast(?*RaceTrackGeographicMapCellTypeFactory, Inheritance.receiver(baseRaceTrackGeographicMap.?, "getGeographicMapCellTypeFactory").getGeographicMapCellTypeFactory());
        const roadGeographicMapCellHistory: ?*GeographicMapCellHistory = Inheritance.upcast(?*GeographicMapCellHistory, RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance());
        const trackedList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, roadGeographicMapCellHistory.?.getTracked());
        var geographicMapCellPosition: ?*GeographicMapCellPosition = null;
        const lastIndex: i32 = trackedList.?.size() - 1;
        var total: i32 = 0;
        var ahead: i32 = 0;
        {
            var index: i32 = lastIndex;
            while (index > 0) : (index -= 1) {
            geographicMapCellPosition = Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(trackedList.?, "get", .{ index }));
            total = 0;
            ahead = index;
            while (Inheritance.call(self, "isDropAllowedAt", .{ Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(trackedList.?, "get", .{ ahead })) })) {
                total += 1;
                if (total > self.STRAIGHTAWAY) {
                    _ = Inheritance.call(self.list.?, "add", .{ geographicMapCellPosition });
                    break;
                }
                ahead += 1;
                if (ahead > lastIndex) {
                    break;
                }
            }
            }
        }
        const size: i32 = self.list.?.size();
        {
            var index: i32 = size - 1;
            while (index >= 0) : (index -= 1) {
            _ = Inheritance.call(self, "drop", .{ allBinaryGameLayerManager, index });
            }
        }
    }
    

    // throws Exception
    pub fn processTick(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        if (Inheritance.call(self.timeDelayHelper.?, "isTime", .{ GameTickTimeDelayHelperFactory.getInstance().?.startTime })) {
            const index: i32 = Inheritance.call(self.basicArrayListUtil.?, "getRandomIndex", .{ self.list });
            _ = Inheritance.call(self, "drop", .{ allBinaryLayerManager, index });
        }
    }
    

    // throws Exception
    pub fn drop(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager, index: i32) void {
        _ = allBinaryLayerManager;
        _ = index;
        _ = self;
        std.debug.panic("{any}", .{exception: { _ = CommonStrings.getInstance().?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
};

