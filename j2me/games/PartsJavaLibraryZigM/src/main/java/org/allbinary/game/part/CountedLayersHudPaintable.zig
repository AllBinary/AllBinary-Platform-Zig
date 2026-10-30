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
// package org.allbinary.game.part

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const PickedUpLayerInterfaceFactoryInterface = @import("org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.zig").PickedUpLayerInterfaceFactoryInterface;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const UpdateMyFontProcessor = @import("org/allbinary/graphics/font/UpdateMyFontProcessor.zig").UpdateMyFontProcessor;
const PaintableInterface = @import("org/allbinary/graphics/paint/PaintableInterface.zig").PaintableInterface;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const CountedLayerInterfaceFactoryPart = @import("org/allbinary/game/part/CountedLayerInterfaceFactoryPart.zig").CountedLayerInterfaceFactoryPart;
const PartInterface = @import("org/allbinary/game/part/PartInterface.zig").PartInterface;

pub const CountedLayersHudPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.part.CountedLayersHudPaintable";
    displayInfoSingleton: ?*DisplayInfoSingleton = null,
    partInterfaceArray: []?*PartInterface = &.{},
    countedTotalStringColor: i32 = 0,
    countedPartsBorder: i32 = 0,
    startIndex: i32 = 0,
    dropSize: i32 = 0,
    myFontProcessor: ?*MyFontProcessor = null,
    height: i32 = 0,
    // Implements PaintableInterface
    // Implements UpdateMyFontInterface
    var XXStringWidth: i32 = 0;

    fn initFields(this: *Self) void {
        this.displayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        
        
        
        
        
        this.myFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        this.height = 0;
    }
    

    pub fn create5(partInterfaceArray: []?*PartInterface, dropSize: i32, startIndex: i32, countedTotalStringColor: i32, countedPartsBorder: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.partInterfaceArray = partInterfaceArray;
        this.startIndex = startIndex;
        this.countedTotalStringColor = countedTotalStringColor;
        this.countedPartsBorder = countedPartsBorder;
        this.dropSize = dropSize;
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        self.height = font.?.getHeight();
        if (self.dropSize > font.?.getHeight()) {
            self.height = self.dropSize;
        }
        if (CountedLayersHudPaintable.XXStringWidth == 0) {
            const XXString: ?*String = String.literal("XX");
            CountedLayersHudPaintable.XXStringWidth = Inheritance.upcast(@TypeOf(CountedLayersHudPaintable.XXStringWidth), Inheritance.call(font.?, "stringWidth", .{ XXString }));
        }
        self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
        const lastWidth: i32 = self.displayInfoSingleton.?.getLastWidth();
        const widthEdge: i32 = lastWidth - self.dropSize;
        const size: i32 = @as(i32, @intCast(self.partInterfaceArray.len));
        var count: i32 = 0;
        var y: i32 = 0;
        var countedLayerInterfaceFactory: ?*CountedLayerInterfaceFactoryPart = null;
        var pickedUpLayerInterfaceFactoryInterface: ?*PickedUpLayerInterfaceFactoryInterface = null;
        var layerInterface: ?*AllBinaryLayer = null;
        var charArray: []u16 = &.{};
        {
            var index: i32 = self.startIndex;
            while (index < size) : (index += 1) {
            countedLayerInterfaceFactory = Inheritance.cast(?*CountedLayerInterfaceFactoryPart, self.partInterfaceArray[@intCast(index)]);
            if (countedLayerInterfaceFactory.?.getTotal() > 0) {
                pickedUpLayerInterfaceFactoryInterface = Inheritance.upcast(@TypeOf(pickedUpLayerInterfaceFactoryInterface), countedLayerInterfaceFactory.?.getCountedPickedUpLayerInterfaceFactory());
                layerInterface = Inheritance.upcast(@TypeOf(layerInterface), pickedUpLayerInterfaceFactoryInterface.?.getIconLayer());
                y = 40 + (count * self.height);
                _ = Inheritance.call(layerInterface.?, "setPosition", .{ widthEdge, y, Inheritance.receiver(layerInterface.?, "getZP").getZP() });
                _ = Inheritance.call(layerInterface.?, "paint", .{ graphics });
                _ = Inheritance.call(graphics.?, "setColor", .{ self.countedTotalStringColor });
                _ = Inheritance.call(countedLayerInterfaceFactory.?, "paint", .{ graphics });
                charArray = Inheritance.upcast(@TypeOf(charArray), countedLayerInterfaceFactory.?.getTotalString());
                _ = Inheritance.call(graphics.?, "drawChars", .{ charArray, 0, @as(i32, @intCast(charArray.len)), widthEdge - countedLayerInterfaceFactory.?.getXOffset(), y, 0 });
                count += 1;
            }
            }
        }
        if (count > 0) {
            _ = Inheritance.call(graphics.?, "setColor", .{ self.countedPartsBorder });
            _ = Inheritance.call(graphics.?, "drawRect", .{ lastWidth - (CountedLayersHudPaintable.XXStringWidth + self.dropSize), 40, CountedLayersHudPaintable.XXStringWidth + self.dropSize, (count * self.height) + 3 });
        }
    }
    

    pub fn paintThreed(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
};

