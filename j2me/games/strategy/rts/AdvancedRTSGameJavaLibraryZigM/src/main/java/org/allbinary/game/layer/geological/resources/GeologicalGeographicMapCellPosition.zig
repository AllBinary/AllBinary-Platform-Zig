// 
// AllBinary Open License Version 1 
// Copyright (c) 2006 AllBinary 
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
// package org.allbinary.game.layer.geological.resources

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeologicalResource = @import("org/allbinary/game/layer/geological/resources/GeologicalResource.zig").GeologicalResource;

pub const GeologicalGeographicMapCellPosition = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition";
    base: GeographicMapCellPosition = undefined,
    geologicalResource: ?*GeologicalResource = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create7(column: i32, row: i32, columns: i32, rows: i32, width: i32, height: i32, geologicalResource: ?*GeologicalResource) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(GeographicMapCellPosition, "create6", .{ column, row, columns, rows, width, height }).*;
        this.initFields();
        this.geologicalResource = geologicalResource;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getGeologicalResource(self: *Self) ?*GeologicalResource {
        return self.geologicalResource;
    }
};

