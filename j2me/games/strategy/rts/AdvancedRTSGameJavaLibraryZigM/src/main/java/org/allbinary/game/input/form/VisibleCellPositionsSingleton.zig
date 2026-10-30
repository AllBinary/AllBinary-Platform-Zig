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
// package org.allbinary.game.input.form

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const SimpleTiledLayer = @import("javax/microedition/lcdui/game/SimpleTiledLayer.zig").SimpleTiledLayer;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const RTSLayerEvent = @import("org/allbinary/game/layer/RTSLayerEvent.zig").RTSLayerEvent;
const BuildingEventListenerInterface = @import("org/allbinary/game/layer/building/event/BuildingEventListenerInterface.zig").BuildingEventListenerInterface;
const LocalPlayerBuildingEventHandler = @import("org/allbinary/game/layer/building/event/LocalPlayerBuildingEventHandler.zig").LocalPlayerBuildingEventHandler;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const CellPosition = @import("org/allbinary/graphics/CellPosition.zig").CellPosition;
const ScrollMapEvent = @import("org/allbinary/layer/event/ScrollMapEvent.zig").ScrollMapEvent;
const ScrollMapEventHandler = @import("org/allbinary/layer/event/ScrollMapEventHandler.zig").ScrollMapEventHandler;
const ScrollMapEventListenerInterface = @import("org/allbinary/layer/event/ScrollMapEventListenerInterface.zig").ScrollMapEventListenerInterface;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;

pub const VisibleCellPositionsSingleton = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.form.VisibleCellPositionsSingleton";
    stationaryVisibleCellPositions: [][]i16 = &.{},
    visibleCellPositions: [][]i16 = &.{},
    currentlyVisibleCellPositions: [][]i16 = &.{},
    ALL_VISIBLE_TILEDLAYER: ?*SimpleTiledLayer = null,
    simpleTiledLayer: ?*SimpleTiledLayer = null,
    paintSimpleTiledLayer: ?*SimpleTiledLayer = null,
    currentIndex: i32 = 0,
    // Implements BuildingEventListenerInterface
    // Implements ScrollMapEventListenerInterface
    var instance: ?*VisibleCellPositionsSingleton = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = VisibleCellPositionsSingleton.create();
    }

    fn initFields(this: *Self) void {
        this.stationaryVisibleCellPositions = NullUtil.getInstance().?.NULL_SHORT_ARRAY_ARRAY;
        this.visibleCellPositions = NullUtil.getInstance().?.NULL_SHORT_ARRAY_ARRAY;
        this.currentlyVisibleCellPositions = NullUtil.getInstance().?.NULL_SHORT_ARRAY_ARRAY;
        this.ALL_VISIBLE_TILEDLAYER = Inheritance.callStatic(SimpleTiledLayer, "create4", .{ 0, 0, 0, 0 });
        this.simpleTiledLayer = this.ALL_VISIBLE_TILEDLAYER;
        this.paintSimpleTiledLayer = this.ALL_VISIBLE_TILEDLAYER;
        this.currentIndex = 0;
    }
    

    pub fn getInstance() ?*VisibleCellPositionsSingleton {
        return Inheritance.upcast(?*VisibleCellPositionsSingleton, VisibleCellPositionsSingleton.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(LocalPlayerBuildingEventHandler.getInstance().?, "addListenerInterface", .{ this });
        _ = Inheritance.call(ScrollMapEventHandler.getInstance().?, "addListenerInterface", .{ this });
        return this;
    }
    

    pub fn init(self: *Self, simpleTiledLayer: ?*SimpleTiledLayer) void {
        self.paintSimpleTiledLayer = self.ALL_VISIBLE_TILEDLAYER;
        self.currentIndex = 0;
        const rows: i32 = Inheritance.receiver(simpleTiledLayer.?, "getRows").getRows();
        const columns: i32 = Inheritance.receiver(simpleTiledLayer.?, "getColumns").getColumns();
        self.stationaryVisibleCellPositions = Inheritance.upcast(@TypeOf(self.stationaryVisibleCellPositions), array_N66752: { const array_N66752_array = allocator.alloc([]i16, @intCast(rows)) catch unreachable; for (array_N66752_array) |*array_N66752_row| { array_N66752_row.* = allocator.alloc(i16, @intCast(columns)) catch unreachable; @memset(array_N66752_row.*, 0); } break :array_N66752 array_N66752_array; });
        self.visibleCellPositions = Inheritance.upcast(@TypeOf(self.visibleCellPositions), array_N66807: { const array_N66807_array = allocator.alloc([]i16, @intCast(rows)) catch unreachable; for (array_N66807_array) |*array_N66807_row| { array_N66807_row.* = allocator.alloc(i16, @intCast(columns)) catch unreachable; @memset(array_N66807_row.*, 0); } break :array_N66807 array_N66807_array; });
        self.currentlyVisibleCellPositions = Inheritance.upcast(@TypeOf(self.currentlyVisibleCellPositions), array_N66862: { const array_N66862_array = allocator.alloc([]i16, @intCast(rows)) catch unreachable; for (array_N66862_array) |*array_N66862_row| { array_N66862_row.* = allocator.alloc(i16, @intCast(columns)) catch unreachable; @memset(array_N66862_row.*, 0); } break :array_N66862 array_N66862_array; });
        _ = Inheritance.call(self, "setSimpleTiledLayer", .{ simpleTiledLayer });
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    // throws Exception
    pub fn onBuildingEvent(self: *Self, event: ?*RTSLayerEvent) void {
        _ = event;
        self.paintSimpleTiledLayer = self.simpleTiledLayer;
    }
    

    // throws Exception
    pub fn onMoveEvent(self: *Self, scrollMapEvent: ?*ScrollMapEvent) void {
        _ = Inheritance.call(self, "move", .{ Inheritance.receiver(scrollMapEvent.?, "getDx").getDx(), Inheritance.receiver(scrollMapEvent.?, "getDy").getDy() });
    }
    

    pub fn addStationaryCellPositions(self: *Self, list: ?*BasicArrayList) void {
        {
            var index: i32 = list.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            const cellPosition: ?*CellPosition = Inheritance.cast(?*CellPosition, Inheritance.call(list.?, "get", .{ index }));
            self.stationaryVisibleCellPositions[@intCast(Inheritance.receiver(cellPosition.?, "getRow").getRow())][@intCast(Inheritance.receiver(cellPosition.?, "getColumn").getColumn())] += 1;
            }
        }
    }
    

    pub fn removeStationaryCellPositions(self: *Self, list: ?*BasicArrayList) void {
        {
            var index: i32 = list.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            const cellPosition: ?*CellPosition = Inheritance.cast(?*CellPosition, Inheritance.call(list.?, "get", .{ index }));
            self.stationaryVisibleCellPositions[@intCast(Inheritance.receiver(cellPosition.?, "getRow").getRow())][@intCast(Inheritance.receiver(cellPosition.?, "getColumn").getColumn())] -= 1;
            }
        }
    }
    

    pub fn update(self: *Self) void {
        if (self.currentIndex == 0) {
            const temp: [][]i16 = self.currentlyVisibleCellPositions;
            self.currentlyVisibleCellPositions = self.visibleCellPositions;
            self.visibleCellPositions = temp;
            {
                var index: i32 = @as(i32, @intCast(self.visibleCellPositions.len)) - 1;
                while (index >= 0) : (index -= 1) {
                {
                    var index2: i32 = @as(i32, @intCast(self.visibleCellPositions[@intCast(0)].len)) - 1;
                    while (index2 >= 0) : (index2 -= 1) {
                    self.visibleCellPositions[@intCast(index)][@intCast(index2)] = Inheritance.upcast(@TypeOf(self.visibleCellPositions[@intCast(index)][@intCast(index2)]), self.stationaryVisibleCellPositions[@intCast(index)][@intCast(index2)]);
                    }
                }
                }
            }
        }
        self.currentIndex += 1;
        if (self.currentIndex > 10) {
            self.currentIndex = 0;
        }
    }
    

    pub fn shouldProcess(self: *Self) bool {
        if (self.currentIndex == 0) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn addCellPositions(self: *Self, list: ?*BasicArrayList) void {
        {
            var index: i32 = list.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            const cellPosition: ?*CellPosition = Inheritance.cast(?*CellPosition, Inheritance.call(list.?, "get", .{ index }));
            self.visibleCellPositions[@intCast(Inheritance.receiver(cellPosition.?, "getRow").getRow())][@intCast(Inheritance.receiver(cellPosition.?, "getColumn").getColumn())] += 1;
            }
        }
    }
    

    pub fn isVisible(self: *Self, cellPosition: ?*CellPosition) bool {
        if (self.visibleCellPositions[@intCast(Inheritance.receiver(cellPosition.?, "getRow").getRow())][@intCast(Inheritance.receiver(cellPosition.?, "getColumn").getColumn())] > 0) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn move(self: *Self, dx: i32, dy: i32) void {
        _ = Inheritance.call(self.getSimpleTiledLayer().?, "moveDXY", .{ dx, dy });
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.paintSimpleTiledLayer.?, "paint", .{ graphics, self.currentlyVisibleCellPositions });
    }
    

    pub fn setSimpleTiledLayer(self: *Self, simpleTiledLayer: ?*SimpleTiledLayer) void {
        self.simpleTiledLayer = simpleTiledLayer;
    }
    

    pub fn getSimpleTiledLayer(self: *Self) ?*SimpleTiledLayer {
        return self.simpleTiledLayer;
    }
};

