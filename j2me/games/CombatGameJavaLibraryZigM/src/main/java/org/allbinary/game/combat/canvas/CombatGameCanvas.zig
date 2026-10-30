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
// package org.allbinary.game.combat.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
const DestroyedLayerProcessor = @import("org/allbinary/game/combat/destroy/DestroyedLayerProcessor.zig").DestroyedLayerProcessor;
const DestroyEventCircularStaticPool = @import("org/allbinary/game/combat/destroy/event/DestroyEventCircularStaticPool.zig").DestroyEventCircularStaticPool;
const DestroyedEventHandler = @import("org/allbinary/game/combat/destroy/event/DestroyedEventHandler.zig").DestroyedEventHandler;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const GameFeatureFactory = @import("org/allbinary/game/configuration/feature/GameFeatureFactory.zig").GameFeatureFactory;
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;
const BasicBuildGameInitializerFactory = @import("org/allbinary/game/init/BasicBuildGameInitializerFactory.zig").BasicBuildGameInitializerFactory;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const DropLayerProcessor = @import("org/allbinary/game/layer/drop/DropLayerProcessor.zig").DropLayerProcessor;
const GroupLayerManagerListener = @import("org/allbinary/game/layer/identification/GroupLayerManagerListener.zig").GroupLayerManagerListener;
const HighScoresFactoryInterface = @import("org/allbinary/game/score/HighScoresFactoryInterface.zig").HighScoresFactoryInterface;
const ProgressCanvasFactory = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.zig").ProgressCanvasFactory;
const BasicLayerProcessor = @import("org/allbinary/layer/BasicLayerProcessor.zig").BasicLayerProcessor;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;

pub const CombatGameCanvas = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.combat.canvas.CombatGameCanvas";
    base: AllBinaryGameCanvas = undefined,
    pub var basicLayerProcessor: []?*BasicLayerProcessor = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        basicLayerProcessor = array_N66128: { const array_N66128_array = allocator.alloc(?*BasicLayerProcessor, @intCast(0)) catch unreachable; @memset(array_N66128_array, null); break :array_N66128 array_N66128_array; };
    }
    

    pub fn create5(cmdListener: ?*CommandListener, gameLayerManager: ?*AllBinaryGameLayerManager, highScoresFactoryInterface: ?*HighScoresFactoryInterface, gameInitializationInterfaceFactoryInterface: ?*BasicBuildGameInitializerFactory, buffered: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryGameCanvas, "create5", .{ cmdListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn CombatGameCanvas_init(self: *Self) void {
        _ = Inheritance.call(DestroyEventCircularStaticPool.getInstance().?, "init", .{ self });
        _ = Inheritance.call(ProgressCanvasFactory.getInstance().?, "addNormalPortion", .{ 50, String.literal("Destroy Events") });
    }
    

    // throws Exception
    pub fn initApp(self: *Self, abeClientInformation: ?*AbeClientInformationInterface) void {
        _ = self.CombatGameCanvas_init();
        _ = Inheritance.call(&self.base, "initApp", .{ abeClientInformation });
    }
    

    pub fn initConfigurablePortion(self: *Self, portion: i32) void {
        _ = self;
        _ = DestroyedLayerProcessor.init();
        _ = Inheritance.call(ProgressCanvasFactory.getInstance().?, "addNormalPortion", .{ portion, String.literal("Basic Processors") });
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        const gameFeatureFactory: ?*GameFeatureFactory = Inheritance.upcast(?*GameFeatureFactory, GameFeatureFactory.getInstance());
        if (Inheritance.call(features.?, "isFeature", .{ gameFeatureFactory.?.DROPPED_ITEMS }) and Inheritance.call(features.?, "isFeature", .{ gameFeatureFactory.?.DROPPED_ITEMS_FROM_DEATH })) {
            CombatGameCanvas.basicLayerProcessor = Inheritance.upcast(@TypeOf(CombatGameCanvas.basicLayerProcessor), array_N66965: { const array_N66965_array = allocator.alloc(?*BasicLayerProcessor, @intCast(2)) catch unreachable; @memset(array_N66965_array, null); break :array_N66965 array_N66965_array; });
            CombatGameCanvas.basicLayerProcessor[@intCast(0)] = Inheritance.upcast(@TypeOf(CombatGameCanvas.basicLayerProcessor[@intCast(0)]), DestroyedLayerProcessor.getInstance());
            CombatGameCanvas.basicLayerProcessor[@intCast(1)] = Inheritance.upcast(@TypeOf(CombatGameCanvas.basicLayerProcessor[@intCast(1)]), DropLayerProcessor.getInstance());
        } else {
            CombatGameCanvas.basicLayerProcessor = Inheritance.upcast(@TypeOf(CombatGameCanvas.basicLayerProcessor), array_N66861: { const array_N66861_array = allocator.alloc(?*BasicLayerProcessor, @intCast(1)) catch unreachable; @memset(array_N66861_array, null); break :array_N66861 array_N66861_array; });
            CombatGameCanvas.basicLayerProcessor[@intCast(0)] = Inheritance.upcast(@TypeOf(CombatGameCanvas.basicLayerProcessor[@intCast(0)]), DestroyedLayerProcessor.getInstance());
        }
    }
    

    // throws Exception
    pub fn processPlayingGame(self: *Self) void {
        _ = self.base.processPlayingGame();
        {
            var index: i32 = @as(i32, @intCast(CombatGameCanvas.basicLayerProcessor.len));
            while (value_N67222: { index -= 1; break :value_N67222 index; } >= 0) {
            _ = Inheritance.call(CombatGameCanvas.basicLayerProcessor[@intCast(index)].?, "process", .{ Inheritance.fieldPointer(self, "gameLayerManager").* });
            }
        }
    }
    

    // throws Exception
    pub fn cleanupGame(self: *Self) void {
        _ = self.base.cleanupGame();
        {
            var index: i32 = @as(i32, @intCast(CombatGameCanvas.basicLayerProcessor.len));
            while (value_N67411: { index -= 1; break :value_N67411 index; } >= 0) {
            _ = Inheritance.receiverOf(Inheritance.receiverOf(CombatGameCanvas.basicLayerProcessor[@intCast(index)].?, "getList").getList().?, "clear").clear();
            }
        }
        _ = Inheritance.receiverOf(GroupLayerManagerListener.getInstance().?, "clear").clear();
        _ = Inheritance.receiverOf(GroupLayerManagerListener.getInstance().?, "log").log();
        _ = Inheritance.receiverOf(DestroyedEventHandler.getInstance().?, "removeAllListeners").removeAllListeners();
        _ = self.cleanupManager();
    }
    

    // throws Exception
    pub fn cleanupManager(self: *Self) void {
        _ = Inheritance.receiver(Inheritance.fieldPointer(self, "gameLayerManager").*.?, "cleanup").cleanup();
    }
};

