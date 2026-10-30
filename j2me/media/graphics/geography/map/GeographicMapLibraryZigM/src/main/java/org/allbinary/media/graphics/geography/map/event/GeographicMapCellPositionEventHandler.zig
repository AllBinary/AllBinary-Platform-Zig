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
// package org.allbinary.media.graphics.geography.map.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const MiniMapLayer = @import("org/allbinary/game/layer/geographic/map/MiniMapLayer.zig").MiniMapLayer;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventListenerInterface = @import("org/allbinary/logic/util/event/EventListenerInterface.zig").EventListenerInterface;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const BasicEventHandler = @import("org/allbinary/logic/util/event/handler/BasicEventHandler.zig").BasicEventHandler;
const GeographicMapCellPositionEvent = @import("org/allbinary/media/graphics/geography/map/event/GeographicMapCellPositionEvent.zig").GeographicMapCellPositionEvent;
const GeographicMapCellPositionEventListenerInterface = @import("org/allbinary/media/graphics/geography/map/event/GeographicMapCellPositionEventListenerInterface.zig").GeographicMapCellPositionEventListenerInterface;

pub const GeographicMapCellPositionEventHandler = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler";
    base: BasicEventHandler = undefined,
    list: ?*BasicArrayList = null,
    var instance: ?*GeographicMapCellPositionEventHandler = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GeographicMapCellPositionEventHandler.create();
    }

    fn initFields(this: *Self) void {
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn getInstance() ?*GeographicMapCellPositionEventHandler {
        return Inheritance.upcast(?*GeographicMapCellPositionEventHandler, GeographicMapCellPositionEventHandler.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicEventHandler.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn addListener(self: *Self, miniMapLayer: ?*MiniMapLayer) void {
        if (!Inheritance.call(self.list.?, "contains", .{ miniMapLayer })) {
            _ = Inheritance.call(self.list.?, "add", .{ miniMapLayer });
        }
    }
    

    pub fn removeAllListeners(self: *Self) void {
        _ = self.list.?.clear();
        _ = self.base.removeAllListeners();
    }
    

    pub fn removeListener(self: *Self, eventListenerInterface: ?*EventListenerInterface) void {
        _ = Inheritance.call(self.list.?, "remove", .{ eventListenerInterface });
        _ = Inheritance.call(&self.base, "removeListener", .{ eventListenerInterface });
    }
    

    // throws Exception
    pub fn fireEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        {
            var index: i32 = self.list.?.size();
            while (value_N66579: { index -= 1; break :value_N66579 index; } >= 0) {
            { // try
                const miniMapLayer: ?*MiniMapLayer = Inheritance.cast(?*MiniMapLayer, Inheritance.call(self.list.?, "get", .{ index }));
                _ = Inheritance.call(miniMapLayer.?, "onGeographicMapCellPositionEvent", .{ Inheritance.cast(?*GeographicMapCellPositionEvent, eventObject) });
            }
            // catch (Exception e):
//                 _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, EventStrings.getInstance().?.FIRE_EVENT, e });
            }
        }
        _ = Inheritance.call(&self.base, "fireEvent", .{ eventObject });
    }
    

    // throws Exception
    pub fn fireRemoveEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.fieldPointer(self, "eventListenerInterfaceList").*);
        {
            var index: i32 = self.list.?.size();
            while (value_N67018: { index -= 1; break :value_N67018 index; } >= 0) {
            { // try
                const miniMapLayer: ?*MiniMapLayer = Inheritance.cast(?*MiniMapLayer, Inheritance.call(self.list.?, "get", .{ index }));
                _ = Inheritance.call(miniMapLayer.?, "onRemoveGeographicMapCellPositionEvent", .{ Inheritance.cast(?*GeographicMapCellPositionEvent, eventObject) });
            }
            // catch (Exception e):
//                 _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, EventStrings.getInstance().?.FIRE_EVENT, e });
            }
        }
        var eventListenerInterface: ?*EventListenerInterface = null;
        var geographicMapCellPositionEventListenerInterface: ?*GeographicMapCellPositionEventListenerInterface = null;
        const size: i32 = list.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            { // try
                eventListenerInterface = Inheritance.cast(?*EventListenerInterface, Inheritance.call(list.?, "get", .{ index }));
                geographicMapCellPositionEventListenerInterface = Inheritance.upcast(@TypeOf(geographicMapCellPositionEventListenerInterface), (Inheritance.cast(?*GeographicMapCellPositionEventListenerInterface, eventListenerInterface)));
                _ = Inheritance.call(geographicMapCellPositionEventListenerInterface.?, "onRemoveGeographicMapCellPositionEvent", .{ Inheritance.cast(?*GeographicMapCellPositionEvent, eventObject) });
            }
            // catch (Exception e):
//                 _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, EventStrings.getInstance().?.FIRE_EVENT, e });
            }
        }
    }
    

    // throws Exception
    pub fn process(self: *Self, eventObject: ?*AllBinaryEventObject, eventListenerInterface: ?*EventListenerInterface) void {
        _ = self;
        const geographicMapCellPositionEventListenerInterface: ?*GeographicMapCellPositionEventListenerInterface = Inheritance.upcast(?*GeographicMapCellPositionEventListenerInterface, (Inheritance.cast(?*GeographicMapCellPositionEventListenerInterface, eventListenerInterface)));
        _ = Inheritance.call(geographicMapCellPositionEventListenerInterface.?, "onGeographicMapCellPositionEvent", .{ Inheritance.cast(?*GeographicMapCellPositionEvent, eventObject) });
    }
};

