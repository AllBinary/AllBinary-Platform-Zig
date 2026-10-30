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
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const GeographicMapCellTypeFactory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory.zig").GeographicMapCellTypeFactory;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const GeographicMapCellType = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.GeographicMapCellType";
    logUtil: ?*LogUtil = null,
    @"type": i32 = 0,
    pub var NULL_GEOGRAPHIC_MAP_CELL_TYPE_ARRAY: []?*GeographicMapCellType = undefined;
    pub var NULL_GEOGRAPHIC_MAP_CELL_TYPE: ?*GeographicMapCellType = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_GEOGRAPHIC_MAP_CELL_TYPE_ARRAY = array_N65681: { const array_N65681_array = allocator.alloc(?*GeographicMapCellType, @intCast(0)) catch unreachable; @memset(array_N65681_array, null); break :array_N65681 array_N65681_array; };
        NULL_GEOGRAPHIC_MAP_CELL_TYPE = Inheritance.callStatic(GeographicMapCellType, "create2", .{ @as(i32, std.math.minInt(i32)), 0 });
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create2(@"type": i32, reset: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.@"type" = @"type";
        if (@"type" != @as(i32, std.math.minInt(i32))) {
            const geographicMapCellTypeFactory: ?*GeographicMapCellTypeFactory = Inheritance.upcast(?*GeographicMapCellTypeFactory, GeographicMapCellTypeFactory.getInstance());
            const geographicMapCellTypeArray: []?*GeographicMapCellType = geographicMapCellTypeFactory.?.getGeographicMapCellTypeArray();
            if (geographicMapCellTypeArray[@intCast(@"type")] == null or reset == 1) {
                geographicMapCellTypeArray[@intCast(@"type")] = Inheritance.upcast(@TypeOf(geographicMapCellTypeArray[@intCast(@"type")]), this);
            } else {
                if (reset != -1) {
                    std.debug.panic("{any}", .{error.RuntimeException});
                }
            }
        }
        return this;
    }
    

    pub fn getType(self: *Self) i32 {
        return self.@"type";
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ self.@"type" }))));
    }
};

