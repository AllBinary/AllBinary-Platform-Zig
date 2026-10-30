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
// package org.allbinary.game.behavior.topview.placement

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const TiledMap = @import("org/mapeditor/core/TiledMap.zig").TiledMap;
const TileMapPlacementVisitor = @import("org/allbinary/game/behavior/topview/placement/TileMapPlacementVisitor.zig").TileMapPlacementVisitor;

pub const AllAnimationsEverywhereTileMapPlacementVisitor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.behavior.topview.placement.AllAnimationsEverywhereTileMapPlacementVisitor";
    base: TileMapPlacementVisitor = undefined,

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TileMapPlacementVisitor.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn visit(self: *Self, lastMap: ?*TiledMap, mapData: [][]i32) void {
        _ = lastMap;
        _ = self;
        const size: i32 = @as(i32, @intCast(mapData.len));
        const size2: i32 = @as(i32, @intCast(mapData[@intCast(0)].len)) - 7;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            {
                var index2: i32 = 0;
                while (index2 < size2) : (index2 += 7) {
                mapData[@intCast(index)][@intCast(index2)] = 1;
                mapData[@intCast(index)][@intCast(index2 + 1)] = 17;
                mapData[@intCast(index)][@intCast(index2 + 2)] = 33;
                mapData[@intCast(index)][@intCast(index2 + 3)] = 49;
                mapData[@intCast(index)][@intCast(index2 + 4)] = 65;
                mapData[@intCast(index)][@intCast(index2 + 5)] = 81;
                mapData[@intCast(index)][@intCast(index2 + 6)] = 97;
                }
            }
            }
        }
    }
};

