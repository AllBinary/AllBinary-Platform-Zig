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
// package org.allbinary.game.layer.geographic.map

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
// const NullImage = @import("javax/microedition/lcdui/NullImage.zig").NullImage;
const Anchor = @import("org/allbinary/graphics/Anchor.zig").Anchor;
const PaintableToImageUtil = @import("org/allbinary/image/PaintableToImageUtil.zig").PaintableToImageUtil;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const ViewPositionBase = @import("org/allbinary/view/ViewPositionBase.zig").ViewPositionBase;
const MiniMapLayer = @import("org/allbinary/game/layer/geographic/map/MiniMapLayer.zig").MiniMapLayer;

pub const ImageMiniMapLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.geographic.map.ImageMiniMapLayer";
    base: MiniMapLayer = undefined,
    image: ?*Image = null,
    anchor: i32 = 0,

    fn initFields(this: *Self) void {
        this.image = Inheritance.upcast(?*Image, NullImage.NULL_IMAGE);
        this.anchor = Anchor.TOP_LEFT;
    }
    

    pub fn create2(geographicMapInterface: ?*BasicGeographicMap, viewPosition: ?*ViewPositionBase) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(MiniMapLayer, "create2", .{ geographicMapInterface, viewPosition }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self) void {
        const aWidth: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "allBinaryTiledLayer").*.?, "getWidth").getWidth();
        const aHeight: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "allBinaryTiledLayer").*.?, "getHeight").getHeight();
        self.image = Inheritance.upcast(@TypeOf(self.image), Inheritance.callStatic(PaintableToImageUtil, "getImage", .{ Inheritance.fieldPointer(self, "allBinaryTiledLayer").*, aWidth, aHeight }));
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(graphics.?, "drawImage", .{ self.image, Inheritance.fieldPointer(self, "x").*, Inheritance.fieldPointer(self, "y").*, self.anchor });
        _ = Inheritance.call(self, "paintDots", .{ graphics });
    }
};

