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
// package org.allbinary.media.graphics.geography.map.platform

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Enumeration = @import("java/util/Enumeration.zig").Enumeration;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const GeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellType.zig").GeographicMapCellType;
const GeographicMapCellTypeFactory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory.zig").GeographicMapCellTypeFactory;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const EnumerationUtil = @import("org/allbinary/util/EnumerationUtil.zig").EnumerationUtil;
const BasicPlatormGeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/platform/BasicPlatormGeographicMapCellType.zig").BasicPlatormGeographicMapCellType;

pub const BasicPlatormGeographicMapCellTypeFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellTypeFactory";
    base: GeographicMapCellTypeFactory = undefined,
    enumerationUtil: ?*EnumerationUtil = null,
    BLOCK_CELL_TYPE: ?*BasicPlatormGeographicMapCellType = null,
    JUMP_THRU_CELL_TYPE: ?*BasicPlatormGeographicMapCellType = null,
    LADDER_CELL_TYPE: ?*BasicPlatormGeographicMapCellType = null,
    maxTileId: i32 = 0,

    fn initFields(this: *Self) void {
        this.enumerationUtil = Inheritance.upcast(?*EnumerationUtil, EnumerationUtil.getInstance());
        
        
        
        
    }
    

    pub fn create2(tileTypeToTileIdsMap: ?*ABHashtable, maxTileId: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = GeographicMapCellTypeFactory.create().*;
        this.initFields();
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        _ = Inheritance.call(Inheritance.fieldPointer(this, "logUtil").*.?, "putF", .{ commonStrings.?.START, this, commonStrings.?.INIT });
        this.maxTileId = maxTileId;
        Inheritance.callStatic(GeographicMapCellType, "create2", .{ 0, 0 });
        var BLOCK_CELL_TYPE: ?*BasicPlatormGeographicMapCellType = Inheritance.upcast(?*BasicPlatormGeographicMapCellType, Inheritance.callStatic(BasicPlatormGeographicMapCellType, "createType", .{ 1 }));
        var JUMP_THRU_CELL_TYPE: ?*BasicPlatormGeographicMapCellType = BLOCK_CELL_TYPE;
        var LADDER_CELL_TYPE: ?*BasicPlatormGeographicMapCellType = BLOCK_CELL_TYPE;
        const PLATFORM: ?*String = String.literal("Platform");
        const JUMP_TRHU: ?*String = String.literal("JumpThru");
        const LADDER: ?*String = String.literal("Ladder");
        const enumeration: ?*Enumeration = Inheritance.upcast(?*Enumeration, Inheritance.receiver(tileTypeToTileIdsMap.?, "keys").keys());
        var idsWithTypeList: ?*BasicArrayList = null;
        var key: ?*String = null;
        var basicPlatormGeographicMapCellType: ?*BasicPlatormGeographicMapCellType = null;
        while (Inheritance.call(this.enumerationUtil.?, "hasMoreElements", .{ enumeration })) {
            key = Inheritance.cast(?*String, Inheritance.call(this.enumerationUtil.?, "nextElement", .{ enumeration }));
            _ = Inheritance.call(Inheritance.fieldPointer(this, "logUtil").*.?, "putF", .{ key, this, commonStrings.?.INIT });
            idsWithTypeList = Inheritance.cast(?*BasicArrayList, Inheritance.call(tileTypeToTileIdsMap.?, "get", .{ key }));
            basicPlatormGeographicMapCellType = Inheritance.callStatic(BasicPlatormGeographicMapCellType, "create1", .{ idsWithTypeList });
            if (Inheritance.call(key.?, "equals", .{ PLATFORM })) {
                BLOCK_CELL_TYPE = basicPlatormGeographicMapCellType;
            }
            if (Inheritance.call(key.?, "equals", .{ JUMP_TRHU })) {
                JUMP_THRU_CELL_TYPE = basicPlatormGeographicMapCellType;
            }
            if (Inheritance.call(key.?, "equals", .{ LADDER })) {
                LADDER_CELL_TYPE = basicPlatormGeographicMapCellType;
            }
        }
        this.BLOCK_CELL_TYPE = BLOCK_CELL_TYPE;
        this.JUMP_THRU_CELL_TYPE = JUMP_THRU_CELL_TYPE;
        this.LADDER_CELL_TYPE = LADDER_CELL_TYPE;
        Inheritance.callStatic(GeographicMapCellType, "create2", .{ this.maxTileId - 1, 0 });
        Inheritance.callStatic(GeographicMapCellType, "create2", .{ this.maxTileId - 2, 0 });
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
        _ = self;
        return 0;
    }
    

    pub fn isPath(self: *Self, cellType: ?*GeographicMapCellType) bool {
        _ = self;
        if (cellType.?.getType() == 0) {
            return true;
        }
        return false;
    }
};

