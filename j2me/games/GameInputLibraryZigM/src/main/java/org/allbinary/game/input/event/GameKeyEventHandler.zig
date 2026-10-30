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
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const EventListenerInterface = @import("org/allbinary/logic/util/event/EventListenerInterface.zig").EventListenerInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const DownGameKeyEventHandler = @import("org/allbinary/game/input/event/DownGameKeyEventHandler.zig").DownGameKeyEventHandler;
const PressGameKeyEventHandler = @import("org/allbinary/game/input/event/PressGameKeyEventHandler.zig").PressGameKeyEventHandler;
const UpGameKeyEventHandler = @import("org/allbinary/game/input/event/UpGameKeyEventHandler.zig").UpGameKeyEventHandler;

pub const GameKeyEventHandler = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.event.GameKeyEventHandler";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    pressGameKeyEventHandler: ?*PressGameKeyEventHandler = null,
    upGameKeyEventHandler: ?*UpGameKeyEventHandler = null,
    downGameKeyEventHandler: ?*DownGameKeyEventHandler = null,
    var instance: ?*GameKeyEventHandler = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GameKeyEventHandler.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.pressGameKeyEventHandler = Inheritance.upcast(?*PressGameKeyEventHandler, PressGameKeyEventHandler.getInstance());
        this.upGameKeyEventHandler = Inheritance.upcast(?*UpGameKeyEventHandler, UpGameKeyEventHandler.getInstance());
        this.downGameKeyEventHandler = Inheritance.upcast(?*DownGameKeyEventHandler, DownGameKeyEventHandler.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*GameKeyEventHandler {
        return Inheritance.upcast(?*GameKeyEventHandler, GameKeyEventHandler.instance);
    }
    

    pub fn removeAllListeners(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.receiver(self.pressGameKeyEventHandler.?, "removeAllListeners").removeAllListeners();
        _ = Inheritance.receiver(self.upGameKeyEventHandler.?, "removeAllListeners").removeAllListeners();
        _ = Inheritance.receiver(self.downGameKeyEventHandler.?, "removeAllListeners").removeAllListeners();
    }
    

    pub fn addListenerForPlayer(self: *Self, eventListenerInterface: ?*EventListenerInterface, playerInputId: i32) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(eventListenerInterface)), self, self.commonStrings.?.ADD_LISTENER });
        _ = Inheritance.call(self.pressGameKeyEventHandler.?, "addListenerSingleThreaded", .{ eventListenerInterface });
        _ = Inheritance.call(Inheritance.call(self.upGameKeyEventHandler.?, "getInstanceForPlayer", .{ playerInputId }).?, "addListenerSingleThreaded", .{ eventListenerInterface });
        _ = Inheritance.call(Inheritance.call(self.downGameKeyEventHandler.?, "getInstanceForPlayer", .{ playerInputId }).?, "addListenerSingleThreaded", .{ eventListenerInterface });
    }
    

    pub fn addListener(self: *Self, eventListenerInterface: ?*EventListenerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(eventListenerInterface)), self, self.commonStrings.?.ADD_LISTENER });
        _ = Inheritance.call(self.pressGameKeyEventHandler.?, "addListenerSingleThreaded", .{ eventListenerInterface });
        _ = Inheritance.call(self.upGameKeyEventHandler.?, "addListenerSingleThreaded", .{ eventListenerInterface });
        _ = Inheritance.call(self.downGameKeyEventHandler.?, "addListenerSingleThreaded", .{ eventListenerInterface });
    }
    

    pub fn removeListener(self: *Self, eventListenerInterface: ?*EventListenerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(eventListenerInterface)), self, self.commonStrings.?.REMOVE_LISTENER });
        _ = Inheritance.call(self.pressGameKeyEventHandler.?, "removeListenerSingleThreaded", .{ eventListenerInterface });
        _ = Inheritance.call(self.upGameKeyEventHandler.?, "removeListenerSingleThreaded", .{ eventListenerInterface });
        _ = Inheritance.call(self.downGameKeyEventHandler.?, "removeListenerSingleThreaded", .{ eventListenerInterface });
    }
};

