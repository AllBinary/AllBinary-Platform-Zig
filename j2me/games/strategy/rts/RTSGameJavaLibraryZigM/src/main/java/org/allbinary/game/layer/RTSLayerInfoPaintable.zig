// 
// AllBinary Open License Version 1 
// Copyright (c) 2003 AllBinary 
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
const InitUpdatePaintable = @import("org/allbinary/graphics/paint/InitUpdatePaintable.zig").InitUpdatePaintable;
const NullInitUpdatePaintable = @import("org/allbinary/graphics/paint/NullInitUpdatePaintable.zig").NullInitUpdatePaintable;
const SelectionHudPaintable = @import("org/allbinary/game/layer/SelectionHudPaintable.zig").SelectionHudPaintable;

pub const RTSLayerInfoPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.RTSLayerInfoPaintable";
    base: InitUpdatePaintable = undefined,
    initUpdatePaintable: ?*InitUpdatePaintable = null,

    fn initFields(this: *Self) void {
        this.initUpdatePaintable = Inheritance.upcast(?*InitUpdatePaintable, NullInitUpdatePaintable.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = InitUpdatePaintable.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn update(self: *Self) void {
        _ = Inheritance.receiver(self.initUpdatePaintable.?, "update").update();
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.initUpdatePaintable.?, "paint", .{ graphics });
    }
    

    pub fn updateRTSLayerInfoInit(self: *Self, hudPaintable: ?*InitUpdatePaintable) void {
        self.initUpdatePaintable = hudPaintable;
    }
    

    pub fn updateRTSLayerInfoSelection(self: *Self, hudPaintable: ?*SelectionHudPaintable) void {
        _ = Inheritance.receiver(hudPaintable.?, "updateSelectionInfo").updateSelectionInfo();
        self.initUpdatePaintable = hudPaintable;
    }
};

