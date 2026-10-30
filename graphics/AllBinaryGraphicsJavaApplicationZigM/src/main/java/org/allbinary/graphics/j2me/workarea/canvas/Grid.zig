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
// package org.allbinary.graphics.j2me.workarea.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;

pub const Grid = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.canvas.Grid";
    grid: ?*GPoint = null,
    isGridOn: bool = false,
    isGridPossible: bool = false,
    zoom: i32 = 0,
    isChanged: bool = false,

    fn initFields(this: *Self) void {
        
        this.isGridOn = true;
        this.isGridPossible = false;
        this.zoom = 3;
        this.isChanged = true;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn create1(grid: ?*Grid) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.grid = Inheritance.upcast(@TypeOf(this.grid), grid.?.grid);
        _ = Inheritance.call(this, "showGrid", .{ grid.?.isGridOn });
        this.isGridPossible = grid.?.isGridPossible;
        _ = Inheritance.call(this, "setZoom", .{ grid.?.getZoom() });
        return this;
    }
    

    pub fn isGridOn(self: *Self) bool {
        return self.isGridOn;
    }
    

    pub fn isGridPossible(self: *Self) bool {
        return self.isGridPossible;
    }
    

    pub fn getGrid(self: *Self) ?*GPoint {
        return self.grid;
    }
    

    pub fn getZoom(self: *Self) i32 {
        return self.zoom;
    }
    

    pub fn showGrid(self: *Self, value: bool) void {
        self.isGridOn = value;
    }
    

    pub fn setZoom(self: *Self, zoomParameter: i32) void {
        var zoom = zoomParameter;
        self.zoom = zoom;
        if (self.zoom < 1) {
            zoom = 1;
        }
        self.isChanged = true;
    }
};

