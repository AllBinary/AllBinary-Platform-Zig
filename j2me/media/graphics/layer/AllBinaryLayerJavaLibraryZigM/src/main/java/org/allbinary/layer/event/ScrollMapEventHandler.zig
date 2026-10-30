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
const BasicEventHandler = @import("org/allbinary/logic/util/event/handler/BasicEventHandler.zig").BasicEventHandler;
const ScrollMapEvent = @import("org/allbinary/layer/event/ScrollMapEvent.zig").ScrollMapEvent;
const ScrollMapEventListenerInterface = @import("org/allbinary/layer/event/ScrollMapEventListenerInterface.zig").ScrollMapEventListenerInterface;

pub const ScrollMapEventHandler = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.layer.event.ScrollMapEventHandler";
    base: BasicEventHandler = undefined,
    var SINGLETON: ?*ScrollMapEventHandler = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = ScrollMapEventHandler.create();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicEventHandler.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*ScrollMapEventHandler {
        return Inheritance.upcast(?*ScrollMapEventHandler, ScrollMapEventHandler.SINGLETON);
    }
    

    // throws Exception
    pub fn process(self: *Self, eventObject: ?*AllBinaryEventObject, eventListenerInterface: ?*EventListenerInterface) void {
        _ = self;
        const scrollMapEventListenerInterface: ?*ScrollMapEventListenerInterface = Inheritance.upcast(?*ScrollMapEventListenerInterface, (Inheritance.cast(?*ScrollMapEventListenerInterface, eventListenerInterface)));
        _ = Inheritance.call(scrollMapEventListenerInterface.?, "onMoveEvent", .{ Inheritance.cast(?*ScrollMapEvent, eventObject) });
    }
};

