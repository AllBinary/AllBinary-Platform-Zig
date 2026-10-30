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
// package org.allbinary.bounds.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventListenerInterface = @import("org/allbinary/logic/util/event/EventListenerInterface.zig").EventListenerInterface;
const BasicEventHandler = @import("org/allbinary/logic/util/event/handler/BasicEventHandler.zig").BasicEventHandler;
const BoundsChangeEvent = @import("org/allbinary/bounds/event/BoundsChangeEvent.zig").BoundsChangeEvent;
const BoundsChangeEventListener = @import("org/allbinary/bounds/event/BoundsChangeEventListener.zig").BoundsChangeEventListener;

pub const BoundsChangeEventHandler = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.bounds.event.BoundsChangeEventHandler";
    base: BasicEventHandler = undefined,
    var SINGLETON: ?*BasicEventHandler = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = Inheritance.upcast(?*BasicEventHandler, BoundsChangeEventHandler.create());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicEventHandler.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*BasicEventHandler {
        return Inheritance.upcast(?*BasicEventHandler, BoundsChangeEventHandler.SINGLETON);
    }
    

    // throws Exception
    pub fn process(self: *Self, eventObject: ?*AllBinaryEventObject, eventListenerInterface: ?*EventListenerInterface) void {
        _ = self;
        const boundsChangeEventListener: ?*BoundsChangeEventListener = Inheritance.cast(?*BoundsChangeEventListener, eventListenerInterface);
        _ = Inheritance.call(boundsChangeEventListener.?, "onBoundsChangeEvent", .{ Inheritance.cast(?*BoundsChangeEvent, eventObject) });
    }
};

