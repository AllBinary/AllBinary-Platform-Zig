// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.media.graphics.geography.map.topview

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const GeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellType.zig").GeographicMapCellType;
const GeographicMapCellTypeFactory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory.zig").GeographicMapCellTypeFactory;
const RaceTrackGeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType.zig").RaceTrackGeographicMapCellType;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const HashtableUtil = @import("org/allbinary/util/HashtableUtil.zig").HashtableUtil;
const BasicTopViewGeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/topview/BasicTopViewGeographicMapCellType.zig").BasicTopViewGeographicMapCellType;
const BasicTopViewGeographicMapStrings = @import("org/allbinary/media/graphics/geography/map/topview/BasicTopViewGeographicMapStrings.zig").BasicTopViewGeographicMapStrings;

pub const BasicTopViewGeographicMapCellTypeFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory";
    base: GeographicMapCellTypeFactory = undefined,
    BLOCK_CELL_TYPE: ?*BasicTopViewGeographicMapCellType = null,
    OFF_MAP_CELL_TYPE: ?*BasicTopViewGeographicMapCellType = null,
    FLOOR_CELL_TYPE: ?*BasicTopViewGeographicMapCellType = null,
    DOOR_CELL_TYPE: ?*BasicTopViewGeographicMapCellType = null,
    STAIRS_UP_CELL_TYPE: ?*BasicTopViewGeographicMapCellType = null,
    STAIRS_DOWN_CELL_TYPE: ?*BasicTopViewGeographicMapCellType = null,
    OTHER_CELL_TYPE: ?*BasicTopViewGeographicMapCellType = null,
    maxTileId: i32 = 0,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
        
        
        
    }
    

    pub fn create2(tileTypeToTileIdsMap: ?*ABHashtable, maxTileId: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = GeographicMapCellTypeFactory.create().*;
        this.initFields();
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        _ = Inheritance.call(Inheritance.fieldPointer(this, "logUtil").*.?, "putF", .{ commonStrings.?.START, this, commonStrings.?.CONSTRUCTOR });
        this.maxTileId = maxTileId;
        const basicTopViewGeographicMapStrings: ?*BasicTopViewGeographicMapStrings = Inheritance.upcast(?*BasicTopViewGeographicMapStrings, BasicTopViewGeographicMapStrings.getInstance());
        const geographicMapCellTypeFactory: ?*GeographicMapCellTypeFactory = Inheritance.upcast(?*GeographicMapCellTypeFactory, GeographicMapCellTypeFactory.getInstance());
        const geographicMapCellTypeArray: []?*GeographicMapCellType = geographicMapCellTypeFactory.?.getGeographicMapCellTypeArray();
        var @"type": i32 = 0;
        if (geographicMapCellTypeArray[@intCast(@"type")] == null) {
            Inheritance.callStatic(RaceTrackGeographicMapCellType, "create4", .{ CommonStrings.getInstance().?.UNKNOWN, @"type", 999, 0 });
        } else {
        }
        var BLOCK_CELL_TYPE: ?*BasicTopViewGeographicMapCellType = Inheritance.upcast(?*BasicTopViewGeographicMapCellType, Inheritance.callStatic(BasicTopViewGeographicMapCellType, "createType", .{ basicTopViewGeographicMapStrings.?.DEFAULT, 1, 1 }));
        var OFF_MAP_CELL_TYPE: ?*BasicTopViewGeographicMapCellType = BLOCK_CELL_TYPE;
        var FLOOR_CELL_TYPE: ?*BasicTopViewGeographicMapCellType = BLOCK_CELL_TYPE;
        var DOOR_CELL_TYPE: ?*BasicTopViewGeographicMapCellType = BLOCK_CELL_TYPE;
        var STAIRS_UP_CELL_TYPE: ?*BasicTopViewGeographicMapCellType = BLOCK_CELL_TYPE;
        var STAIRS_DOWN_CELL_TYPE: ?*BasicTopViewGeographicMapCellType = BLOCK_CELL_TYPE;
        var OTHER_CELL_TYPE: ?*BasicTopViewGeographicMapCellType = BLOCK_CELL_TYPE;
        const keyArray: []?Object = Inheritance.call(HashtableUtil.getInstance().?, "getKeysAsArray", .{ tileTypeToTileIdsMap });
        const size: i32 = @as(i32, @intCast(keyArray.len));
        var idsWithTypeList: ?*BasicArrayList = null;
        var key: ?*String = null;
        var basicPlatormGeographicMapCellType: ?*BasicTopViewGeographicMapCellType = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            key = Inheritance.cast(?*String, keyArray[@intCast(index)]);
            idsWithTypeList = Inheritance.cast(?*BasicArrayList, Inheritance.call(tileTypeToTileIdsMap.?, "get", .{ key }));
            if (Inheritance.call(key.?, "equals", .{ basicTopViewGeographicMapStrings.?.WALL })) {
                basicPlatormGeographicMapCellType = Inheritance.callStatic(BasicTopViewGeographicMapCellType, "create3", .{ basicTopViewGeographicMapStrings.?.WALL, idsWithTypeList, 1000 });
                BLOCK_CELL_TYPE = basicPlatormGeographicMapCellType;
            } else if (Inheritance.call(key.?, "equals", .{ basicTopViewGeographicMapStrings.?.OFF_MAP })) {
                basicPlatormGeographicMapCellType = Inheritance.callStatic(BasicTopViewGeographicMapCellType, "create3", .{ basicTopViewGeographicMapStrings.?.OFF_MAP, idsWithTypeList, 1001 });
                OFF_MAP_CELL_TYPE = basicPlatormGeographicMapCellType;
            } else if (Inheritance.call(key.?, "equals", .{ basicTopViewGeographicMapStrings.?.FLOOR })) {
                basicPlatormGeographicMapCellType = Inheritance.callStatic(BasicTopViewGeographicMapCellType, "create3", .{ basicTopViewGeographicMapStrings.?.FLOOR, idsWithTypeList, 1 });
                FLOOR_CELL_TYPE = basicPlatormGeographicMapCellType;
            } else if (Inheritance.call(key.?, "equals", .{ basicTopViewGeographicMapStrings.?.DOOR })) {
                basicPlatormGeographicMapCellType = Inheritance.callStatic(BasicTopViewGeographicMapCellType, "create3", .{ basicTopViewGeographicMapStrings.?.DOOR, idsWithTypeList, 1 });
                DOOR_CELL_TYPE = basicPlatormGeographicMapCellType;
            } else if (Inheritance.call(key.?, "equals", .{ basicTopViewGeographicMapStrings.?.STAIRS_UP })) {
                basicPlatormGeographicMapCellType = Inheritance.callStatic(BasicTopViewGeographicMapCellType, "create3", .{ basicTopViewGeographicMapStrings.?.STAIRS_UP, idsWithTypeList, 1 });
                STAIRS_UP_CELL_TYPE = basicPlatormGeographicMapCellType;
            } else if (Inheritance.call(key.?, "equals", .{ basicTopViewGeographicMapStrings.?.STAIRS_DOWN })) {
                basicPlatormGeographicMapCellType = Inheritance.callStatic(BasicTopViewGeographicMapCellType, "create3", .{ basicTopViewGeographicMapStrings.?.STAIRS_DOWN, idsWithTypeList, 1 });
                STAIRS_DOWN_CELL_TYPE = basicPlatormGeographicMapCellType;
            } else if (Inheritance.call(key.?, "equals", .{ basicTopViewGeographicMapStrings.?.OTHER })) {
                basicPlatormGeographicMapCellType = Inheritance.callStatic(BasicTopViewGeographicMapCellType, "create3", .{ basicTopViewGeographicMapStrings.?.OTHER, idsWithTypeList, 1 });
                OTHER_CELL_TYPE = basicPlatormGeographicMapCellType;
            }
            }
        }
        this.BLOCK_CELL_TYPE = BLOCK_CELL_TYPE;
        this.OFF_MAP_CELL_TYPE = OFF_MAP_CELL_TYPE;
        this.FLOOR_CELL_TYPE = FLOOR_CELL_TYPE;
        this.DOOR_CELL_TYPE = DOOR_CELL_TYPE;
        this.STAIRS_UP_CELL_TYPE = STAIRS_UP_CELL_TYPE;
        this.STAIRS_DOWN_CELL_TYPE = STAIRS_DOWN_CELL_TYPE;
        this.OTHER_CELL_TYPE = OTHER_CELL_TYPE;
        @"type" = this.maxTileId - 1;
        if (geographicMapCellTypeArray[@intCast(@"type")] == null) {
            Inheritance.callStatic(RaceTrackGeographicMapCellType, "create4", .{ commonStrings.?.START, @"type", 1, 0 });
        } else {
        }
        @"type" = this.maxTileId - 2;
        if (geographicMapCellTypeArray[@intCast(@"type")] == null) {
            Inheritance.callStatic(RaceTrackGeographicMapCellType, "create4", .{ commonStrings.?.START, @"type", 1, 0 });
        } else {
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getStartType(self: *Self) i32 {
        return self.maxTileId - 1;
    }
    

    pub fn getEndType(self: *Self) i32 {
        return self.maxTileId - 2;
    }
    

    pub fn getEmptyType(self: *Self) i32 {
        return self.FLOOR_CELL_TYPE.?.getTypes()[@intCast(0)];
    }
    

    pub fn isPath(self: *Self, cellType: ?*GeographicMapCellType) bool {
        if (Inheritance.call(self.FLOOR_CELL_TYPE.?, "isType", .{ cellType })) {
            return true;
        }
        return false;
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("key: WALL/BLOCK_CELL_TYPE: ") }).?, "append", .{ Object.toString(Object.of(self.BLOCK_CELL_TYPE)) }).?, "append", .{ String.literal("key: FLOOR_CELL_TYPE: ") }).?, "append", .{ Object.toString(Object.of(self.FLOOR_CELL_TYPE)) }).?, "append", .{ String.literal("key: OTHER_CELL_TYPE: ") }).?, "append", .{ Object.toString(Object.of(self.OTHER_CELL_TYPE)) }).?, "append", .{ String.literal("key: OFF_MAP_CELL_TYPE: ") }).?, "append", .{ Object.toString(Object.of(self.OFF_MAP_CELL_TYPE)) }).?, "append", .{ String.literal("key: DOOR_CELL_TYPE: ") }).?, "append", .{ Object.toString(Object.of(self.DOOR_CELL_TYPE)) }).?, "append", .{ String.literal("key: STAIRS_DOWN_CELL_TYPE: ") }).?, "append", .{ Object.toString(Object.of(self.STAIRS_DOWN_CELL_TYPE)) }).?, "append", .{ String.literal("key: STAIRS_UP_CELL_TYPE: ") }).?, "append", .{ Object.toString(Object.of(self.STAIRS_UP_CELL_TYPE)) }))));
    }
};

