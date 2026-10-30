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
// package org.allbinary.game.resource

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const GameFeatureControlledInterface = @import("org/allbinary/game/configuration/feature/GameFeatureControlledInterface.zig").GameFeatureControlledInterface;
const GraphicsFeatureFactory = @import("org/allbinary/game/configuration/feature/GraphicsFeatureFactory.zig").GraphicsFeatureFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const ResourceLoadingLevelFactory = @import("org/allbinary/game/resource/ResourceLoadingLevelFactory.zig").ResourceLoadingLevelFactory;

pub const FeaturedResourceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.resource.FeaturedResourceFactory";
    logUtil: ?*LogUtil = null,
    list: ?*BasicArrayList = null,
    commonStrings: ?*CommonStrings = null,
    ANIMATION_FEATURES: ?*String = null,
    IMAGE_LABEL: ?*String = null,
    IMAGE_GRAPHICS_ARRAY: ?*String = null,
    IMAGE_GRAPHICS_ROTATION: ?*String = null,
    SPRITE_QUARTER: ?*String = null,
    SPRITE_FULL: ?*String = null,
    IS_LOADING_LEVEL_LABEL: ?*String = null,
    IS_FEATURE: ?*String = null,
    GAME_FEATURE_CONTROLLED: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.ANIMATION_FEATURES = String.literal("Animation Features: Vector: ");
        this.IMAGE_LABEL = String.literal(" Image: ");
        this.IMAGE_GRAPHICS_ARRAY = String.literal("Image Array: ");
        this.IMAGE_GRAPHICS_ROTATION = String.literal("Image Rotate: ");
        this.SPRITE_QUARTER = String.literal(" Sprite Quarter: ");
        this.SPRITE_FULL = String.literal(" Sprite Full: ");
        this.IS_LOADING_LEVEL_LABEL = String.literal(" isLoadingLevel ");
        this.IS_FEATURE = String.literal(" isFeature: ");
        this.GAME_FEATURE_CONTROLLED = String.literal("GameFeatureControlledInterface: ");
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self, level: i32) void {
        const size: i32 = self.list.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const featureInterface: ?*GameFeatureControlledInterface = Inheritance.cast(?*GameFeatureControlledInterface, self.list.?.objectArray[@intCast(index)]);
            const isLoadingLevel: bool = Inheritance.call(featureInterface.?, "isLoadingLevel", .{ level });
            const isFeature: bool = featureInterface.?.isFeature();
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.GAME_FEATURE_CONTROLLED }).?, "append", .{ Object.toString(Object.of(featureInterface)) }).?, "append", .{ self.IS_LOADING_LEVEL_LABEL }).?, "append", .{ Inheritance.call(ResourceLoadingLevelFactory.getInstance().?, "getLevelString", .{ level }) }).?, "append", .{ CommonSeps.getInstance().?.COLON_SEP }).?, "appendboolean", .{ isLoadingLevel }).?, "append", .{ self.IS_FEATURE }).?, "appendboolean", .{ isFeature }))), self, self.commonStrings.?.INIT });
            if (isLoadingLevel and isFeature) {
                _ = Inheritance.call(featureInterface.?, "init", .{ level });
            }
            }
        }
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        const graphicsFeatureFactory: ?*GraphicsFeatureFactory = Inheritance.upcast(?*GraphicsFeatureFactory, GraphicsFeatureFactory.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.ANIMATION_FEATURES });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ Inheritance.call(features.?, "isFeature", .{ graphicsFeatureFactory.?.VECTOR_GRAPHICS }) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.IMAGE_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ Inheritance.call(features.?, "isFeature", .{ graphicsFeatureFactory.?.IMAGE_GRAPHICS }) });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, self.commonStrings.?.INIT });
        if (Inheritance.call(features.?, "isFeature", .{ graphicsFeatureFactory.?.IMAGE_GRAPHICS })) {
            _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.IMAGE_GRAPHICS_ARRAY });
            _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ Inheritance.call(features.?, "isFeature", .{ graphicsFeatureFactory.?.IMAGE_TO_ARRAY_GRAPHICS }) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.IMAGE_GRAPHICS_ROTATION });
            _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ Inheritance.call(features.?, "isFeature", .{ graphicsFeatureFactory.?.IMAGE_TO_ARRAY_GRAPHICS }) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.SPRITE_QUARTER });
            _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ Inheritance.call(features.?, "isFeature", .{ graphicsFeatureFactory.?.SPRITE_QUARTER_ROTATION_GRAPHICS }) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.SPRITE_FULL });
            _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ Inheritance.call(features.?, "isFeature", .{ graphicsFeatureFactory.?.SPRITE_FULL_GRAPHICS }) });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, self.commonStrings.?.INIT });
        }
    }
    

    pub fn clear(self: *Self) void {
        _ = self.list.?.clear();
    }
    

    pub fn add(self: *Self, featureInterface: ?*GameFeatureControlledInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonLabels.getInstance().?.START_LABEL }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ featureInterface }) }))), self, self.commonStrings.?.ADD });
        _ = Inheritance.call(self.list.?, "add", .{ featureInterface });
    }
    

    pub fn getList(self: *Self) ?*BasicArrayList {
        return self.list;
    }
};

