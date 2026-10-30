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
// package org.allbinary.media.graphics.geography.pathfinding

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const CellPosition = @import("org/allbinary/graphics/CellPosition.zig").CellPosition;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const BasicGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory.zig").BasicGeographicMapCellPositionFactory;
const GeographicMapCellHistory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellHistory.zig").GeographicMapCellHistory;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const PathData = @import("org/allbinary/media/graphics/geography/map/PathData.zig").PathData;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const PathCacheFactory = @import("org/allbinary/media/graphics/geography/pathfinding/PathCacheFactory.zig").PathCacheFactory;
const PathFindingInfo = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo.zig").PathFindingInfo;
const PathGeneratorInterface = @import("org/allbinary/media/graphics/geography/pathfinding/PathGeneratorInterface.zig").PathGeneratorInterface;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const StaticPathGenerator = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.pathfinding.StaticPathGenerator";
    pub const java_interfaces = .{ PathGeneratorInterface };
    logUtil: ?*LogUtil = null,
    basicArrayListUtil: ?*BasicArrayListUtil = null,
    // Implements PathGeneratorInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.basicArrayListUtil = Inheritance.upcast(?*BasicArrayListUtil, BasicArrayListUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.literal("Using Static Path Finding"), this, CommonStrings.getInstance().?.CONSTRUCTOR });
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self, geographicMapInterface: ?Object, totalPaths: i32) void {
        _ = geographicMapInterface;
        _ = totalPaths;
        _ = self;
    }
    

    // throws Exception
    pub fn getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList(self: *Self, geographicMapCellPositionFactory: ?*BasicGeographicMapCellPositionFactory, pathList: ?*BasicArrayList) ?*BasicArrayList {
        _ = self;
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const size: i32 = pathList.?.size();
        var basicGeographicMapCellPosition: ?*CellPosition = null;
        var geographicMapCellPosition: ?*GeographicMapCellPosition = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            basicGeographicMapCellPosition = Inheritance.cast(?*CellPosition, Inheritance.call(pathList.?, "get", .{ index }));
            geographicMapCellPosition = Inheritance.upcast(@TypeOf(geographicMapCellPosition), Inheritance.call(geographicMapCellPositionFactory.?, "getAt", .{ Inheritance.receiver(basicGeographicMapCellPosition.?, "getColumn").getColumn(), Inheritance.receiver(basicGeographicMapCellPosition.?, "getRow").getRow() }));
            _ = Inheritance.call(list.?, "add", .{ geographicMapCellPosition });
            }
        }
        return list;
    }
    

    // throws Exception
    pub fn createList(self: *Self, geographicMapInterface: ?*BasicGeographicMap, geographicMapCellHistory: ?*GeographicMapCellHistory, pathFindingInfo: ?*PathFindingInfo, totalPaths: i32) ?*BasicArrayList {
        _ = geographicMapCellHistory;
        _ = pathFindingInfo;
        _ = totalPaths;
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        { // try
            const pathCacheFactory: ?*PathCacheFactory = Inheritance.upcast(?*PathCacheFactory, PathCacheFactory.getInstance());
            const mapIdInteger: ?*Integer = Inheritance.upcast(?*Integer, Inheritance.receiverOf(geographicMapInterface.?.getAllBinaryTiledLayer().?, "getDataId").getDataId());
            var list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(pathCacheFactory.?, "getOrCreate", .{ mapIdInteger }));
            if (Object.same(list, self.basicArrayListUtil.?.getImmutableInstance())) {
                list = Inheritance.upcast(@TypeOf(list), BasicArrayListD.create());
                const smallIntegerSingletonFactory: ?*SmallIntegerSingletonFactory = Inheritance.upcast(?*SmallIntegerSingletonFactory, SmallIntegerSingletonFactory.getInstance());
                const geographicMapCellPositionFactory: ?*BasicGeographicMapCellPositionFactory = Inheritance.upcast(?*BasicGeographicMapCellPositionFactory, geographicMapInterface.?.getGeographicMapCellPositionFactory());
                const id: i32 = PathData.getInstance().?.OFFSET + mapIdInteger.?.intValue();
                const basicList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(pathCacheFactory.?, "getOrCreate", .{ Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ id }) }));
                const size: i32 = basicList.?.size();
                var pathList: ?*BasicArrayList = null;
                {
                    var index: i32 = 0;
                    while (index < size) : (index += 1) {
                    pathList = Inheritance.upcast(@TypeOf(pathList), Inheritance.call(self, "getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList", .{ geographicMapCellPositionFactory, Inheritance.cast(?*BasicArrayList, Inheritance.call(basicList.?, "get", .{ index })) }));
                    _ = Inheritance.call(list.?, "add", .{ pathList });
                    }
                }
                _ = Inheritance.call(pathCacheFactory.?, "add", .{ mapIdInteger, list });
                _ = Inheritance.call(pathCacheFactory.?, "remove", .{ Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ id }) });
            }
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Using Cached Path(s): ") }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ list }) }))), self, commonStrings.?.GET_INSTANCE });
            return list;
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.GET_INSTANCE, e });
//             return Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
};

