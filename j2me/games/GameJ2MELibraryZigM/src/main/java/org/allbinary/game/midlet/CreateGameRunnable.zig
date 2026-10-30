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
// package org.allbinary.game.midlet

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ProgressCanvas = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.zig").ProgressCanvas;
const ProgressCanvasFactory = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.zig").ProgressCanvasFactory;
const MyCommandsFactory = @import("org/allbinary/graphics/displayable/command/MyCommandsFactory.zig").MyCommandsFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const DemoGameMidlet = @import("org/allbinary/game/midlet/DemoGameMidlet.zig").DemoGameMidlet;
const DemoGameMidletEvent = @import("org/allbinary/game/midlet/DemoGameMidletEvent.zig").DemoGameMidletEvent;
const DemoGameMidletEventHandler = @import("org/allbinary/game/midlet/DemoGameMidletEventHandler.zig").DemoGameMidletEventHandler;
const DemoGameMidletStateFactory = @import("org/allbinary/game/midlet/DemoGameMidletStateFactory.zig").DemoGameMidletStateFactory;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

pub const CreateGameRunnable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.midlet.CreateGameRunnable";
    pub const java_interfaces = .{ Runnable };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    demoGameMidlet: ?*DemoGameMidlet = null,
    hashtable: ?*ABHashtable = null,
    startGameMidletEvent: ?*DemoGameMidletEvent = null,
    // Implements Runnable

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        
        
    }
    

    pub fn create2(demoGameMidlet: ?*DemoGameMidlet, hashtable: ?*ABHashtable) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.demoGameMidlet = demoGameMidlet;
        this.hashtable = hashtable;
        this.startGameMidletEvent = Inheritance.callStatic(DemoGameMidletEvent, "create2", .{ this, DemoGameMidletStateFactory.getInstance().?.START_GAME });
        return this;
    }
    

    pub fn run(self: *Self) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START_RUNNABLE, self, self.commonStrings.?.RUN });
            const progressCanvas: ?*ProgressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
            _ = Inheritance.call(self.demoGameMidlet.?, "commandAction", .{ MyCommandsFactory.getInstance().?.SET_DISPLAYABLE, progressCanvas });
            _ = Inheritance.receiver(self.demoGameMidlet.?, "stopGameCanvasRunnableInterface").stopGameCanvasRunnableInterface();
            _ = Inheritance.call(self.demoGameMidlet.?, "setGameCanvasRunnableInterface", .{ Inheritance.receiver(self.demoGameMidlet.?, "createGameCanvasRunnableInterface").createGameCanvasRunnableInterface() });
            _ = Inheritance.call(Inheritance.receiver(self.demoGameMidlet.?, "getGameCanvasRunnableInterface").getGameCanvasRunnableInterface().?, "setLoadStateHashtable", .{ self.hashtable });
            _ = Inheritance.receiver(self.demoGameMidlet.?, "startGameCanvasRunnableInterface").startGameCanvasRunnableInterface();
            _ = Inheritance.call(DemoGameMidletEventHandler.getInstance().?, "fireEvent", .{ self.startGameMidletEvent });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.END_RUNNABLE, self, self.commonStrings.?.RUN });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.RUN, e });
    }
};

