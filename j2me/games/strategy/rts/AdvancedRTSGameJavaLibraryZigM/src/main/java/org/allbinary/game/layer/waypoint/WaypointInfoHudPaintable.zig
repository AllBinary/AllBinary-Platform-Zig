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
// package org.allbinary.game.layer.waypoint

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const NullPathFindingLayer = @import("org/allbinary/game/layer/NullPathFindingLayer.zig").NullPathFindingLayer;
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;
const RTSLayer = @import("org/allbinary/game/layer/RTSLayer.zig").RTSLayer;
const SelectionHudPaintable = @import("org/allbinary/game/layer/SelectionHudPaintable.zig").SelectionHudPaintable;
const KeyValueDrawString = @import("org/allbinary/graphics/draw/KeyValueDrawString.zig").KeyValueDrawString;

pub const WaypointInfoHudPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable";
    base: SelectionHudPaintable = undefined,
    keyvalueDrawString: ?*KeyValueDrawString = null,
    rtsLayerP: ?*PathFindingLayerInterface = null,
    textLine2Y: i32 = 0,

    fn initFields(this: *Self) void {
        
        this.rtsLayerP = Inheritance.upcast(?*PathFindingLayerInterface, NullPathFindingLayer.NULL_PATH_FINDING_LAYER);
        this.textLine2Y = 0;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = SelectionHudPaintable.create().*;
        this.initFields();
        this.keyvalueDrawString = Inheritance.callStatic(KeyValueDrawString, "create2", .{ String.literal("Owner: "), Inheritance.fieldPointer(this, "textX").* });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(&self.base, "updateMeasurement", .{ graphics });
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        self.textLine2Y = (Inheritance.fieldPointer(self, "y").* + font.?.getHeight());
    }
    

    pub fn updateSelectionInfo(self: *Self) void {
        const rtsLayer: ?*RTSLayer = Inheritance.cast(?*RTSLayer, self.rtsLayerP);
        _ = Inheritance.call(self, "setName", .{ Inheritance.receiver(rtsLayer.?, "getName").getName() });
        _ = Inheritance.call(self, "setAnimationInterface", .{ Inheritance.receiver(rtsLayer.?, "getVerticleBuildAnimationInterface").getVerticleBuildAnimationInterface() });
        _ = Inheritance.call(self.keyvalueDrawString.?, "update", .{ Inheritance.receiverOf(Inheritance.receiver(rtsLayer.?, "getParentLayer").getParentLayer().?, "getName").getName() });
    }
    

    pub fn setRtsLayer(self: *Self, rtsLayer: ?*RTSLayer) void {
        self.rtsLayerP = Inheritance.upcast(@TypeOf(self.rtsLayerP), rtsLayer);
    }
    

    pub fn getRtsLayer(self: *Self) ?*PathFindingLayerInterface {
        return self.rtsLayerP;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(&self.base, "paint", .{ graphics });
        _ = Inheritance.call(self.keyvalueDrawString.?, "paint", .{ graphics, self.textLine2Y });
        _ = Inheritance.call(Inheritance.receiver(self, "getAnimationInterface").getAnimationInterface().?, "paintXY", .{ graphics, Inheritance.fieldPointer(self, "imageX").*, Inheritance.fieldPointer(self, "y").* });
    }
};

