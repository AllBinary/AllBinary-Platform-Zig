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
// package org.allbinary.game.init

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
const FeaturedAnimationInterfaceFactoryInterfaceFactory = @import("org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.zig").FeaturedAnimationInterfaceFactoryInterfaceFactory;
const GameConfigurationCentral = @import("org/allbinary/game/configuration/GameConfigurationCentral.zig").GameConfigurationCentral;
const ChangedGameFeatureListener = @import("org/allbinary/game/configuration/event/ChangedGameFeatureListener.zig").ChangedGameFeatureListener;
const InputFeatureFactory = @import("org/allbinary/game/configuration/feature/InputFeatureFactory.zig").InputFeatureFactory;
const MainFeatureFactory = @import("org/allbinary/game/configuration/feature/MainFeatureFactory.zig").MainFeatureFactory;
const PlatformInputMappingFactory = @import("org/allbinary/game/input/PlatformInputMappingFactory.zig").PlatformInputMappingFactory;
const GameKeyEventFactory = @import("org/allbinary/game/input/event/GameKeyEventFactory.zig").GameKeyEventFactory;
const FeaturedResourceRelativeRelationshipFactory = @import("org/allbinary/game/resource/FeaturedResourceRelativeRelationshipFactory.zig").FeaturedResourceRelativeRelationshipFactory;
const ResourceInitialization = @import("org/allbinary/game/resource/ResourceInitialization.zig").ResourceInitialization;
const ResourceLoadingLevelFactory = @import("org/allbinary/game/resource/ResourceLoadingLevelFactory.zig").ResourceLoadingLevelFactory;
const ProgressCanvas = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.zig").ProgressCanvas;
const ProgressCanvasFactory = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.zig").ProgressCanvasFactory;
const GameFeatureImageCacheFactory = @import("org/allbinary/image/GameFeatureImageCacheFactory.zig").GameFeatureImageCacheFactory;
const CompleteMotionGestureInputToGameMotionGestureInput = @import("org/allbinary/input/motion/CompleteMotionGestureInputToGameMotionGestureInput.zig").CompleteMotionGestureInputToGameMotionGestureInput;
const BasicTouchInputFactory = @import("org/allbinary/input/motion/button/BasicTouchInputFactory.zig").BasicTouchInputFactory;
const CancelTouchButtonInputFactory = @import("org/allbinary/input/motion/button/CancelTouchButtonInputFactory.zig").CancelTouchButtonInputFactory;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const GameInitializationInterface = @import("org/allbinary/game/init/GameInitializationInterface.zig").GameInitializationInterface;

pub const BaseGameInitialization = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.init.BaseGameInitialization";
    pub const java_interfaces = .{ GameInitializationInterface };
    resourceInitializationArray: []?*ResourceInitialization = &.{},
    portion: i32 = 0,
    initialized: bool = false,
    EARLY_RESOURCES: i32 = 0,
    GAME_RESOURCES: i32 = 0,
    EARLY_CHANGABLE_RESOURCES: i32 = 0,
    GAME_CHANGABLE_RESOURCES: i32 = 0,
    gameInitialized: bool = false,
    allLoaded: bool = false,
    // Implements GameInitializationInterface
    pub var NULL_BASE_GAME_INITIALIZATION: ?*BaseGameInitialization = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_BASE_GAME_INITIALIZATION = Inheritance.callStatic(BaseGameInitialization, "create2", .{ array_N66215: { const array_N66215_array = allocator.alloc(?*ResourceInitialization, @intCast(0)) catch unreachable; @memset(array_N66215_array, null); break :array_N66215 array_N66215_array; }, 0 });
    }

    fn initFields(this: *Self) void {
        
        
        this.initialized = false;
        this.EARLY_RESOURCES = 0;
        this.GAME_RESOURCES = 1;
        this.EARLY_CHANGABLE_RESOURCES = 2;
        this.GAME_CHANGABLE_RESOURCES = 3;
        this.gameInitialized = false;
        this.allLoaded = false;
    }
    

    pub fn create2(resourceInitializationArray: []?*ResourceInitialization, portion: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.resourceInitializationArray = resourceInitializationArray;
        this.portion = portion;
        return this;
    }
    

    // throws Exception
    pub fn initKey(self: *Self, portion: i32) void {
        _ = portion;
        _ = self;
    }
    

    // throws Exception
    pub fn initKeyMapping(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, portion: i32) void {
        _ = portion;
        _ = self;
        if (Inheritance.call(ChangedGameFeatureListener.getInstance().?, "isChangedFeature", .{ InputFeatureFactory.getInstance().?.INPUT_MAPPING })) {
            _ = Inheritance.call(Inheritance.receiverOf(PlatformInputMappingFactory.getInstance().?, "getPersistentInputMappingInstance").getPersistentInputMappingInstance().?, "init", .{ abeClientInformation });
            _ = Inheritance.call(ProgressCanvasFactory.getInstance().?, "addNormalPortion", .{ 50, String.literal("Game Keys") });
            _ = Inheritance.call(ChangedGameFeatureListener.getInstance().?, "remove", .{ InputFeatureFactory.getInstance().?.INPUT_MAPPING });
        }
    }
    

    // throws Exception
    pub fn init(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, commandListener: ?*CommandListener, level: i32) void {
        _ = commandListener;
        const resourceLoadingLevelFactory: ?*ResourceLoadingLevelFactory = Inheritance.upcast(?*ResourceLoadingLevelFactory, ResourceLoadingLevelFactory.getInstance());
        if (!self.isInitialized() and (level == Inheritance.receiverOf(resourceLoadingLevelFactory.?.LOAD_ALL.?, "getLevel").getLevel() or level == Inheritance.receiverOf(resourceLoadingLevelFactory.?.LOAD_EARLY.?, "getLevel").getLevel())) {
            var localPortion: i32 = 40;
            if (level == Inheritance.receiverOf(resourceLoadingLevelFactory.?.LOAD_EARLY.?, "getLevel").getLevel()) {
                localPortion = 8;
            }
            _ = Inheritance.call(self, "setInitialized", .{ true });
            _ = Inheritance.call(self, "initKey", .{ self.getPortion() });
            _ = Inheritance.call(self, "initKeyMapping", .{ abeClientInformation, self.getPortion() });
            _ = Inheritance.receiverOf(GameKeyEventFactory.getInstance().?, "init").init();
            const progressCanvas: ?*ProgressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
            _ = Inheritance.call(progressCanvas.?, "addNormalPortion", .{ localPortion, String.literal("Game Key Events") });
            _ = Inheritance.call(BasicTouchInputFactory.getInstance().?, "init", .{ Inheritance.receiverOf(Inheritance.receiverOf(PlatformInputMappingFactory.getInstance().?, "getPersistentInputMappingInstance").getPersistentInputMappingInstance().?, "getInputMapping").getInputMapping() });
            _ = CancelTouchButtonInputFactory.getInstance();
            _ = Inheritance.call(progressCanvas.?, "addNormalPortion", .{ localPortion, String.literal("Touch Input") });
            _ = Inheritance.receiverOf(CompleteMotionGestureInputToGameMotionGestureInput.getInstance().?, "init").init();
            _ = Inheritance.call(progressCanvas.?, "addNormalPortion", .{ localPortion, String.literal("Motion Input") });
            _ = GameFeatureImageCacheFactory.init();
            _ = Inheritance.call(progressCanvas.?, "addNormalPortion", .{ localPortion, String.literal("Image Cache") });
            _ = Inheritance.receiver(self.resourceInitializationArray[@intCast(self.EARLY_RESOURCES)].?, "init").init();
        }
    }
    

    // throws Exception
    pub fn resourceInitialization(self: *Self, level: i32) void {
        const resourceLoadingLevelFactory: ?*ResourceLoadingLevelFactory = Inheritance.upcast(?*ResourceLoadingLevelFactory, ResourceLoadingLevelFactory.getInstance());
        if (self.resourceAnimationChange() and level == Inheritance.receiverOf(resourceLoadingLevelFactory.?.LOAD_EARLY.?, "getLevel").getLevel()) {
            _ = self.clearResources();
            _ = Inheritance.receiver(self.resourceInitializationArray[@intCast(self.EARLY_CHANGABLE_RESOURCES)].?, "init").init();
        }
        if (self.resourceAnimationChange() and level == Inheritance.receiverOf(resourceLoadingLevelFactory.?.LOAD_ALL.?, "getLevel").getLevel()) {
            if (self.allLoaded) {
                _ = self.clearResources();
            }
            if (Inheritance.receiverOf(Inheritance.receiverOf(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().?, "getList").getList().?, "size").size() == 0) {
                _ = Inheritance.receiver(self.resourceInitializationArray[@intCast(self.EARLY_CHANGABLE_RESOURCES)].?, "init").init();
            }
            _ = Inheritance.receiver(self.resourceInitializationArray[@intCast(self.GAME_CHANGABLE_RESOURCES)].?, "init").init();
            self.allLoaded = true;
        }
    }
    

    pub fn resourceAnimationChange(self: *Self) bool {
        _ = self;
        const changedGameFeatureListener: ?*ChangedGameFeatureListener = Inheritance.upcast(?*ChangedGameFeatureListener, ChangedGameFeatureListener.getInstance());
        const gameConfigurationCentral: ?*GameConfigurationCentral = Inheritance.upcast(?*GameConfigurationCentral, GameConfigurationCentral.getInstance());
        if (Inheritance.call(changedGameFeatureListener.?, "isChangedGameConfiguration", .{ gameConfigurationCentral.?.SCALE })) {
            return true;
        }
        if (Inheritance.call(ChangedGameFeatureListener.getInstance().?, "isChangedFeature", .{ MainFeatureFactory.getInstance().?.STATIC })) {
            return true;
        }
        return false;
    }
    

    pub fn clearResources(self: *Self) void {
        self.allLoaded = false;
        _ = GameFeatureImageCacheFactory.releaseAll();
        const featuredAnimationInterfaceFactoryInterfaceFactory: ?*FeaturedAnimationInterfaceFactoryInterfaceFactory = Inheritance.upcast(?*FeaturedAnimationInterfaceFactoryInterfaceFactory, FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance());
        _ = Inheritance.receiver(featuredAnimationInterfaceFactoryInterfaceFactory.?, "clear").clear();
        _ = Inheritance.receiverOf(FeaturedResourceRelativeRelationshipFactory.getInstance().?, "clear").clear();
    }
    

    pub fn setGameInitialized(self: *Self, gameInitialized: bool) void {
        self.gameInitialized = gameInitialized;
    }
    

    pub fn isGameInitialized(self: *Self) bool {
        return self.gameInitialized;
    }
    

    pub fn getPortion(self: *Self) i32 {
        return self.portion;
    }
    

    pub fn setInitialized(self: *Self, initialized: bool) void {
        self.initialized = initialized;
    }
    

    pub fn isInitialized(self: *Self) bool {
        return self.initialized;
    }
};

