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
// package org.allbinary.media.graphics.geography.map

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CellPosition = @import("org/allbinary/graphics/CellPosition.zig").CellPosition;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const BasicGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory.zig").BasicGeographicMapCellPositionFactory;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactory.zig").GeographicMapCellPositionFactory;

pub const CachingGeographicMapCellPositionFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.CachingGeographicMapCellPositionFactory";
    base: BasicGeographicMapCellPositionFactory = undefined,
    

    pub fn create1(geographicMapInterface: ?*BasicGeographicMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicGeographicMapCellPositionFactory, "create1", .{ geographicMapInterface }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn createInstance(self: *Self, i_column: i32, i_row: i32, width: i32, height: i32) ?*GeographicMapCellPosition {
        const hashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, GeographicMapCellPositionFactory.getHashtable());
        const cellPositionKey: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(CellPosition, "toStringColRow", .{ i_column, i_row }));
        var cellPositionCanBeNull: ?Object = Inheritance.upcast(?Object, Inheritance.call(hashtable.?, "get", .{ cellPositionKey }));
        if (cellPositionCanBeNull == null) {
            cellPositionCanBeNull = Inheritance.upcast(@TypeOf(cellPositionCanBeNull), Inheritance.call(Inheritance.fieldPointer(self, "geographicMapCellPositionFactoryInterface").*.?, "getInstance", .{ Inheritance.fieldPointer(self, "geographicMapInterface").*, i_column, i_row, Inheritance.receiver(self, "getColumns").getColumns(), Inheritance.receiver(self, "getRows").getRows(), width, height }));
            Inheritance.fieldPointer(self, "geographicMapCellPositionArray").*[@intCast(i_row)][@intCast(i_column)] = Inheritance.cast(?*GeographicMapCellPosition, cellPositionCanBeNull);
            _ = Inheritance.call(hashtable.?, "put", .{ cellPositionKey, cellPositionCanBeNull });
        }
        return Inheritance.cast(?*GeographicMapCellPosition, cellPositionCanBeNull);
    }
};

