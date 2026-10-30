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
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const CircleFilledAnimation = @import("org/allbinary/animation/vector/CircleFilledAnimation.zig").CircleFilledAnimation;
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const ColorCompositeInterface = @import("org/allbinary/graphics/color/ColorCompositeInterface.zig").ColorCompositeInterface;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const BasicGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory.zig").BasicGeographicMapCellPositionFactory;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellPositionEvent = @import("org/allbinary/media/graphics/geography/map/event/GeographicMapCellPositionEvent.zig").GeographicMapCellPositionEvent;
const GeographicMapCellPositionEventHandler = @import("org/allbinary/media/graphics/geography/map/event/GeographicMapCellPositionEventHandler.zig").GeographicMapCellPositionEventHandler;
const GeographicMapCellPositionEventListenerInterface = @import("org/allbinary/media/graphics/geography/map/event/GeographicMapCellPositionEventListenerInterface.zig").GeographicMapCellPositionEventListenerInterface;
const ViewPositionBase = @import("org/allbinary/view/ViewPositionBase.zig").ViewPositionBase;

pub const MiniMapLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.geographic.map.MiniMapLayer";
    base: AllBinaryLayer = undefined,
    allBinaryTiledLayer: ?*AllBinaryTiledLayer = null,
    geographicMapCellPositionFactory: ?*BasicGeographicMapCellPositionFactory = null,
    list: ?*BasicArrayList = null,
    basicColorList: ?*BasicArrayList = null,
    positionList: ?*BasicArrayList = null,
    animationInterface: ?*CircleFilledAnimation = null,
    // Implements GeographicMapCellPositionEventListenerInterface

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
        
    }
    

    pub fn create2(geographicMapInterface: ?*BasicGeographicMap, viewPosition: ?*ViewPositionBase) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryLayer, "create3", .{ StringUtil.getInstance().?.EMPTY_STRING, Inheritance.callStatic(Rectangle, "create3", .{ Inheritance.call(PointFactory.getInstance().?, "createXY", .{ 0, Inheritance.receiver(viewPosition.?, "getY").getY() }), Inheritance.receiverOf(Inheritance.receiver(geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer().?, "getWidth").getWidth(), Inheritance.receiverOf(Inheritance.receiver(geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer().?, "getHeight").getHeight() }), viewPosition }).*;
        this.initFields();
        this.allBinaryTiledLayer = Inheritance.upcast(@TypeOf(this.allBinaryTiledLayer), Inheritance.receiver(geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
        this.geographicMapCellPositionFactory = Inheritance.upcast(@TypeOf(this.geographicMapCellPositionFactory), Inheritance.receiver(geographicMapInterface.?, "getGeographicMapCellPositionFactory").getGeographicMapCellPositionFactory());
        this.animationInterface = Inheritance.callStatic(CircleFilledAnimation, "create3", .{ Inheritance.receiver(this.allBinaryTiledLayer.?, "getCellWidth").getCellWidth(), Inheritance.receiver(this.allBinaryTiledLayer.?, "getCellHeight").getCellHeight(), BasicColorFactory.getInstance().?.WHITE });
        this.list = Inheritance.upcast(@TypeOf(this.list), BasicArrayListD.create());
        this.basicColorList = Inheritance.upcast(@TypeOf(this.basicColorList), BasicArrayListD.create());
        this.positionList = Inheritance.upcast(@TypeOf(this.positionList), BasicArrayListD.create());
        _ = Inheritance.call(GeographicMapCellPositionEventHandler.getInstance().?, "addListener", .{ this });
        _ = this.init();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self) void {
        _ = Inheritance.call(self.allBinaryTiledLayer.?, "setPosition", .{ Inheritance.fieldPointer(self, "x").*, Inheritance.fieldPointer(self, "y").*, Inheritance.fieldPointer(self, "z").* });
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    // throws Exception
    pub fn onRemoveGeographicMapCellPositionEvent(self: *Self, geographicMapCellPositionEvent: ?*GeographicMapCellPositionEvent) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const colorCompositeInterface: ?*ColorCompositeInterface = Inheritance.cast(?*ColorCompositeInterface, Inheritance.receiver(geographicMapCellPositionEvent.?, "getSource").getSource());
        const index: i32 = Inheritance.call(self.list.?, "indexOf", .{ colorCompositeInterface });
        if (index >= 0) {
            _ = Inheritance.call(self.list.?, "removeAt", .{ index });
            _ = Inheritance.call(self.basicColorList.?, "removeAt", .{ index });
            _ = Inheritance.call(self.positionList.?, "removeAt", .{ index });
        }
    }
    

    // throws Exception
    pub fn onGeographicMapCellPositionEvent(self: *Self, geographicMapCellPositionEvent: ?*GeographicMapCellPositionEvent) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const colorCompositeInterface: ?*ColorCompositeInterface = Inheritance.cast(?*ColorCompositeInterface, Inheritance.receiver(geographicMapCellPositionEvent.?, "getSource").getSource());
        var layerIndex: i32 = -1;
        const size: i32 = self.list.?.size();
        var nextColorCompositeInterface: ?*ColorCompositeInterface = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            nextColorCompositeInterface = Inheritance.cast(?*ColorCompositeInterface, Inheritance.call(self.list.?, "get", .{ index }));
            if (Object.same(nextColorCompositeInterface, colorCompositeInterface)) {
                layerIndex = index;
                break;
            }
            }
        }
        const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(self.geographicMapCellPositionFactory.?, "getInstance", .{ Inheritance.receiver(geographicMapCellPositionEvent.?, "getGeographicMapCellPosition").getGeographicMapCellPosition() }));
        const point: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.receiver(geographicMapCellPosition.?, "getPoint").getPoint());
        if (layerIndex == -1) {
            _ = Inheritance.call(self.list.?, "add", .{ colorCompositeInterface });
            const basicColor: ?*BasicColor = Inheritance.upcast(?*BasicColor, Inheritance.receiver(colorCompositeInterface.?, "getBasicColorP").getBasicColorP());
            _ = Inheritance.call(self.basicColorList.?, "add", .{ basicColor });
            _ = Inheritance.call(self.positionList.?, "add", .{ point });
            layerIndex = self.basicColorList.?.size() - 1;
        } else {
            _ = Inheritance.call(self.positionList.?, "set", .{ layerIndex, point });
        }
    }
    

    pub fn paintDots(self: *Self, graphics: ?*Graphics) void {
        const localPositionList: ?*BasicArrayList = self.positionList;
        const localBasicColorList: ?*BasicArrayList = self.basicColorList;
        const length: i32 = localPositionList.?.size();
        var point: ?*GPoint = null;
        var basicColor: ?*BasicColor = null;
        {
            var index: i32 = length;
            while (value_N68987: { index -= 1; break :value_N68987 index; } >= 0) {
            point = Inheritance.cast(?*GPoint, Inheritance.call(localPositionList.?, "get", .{ index }));
            basicColor = Inheritance.cast(?*BasicColor, Inheritance.call(localBasicColorList.?, "get", .{ index }));
            _ = Inheritance.call(graphics.?, "setColor", .{ basicColor.?.intValue() });
            _ = Inheritance.call(self.animationInterface.?, "setBasicColorP", .{ basicColor });
            _ = Inheritance.call(self.animationInterface.?, "paintXY", .{ graphics, point.?.getX() + Inheritance.fieldPointer(self, "x").*, point.?.getY() + Inheritance.fieldPointer(self, "y").* });
            }
        }
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.allBinaryTiledLayer.?, "paint", .{ graphics });
        _ = Inheritance.call(self, "paintDots", .{ graphics });
    }
};

