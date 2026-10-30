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
// package org.allbinary.game.input.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PlayerGameInput = @import("org/allbinary/game/input/PlayerGameInput.zig").PlayerGameInput;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventListenerInterface = @import("org/allbinary/logic/util/event/EventListenerInterface.zig").EventListenerInterface;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const BasicEventHandler = @import("org/allbinary/logic/util/event/handler/BasicEventHandler.zig").BasicEventHandler;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const PressGameKeyEventListenerInterface = @import("org/allbinary/game/input/event/PressGameKeyEventListenerInterface.zig").PressGameKeyEventListenerInterface;

pub const PressGameKeyEventHandler = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.event.PressGameKeyEventHandler";
    base: BasicEventHandler = undefined,
    list: ?*BasicArrayList = null,
    var instance: ?*PressGameKeyEventHandler = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PressGameKeyEventHandler.create();
    }

    fn initFields(this: *Self) void {
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn getInstance() ?*PressGameKeyEventHandler {
        return Inheritance.upcast(?*PressGameKeyEventHandler, PressGameKeyEventHandler.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicEventHandler.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn addListener(self: *Self, playerGameInput: ?*PlayerGameInput) void {
        if (!Inheritance.call(self.list.?, "contains", .{ playerGameInput })) {
            _ = Inheritance.call(self.list.?, "add", .{ playerGameInput });
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
            while (value_N66603: { index -= 1; break :value_N66603 index; } >= 0) {
            { // try
                const playerGameInput: ?*PlayerGameInput = Inheritance.cast(?*PlayerGameInput, self.list.?.objectArray[@intCast(index)]);
                _ = Inheritance.call(playerGameInput.?, "onPressGameKeyEvent", .{ Inheritance.cast(?*GameKeyEvent, eventObject) });
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
        const pressGameKeyEventListenerInterface: ?*PressGameKeyEventListenerInterface = Inheritance.upcast(?*PressGameKeyEventListenerInterface, (Inheritance.cast(?*PressGameKeyEventListenerInterface, eventListenerInterface)));
        _ = Inheritance.call(pressGameKeyEventListenerInterface.?, "onPressGameKeyEvent", .{ Inheritance.cast(?*GameKeyEvent, eventObject) });
    }
};

