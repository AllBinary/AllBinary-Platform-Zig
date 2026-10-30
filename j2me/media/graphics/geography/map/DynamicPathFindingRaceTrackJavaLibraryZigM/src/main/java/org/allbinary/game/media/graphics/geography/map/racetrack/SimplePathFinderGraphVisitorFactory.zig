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
// package org.allbinary.game.media.graphics.geography.map.racetrack

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const PathFinderGraphVisitorFactoryBase = @import("org/allbinary/media/graphics/geography/pathfinding/PathFinderGraphVisitorFactoryBase.zig").PathFinderGraphVisitorFactoryBase;
const PathFinderGraphVisitorBase = @import("org/allbinary/media/graphics/geography/pathfinding/PathFinderGraphVisitorBase.zig").PathFinderGraphVisitorBase;
const BasePathFinderGraphVisitor = @import("org/allbinary/game/media/graphics/geography/map/racetrack/BasePathFinderGraphVisitor.zig").BasePathFinderGraphVisitor;

pub const SimplePathFinderGraphVisitorFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.media.graphics.geography.map.racetrack.SimplePathFinderGraphVisitorFactory";
    base: PathFinderGraphVisitorFactoryBase = undefined,
    edgeMinimum: i32 = 0,
    minPathWeight: i32 = 0,
    maxPathWeight: i32 = 0,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
    }
    

    pub fn create3(edgeMinimum: i32, minPathWeight: i32, maxPathWeight: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = PathFinderGraphVisitorFactoryBase.create().*;
        this.initFields();
        this.edgeMinimum = edgeMinimum;
        this.minPathWeight = minPathWeight;
        this.maxPathWeight = maxPathWeight;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance(self: *Self, geographicMapInterface: ?*BasicGeographicMap) ?*PathFinderGraphVisitorBase {
        return Inheritance.upcast(?*PathFinderGraphVisitorBase, Inheritance.callStatic(BasePathFinderGraphVisitor, "create4", .{ geographicMapInterface, self.edgeMinimum, self.minPathWeight, self.maxPathWeight }));
    }
};

