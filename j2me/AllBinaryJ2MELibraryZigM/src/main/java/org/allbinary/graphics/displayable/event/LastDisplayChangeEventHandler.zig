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
// package org.allbinary.graphics.displayable.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventListenerInterface = @import("org/allbinary/logic/util/event/EventListenerInterface.zig").EventListenerInterface;
const BasicEventHandler = @import("org/allbinary/logic/util/event/handler/BasicEventHandler.zig").BasicEventHandler;
const DisplayChangeEvent = @import("org/allbinary/graphics/displayable/event/DisplayChangeEvent.zig").DisplayChangeEvent;
const DisplayChangeEventListener = @import("org/allbinary/graphics/displayable/event/DisplayChangeEventListener.zig").DisplayChangeEventListener;

pub const LastDisplayChangeEventHandler = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.displayable.event.LastDisplayChangeEventHandler";
    base: BasicEventHandler = undefined,
    var SINGLETON: ?*LastDisplayChangeEventHandler = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = LastDisplayChangeEventHandler.create();
    }
    

    pub fn getInstance() ?*LastDisplayChangeEventHandler {
        return Inheritance.upcast(?*LastDisplayChangeEventHandler, LastDisplayChangeEventHandler.SINGLETON);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicEventHandler.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn process(self: *Self, eventObject: ?*AllBinaryEventObject, eventListenerInterface: ?*EventListenerInterface) void {
        _ = self;
        const displayChangeEventListener: ?*DisplayChangeEventListener = Inheritance.upcast(?*DisplayChangeEventListener, (Inheritance.cast(?*DisplayChangeEventListener, eventListenerInterface)));
        _ = Inheritance.call(displayChangeEventListener.?, "onDisplayChangeEvent", .{ Inheritance.cast(?*DisplayChangeEvent, eventObject) });
    }
};

