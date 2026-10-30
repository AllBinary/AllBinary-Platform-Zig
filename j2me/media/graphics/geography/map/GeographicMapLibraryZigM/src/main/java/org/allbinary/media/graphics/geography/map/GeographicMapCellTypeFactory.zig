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
const GeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellType.zig").GeographicMapCellType;

pub const GeographicMapCellTypeFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory";
    logUtil: ?*LogUtil = null,
    geographicMapCellTypeArray: []?*GeographicMapCellType = &.{},
    var instance: ?*GeographicMapCellTypeFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GeographicMapCellTypeFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.geographicMapCellTypeArray = array_N65805: { const array_N65805_array = allocator.alloc(?*GeographicMapCellType, @intCast(512)) catch unreachable; @memset(array_N65805_array, null); break :array_N65805 array_N65805_array; };
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*GeographicMapCellTypeFactory {
        return Inheritance.upcast(?*GeographicMapCellTypeFactory, GeographicMapCellTypeFactory.instance);
    }
    

    pub fn get(self: *Self, @"type": i32) ?*GeographicMapCellType {
        return Inheritance.upcast(?*GeographicMapCellType, self.geographicMapCellTypeArray[@intCast(@"type")]);
    }
    

    pub fn getGeographicMapCellTypeArray(self: *Self) []?*GeographicMapCellType {
        return self.geographicMapCellTypeArray;
    }
    

    pub fn getStartType(self: *Self) i32 {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getEndType(self: *Self) i32 {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getEmptyType(self: *Self) i32 {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn isPath(self: *Self, cellType: ?*GeographicMapCellType) bool {
        _ = cellType;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};

