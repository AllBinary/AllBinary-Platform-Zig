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
// package org.allbinary.input.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventListenerInterface = @import("org/allbinary/logic/util/event/EventListenerInterface.zig").EventListenerInterface;
const BasicEventHandler = @import("org/allbinary/logic/util/event/handler/BasicEventHandler.zig").BasicEventHandler;
const VirtualKeyboardEvent = @import("org/allbinary/input/event/VirtualKeyboardEvent.zig").VirtualKeyboardEvent;
const VirtualKeyboardEventListenerInterface = @import("org/allbinary/input/event/VirtualKeyboardEventListenerInterface.zig").VirtualKeyboardEventListenerInterface;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const VirtualKeyboardEventHandler = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.event.VirtualKeyboardEventHandler";
    base: BasicEventHandler = undefined,
    SHOW_EVENT: ?*VirtualKeyboardEvent = null,
    HIDE_EVENT: ?*VirtualKeyboardEvent = null,
    var gameKeyEventHandler: ?*VirtualKeyboardEventHandler = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        gameKeyEventHandler = VirtualKeyboardEventHandler.create();
    }

    fn initFields(this: *Self) void {
        this.SHOW_EVENT = Inheritance.callStatic(VirtualKeyboardEvent, "create1", .{ BooleanFactory.getInstance().?.TRUE });
        this.HIDE_EVENT = Inheritance.callStatic(VirtualKeyboardEvent, "create1", .{ BooleanFactory.getInstance().?.FALSE });
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicEventHandler.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*VirtualKeyboardEventHandler {
        return Inheritance.upcast(?*VirtualKeyboardEventHandler, VirtualKeyboardEventHandler.gameKeyEventHandler);
    }
    

    // throws Exception
    pub fn process(self: *Self, eventObject: ?*AllBinaryEventObject, eventListenerInterface: ?*EventListenerInterface) void {
        _ = self;
        const virtualKeyboardEventListenerInterface: ?*VirtualKeyboardEventListenerInterface = Inheritance.cast(?*VirtualKeyboardEventListenerInterface, eventListenerInterface);
        _ = Inheritance.call(virtualKeyboardEventListenerInterface.?, "onVirtualKeyboardEvent", .{ Inheritance.cast(?*VirtualKeyboardEvent, eventObject) });
    }
    

    pub fn open(self: *Self) void {
        { // try
            _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(120), .awake) catch {});
            _ = Inheritance.call(self, "fireEvent", .{ self.SHOW_EVENT });
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("open"), e });
    }
    

    // throws Exception
    pub fn close(self: *Self) void {
        { // try
            _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(120), .awake) catch {});
            _ = Inheritance.call(self, "fireEvent", .{ self.HIDE_EVENT });
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.CLOSE, e });
    }
};

