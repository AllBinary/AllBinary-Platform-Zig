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
// package org.allbinary.layer.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventListenerInterface = @import("org/allbinary/logic/util/event/EventListenerInterface.zig").EventListenerInterface;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const BasicEventHandler = @import("org/allbinary/logic/util/event/handler/BasicEventHandler.zig").BasicEventHandler;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const LayerManagerEvent = @import("org/allbinary/layer/event/LayerManagerEvent.zig").LayerManagerEvent;
const LayerManagerEventListener = @import("org/allbinary/layer/event/LayerManagerEventListener.zig").LayerManagerEventListener;
const LayerManagerEventListenerInterface = @import("org/allbinary/layer/event/LayerManagerEventListenerInterface.zig").LayerManagerEventListenerInterface;

pub const LayerManagerEventHandler = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.layer.event.LayerManagerEventHandler";
    base: BasicEventHandler = undefined,
    list: ?*BasicArrayList = null,
    CREATE: ?*String = null,
    DELETE: ?*String = null,
    var instance: ?*LayerManagerEventHandler = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LayerManagerEventHandler.create();
    }

    fn initFields(this: *Self) void {
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.CREATE = String.literal("Create");
        this.DELETE = String.literal("Delete");
    }
    

    pub fn getInstance() ?*LayerManagerEventHandler {
        return Inheritance.upcast(?*LayerManagerEventHandler, LayerManagerEventHandler.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicEventHandler.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn addListener(self: *Self, layerManagerEventListener: ?*LayerManagerEventListener) void {
        if (!Inheritance.call(self.list.?, "contains", .{ layerManagerEventListener })) {
            _ = Inheritance.call(self.list.?, "add", .{ layerManagerEventListener });
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
            while (value_N66546: { index -= 1; break :value_N66546 index; } >= 0) {
            { // try
                const layerManagerEventListener: ?*LayerManagerEventListener = Inheritance.cast(?*LayerManagerEventListener, self.list.?.objectArray[@intCast(index)]);
                _ = Inheritance.call(layerManagerEventListener.?, "onCreateLayerManagerEvent", .{ Inheritance.cast(?*LayerManagerEvent, eventObject) });
            }
            // catch (Exception e):
//                 _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, EventStrings.getInstance().?.FIRE_EVENT, e });
            }
        }
        _ = Inheritance.call(&self.base, "fireEvent", .{ eventObject });
    }
    

    // throws Exception
    pub fn fireDeleteEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        {
            var index: i32 = self.list.?.size();
            while (value_N67038: { index -= 1; break :value_N67038 index; } >= 0) {
            { // try
                const layerManagerEventListener: ?*LayerManagerEventListener = Inheritance.cast(?*LayerManagerEventListener, self.list.?.objectArray[@intCast(index)]);
                _ = Inheritance.call(layerManagerEventListener.?, "onDeleteLayerManagerEvent", .{ Inheritance.cast(?*LayerManagerEvent, eventObject) });
            }
            // catch (Exception e):
//                 _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, EventStrings.getInstance().?.FIRE_EVENT, e });
            }
        }
        const eventListenerInterfaceList: ?*BasicArrayList = Inheritance.fieldPointer(self, "eventListenerInterfaceList").*;
        var eventListenerInterface: ?*EventListenerInterface = null;
        var layerManagerEventListenerInterface: ?*LayerManagerEventListenerInterface = null;
        var index: i32 = 0;
        while (index < eventListenerInterfaceList.?.size()) {
            { // try
                eventListenerInterface = Inheritance.cast(?*EventListenerInterface, eventListenerInterfaceList.?.objectArray[@intCast(index)]);
                layerManagerEventListenerInterface = Inheritance.upcast(@TypeOf(layerManagerEventListenerInterface), (Inheritance.cast(?*LayerManagerEventListenerInterface, eventListenerInterface)));
                _ = Inheritance.call(layerManagerEventListenerInterface.?, "onDeleteLayerManagerEvent", .{ Inheritance.cast(?*LayerManagerEvent, eventObject) });
            }
            // catch (Exception e):
//                 _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, EventStrings.getInstance().?.FIRE_EVENT, e });
            index += 1;
        }
    }
    

    // throws Exception
    pub fn process(self: *Self, eventObject: ?*AllBinaryEventObject, eventListenerInterface: ?*EventListenerInterface) void {
        _ = self;
        const layerManagerEventListenerInterface: ?*LayerManagerEventListenerInterface = Inheritance.upcast(?*LayerManagerEventListenerInterface, (Inheritance.cast(?*LayerManagerEventListenerInterface, eventListenerInterface)));
        _ = Inheritance.call(layerManagerEventListenerInterface.?, "onCreateLayerManagerEvent", .{ Inheritance.cast(?*LayerManagerEvent, eventObject) });
    }
};

