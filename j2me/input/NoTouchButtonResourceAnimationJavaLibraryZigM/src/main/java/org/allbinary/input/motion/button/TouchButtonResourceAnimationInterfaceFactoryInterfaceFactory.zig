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
const BaseResourceAnimationInterfaceFactoryInterfaceFactory = @import("org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory.zig").BaseResourceAnimationInterfaceFactoryInterfaceFactory;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const ResourceLoadingLevelFactory = @import("org/allbinary/game/resource/ResourceLoadingLevelFactory.zig").ResourceLoadingLevelFactory;
const OpenGLFeatureFactory = @import("org/allbinary/graphics/opengles/OpenGLFeatureFactory.zig").OpenGLFeatureFactory;
const ImageCache = @import("org/allbinary/image/ImageCache.zig").ImageCache;
const ImageCacheFactory = @import("org/allbinary/image/ImageCacheFactory.zig").ImageCacheFactory;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;

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
        _ = imageCache;
        if (Inheritance.receiver(self, "isInitialized").isInitialized()) {
            return;
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

