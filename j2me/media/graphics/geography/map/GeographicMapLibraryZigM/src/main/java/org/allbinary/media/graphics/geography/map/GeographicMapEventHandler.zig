// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.media.graphics.geography.map

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryGameLayer = @import("org/allbinary/game/layer/AllBinaryGameLayer.zig").AllBinaryGameLayer;
const EventListenerInterface = @import("org/allbinary/logic/util/event/EventListenerInterface.zig").EventListenerInterface;
const BasicEventHandler = @import("org/allbinary/logic/util/event/handler/BasicEventHandler.zig").BasicEventHandler;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;

pub const GeographicMapEventHandler = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.GeographicMapEventHandler";
    base: BasicEventHandler = undefined,
    list: ?*BasicArrayList = null,
    var instance: ?*GeographicMapEventHandler = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GeographicMapEventHandler.create();
    }

    fn initFields(this: *Self) void {
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn getInstance() ?*GeographicMapEventHandler {
        return Inheritance.upcast(?*GeographicMapEventHandler, GeographicMapEventHandler.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicEventHandler.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn addListener(self: *Self, gameLayer: ?*AllBinaryGameLayer) void {
        if (!Inheritance.call(self.list.?, "contains", .{ gameLayer })) {
            _ = Inheritance.call(self.list.?, "add", .{ gameLayer });
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
    

    pub fn fireEvent(self: *Self) void {
        {
            var index: i32 = self.list.?.size();
            while (value_N66510: { index -= 1; break :value_N66510 index; } >= 0) {
            { // try
                const gameLayer: ?*AllBinaryGameLayer = Inheritance.cast(?*AllBinaryGameLayer, Inheritance.call(self.list.?, "get", .{ index }));
                _ = Inheritance.receiver(gameLayer.?, "move").move();
            }
            // catch (Exception e):
//                 _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, EventStrings.getInstance().?.FIRE_EVENT, e });
            }
        }
    }
};

