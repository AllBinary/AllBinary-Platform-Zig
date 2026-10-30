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
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const SimpleGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory.zig").SimpleGeographicMapCellPositionFactory;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;

pub const PathFindingNode = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.pathfinding.PathFindingNode";
    parent: ?Object = null,
    geographicMapCellPosition: ?*GeographicMapCellPosition = null,

    fn initFields(this: *Self) void {
        this.parent = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
        this.geographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
    }
    

    pub fn create2(parent: ?Object, geographicMapCellPosition: ?*GeographicMapCellPosition) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.parent = parent;
        _ = Inheritance.call(this, "setGeographicMapCellPositionP", .{ geographicMapCellPosition });
        if (Object.same(this.geographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("No GeographicMapCellPosition"); break :exception error.Exception; }});
        }
        return this;
    }
    

    pub fn getParentP(self: *Self) ?*PathFindingNode {
        return Inheritance.cast(?*PathFindingNode, self.parent);
    }
    

    pub fn setGeographicMapCellPositionP(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) void {
        self.geographicMapCellPosition = geographicMapCellPosition;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self).?.class))).?))).name) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonLabels.getInstance().?.COLON_SEP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Path: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.geographicMapCellPosition)) });
        var pathFindingNode: ?*PathFindingNode = Inheritance.upcast(?*PathFindingNode, self.getParentP());
        while (pathFindingNode != null) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(pathFindingNode.?.geographicMapCellPosition)) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
            pathFindingNode = Inheritance.upcast(@TypeOf(pathFindingNode), pathFindingNode.?.getParentP());
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

