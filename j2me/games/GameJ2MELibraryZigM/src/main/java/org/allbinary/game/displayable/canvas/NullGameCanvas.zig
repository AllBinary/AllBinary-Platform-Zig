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
// package org.allbinary.game.displayable.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const NullCommandListener = @import("javax/microedition/lcdui/NullCommandListener.zig").NullCommandListener;
const BasicBuildGameInitializerFactory = @import("org/allbinary/game/init/BasicBuildGameInitializerFactory.zig").BasicBuildGameInitializerFactory;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const NoHighScoresFactory = @import("org/allbinary/game/score/NoHighScoresFactory.zig").NoHighScoresFactory;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;

pub const NullGameCanvas = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.NullGameCanvas";
    base: AllBinaryGameCanvas = undefined,
    runningNull: bool = false,
    var instance: ?Object = undefined;
    pub const NO_GAME: ?*String = String.literal("No Background Game");
    pub const TYPE: i32 = 1;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.runningNull = true;
    }
    

    pub fn createNull() ?*NullGameCanvas {
        { // try
            return Inheritance.callStatic(NullGameCanvas, "create1", .{ AllBinaryGameLayerManager.getNullInstance() });
        }
        // catch (Exception e):
//             _ = Inheritance.call(LogUtil.getInstance().?, "put", .{ CommonStrings.getInstance().?.EXCEPTION, String.literal("NullGameCanvas"), CommonStrings.getInstance().?.GET_INSTANCE, e });
//             std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getInstance() ?*NullGameCanvas {
        if (Object.same(NullGameCanvas.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            NullGameCanvas.instance = Inheritance.upcast(@TypeOf(NullGameCanvas.instance), NullGameCanvas.createNull());
        }
        return Inheritance.cast(?*NullGameCanvas, NullGameCanvas.instance);
    }
    

    // throws Exception
    pub fn createCanvas(gameLayerManager: ?*AllBinaryGameLayerManager) ?*NullGameCanvas {
        const nullGameCanvas: ?*NullGameCanvas = Inheritance.callStatic(NullGameCanvas, "create1", .{ gameLayerManager });
        _ = Inheritance.call(nullGameCanvas.?, "setInitialized", .{ true });
        _ = Inheritance.call(nullGameCanvas.?, "setTitle", .{ NullGameCanvas.NO_GAME });
        return nullGameCanvas;
    }
    

    pub fn create1(gameLayerManager: ?*AllBinaryGameLayerManager) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryGameCanvas, "create5", .{ NullCommandListener.NULL_COMMAND_LISTENER, gameLayerManager, NoHighScoresFactory.getInstance(), BasicBuildGameInitializerFactory.NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY, false }).*;
        this.initFields();
        _ = Inheritance.call(&this.base, "setWait", .{ 1200 });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isGameOver(self: *Self) bool {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        return false;
    }
    

    pub fn setRunning(self: *Self, running: bool) void {
        self.runningNull = running;
    }
    

    pub fn isRunning(self: *Self) bool {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        return self.runningNull;
    }
    

    pub fn pause(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self, "setPaused", .{ true });
    }
    

    pub fn unPause(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self, "setPaused", .{ false });
    }
    

    pub fn initCommands(self: *Self, cmdListener: ?*CommandListener) void {
        _ = Inheritance.receiver(self, "removeAllCommands").removeAllCommands();
        _ = Inheritance.call(self, "setCommandListener", .{ cmdListener });
    }
    

    // throws Exception
    pub fn buildGameInit(self: *Self, isProgress: bool) void {
        _ = isProgress;
        _ = self;
    }
    

    pub fn draw(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
    

    pub fn run(self: *Self) void {
        { // try
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START_RUNNABLE, self, Inheritance.fieldPointer(self, "commonStrings").*.?.RUN });
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.END_RUNNABLE, self, Inheritance.fieldPointer(self, "commonStrings").*.?.RUN });
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.RUN, e });
    }
    

    pub fn getType(self: *Self) i32 {
        _ = self;
        return NullGameCanvas.TYPE;
    }
};

