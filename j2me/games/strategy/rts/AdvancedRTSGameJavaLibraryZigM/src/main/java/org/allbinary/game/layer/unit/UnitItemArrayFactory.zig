// 
// AllBinary Open License Version 1 
// Copyright (c) 2006 AllBinary 
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
// package org.allbinary.game.layer.unit

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
// const ImageItem = @import("javax/microedition/lcdui/ImageItem.zig").ImageItem;
const RTSGameStrings = @import("org/allbinary/game/layer/RTSGameStrings.zig").RTSGameStrings;
const LayerInterfaceFactoryImageItem = @import("org/allbinary/game/layer/item/LayerInterfaceFactoryImageItem.zig").LayerInterfaceFactoryImageItem;
const RTSLayerTextAnimation = @import("org/allbinary/game/layer/item/RTSLayerTextAnimation.zig").RTSLayerTextAnimation;
const BasicGameResources = @import("org/allbinary/game/layer/resources/BasicGameResources.zig").BasicGameResources;
const FlagGameResources = @import("org/allbinary/game/layer/waypoint/FlagGameResources.zig").FlagGameResources;
const ABCustomItem = @import("org/allbinary/graphics/form/item/ABCustomItem.zig").ABCustomItem;
const GameFeatureImageCacheFactory = @import("org/allbinary/image/GameFeatureImageCacheFactory.zig").GameFeatureImageCacheFactory;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const CustomItemUtil = @import("org/allbinary/graphics/form/item/CustomItemUtil.zig").CustomItemUtil;
const ItemArraySingletonFactoryInterface = @import("org/allbinary/graphics/form/item/ItemArraySingletonFactoryInterface.zig").ItemArraySingletonFactoryInterface;
const ImageCache = @import("org/allbinary/image/ImageCache.zig").ImageCache;
const LayerInterfaceFactoryInterface = @import("org/allbinary/layer/LayerInterfaceFactoryInterface.zig").LayerInterfaceFactoryInterface;

pub const UnitItemArrayFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.unit.UnitItemArrayFactory";
    commonSeps: ?*CommonSeps = null,
    basicColor: ?*BasicColor = null,
    resources: []?*BasicGameResources = &.{},
    // Implements ItemArraySingletonFactoryInterface
    var ITEMS: []?*ABCustomItem = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        ITEMS = CustomItemUtil.getInstance().?.CUSTOM_ITEM_ARRAY;
    }

    fn initFields(this: *Self) void {
        this.commonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        this.basicColor = Inheritance.upcast(?*BasicColor, BasicColorFactory.getInstance().?.WHITE);
        
    }
    

    pub fn create1(resources: []?*BasicGameResources) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.resources = resources;
        return this;
    }
    

    // throws Exception
    pub fn createFlagItem(self: *Self, flagResources: ?*FlagGameResources, layerInterfaceFactoryInterface: ?*LayerInterfaceFactoryInterface) ?*ABCustomItem {
        var name: ?*String = Inheritance.upcast(?*String, flagResources.?.NAME);
        const index: i32 = Inheritance.call(name.?, "indexOf", .{ self.commonSeps.?.SPACE });
        if (index >= 0) {
            name = Inheritance.upcast(@TypeOf(name), Inheritance.call(name.?, "substring", .{ index }));
        }
        return Inheritance.upcast(?*ABCustomItem, Inheritance.call(self, "createNamedFlagItem", .{ flagResources, name, layerInterfaceFactoryInterface }));
    }
    

    // throws Exception
    pub fn createNamedFlagItem(self: *Self, flagResources: ?*FlagGameResources, name: ?*String, layerInterfaceFactoryInterface: ?*LayerInterfaceFactoryInterface) ?*ABCustomItem {
        const IMAGE_CACHE: ?*ImageCache = Inheritance.upcast(?*ImageCache, GameFeatureImageCacheFactory.getInstance());
        const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(IMAGE_CACHE.?, "getWithKey", .{ flagResources.?.RESOURCE_ICON }));
        const item: ?*ABCustomItem = Inheritance.upcast(?*ABCustomItem, Inheritance.callStatic(LayerInterfaceFactoryImageItem, "create7", .{ name, image, ImageItem.LAYOUT_DEFAULT, flagResources.?.NAME, self.basicColor, @constCast(&[_]?*Animation{ Inheritance.callStatic(RTSLayerTextAnimation, "create2", .{ RTSGameStrings.getInstance().?.DRAGGABLE, image }) })[0..], layerInterfaceFactoryInterface }));
        return item;
    }
    

    // throws Exception
    pub fn getItems(self: *Self) []?*ABCustomItem {
        _ = self;
        return UnitItemArrayFactory.ITEMS;
    }
    

    pub fn getResources(self: *Self) []?*BasicGameResources {
        return self.resources;
    }
    

    pub fn indexOf(self: *Self, basicGameResources: ?*BasicGameResources) i32 {
        {
            var index: i32 = @as(i32, @intCast(self.resources.len)) - 1;
            while (index >= 0) : (index -= 1) {
            if (Object.same(self.resources[@intCast(index)], basicGameResources)) {
                return index;
            }
            }
        }
        return -1;
    }
};

