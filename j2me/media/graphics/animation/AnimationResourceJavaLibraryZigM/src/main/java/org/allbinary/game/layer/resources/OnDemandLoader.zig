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
// package org.allbinary.game.layer.resources

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BaseResourceAnimationInterfaceFactoryInterfaceFactory = @import("org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory.zig").BaseResourceAnimationInterfaceFactoryInterfaceFactory;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const MainFeatureFactory = @import("org/allbinary/game/configuration/feature/MainFeatureFactory.zig").MainFeatureFactory;
const GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory = @import("org/allbinary/game/layer/GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.zig").GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory;
const LayerPlacementInterfaceBasicArrayListFactoryInterface = @import("org/allbinary/game/layer/LayerPlacementInterfaceBasicArrayListFactoryInterface.zig").LayerPlacementInterfaceBasicArrayListFactoryInterface;
const ResourceLoadingLevelFactory = @import("org/allbinary/game/resource/ResourceLoadingLevelFactory.zig").ResourceLoadingLevelFactory;
const ImageCache = @import("org/allbinary/image/ImageCache.zig").ImageCache;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const OnDemandResources = @import("org/allbinary/game/layer/resources/OnDemandResources.zig").OnDemandResources;
const OnDemandResourcesFactory = @import("org/allbinary/game/layer/resources/OnDemandResourcesFactory.zig").OnDemandResourcesFactory;

pub const OnDemandLoader = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.resources.OnDemandLoader";
    onDemandResourcesFactory: ?*OnDemandResourcesFactory = null,
    gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory: ?*GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory = null,
    resourceAnimationInterfaceFactoryInterfaceFactory: ?*BaseResourceAnimationInterfaceFactoryInterfaceFactory = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
    }
    

    pub fn create3(onDemandResourcesFactory: ?*OnDemandResourcesFactory, gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory: ?*GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, resourceAnimationInterfaceFactoryInterfaceFactory: ?*BaseResourceAnimationInterfaceFactoryInterfaceFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.onDemandResourcesFactory = onDemandResourcesFactory;
        this.gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory = gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory;
        this.resourceAnimationInterfaceFactoryInterfaceFactory = resourceAnimationInterfaceFactoryInterfaceFactory;
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self, imageCache: ?*ImageCache, level: i32, loadingString: ?*String) void {
        const resourceLoadingLevelFactory: ?*ResourceLoadingLevelFactory = Inheritance.upcast(?*ResourceLoadingLevelFactory, ResourceLoadingLevelFactory.getInstance());
        if (Inheritance.call(Features.getInstance().?, "isFeature", .{ MainFeatureFactory.getInstance().?.LOAD_ALL })) {
            if (self.resourceAnimationInterfaceFactoryInterfaceFactory.?.isInitialized()) {
                return;
            }
            _ = Inheritance.call(self, "initAll", .{ imageCache, loadingString });
        } else if (level != Inheritance.receiverOf(resourceLoadingLevelFactory.?.LOAD_ALL.?, "getLevel").getLevel()) {
            const layerPlacementInterfaceBasicArrayListFactoryInterface: ?*LayerPlacementInterfaceBasicArrayListFactoryInterface = Inheritance.upcast(?*LayerPlacementInterfaceBasicArrayListFactoryInterface, Inheritance.call(self.gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.?, "getInstance", .{ level }));
            _ = Inheritance.call(self, "initLevel", .{ layerPlacementInterfaceBasicArrayListFactoryInterface, imageCache, level, loadingString });
        }
    }
    

    // throws Exception
    pub fn initAll(self: *Self, imageCache: ?*ImageCache, loadingString: ?*String) void {
        var index: i32 = 0;
        const portion: i32 = 120;
        var onDemandResources: ?*OnDemandResources = null;
        {
            var onDemandIndex: i32 = self.onDemandResourcesFactory.?.size();
            while (value_N66883: { onDemandIndex -= 1; break :value_N66883 onDemandIndex; } >= 0) {
            onDemandResources = Inheritance.upcast(@TypeOf(onDemandResources), Inheritance.call(self.onDemandResourcesFactory.?, "remove", .{ onDemandIndex }));
            if (!Object.same(onDemandResources, OnDemandResources.NULL_ON_DEMAND_RESOURCES)) {
                index = Inheritance.call(onDemandResources.?, "initAt", .{ imageCache, self.resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index });
            }
            }
        }
    }
    

    // throws Exception
    pub fn initLevel(self: *Self, layerPlacementInterfaceBasicArrayListFactoryInterface: ?*LayerPlacementInterfaceBasicArrayListFactoryInterface, imageCache: ?*ImageCache, level: i32, loadingString: ?*String) void {
        _ = level;
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        const portion: i32 = 120;
        var index: i32 = 0;
        const onDemandArray: []i32 = layerPlacementInterfaceBasicArrayListFactoryInterface.?.getOnDemandResources();
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ commonStrings.?.START }).?, "appendint", .{ @as(i32, @intCast(onDemandArray.len)) }))), self, String.literal("initLevel") });
        var onDemandResources: ?*OnDemandResources = null;
        {
            var onDemandIndex: i32 = @as(i32, @intCast(onDemandArray.len));
            while (value_N67523: { onDemandIndex -= 1; break :value_N67523 onDemandIndex; } >= 0) {
            onDemandResources = Inheritance.upcast(@TypeOf(onDemandResources), Inheritance.call(self.onDemandResourcesFactory.?, "remove", .{ onDemandArray[@intCast(onDemandIndex)] }));
            if (!Object.same(onDemandResources, OnDemandResources.NULL_ON_DEMAND_RESOURCES)) {
                index = Inheritance.call(onDemandResources.?, "initAt", .{ imageCache, self.resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index });
            }
            }
        }
    }
};

