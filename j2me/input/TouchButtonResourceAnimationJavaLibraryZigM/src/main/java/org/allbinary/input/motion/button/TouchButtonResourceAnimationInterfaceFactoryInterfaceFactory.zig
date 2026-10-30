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
// package org.allbinary.input.motion.button

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const AnimationBehaviorFactory = @import("org/allbinary/animation/AnimationBehaviorFactory.zig").AnimationBehaviorFactory;
const NullAnimationFactory = @import("org/allbinary/animation/NullAnimationFactory.zig").NullAnimationFactory;
const OneRowSpriteIndexedAnimationFactory = @import("org/allbinary/animation/image/sprite/OneRowSpriteIndexedAnimationFactory.zig").OneRowSpriteIndexedAnimationFactory;
const BaseResourceAnimationInterfaceFactoryInterfaceFactory = @import("org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory.zig").BaseResourceAnimationInterfaceFactoryInterfaceFactory;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const ResourceLoadingLevelFactory = @import("org/allbinary/game/resource/ResourceLoadingLevelFactory.zig").ResourceLoadingLevelFactory;
const ProgressCanvas = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.zig").ProgressCanvas;
const ProgressCanvasFactory = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.zig").ProgressCanvasFactory;
const OpenGLFeatureFactory = @import("org/allbinary/graphics/opengles/OpenGLFeatureFactory.zig").OpenGLFeatureFactory;
const ImageCache = @import("org/allbinary/image/ImageCache.zig").ImageCache;
const ImageCacheFactory = @import("org/allbinary/image/ImageCacheFactory.zig").ImageCacheFactory;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const OperatingSystemFactory = @import("org/allbinary/logic/system/os/OperatingSystemFactory.zig").OperatingSystemFactory;
const ImageCompleteUtil = @import("org/allbinary/media/image/ImageCompleteUtil.zig").ImageCompleteUtil;
const TouchButtonBlankResource = @import("org/allbinary/input/motion/button/TouchButtonBlankResource.zig").TouchButtonBlankResource;
const TouchButtonDownResource = @import("org/allbinary/input/motion/button/TouchButtonDownResource.zig").TouchButtonDownResource;
const TouchButtonGenericActionResource = @import("org/allbinary/input/motion/button/TouchButtonGenericActionResource.zig").TouchButtonGenericActionResource;
const TouchButtonResource = @import("org/allbinary/input/motion/button/TouchButtonResource.zig").TouchButtonResource;
const TouchButtonStartResource = @import("org/allbinary/input/motion/button/TouchButtonStartResource.zig").TouchButtonStartResource;
const TouchButtonStrafeLeftResource = @import("org/allbinary/input/motion/button/TouchButtonStrafeLeftResource.zig").TouchButtonStrafeLeftResource;
const TouchButtonStrafeRightResource = @import("org/allbinary/input/motion/button/TouchButtonStrafeRightResource.zig").TouchButtonStrafeRightResource;
const TouchButtonTurnLeftResource = @import("org/allbinary/input/motion/button/TouchButtonTurnLeftResource.zig").TouchButtonTurnLeftResource;
const TouchButtonTurnRightResource = @import("org/allbinary/input/motion/button/TouchButtonTurnRightResource.zig").TouchButtonTurnRightResource;
const TouchButtonUpResource = @import("org/allbinary/input/motion/button/TouchButtonUpResource.zig").TouchButtonUpResource;

pub const TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory";
    base: BaseResourceAnimationInterfaceFactoryInterfaceFactory = undefined,
    

    pub fn createFactory() ?*TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory {
        return Inheritance.callStatic(TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory, "create1", .{ String.literal("TouchButton Animations") });
    }
    

    pub fn create1(name: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BaseResourceAnimationInterfaceFactoryInterfaceFactory, "create4", .{ name, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable(), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable(), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable() }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self, level: i32) void {
        _ = Inheritance.call(self, "initImageCache", .{ ImageCacheFactory.getInstance(), level });
    }
    

    // throws Exception
    pub fn initImageCache(self: *Self, imageCache: ?*ImageCache, level: i32) void {
        if (Inheritance.receiver(self, "isInitialized").isInitialized()) {
            return;
        }
        const portion: i32 = 140;
        const loadingString: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Object.toString(Object.of(self)) }).?, "append", .{ String.literal(" Loading: ") }))));
        var index: i32 = 0;
        const progressCanvas: ?*ProgressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
        _ = Inheritance.call(progressCanvas.?, "addPortion", .{ portion, loadingString, value_N66669: { const value_N66669_value = index; index += 1; break :value_N66669 value_N66669_value; } });
        const touchButtonBlankResource: ?*TouchButtonResource = Inheritance.upcast(?*TouchButtonResource, TouchButtonBlankResource.getInstance());
        const touchButtonGenericActionResource: ?*TouchButtonResource = Inheritance.upcast(?*TouchButtonResource, TouchButtonGenericActionResource.getInstance());
        const touchButtonStartResource: ?*TouchButtonResource = Inheritance.upcast(?*TouchButtonResource, TouchButtonStartResource.getInstance());
        const touchButtonUpResource: ?*TouchButtonResource = Inheritance.upcast(?*TouchButtonResource, TouchButtonUpResource.getInstance());
        const touchButtonDownResource: ?*TouchButtonResource = Inheritance.upcast(?*TouchButtonResource, TouchButtonDownResource.getInstance());
        const touchButtonTurnLeftResource: ?*TouchButtonResource = Inheritance.upcast(?*TouchButtonResource, TouchButtonTurnLeftResource.getInstance());
        const touchButtonTurnRightResource: ?*TouchButtonResource = Inheritance.upcast(?*TouchButtonResource, TouchButtonTurnRightResource.getInstance());
        const touchButtonStrafeLeftResource: ?*TouchButtonResource = Inheritance.upcast(?*TouchButtonResource, TouchButtonStrafeLeftResource.getInstance());
        const touchButtonStrafeRightResource: ?*TouchButtonResource = Inheritance.upcast(?*TouchButtonResource, TouchButtonStrafeRightResource.getInstance());
        const touchButtonBlankResourceImage: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(imageCache.?, "getWithKey", .{ touchButtonBlankResource.?.RESOURCE }));
        const touchButtonGenericActionResourceImage: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(imageCache.?, "getWithKey", .{ touchButtonGenericActionResource.?.RESOURCE }));
        const touchButtonStartResourceImage: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(imageCache.?, "getWithKey", .{ touchButtonStartResource.?.RESOURCE }));
        const touchButtonUpResourceImage: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(imageCache.?, "getWithKey", .{ touchButtonUpResource.?.RESOURCE }));
        const touchButtonDownResourceImage: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(imageCache.?, "getWithKey", .{ touchButtonDownResource.?.RESOURCE }));
        const touchButtonTurnLeftResourceImage: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(imageCache.?, "getWithKey", .{ touchButtonTurnLeftResource.?.RESOURCE }));
        const touchButtonTurnRightResourceImage: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(imageCache.?, "getWithKey", .{ touchButtonTurnRightResource.?.RESOURCE }));
        const touchButtonStrafeLeftResourceImage: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(imageCache.?, "getWithKey", .{ touchButtonStrafeLeftResource.?.RESOURCE }));
        const touchButtonStrafeRightResourceImage: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(imageCache.?, "getWithKey", .{ touchButtonStrafeRightResource.?.RESOURCE }));
        const nullAnimationFactory: ?*NullAnimationFactory = Inheritance.upcast(?*NullAnimationFactory, NullAnimationFactory.getFactoryInstance());
        if (Inheritance.receiverOf(Inheritance.receiverOf(OperatingSystemFactory.getInstance().?, "getOperatingSystemInstance").getOperatingSystemInstance().?, "isOverScan").isOverScan()) {
            _ = Inheritance.call(imageCache.?, "getWithKey", .{ TouchButtonStartResource.getInstance().?.HINT });
        }
        _ = Inheritance.call(progressCanvas.?, "addPortion", .{ portion, loadingString, value_N67932: { const value_N67932_value = index; index += 1; break :value_N67932 value_N67932_value; } });
        const imageCompleteUtil: ?*ImageCompleteUtil = Inheritance.upcast(?*ImageCompleteUtil, ImageCompleteUtil.getInstance());
        _ = Inheritance.call(progressCanvas.?, "addPortion", .{ portion, loadingString, value_N68034: { const value_N68034_value = index; index += 1; break :value_N68034 value_N68034_value; } });
        _ = Inheritance.call(imageCompleteUtil.?, "waitForImage", .{ touchButtonBlankResourceImage, touchButtonBlankResource.?.RESOURCE });
        _ = Inheritance.call(self, "add", .{ touchButtonBlankResource.?.RESOURCE, Inheritance.callStatic(OneRowSpriteIndexedAnimationFactory, "createFactory", .{ touchButtonBlankResourceImage, AnimationBehaviorFactory.getInstance() }) });
        _ = Inheritance.call(self, "add", .{ touchButtonBlankResource.?.HINT, nullAnimationFactory });
        _ = Inheritance.call(progressCanvas.?, "addPortion", .{ portion, loadingString, value_N68252: { const value_N68252_value = index; index += 1; break :value_N68252 value_N68252_value; } });
        _ = Inheritance.call(imageCompleteUtil.?, "waitForImage", .{ touchButtonGenericActionResourceImage, touchButtonGenericActionResource.?.RESOURCE });
        _ = Inheritance.call(self, "add", .{ touchButtonGenericActionResource.?.RESOURCE, Inheritance.callStatic(OneRowSpriteIndexedAnimationFactory, "createFactory", .{ touchButtonGenericActionResourceImage, AnimationBehaviorFactory.getInstance() }) });
        _ = Inheritance.call(self, "add", .{ touchButtonGenericActionResource.?.HINT, nullAnimationFactory });
        _ = Inheritance.call(progressCanvas.?, "addPortion", .{ portion, loadingString, value_N68470: { const value_N68470_value = index; index += 1; break :value_N68470 value_N68470_value; } });
        _ = Inheritance.call(imageCompleteUtil.?, "waitForImage", .{ touchButtonStartResourceImage, touchButtonStartResource.?.RESOURCE });
        _ = Inheritance.call(self, "add", .{ touchButtonStartResource.?.RESOURCE, Inheritance.callStatic(OneRowSpriteIndexedAnimationFactory, "createFactory", .{ touchButtonStartResourceImage, AnimationBehaviorFactory.getInstance() }) });
        _ = Inheritance.call(progressCanvas.?, "addPortion", .{ portion, loadingString, value_N68646: { const value_N68646_value = index; index += 1; break :value_N68646 value_N68646_value; } });
        _ = Inheritance.call(imageCompleteUtil.?, "waitForImage", .{ touchButtonUpResourceImage, touchButtonUpResource.?.RESOURCE });
        _ = Inheritance.call(self, "add", .{ touchButtonUpResource.?.RESOURCE, Inheritance.callStatic(OneRowSpriteIndexedAnimationFactory, "createFactory", .{ touchButtonUpResourceImage, AnimationBehaviorFactory.getInstance() }) });
        _ = Inheritance.call(self, "add", .{ touchButtonUpResource.?.HINT, nullAnimationFactory });
        _ = Inheritance.call(progressCanvas.?, "addPortion", .{ portion, loadingString, value_N68864: { const value_N68864_value = index; index += 1; break :value_N68864 value_N68864_value; } });
        _ = Inheritance.call(imageCompleteUtil.?, "waitForImage", .{ touchButtonDownResourceImage, touchButtonDownResource.?.RESOURCE });
        _ = Inheritance.call(self, "add", .{ touchButtonDownResource.?.RESOURCE, Inheritance.callStatic(OneRowSpriteIndexedAnimationFactory, "createFactory", .{ touchButtonDownResourceImage, AnimationBehaviorFactory.getInstance() }) });
        _ = Inheritance.call(self, "add", .{ touchButtonDownResource.?.HINT, nullAnimationFactory });
        _ = Inheritance.call(progressCanvas.?, "addPortion", .{ portion, loadingString, value_N69082: { const value_N69082_value = index; index += 1; break :value_N69082 value_N69082_value; } });
        _ = Inheritance.call(imageCompleteUtil.?, "waitForImage", .{ touchButtonTurnLeftResourceImage, touchButtonTurnLeftResource.?.RESOURCE });
        _ = Inheritance.call(self, "add", .{ touchButtonTurnLeftResource.?.RESOURCE, Inheritance.callStatic(OneRowSpriteIndexedAnimationFactory, "createFactory", .{ touchButtonTurnLeftResourceImage, AnimationBehaviorFactory.getInstance() }) });
        _ = Inheritance.call(self, "add", .{ touchButtonTurnLeftResource.?.HINT, nullAnimationFactory });
        _ = Inheritance.call(progressCanvas.?, "addPortion", .{ portion, loadingString, value_N69300: { const value_N69300_value = index; index += 1; break :value_N69300 value_N69300_value; } });
        _ = Inheritance.call(imageCompleteUtil.?, "waitForImage", .{ touchButtonTurnRightResourceImage, touchButtonTurnRightResource.?.RESOURCE });
        _ = Inheritance.call(self, "add", .{ touchButtonTurnRightResource.?.RESOURCE, Inheritance.callStatic(OneRowSpriteIndexedAnimationFactory, "createFactory", .{ touchButtonTurnRightResourceImage, AnimationBehaviorFactory.getInstance() }) });
        _ = Inheritance.call(self, "add", .{ touchButtonTurnRightResource.?.HINT, nullAnimationFactory });
        _ = Inheritance.call(progressCanvas.?, "addPortion", .{ portion, loadingString, value_N69518: { const value_N69518_value = index; index += 1; break :value_N69518 value_N69518_value; } });
        _ = Inheritance.call(imageCompleteUtil.?, "waitForImage", .{ touchButtonStrafeLeftResourceImage, touchButtonStrafeLeftResource.?.RESOURCE });
        _ = Inheritance.call(self, "add", .{ touchButtonStrafeLeftResource.?.RESOURCE, Inheritance.callStatic(OneRowSpriteIndexedAnimationFactory, "createFactory", .{ touchButtonStrafeLeftResourceImage, AnimationBehaviorFactory.getInstance() }) });
        _ = Inheritance.call(self, "add", .{ touchButtonStrafeLeftResource.?.HINT, nullAnimationFactory });
        _ = Inheritance.call(progressCanvas.?, "addPortion", .{ portion, loadingString, value_N69736: { const value_N69736_value = index; index += 1; break :value_N69736 value_N69736_value; } });
        _ = Inheritance.call(imageCompleteUtil.?, "waitForImage", .{ touchButtonStrafeRightResourceImage, touchButtonStrafeRightResource.?.RESOURCE });
        _ = Inheritance.call(self, "add", .{ touchButtonStrafeRightResource.?.RESOURCE, Inheritance.callStatic(OneRowSpriteIndexedAnimationFactory, "createFactory", .{ touchButtonStrafeRightResourceImage, AnimationBehaviorFactory.getInstance() }) });
        _ = Inheritance.call(self, "add", .{ touchButtonStrafeRightResource.?.HINT, nullAnimationFactory });
        if (Inheritance.receiverOf(Inheritance.receiverOf(OperatingSystemFactory.getInstance().?, "getOperatingSystemInstance").getOperatingSystemInstance().?, "isOverScan").isOverScan()) {
            const touchButtonStartHintResource: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(imageCache.?, "getWithKey", .{ TouchButtonStartResource.getInstance().?.HINT }));
            _ = Inheritance.call(self, "add", .{ touchButtonStartResource.?.HINT, Inheritance.callStatic(OneRowSpriteIndexedAnimationFactory, "createFactory", .{ touchButtonStartHintResource, AnimationBehaviorFactory.getInstance() }) });
        } else {
            _ = Inheritance.call(self, "add", .{ touchButtonStartResource.?.HINT, nullAnimationFactory });
        }
        _ = Inheritance.call(&self.base, "init", .{ level });
    }
    

    pub fn isLoadingLevel(self: *Self, level: i32) bool {
        const resourceLoadingLevelFactory: ?*ResourceLoadingLevelFactory = Inheritance.upcast(?*ResourceLoadingLevelFactory, ResourceLoadingLevelFactory.getInstance());
        if (level == Inheritance.receiverOf(resourceLoadingLevelFactory.?.LOAD_TOUCH.?, "getLevel").getLevel()) {
            return true;
        } else {
            return Inheritance.call(&self.base, "isLoadingLevel", .{ level });
        }
    }
    

    pub fn isFeature(self: *Self) bool {
        _ = self;
        if (!Inheritance.call(Features.getInstance().?, "isDefault", .{ OpenGLFeatureFactory.getInstance().?.OPENGL })) {
            return true;
        } else {
            return false;
        }
    }
};

