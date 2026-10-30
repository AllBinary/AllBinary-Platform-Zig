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
// package org.allbinary.game.terrain

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventListenerInterface = @import("org/allbinary/logic/util/event/EventListenerInterface.zig").EventListenerInterface;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const BasicEventHandler = @import("org/allbinary/logic/util/event/handler/BasicEventHandler.zig").BasicEventHandler;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const TerrainEvent = @import("org/allbinary/game/terrain/TerrainEvent.zig").TerrainEvent;
const TerrainEventListener = @import("org/allbinary/game/terrain/TerrainEventListener.zig").TerrainEventListener;
const TerrainEventListenerInterface = @import("org/allbinary/game/terrain/TerrainEventListenerInterface.zig").TerrainEventListenerInterface;

pub const TerrainEventHandler = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.terrain.TerrainEventHandler";
    base: BasicEventHandler = undefined,
    list: ?*BasicArrayList = null,
    var hashtable: ?*ABHashtable = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        hashtable = Inheritance.upcast(?*ABHashtable, StdUtil.getInstance().?.NULL_TABLE);
    }

    fn initFields(this: *Self) void {
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn init() void {
        TerrainEventHandler.hashtable = Inheritance.upcast(@TypeOf(TerrainEventHandler.hashtable), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
    }
    

    pub fn getInstance(anyType: ?Object) ?*TerrainEventHandler {
        var eventHandlerCanBeNull: ?Object = Inheritance.upcast(?Object, Inheritance.call(TerrainEventHandler.hashtable.?, "get", .{ anyType }));
        if (eventHandlerCanBeNull == null) {
            eventHandlerCanBeNull = Inheritance.upcast(@TypeOf(eventHandlerCanBeNull), TerrainEventHandler.create());
            _ = Inheritance.call(TerrainEventHandler.hashtable.?, "put", .{ anyType, eventHandlerCanBeNull });
        }
        return Inheritance.cast(?*TerrainEventHandler, eventHandlerCanBeNull);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicEventHandler.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn addListener(self: *Self, terrainEventListener: ?*TerrainEventListener) void {
        if (!Inheritance.call(self.list.?, "contains", .{ terrainEventListener })) {
            _ = Inheritance.call(self.list.?, "add", .{ terrainEventListener });
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
            while (value_N66900: { index -= 1; break :value_N66900 index; } >= 0) {
            { // try
                const terrainEventListener: ?*TerrainEventListener = Inheritance.cast(?*TerrainEventListener, Inheritance.call(self.list.?, "get", .{ index }));
                _ = Inheritance.call(terrainEventListener.?, "onTerrainEvent", .{ Inheritance.cast(?*TerrainEvent, eventObject) });
            }
            // catch (Exception e):
//                 _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, EventStrings.getInstance().?.FIRE_EVENT, e });
            }
        }
        _ = Inheritance.call(&self.base, "fireEvent", .{ eventObject });
    }
    

    // throws Exception
    pub fn process(self: *Self, eventObject: ?*AllBinaryEventObject, eventListenerInterface: ?*EventListenerInterface) void {
        _ = self;
        const terrainEventListenerInterface: ?*TerrainEventListenerInterface = Inheritance.cast(?*TerrainEventListenerInterface, eventListenerInterface);
        _ = Inheritance.call(terrainEventListenerInterface.?, "onTerrainEvent", .{ Inheritance.cast(?*TerrainEvent, eventObject) });
    }
};

