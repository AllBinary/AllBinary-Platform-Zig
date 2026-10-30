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
// package org.allbinary.game.input.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const RawKeyEventListener = @import("org/allbinary/game/input/event/RawKeyEventListener.zig").RawKeyEventListener;

pub const RawKeyEventHandler = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.event.RawKeyEventHandler";
    logUtil: ?*LogUtil = null,
    eventListenerInterfaceList: ?*BasicArrayList = null,
    var instance: ?*RawKeyEventHandler = undefined;
    const TOTAL_LISTENERS: ?*String = String.literal("Total Listeners: ");
    const LISTENER_LABEL: ?*String = String.literal(" Listener: ");

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = RawKeyEventHandler.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn getInstance() ?*RawKeyEventHandler {
        return Inheritance.upcast(?*RawKeyEventHandler, RawKeyEventHandler.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.eventListenerInterfaceList = Inheritance.upcast(@TypeOf(this.eventListenerInterfaceList), BasicArrayListD.create());
        return this;
    }
    

    pub fn removeAllListeners(self: *Self) void {
        self.eventListenerInterfaceList = Inheritance.upcast(@TypeOf(self.eventListenerInterfaceList), BasicArrayListD.create());
    }
    

    pub fn addListeners(self: *Self, vector: ?*BasicArrayList) void {
        var eventListenerInterface: ?*RawKeyEventListener = null;
        const size: i32 = vector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            eventListenerInterface = Inheritance.cast(?*RawKeyEventListener, Inheritance.call(vector.?, "get", .{ index }));
            _ = Inheritance.call(self, "addListener", .{ eventListenerInterface });
            }
        }
    }
    

    pub fn addListenerSingleThreaded(self: *Self, eventListenerInterface: ?*RawKeyEventListener) void {
        if (!Inheritance.call(self.eventListenerInterfaceList.?, "contains", .{ eventListenerInterface })) {
            _ = Inheritance.call(self.eventListenerInterfaceList.?, "add", .{ eventListenerInterface });
        }
    }
    

    pub fn addListener(self: *Self, eventListenerInterface: ?*RawKeyEventListener) void {
        if (!Inheritance.call(self.eventListenerInterfaceList.?, "contains", .{ eventListenerInterface })) {
            _ = Inheritance.call(self.eventListenerInterfaceList.?, "add", .{ eventListenerInterface });
        }
    }
    

    pub fn removeListenerSingleThreaded(self: *Self, eventListenerInterface: ?*RawKeyEventListener) void {
        _ = Inheritance.call(self.eventListenerInterfaceList.?, "remove", .{ eventListenerInterface });
    }
    

    pub fn removeListener(self: *Self, eventListenerInterface: ?*RawKeyEventListener) void {
        _ = Inheritance.call(self.eventListenerInterfaceList.?, "remove", .{ eventListenerInterface });
    }
    

    // throws Exception
    pub fn fireEvent(self: *Self, keyCode: i32, deviceId: i32, repeated: bool) void {
        var eventListenerInterface: ?*RawKeyEventListener = null;
        var index: i32 = 0;
        while (index < self.eventListenerInterfaceList.?.size()) {
            { // try
                eventListenerInterface = Inheritance.cast(?*RawKeyEventListener, Inheritance.call(self.eventListenerInterfaceList.?, "get", .{ index }));
                _ = Inheritance.call(self, "process", .{ keyCode, deviceId, repeated, eventListenerInterface });
            }
            // catch (Exception e):
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, EventStrings.getInstance().?.FIRE_EVENT, e });
            index += 1;
        }
    }
    

    // throws Exception
    pub fn process(self: *Self, keyCode: i32, deviceId: i32, repeated: bool, eventListenerInterface: ?*RawKeyEventListener) void {
        _ = self;
        _ = Inheritance.call(eventListenerInterface.?, "onEventRaw", .{ keyCode, deviceId, repeated });
    }
    

    pub fn getEventListenerInterfaceListP(self: *Self) ?*BasicArrayList {
        return self.eventListenerInterfaceList;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ RawKeyEventHandler.TOTAL_LISTENERS });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.eventListenerInterfaceList.?.size() });
        var eventListenerInterface: ?*RawKeyEventListener = null;
        var index: i32 = 0;
        while (index < self.eventListenerInterfaceList.?.size()) {
            { // try
                eventListenerInterface = Inheritance.cast(?*RawKeyEventListener, Inheritance.call(self.eventListenerInterfaceList.?, "get", .{ index }));
                _ = Inheritance.call(stringBuffer.?, "append", .{ RawKeyEventHandler.LISTENER_LABEL });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(eventListenerInterface)) });
            }
            // catch (Exception e):
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.TOSTRING, e });
            index += 1;
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

