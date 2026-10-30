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
// package org.allbinary.game.media.graphics.geography.map.racetrack

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const RaceTrackGeographicMapInterfaceFactoryInterface = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapInterfaceFactoryInterface.zig").RaceTrackGeographicMapInterfaceFactoryInterface;
const RaceTrackRoadsGeographicMapCellHistoryFactory = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackRoadsGeographicMapCellHistoryFactory.zig").RaceTrackRoadsGeographicMapCellHistoryFactory;
const RaceTracksPathPrinter = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTracksPathPrinter.zig").RaceTracksPathPrinter;
const PathFindingInfo = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo.zig").PathFindingInfo;
const PathGenerator = @import("org/allbinary/media/graphics/geography/pathfinding/PathGenerator.zig").PathGenerator;
const System = @import("java/lang/System.zig").System;

pub const DynamicRaceTracksPathPrinter = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.media.graphics.geography.map.racetrack.DynamicRaceTracksPathPrinter";
    base: RaceTracksPathPrinter = undefined,
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = RaceTracksPathPrinter.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn printAllPaths(self: *Self, raceTrackGeographicMapInterfaceFactoryInterface: ?*RaceTrackGeographicMapInterfaceFactoryInterface, pathFindingInfo: ?*PathFindingInfo, size: i32) void {
        { // try
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, Inheritance.call(raceTrackGeographicMapInterfaceFactoryInterface.?, "getTrackInstance", .{ Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ index }) }));
                const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(PathGenerator.getInstance().?, "createList", .{ geographicMapInterface, RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance(), pathFindingInfo, 10 }));
                _ = std.debug.print("{s}\n", .{String.text(String.plus(String.literal("Track "), index))});
                _ = Inheritance.call(self, "printPaths", .{ list });
                }
            }
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.PROCESS, e });
    }
};

