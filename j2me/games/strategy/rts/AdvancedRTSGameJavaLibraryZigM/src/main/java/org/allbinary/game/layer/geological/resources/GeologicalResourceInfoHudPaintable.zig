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
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const RTSLayer = @import("org/allbinary/game/layer/RTSLayer.zig").RTSLayer;
const WaypointInfoHudPaintable = @import("org/allbinary/game/layer/waypoint/WaypointInfoHudPaintable.zig").WaypointInfoHudPaintable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const KeyValueDrawCharArray = @import("org/allbinary/graphics/draw/KeyValueDrawCharArray.zig").KeyValueDrawCharArray;
const GeologicalGeographicMapCellPosition = @import("org/allbinary/game/layer/geological/resources/GeologicalGeographicMapCellPosition.zig").GeologicalGeographicMapCellPosition;

pub const GeologicalResourceInfoHudPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable";
    base: WaypointInfoHudPaintable = undefined,
    keyvalueDrawString: ?*KeyValueDrawCharArray = null,
    fontHeight: i32 = 0,
    const RESOURCES: ?*String = String.literal("Resources: ");

    fn initFields(this: *Self) void {
        
        this.fontHeight = 0;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = WaypointInfoHudPaintable.create().*;
        this.initFields();
        this.keyvalueDrawString = Inheritance.callStatic(KeyValueDrawCharArray, "create2", .{ GeologicalResourceInfoHudPaintable.RESOURCES, Inheritance.fieldPointer(this, "textX").* });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(&self.base, "updateMeasurement", .{ graphics });
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        self.fontHeight = (2 * font.?.getHeight());
    }
    

    pub fn updateSelectionInfo(self: *Self) void {
        _ = self.base.updateSelectionInfo();
        const rtsLayer: ?*RTSLayer = Inheritance.cast(?*RTSLayer, Inheritance.fieldPointer(self, "rtsLayerP").*);
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(rtsLayer.?.geographicMapCellPositionAreaBase.?, "getOccupyingGeographicMapCellPositionList").getOccupyingGeographicMapCellPositionList());
        var total: i32 = 0;
        {
            var index: i32 = list.?.size();
            while (value_N66446: { index -= 1; break :value_N66446 index; } >= 0) {
            const geographicMapCellPosition: ?*GeologicalGeographicMapCellPosition = Inheritance.cast(?*GeologicalGeographicMapCellPosition, Inheritance.call(list.?, "get", .{ index }));
            total += Inheritance.receiverOf(Inheritance.receiver(geographicMapCellPosition.?, "getGeologicalResource").getGeologicalResource().?, "getTotal").getTotal();
            }
        }
        _ = Inheritance.call(self.keyvalueDrawString.?, "update", .{ Inheritance.call(Inheritance.receiver(self, "getPrimitiveLongUtil").getPrimitiveLongUtil().?, "getCharArray", .{ total }), Inheritance.receiverOf(Inheritance.receiver(self, "getPrimitiveLongUtil").getPrimitiveLongUtil().?, "getCurrentTotalDigits").getCurrentTotalDigits() });
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(&self.base, "paint", .{ graphics });
        _ = Inheritance.call(self.keyvalueDrawString.?, "paint", .{ graphics, (Inheritance.fieldPointer(self, "y").* + self.fontHeight) });
    }
};

