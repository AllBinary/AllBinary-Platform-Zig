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
// package org.allbinary.game.configuration.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventListenerInterface = @import("org/allbinary/logic/util/event/EventListenerInterface.zig").EventListenerInterface;
const BasicEventHandler = @import("org/allbinary/logic/util/event/handler/BasicEventHandler.zig").BasicEventHandler;
const GameFeatureEvent = @import("org/allbinary/game/configuration/event/GameFeatureEvent.zig").GameFeatureEvent;
const GameFeatureListenerInterface = @import("org/allbinary/game/configuration/event/GameFeatureListenerInterface.zig").GameFeatureListenerInterface;

pub const GameFeatureEventHandler = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.event.GameFeatureEventHandler";
    base: BasicEventHandler = undefined,
    var gameKeyEventHandler: ?*GameFeatureEventHandler = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        gameKeyEventHandler = GameFeatureEventHandler.create();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicEventHandler.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*GameFeatureEventHandler {
        return Inheritance.upcast(?*GameFeatureEventHandler, GameFeatureEventHandler.gameKeyEventHandler);
    }
    

    // throws Exception
    pub fn process(self: *Self, eventObject: ?*AllBinaryEventObject, eventListenerInterface: ?*EventListenerInterface) void {
        _ = self;
        const gameFeatureListenerInterface: ?*GameFeatureListenerInterface = Inheritance.upcast(?*GameFeatureListenerInterface, (Inheritance.cast(?*GameFeatureListenerInterface, eventListenerInterface)));
        _ = Inheritance.call(gameFeatureListenerInterface.?, "onGameFeatureChange", .{ Inheritance.cast(?*GameFeatureEvent, eventObject) });
    }
};

