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
const ChangedGameFeatureListener = @import("org/allbinary/game/configuration/event/ChangedGameFeatureListener.zig").ChangedGameFeatureListener;
const GameInitializedEvent = @import("org/allbinary/game/configuration/event/GameInitializedEvent.zig").GameInitializedEvent;
const GameInitializedEventHandler = @import("org/allbinary/game/configuration/event/GameInitializedEventHandler.zig").GameInitializedEventHandler;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const MainFeatureFactory = @import("org/allbinary/game/configuration/feature/MainFeatureFactory.zig").MainFeatureFactory;
const ResourceLoadingLevelFactory = @import("org/allbinary/game/resource/ResourceLoadingLevelFactory.zig").ResourceLoadingLevelFactory;
const MyCanvas = @import("org/allbinary/graphics/displayable/MyCanvas.zig").MyCanvas;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const BasicBuildGameInitializerFactory = @import("org/allbinary/game/init/BasicBuildGameInitializerFactory.zig").BasicBuildGameInitializerFactory;
const GameInitializationInterface = @import("org/allbinary/game/init/GameInitializationInterface.zig").GameInitializationInterface;

pub const GameInitializationUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.init.GameInitializationUtil";
    EVENT: ?*GameInitializedEvent = null,
    var instance: ?*GameInitializationUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GameInitializationUtil.create();
    }

    fn initFields(this: *Self) void {
        this.EVENT = Inheritance.callStatic(GameInitializedEvent, "create1", .{ this });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn initDemo(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, canvas: ?*MyCanvas, gameInitializationInterfaceFactoryInterface: ?*BasicBuildGameInitializerFactory) void {
        const mainFeatureFactory: ?*MainFeatureFactory = Inheritance.upcast(?*MainFeatureFactory, MainFeatureFactory.getInstance());
        if (Inheritance.call(ChangedGameFeatureListener.getInstance().?, "isChangedFeature", .{ mainFeatureFactory.?.STATIC })) {
            const gameInitializationInterface: ?*GameInitializationInterface = Inheritance.upcast(?*GameInitializationInterface, gameInitializationInterfaceFactoryInterface.?.getInstance());
            const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
            if (Inheritance.call(features.?, "isFeature", .{ mainFeatureFactory.?.LOAD_ALL })) {
                _ = Inheritance.call(self, "initGame", .{ abeClientInformation, canvas, gameInitializationInterfaceFactoryInterface });
            } else if (Inheritance.call(features.?, "isFeature", .{ mainFeatureFactory.?.LOAD_ONDEMAND })) {
                const resourceLoadingLevelFactory: ?*ResourceLoadingLevelFactory = Inheritance.upcast(?*ResourceLoadingLevelFactory, ResourceLoadingLevelFactory.getInstance());
                _ = Inheritance.call(gameInitializationInterface.?, "init", .{ abeClientInformation, Inheritance.receiver(canvas.?, "getCustomCommandListener").getCustomCommandListener(), Inheritance.receiverOf(resourceLoadingLevelFactory.?.LOAD_EARLY.?, "getLevel").getLevel() });
                _ = Inheritance.call(self.EVENT.?, "setResourceLoadingLevel", .{ resourceLoadingLevelFactory.?.LOAD_EARLY });
            } else {
                std.debug.panic("{any}", .{exception: { _ = String.literal("No Loading Feature Available"); break :exception error.Exception; }});
            }
            _ = Inheritance.call(GameInitializedEventHandler.getInstance().?, "fireEvent", .{ self.EVENT });
        }
    }
    

    // throws Exception
    pub fn initGame(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, canvas: ?*MyCanvas, gameInitializationInterfaceFactoryInterface: ?*BasicBuildGameInitializerFactory) void {
        if (Inheritance.call(ChangedGameFeatureListener.getInstance().?, "isChangedFeature", .{ MainFeatureFactory.getInstance().?.STATIC })) {
            const gameInitializationInterface: ?*GameInitializationInterface = Inheritance.upcast(?*GameInitializationInterface, gameInitializationInterfaceFactoryInterface.?.getInstance());
            const resourceLoadingLevelFactory: ?*ResourceLoadingLevelFactory = Inheritance.upcast(?*ResourceLoadingLevelFactory, ResourceLoadingLevelFactory.getInstance());
            _ = Inheritance.call(gameInitializationInterface.?, "init", .{ abeClientInformation, Inheritance.receiver(canvas.?, "getCustomCommandListener").getCustomCommandListener(), Inheritance.receiverOf(resourceLoadingLevelFactory.?.LOAD_ALL.?, "getLevel").getLevel() });
            _ = Inheritance.call(self.EVENT.?, "setResourceLoadingLevel", .{ resourceLoadingLevelFactory.?.LOAD_ALL });
            _ = Inheritance.call(GameInitializedEventHandler.getInstance().?, "fireEvent", .{ self.EVENT });
            _ = Inheritance.call(ChangedGameFeatureListener.getInstance().?, "remove", .{ MainFeatureFactory.getInstance().?.STATIC });
        }
    }
    

    pub fn getInstance() ?*GameInitializationUtil {
        return Inheritance.upcast(?*GameInitializationUtil, GameInitializationUtil.instance);
    }
};

