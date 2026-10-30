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
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const TiledLayer = @import("javax/microedition/lcdui/game/TiledLayer.zig").TiledLayer;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const AllBinaryJ2METiledLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.AllBinaryJ2METiledLayer";
    base: AllBinaryTiledLayer = undefined,
    tiledLayerP: ?*TiledLayer = null,
    debugColor: i32 = 0,
    font2: ?*Font = null,

    fn initFields(this: *Self) void {
        
        
        this.font2 = Inheritance.upcast(?*Font, Inheritance.callStatic(Font, "getFont", .{ Font.FACE_SYSTEM, Font.STYLE_PLAIN, 4 }));
    }
    

    pub fn create4(dataId: ?*Integer, tiledLayer: ?*TiledLayer, mapTwoDArray: [][]i32, debugColor: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryTiledLayer, "create5", .{ dataId, tiledLayer.?.getWidth(), tiledLayer.?.getHeight(), tiledLayer.?.getCellWidth(), tiledLayer.?.getCellHeight() }).*;
        this.initFields();
        this.tiledLayerP = tiledLayer;
        this.debugColor = debugColor;
        _ = Inheritance.call(this, "setCells", .{ mapTwoDArray });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.tiledLayerP.?, "paint", .{ graphics });
    }
    

    pub fn paintDebug(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        _ = Inheritance.call(graphics.?, "setFont", .{ self.font2 });
        _ = Inheritance.call(graphics.?, "setColor", .{ self.debugColor });
        var x: i32 = self.tiledLayerP.?.getX();
        var y: i32 = self.tiledLayerP.?.getY();
        const firstColumn: i32 = 0;
        const firstRow: i32 = 0;
        const totalColumns: i32 = self.tiledLayerP.?.getColumns();
        const totalRows: i32 = self.tiledLayerP.?.getRows();
        const x0: i32 = x;
        var tile: i32 = 0;
        const tileHeight: i32 = self.tiledLayerP.?.getCellHeight();
        const tileWidth: i32 = self.tiledLayerP.?.getCellWidth();
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        const stringMaker: ?*StringMaker = StringMaker.create();
        {
            var rowIndex: i32 = firstRow;
            while (rowIndex < totalRows) : ({ rowIndex += 1; y += tileHeight; }) {
            x = x0;
            {
                var columnIndex: i32 = firstColumn;
                while (columnIndex < totalColumns) : ({ columnIndex += 1; x += tileWidth; }) {
                tile = Inheritance.call(self.tiledLayerP.?, "getCell", .{ columnIndex, rowIndex });
                if (tile < 0) {
                    tile = Inheritance.call(self.tiledLayerP.?, "getAnimatedTile", .{ tile });
                }
                if (tile == 0) {
                    continue;
                }
                tile -= 1;
                _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
                _ = Inheritance.call(graphics.?, "drawString", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "appendint", .{ columnIndex }).?, "append", .{ commonSeps.?.COMMA }).?, "appendint", .{ rowIndex }).?, "append", .{ commonSeps.?.COLON }).?, "appendint", .{ tile }))), x + 5, y + 10, 0 });
                }
            }
            }
        }
        _ = Inheritance.call(graphics.?, "setFont", .{ font });
    }
    

    pub fn moveDXY(self: *Self, dx: i32, dy: i32) void {
        _ = Inheritance.call(self.tiledLayerP.?, "move", .{ dx, dy });
        _ = Inheritance.call(&self.base, "moveDXY", .{ -dx, -dy });
    }
    

    pub fn setPosition(self: *Self, x: i32, y: i32, z: i32) void {
        _ = Inheritance.call(self.tiledLayerP.?, "setPosition", .{ x, y });
        _ = Inheritance.call(&self.base, "setPosition", .{ -x, -y, z });
    }
    

    pub fn getTiledLayer(self: *Self) ?*TiledLayer {
        return self.tiledLayerP;
    }
    

    pub fn getCellWidth(self: *Self) i32 {
        return self.tiledLayerP.?.getCellWidth();
    }
    

    pub fn getCellHeight(self: *Self) i32 {
        return self.tiledLayerP.?.getCellHeight();
    }
    

    pub fn getCell(self: *Self, col: i32, row: i32) i32 {
        return Inheritance.call(self.tiledLayerP.?, "getCell", .{ col, row });
    }
    

    pub fn getColumns(self: *Self) i32 {
        return self.tiledLayerP.?.getColumns();
    }
    

    pub fn getRows(self: *Self) i32 {
        return self.tiledLayerP.?.getRows();
    }
    

    pub fn setCell(self: *Self, col: i32, row: i32, index: i32) void {
        _ = Inheritance.call(self.tiledLayerP.?, "setCell", .{ col, row, index });
    }
    

    pub fn getAnimatedTile(self: *Self, animationTileIndex: i32) i32 {
        return Inheritance.call(self.tiledLayerP.?, "getAnimatedTile", .{ animationTileIndex });
    }
};

