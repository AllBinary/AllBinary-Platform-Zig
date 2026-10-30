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
// package org.allbinary.media.graphics.geography.map.topview

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const GeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellType.zig").GeographicMapCellType;
const GeographicMapCellTypeFactory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory.zig").GeographicMapCellTypeFactory;
const RaceTrackGeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType.zig").RaceTrackGeographicMapCellType;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListS = @import("org/allbinary/util/BasicArrayListS.zig").BasicArrayListS;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const BasicTopViewGeographicMapCellType = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType";
    logUtil: ?*LogUtil = null,
    name: ?*String = null,
    cost: i32 = 0,
    types: []i32 = &.{},

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
        
    }
    

    pub fn createType(name: ?*String, @"type": i32, cost: i32) ?*BasicTopViewGeographicMapCellType {
        const types: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(BasicArrayListS, "create1", .{ 1 }));
        _ = Inheritance.call(types.?, "add", .{ @"type" });
        return Inheritance.callStatic(BasicTopViewGeographicMapCellType, "create3", .{ name, types, cost });
    }
    

    pub fn create3(name: ?*String, types: ?*BasicArrayList, cost: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const size: i32 = types.?.size();
        const typeArray: []i32 = array_N66329: { const array_N66329_array = allocator.alloc(i32, @intCast(size)) catch unreachable; @memset(array_N66329_array, 0); break :array_N66329 array_N66329_array; };
        var typeAsInteger: ?*Integer = null;
        var @"type": i32 = 0;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            typeAsInteger = Inheritance.upcast(@TypeOf(typeAsInteger), (Inheritance.cast(?*Integer, Inheritance.call(types.?, "get", .{ index }))));
            @"type" = typeAsInteger.?.intValue();
            if (Inheritance.receiverOf(GeographicMapCellTypeFactory.getInstance().?, "getGeographicMapCellTypeArray").getGeographicMapCellTypeArray()[@intCast(@"type")] == null) {
                Inheritance.callStatic(RaceTrackGeographicMapCellType, "create4", .{ name, @"type", cost, 0 });
            } else {
            }
            typeArray[@intCast(index)] = @"type";
            }
        }
        this.name = name;
        this.cost = cost;
        this.types = typeArray;
        return this;
    }
    

    pub fn isType(self: *Self, @"type": ?*GeographicMapCellType) bool {
        return Inheritance.call(self, "hasType", .{ @"type".?.getType() });
    }
    

    pub fn hasType(self: *Self, @"type": i32) bool {
        const size: i32 = @as(i32, @intCast(self.types.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            if (self.types[@intCast(index)] == @"type") {
                return true;
            }
            }
        }
        return false;
    }
    

    pub fn getTypes(self: *Self) []i32 {
        return self.types;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringMaker: ?*StringMaker = StringMaker.create();
        const size: i32 = @as(i32, @intCast(self.types.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(Inheritance.call(stringMaker.?, "appendint", .{ self.types[@intCast(index)] }).?, "append", .{ CommonSeps.getInstance().?.COMMA });
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringMaker)));
    }
};

