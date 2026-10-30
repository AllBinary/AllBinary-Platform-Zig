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
// package org.allbinary.animation.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayListResetablePool = @import("org/allbinary/logic/util/cache/BasicArrayListResetablePool.zig").BasicArrayListResetablePool;
const CacheableInterface = @import("org/allbinary/logic/util/cache/CacheableInterface.zig").CacheableInterface;
const CacheableInterfaceFactoryInterface = @import("org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface.zig").CacheableInterfaceFactoryInterface;
const PoolInterface = @import("org/allbinary/logic/util/cache/PoolInterface.zig").PoolInterface;
const ImageArrayRotationAnimationCacheable = @import("org/allbinary/animation/image/ImageArrayRotationAnimationCacheable.zig").ImageArrayRotationAnimationCacheable;
const ImageArrayRotationAnimationCacheableInterfaceFactory = @import("org/allbinary/animation/image/ImageArrayRotationAnimationCacheableInterfaceFactory.zig").ImageArrayRotationAnimationCacheableInterfaceFactory;
const ImageArrayRotationAnimationInfo = @import("org/allbinary/animation/image/ImageArrayRotationAnimationInfo.zig").ImageArrayRotationAnimationInfo;

pub const ImageArrayRotationAnimationPool = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.ImageArrayRotationAnimationPool";
    base: BasicArrayListResetablePool = undefined,
    var IMAGE_ROTATION_ANIMATION_POOL: ?*PoolInterface = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        IMAGE_ROTATION_ANIMATION_POOL = Inheritance.upcast(?*PoolInterface, Inheritance.callStatic(ImageArrayRotationAnimationPool, "create1", .{ ImageArrayRotationAnimationCacheableInterfaceFactory.create() }));
    }
    

    pub fn create1(cacheableInterfaceFactoryInterface: ?*CacheableInterfaceFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicArrayListResetablePool, "create1", .{ cacheableInterfaceFactoryInterface }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*PoolInterface {
        return Inheritance.upcast(?*PoolInterface, ImageArrayRotationAnimationPool.IMAGE_ROTATION_ANIMATION_POOL);
    }
    

    // throws Exception
    pub fn remove(self: *Self, key: ?Object) ?*CacheableInterface {
        const cacheableInterface: ?*CacheableInterface = Inheritance.upcast(?*CacheableInterface, Inheritance.call(&self.base, "remove", .{ key }));
        const allBinaryImageRotationAnimationInfo: ?*ImageArrayRotationAnimationInfo = Inheritance.cast(?*ImageArrayRotationAnimationInfo, key);
        const imageArrayRotationAnimationCacheable: ?*ImageArrayRotationAnimationCacheable = Inheritance.upcast(?*ImageArrayRotationAnimationCacheable, (Inheritance.cast(?*ImageArrayRotationAnimationCacheable, cacheableInterface)));
        _ = Inheritance.call(imageArrayRotationAnimationCacheable.?, "setImageArray", .{ allBinaryImageRotationAnimationInfo.?.getImageArray() });
        return cacheableInterface;
    }
};

