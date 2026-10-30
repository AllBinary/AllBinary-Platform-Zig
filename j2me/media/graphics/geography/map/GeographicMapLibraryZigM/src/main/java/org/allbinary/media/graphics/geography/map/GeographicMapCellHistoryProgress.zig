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
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const GeographicMapCellHistory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellHistory.zig").GeographicMapCellHistory;
const GeographicMapCellHistoryProgressBase = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellHistoryProgressBase.zig").GeographicMapCellHistoryProgressBase;

pub const GeographicMapCellHistoryProgress = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgress";
    base: GeographicMapCellHistoryProgressBase = undefined,
    totalVisitedArray: []i32 = &.{},
    geographicMapCellHistoryArray: []?*GeographicMapCellHistory = &.{},

    fn initFields(this: *Self) void {
        this.totalVisitedArray = NullUtil.getInstance().?.NULL_INT_ARRAY;
        this.geographicMapCellHistoryArray = GeographicMapCellHistory.NULL_GEOGRPAHIC_MAP_HISTORY_ARRAY;
    }
    

    pub fn create1(geographicMapCellHistoryArray: []?*GeographicMapCellHistory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = GeographicMapCellHistoryProgressBase.create().*;
        this.initFields();
        this.geographicMapCellHistoryArray = geographicMapCellHistoryArray;
        _ = this.init();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self) void {
        self.totalVisitedArray = Inheritance.upcast(@TypeOf(self.totalVisitedArray), array_N65862: { const array_N65862_array = allocator.alloc(i32, @intCast(@as(i32, @intCast(self.geographicMapCellHistoryArray.len)))) catch unreachable; @memset(array_N65862_array, 0); break :array_N65862 array_N65862_array; });
    }
    

    pub fn isAnyProgress(self: *Self) bool {
        var isProgressing: bool = false;
        const size: i32 = @as(i32, @intCast(self.geographicMapCellHistoryArray.len));
        var currentTotalVisited: i32 = 0;
        var totalVisited: i32 = 0;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            totalVisited = self.geographicMapCellHistoryArray[@intCast(index)].?.getTotalVisited();
            currentTotalVisited = self.totalVisitedArray[@intCast(index)];
            if (currentTotalVisited < totalVisited) {
                isProgressing = true;
                self.totalVisitedArray[@intCast(index)] = totalVisited;
            }
            }
        }
        return isProgressing;
    }
};

