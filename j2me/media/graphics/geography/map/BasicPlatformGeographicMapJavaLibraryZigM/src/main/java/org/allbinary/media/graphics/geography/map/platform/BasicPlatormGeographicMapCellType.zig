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
// package org.allbinary.media.graphics.geography.map.platform

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const GeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellType.zig").GeographicMapCellType;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListS = @import("org/allbinary/util/BasicArrayListS.zig").BasicArrayListS;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const BasicPlatormGeographicMapCellType = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType";
    types: []i32 = &.{},

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn createType(@"type": i32) ?*BasicPlatormGeographicMapCellType {
        const types: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(BasicArrayListS, "create1", .{ 1 }));
        _ = Inheritance.call(types.?, "add", .{ Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ @"type" }) });
        const basicPlatormGeographicMapCellType: ?*BasicPlatormGeographicMapCellType = Inheritance.callStatic(BasicPlatormGeographicMapCellType, "create1", .{ types });
        return basicPlatormGeographicMapCellType;
    }
    

    pub fn create1(types: ?*BasicArrayList) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const size: i32 = types.?.size();
        const typeArray: []i32 = array_N66079: { const array_N66079_array = allocator.alloc(i32, @intCast(size)) catch unreachable; @memset(array_N66079_array, 0); break :array_N66079 array_N66079_array; };
        var typeAsInteger: ?*Integer = null;
        var @"type": i32 = 0;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            typeAsInteger = Inheritance.upcast(@TypeOf(typeAsInteger), (Inheritance.cast(?*Integer, Inheritance.call(types.?, "get", .{ index }))));
            @"type" = typeAsInteger.?.intValue();
            Inheritance.callStatic(GeographicMapCellType, "create2", .{ @"type", 0 });
            typeArray[@intCast(index)] = @"type";
            }
        }
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
};

