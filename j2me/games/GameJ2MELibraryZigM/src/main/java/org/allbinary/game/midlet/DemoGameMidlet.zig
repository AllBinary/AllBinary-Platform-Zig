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
const GameCanvasRunnableInterface = @import("org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.zig").GameCanvasRunnableInterface;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const ProgressCanvas = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.zig").ProgressCanvas;
const ProgressCanvasFactory = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.zig").ProgressCanvasFactory;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const ClientInformationFactory = @import("org/allbinary/logic/system/security/licensing/ClientInformationFactory.zig").ClientInformationFactory;
const PrimaryThreadPool = @import("org/allbinary/thread/PrimaryThreadPool.zig").PrimaryThreadPool;
const NullGameCanvasRunnable = @import("org/allbinary/game/displayable/canvas/NullGameCanvasRunnable.zig").NullGameCanvasRunnable;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const CreateGameRunnable = @import("org/allbinary/game/midlet/CreateGameRunnable.zig").CreateGameRunnable;
const DemoRunnable = @import("org/allbinary/game/midlet/DemoRunnable.zig").DemoRunnable;
const GameMidlet = @import("org/allbinary/game/midlet/GameMidlet.zig").GameMidlet;

pub const DemoGameMidlet = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.midlet.DemoGameMidlet";
    base: GameMidlet = undefined,
    

    pub fn create1(clientInformationFactory: ?*ClientInformationFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(GameMidlet, "create1", .{ clientInformationFactory }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn isContinue(self: *Self) bool {
        const hashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiver(self, "getStartStateHashtable").getStartStateHashtable());
        if (hashtable != null and Inheritance.receiver(hashtable.?, "size").size() > 0) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn getHighestLevel(self: *Self) i32 {
        _ = self;
        return 1;
    }
    

    // throws Exception
    pub fn createDemoGameCanvasRunnableInterface(self: *Self) ?*GameCanvasRunnableInterface {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.NOT_IMPLEMENTED, self, Inheritance.fieldPointer(self, "commonStrings").*.?.CREATE });
        return Inheritance.upcast(?*GameCanvasRunnableInterface, NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE);
    }
    

    // throws Exception
    pub fn createGameCanvasRunnable(self: *Self, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager) ?*GameCanvasRunnableInterface {
        _ = allBinaryGameLayerManager;
        std.debug.panic("{any}", .{exception: { _ = Inheritance.fieldPointer(self, "commonStrings").*.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn createGameCanvasRunnableInterface(self: *Self) ?*GameCanvasRunnableInterface {
        return Inheritance.upcast(?*GameCanvasRunnableInterface, Inheritance.call(self, "createGameCanvasRunnable", .{ Inheritance.receiver(self, "createGameLayerManager").createGameLayerManager() }));
    }
    

    pub fn demoSetup(self: *Self) void {
        _ = self;
    }
    

    pub fn postDemoSetup(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn setDemo(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, String.literal("setDemo") });
        const progressCanvas: ?*ProgressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
        _ = Inheritance.receiver(progressCanvas.?, "start").start();
        _ = Inheritance.call(PrimaryThreadPool.getInstance().?, "runTask", .{ Inheritance.callStatic(DemoRunnable, "create1", .{ self }) });
    }
    

    // throws Exception
    pub fn createGame(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const CREATE_GAME: ?*String = String.literal("createGame");
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, CREATE_GAME });
        const progressCanvas: ?*ProgressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
        _ = Inheritance.receiver(progressCanvas.?, "start").start();
        const hashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiver(self, "getStartStateHashtable").getStartStateHashtable());
        _ = Inheritance.call(self, "setStartStateHashtable", .{ StdUtil.getInstance().?.NULL_TABLE });
        _ = Inheritance.call(PrimaryThreadPool.getInstance().?, "runTask", .{ Inheritance.callStatic(CreateGameRunnable, "create2", .{ self, hashtable }) });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.END, self, CREATE_GAME });
    }
    

    pub fn isReady(self: *Self) bool {
        _ = self;
        return true;
    }
};

