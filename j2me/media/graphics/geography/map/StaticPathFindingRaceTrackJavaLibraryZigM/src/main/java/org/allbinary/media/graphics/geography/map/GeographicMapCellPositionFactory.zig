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
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const BasicGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory.zig").BasicGeographicMapCellPositionFactory;
const GeographicMapCellPositionBaseFactory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPositionBaseFactory.zig").GeographicMapCellPositionBaseFactory;

pub const GeographicMapCellPositionFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory";
    base: GeographicMapCellPositionBaseFactory = undefined,
    logUtil: ?*LogUtil = null,
    var hashtable: ?*ABHashtable = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        hashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = GeographicMapCellPositionBaseFactory.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, geographicMapInterface: ?*BasicGeographicMap) ?*BasicGeographicMapCellPositionFactory {
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        const allBinaryTiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
        var geographicMapCellPositionFactoryCanBeNull: ?Object = Inheritance.upcast(?Object, Inheritance.call(GeographicMapCellPositionFactory.hashtable.?, "get", .{ Inheritance.receiver(allBinaryTiledLayer.?, "getDataId").getDataId() }));
        if (geographicMapCellPositionFactoryCanBeNull == null) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Creating GeographicMapCellPositionFactory for TileLayer: ") }).?, "appendint", .{ @as(i32, @intCast(Inheritance.receiverOf(Inheritance.receiver(allBinaryTiledLayer.?, "getDataId").getDataId().?, "intValue").intValue())) }))), self, commonStrings.?.GET_INSTANCE });
            geographicMapCellPositionFactoryCanBeNull = Inheritance.upcast(@TypeOf(geographicMapCellPositionFactoryCanBeNull), Inheritance.callStatic(BasicGeographicMapCellPositionFactory, "create1", .{ geographicMapInterface }));
            _ = Inheritance.call(GeographicMapCellPositionFactory.hashtable.?, "put", .{ Inheritance.receiver(allBinaryTiledLayer.?, "getDataId").getDataId(), geographicMapCellPositionFactoryCanBeNull });
            return Inheritance.cast(?*BasicGeographicMapCellPositionFactory, geographicMapCellPositionFactoryCanBeNull);
        } else {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Reusing GeographicMapCellPositionFactory for TileLayer: ") }).?, "appendint", .{ @as(i32, @intCast(Inheritance.receiverOf(Inheritance.receiver(allBinaryTiledLayer.?, "getDataId").getDataId().?, "intValue").intValue())) }))), self, commonStrings.?.GET_INSTANCE });
            return Inheritance.cast(?*BasicGeographicMapCellPositionFactory, geographicMapCellPositionFactoryCanBeNull);
        }
    }
    

    pub fn getHashtable() ?*ABHashtable {
        return Inheritance.upcast(?*ABHashtable, GeographicMapCellPositionFactory.hashtable);
    }
};

