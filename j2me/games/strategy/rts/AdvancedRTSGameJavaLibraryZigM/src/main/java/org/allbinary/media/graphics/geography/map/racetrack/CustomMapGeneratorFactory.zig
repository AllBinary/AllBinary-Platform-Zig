// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.media.graphics.geography.map.racetrack

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CustomMapGenerator = @import("org/allbinary/media/graphics/geography/map/racetrack/CustomMapGenerator.zig").CustomMapGenerator;
const CustomMapGeneratorBase = @import("org/allbinary/media/graphics/geography/map/racetrack/CustomMapGeneratorBase.zig").CustomMapGeneratorBase;
const CustomMapGeneratorBaseFactory = @import("org/allbinary/media/graphics/geography/map/racetrack/CustomMapGeneratorBaseFactory.zig").CustomMapGeneratorBaseFactory;
const RaceTrackGeographicMap = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMap.zig").RaceTrackGeographicMap;

pub const CustomMapGeneratorFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorFactory";
    base: CustomMapGeneratorBaseFactory = undefined,

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = CustomMapGeneratorBaseFactory.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn create(self: *Self, raceTrackGeographicMap: ?*RaceTrackGeographicMap) ?*CustomMapGeneratorBase {
        _ = self;
        return Inheritance.upcast(?*CustomMapGeneratorBase, Inheritance.callStatic(CustomMapGenerator, "create1", .{ raceTrackGeographicMap }));
    }
};

