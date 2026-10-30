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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PaintableInterface = @import("org/allbinary/graphics/paint/PaintableInterface.zig").PaintableInterface;
const Layer = @import("org/allbinary/layer/Layer.zig").Layer;
const NamedInterface = @import("org/allbinary/layer/NamedInterface.zig").NamedInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const AllBinaryTiledLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.AllBinaryTiledLayer";
    base: Layer = undefined,
    cellWidth: i32 = 0,
    cellHeight: i32 = 0,
    halfWidth: i32 = 0,
    halfHeight: i32 = 0,
    halfCellWidth: i32 = 0,
    halfCellHeight: i32 = 0,
    dataId: ?*Integer = null,
    // Implements NamedInterface
    // Implements PaintableInterface

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
        
        
    }
    

    pub fn create5(dataId: ?*Integer, width: i32, height: i32, cellWidth: i32, cellHeight: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Layer, "create2", .{ 0, 0 }).*;
        this.initFields();
        this.dataId = dataId;
        _ = Inheritance.call(this, "setLayerWidth", .{ width });
        _ = Inheritance.call(this, "setLayerHeight", .{ height });
        _ = Inheritance.call(&this.base, "setPosition", .{ 0, 0, 0 });
        this.cellWidth = cellWidth;
        this.cellHeight = cellHeight;
        this.halfWidth = (Inheritance.receiver(this, "getWidth").getWidth() >> @intCast(1));
        this.halfHeight = (Inheritance.receiver(this, "getHeight").getHeight() >> @intCast(1));
        this.halfCellWidth = (cellWidth >> @intCast(1));
        this.halfCellHeight = (cellHeight >> @intCast(1));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setCells(self: *Self, mapTwoDArray: [][]i32) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Start: r: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(mapTwoDArray.len)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" c: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(mapTwoDArray[@intCast(0)].len)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" rows: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getRows() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" columns: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getColumns() });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("setCells") });
        const rows: i32 = self.getRows();
        const columns: i32 = self.getColumns();
        {
            var col: i32 = 0;
            while (col < columns) : (col += 1) {
            {
                var row: i32 = 0;
                while (row < rows) : (row += 1) {
                _ = Inheritance.call(self, "setCell", .{ col, row, mapTwoDArray[@intCast(row)][@intCast(col)] });
                }
            }
            }
        }
    }
    

    pub fn updateCells(self: *Self, mapTwoDArray: [][]i32, fromTileId: i32, toTileId: i32) void {
        const rows: i32 = self.getRows();
        const columns: i32 = self.getColumns();
        {
            var col: i32 = 0;
            while (col < columns) : (col += 1) {
            {
                var row: i32 = 0;
                while (row < rows) : (row += 1) {
                if (fromTileId == mapTwoDArray[@intCast(row)][@intCast(col)]) {
                    mapTwoDArray[@intCast(row)][@intCast(col)] = Inheritance.upcast(@TypeOf(mapTwoDArray[@intCast(row)][@intCast(col)]), toTileId);
                    _ = Inheritance.call(self, "setCell", .{ col, row, mapTwoDArray[@intCast(row)][@intCast(col)] });
                }
                }
            }
            }
        }
    }
    

    pub fn getName(self: *Self) ?*String {
        return Inheritance.upcast(?*String, String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self).?.class))).?))).name));
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
    

    pub fn paintThreed(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
    

    pub fn getX2(self: *Self) i32 {
        return Inheritance.fieldPointer(self, "x").* + Inheritance.receiver(self, "getWidth").getWidth();
    }
    

    pub fn getY2(self: *Self) i32 {
        return Inheritance.fieldPointer(self, "y").* + Inheritance.receiver(self, "getHeight").getHeight();
    }
    

    pub fn getZ2(self: *Self) i32 {
        return @as(i32, @intCast((Inheritance.fieldPointer(self, "z").* + Inheritance.receiver(self, "getDepth").getDepth())));
    }
    

    pub fn getCellWidth(self: *Self) i32 {
        return self.cellWidth;
    }
    

    pub fn getCellHeight(self: *Self) i32 {
        return self.cellHeight;
    }
    

    pub fn getCell(self: *Self, col: i32, row: i32) i32 {
        _ = col;
        _ = row;
        _ = self;
        return -1;
    }
    

    pub fn getColumns(self: *Self) i32 {
        _ = self;
        return -1;
    }
    

    pub fn getRows(self: *Self) i32 {
        _ = self;
        return -1;
    }
    

    pub fn setCell(self: *Self, col: i32, row: i32, tileIndex: i32) void {
        _ = col;
        _ = row;
        _ = tileIndex;
        _ = self;
    }
    

    pub fn getHalfWidth(self: *Self) i32 {
        return self.halfWidth;
    }
    

    pub fn getHalfHeight(self: *Self) i32 {
        return self.halfHeight;
    }
    

    pub fn getDataId(self: *Self) ?*Integer {
        return self.dataId;
    }
    

    pub fn getHalfCellWidth(self: *Self) i32 {
        return self.halfCellWidth;
    }
    

    pub fn getHalfCellHeight(self: *Self) i32 {
        return self.halfCellHeight;
    }
    

    pub fn isOnTileLayer(self: *Self, column: i32, row: i32) bool {
        if (self.getColumns() > column and self.getRows() > row and row >= 0 and column >= 0) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn getAnimatedTile(self: *Self, animationTileIndex: i32) i32 {
        _ = self;
        return animationTileIndex;
    }
};

