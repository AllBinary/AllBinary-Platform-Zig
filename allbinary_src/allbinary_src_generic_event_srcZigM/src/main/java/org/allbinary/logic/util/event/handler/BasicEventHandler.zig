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
// package org.allbinary.logic.util.event.handler

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventListenerInterface = @import("org/allbinary/logic/util/event/EventListenerInterface.zig").EventListenerInterface;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicEventHandlerInterface = @import("org/allbinary/logic/util/event/handler/BasicEventHandlerInterface.zig").BasicEventHandlerInterface;

pub const BasicEventHandler = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.util.event.handler.BasicEventHandler";
    pub const java_interfaces = .{ BasicEventHandlerInterface };
    logUtil: ?*LogUtil = null,
    eventListenerInterfaceList: ?*BasicArrayList = null,
    // Implements BasicEventHandlerInterface
    pub const PERFORMANCE_MESSAGE: ?*String = String.literal("Use Custom onEvent Methods for needed optimization");

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.eventListenerInterfaceList = Inheritance.upcast(@TypeOf(this.eventListenerInterfaceList), BasicArrayListD.create());
        return this;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const LISTENER: ?*String = String.literal(" Listener: ");
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Total Listeners: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.eventListenerInterfaceList.?.size() });
        var eventListenerInterface: ?*EventListenerInterface = null;
        var index: i32 = 0;
        while (index < self.eventListenerInterfaceList.?.size()) {
            { // try
                eventListenerInterface = Inheritance.cast(?*EventListenerInterface, self.eventListenerInterfaceList.?.objectArray[@intCast(index)]);
                _ = Inheritance.call(stringBuffer.?, "append", .{ LISTENER });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ eventListenerInterface }) });
            }
            // catch (Exception e):
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.TOSTRING, e });
            index += 1;
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn removeAllListeners(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        self.eventListenerInterfaceList = Inheritance.upcast(@TypeOf(self.eventListenerInterfaceList), BasicArrayListD.create());
    }
    

    pub fn addListenerSingleThreaded(self: *Self, eventListenerInterface: ?*EventListenerInterface) void {
        if (!Inheritance.call(self.eventListenerInterfaceList.?, "contains", .{ eventListenerInterface })) {
            _ = Inheritance.call(self.eventListenerInterfaceList.?, "add", .{ eventListenerInterface });
        }
    }
    

    pub fn addListenerInterface(self: *Self, eventListenerInterface: ?*EventListenerInterface) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        if (!Inheritance.call(self.eventListenerInterfaceList.?, "contains", .{ eventListenerInterface })) {
            _ = Inheritance.call(self.eventListenerInterfaceList.?, "add", .{ eventListenerInterface });
        }
    }
    

    pub fn removeListenerSingleThreaded(self: *Self, eventListenerInterface: ?*EventListenerInterface) void {
        _ = Inheritance.call(self.eventListenerInterfaceList.?, "remove", .{ eventListenerInterface });
    }
    

    pub fn removeListener(self: *Self, eventListenerInterface: ?*EventListenerInterface) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self.eventListenerInterfaceList.?, "remove", .{ eventListenerInterface });
    }
    

    // throws Exception
    pub fn fireEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        var index: i32 = 0;
        var eventListenerInterface: ?*EventListenerInterface = null;
        while (index < self.eventListenerInterfaceList.?.size()) {
            { // try
                eventListenerInterface = Inheritance.cast(?*EventListenerInterface, self.eventListenerInterfaceList.?.objectArray[@intCast(index)]);
                _ = Inheritance.call(self, "process", .{ eventObject, eventListenerInterface });
            }
            // catch (Exception e):
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, EventStrings.getInstance().?.FIRE_EVENT, e });
            index += 1;
        }
    }
    

    // throws Exception
    pub fn process(self: *Self, eventObject: ?*AllBinaryEventObject, eventListenerInterface: ?*EventListenerInterface) void {
        _ = self;
        _ = Inheritance.call(eventListenerInterface.?, "onEvent", .{ eventObject });
    }
    

    pub fn getEventListenerInterfaceListP(self: *Self) ?*BasicArrayList {
        return self.eventListenerInterfaceList;
    }
};

