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
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const MultipassState = @import("org/allbinary/media/graphics/geography/pathfinding/MultipassState.zig").MultipassState;

pub const GeographicPathFinderBase = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase";
    commonStrings: ?*CommonStrings = null,
    pub var NULL_GEOGRAPHIC_PATH_FINDER_BASE: ?*GeographicPathFinderBase = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_GEOGRAPHIC_PATH_FINDER_BASE = GeographicPathFinderBase.create();
    }

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn searchTotalPath(self: *Self, startPathFindingNodeList: ?*BasicArrayList, endPathFindingNodeList: ?*BasicArrayList, totalPaths: i32) ?*BasicArrayList {
        _ = startPathFindingNodeList;
        _ = endPathFindingNodeList;
        _ = totalPaths;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn searchTotalPathN(self: *Self, startPathFindingNodeList: ?*BasicArrayList, endPathFindingNodeList: ?*BasicArrayList, totalPaths: i32, multipassState: ?*MultipassState) ?*BasicArrayList {
        _ = startPathFindingNodeList;
        _ = endPathFindingNodeList;
        _ = totalPaths;
        _ = multipassState;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};

