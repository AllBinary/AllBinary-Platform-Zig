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
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventListenerInterface = @import("org/allbinary/logic/util/event/EventListenerInterface.zig").EventListenerInterface;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const BasicEventHandler = @import("org/allbinary/logic/util/event/handler/BasicEventHandler.zig").BasicEventHandler;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const DownGameKeyEventListenerInterface = @import("org/allbinary/game/input/event/DownGameKeyEventListenerInterface.zig").DownGameKeyEventListenerInterface;
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;

pub const DownGameKeyEventHandlerBase = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.event.DownGameKeyEventHandlerBase";
    base: BasicEventHandler = undefined,
    list: ?*BasicArrayList = null,
    const TOTAL_LISTENERS: ?*String = String.literal(" Total PlayerGameInput Listeners: ");
    const LISTENER_LABEL: ?*String = String.literal(" PlayerGameInput Listener: ");

    fn initFields(this: *Self) void {
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
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
    

    pub fn removeListenerSingleThreaded(self: *Self, eventListenerInterface: ?*EventListenerInterface) void {
        _ = Inheritance.call(self.list.?, "remove", .{ eventListenerInterface });
        _ = Inheritance.call(&self.base, "removeListenerSingleThreaded", .{ eventListenerInterface });
    }
    

    pub fn removeListener(self: *Self, eventListenerInterface: ?*EventListenerInterface) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self.list.?, "remove", .{ eventListenerInterface });
        _ = Inheritance.call(&self.base, "removeListener", .{ eventListenerInterface });
    }
    

    // throws Exception
    pub fn fireEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        {
            var index: i32 = self.list.?.size();
            while (value_N66611: { index -= 1; break :value_N66611 index; } >= 0) {
            { // try
                const playerGameInput: ?*PlayerGameInput = Inheritance.cast(?*PlayerGameInput, self.list.?.objectArray[@intCast(index)]);
                _ = Inheritance.call(playerGameInput.?, "onDownGameKeyEvent", .{ Inheritance.cast(?*GameKeyEvent, eventObject) });
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
        const downGameKeyEventListenerInterface: ?*DownGameKeyEventListenerInterface = Inheritance.cast(?*DownGameKeyEventListenerInterface, eventListenerInterface);
        _ = Inheritance.call(downGameKeyEventListenerInterface.?, "onDownGameKeyEvent", .{ Inheritance.cast(?*GameKeyEvent, eventObject) });
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.base.toString() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ DownGameKeyEventHandlerBase.TOTAL_LISTENERS });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.list.?.size() });
        var eventListenerInterface: ?*EventListenerInterface = null;
        const size: i32 = self.list.?.size();
        var index: i32 = 0;
        while (index < size) {
            { // try
                eventListenerInterface = Inheritance.cast(?*EventListenerInterface, Inheritance.call(self.list.?, "get", .{ index }));
                _ = Inheritance.call(stringBuffer.?, "append", .{ DownGameKeyEventHandlerBase.LISTENER_LABEL });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(eventListenerInterface)) });
            }
            // catch (Exception e):
//                 _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.TOSTRING, e });
            index += 1;
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

