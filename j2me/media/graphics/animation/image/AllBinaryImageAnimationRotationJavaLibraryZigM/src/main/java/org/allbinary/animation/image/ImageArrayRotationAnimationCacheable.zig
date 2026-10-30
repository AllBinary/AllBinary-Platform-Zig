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
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CacheableInterface = @import("org/allbinary/logic/util/cache/CacheableInterface.zig").CacheableInterface;
const AdjustedImageArrayRotationAnimation = @import("org/allbinary/animation/image/AdjustedImageArrayRotationAnimation.zig").AdjustedImageArrayRotationAnimation;
const ImageArrayRotationAnimationInfo = @import("org/allbinary/animation/image/ImageArrayRotationAnimationInfo.zig").ImageArrayRotationAnimationInfo;

pub const ImageArrayRotationAnimationCacheable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.ImageArrayRotationAnimationCacheable";
    base: AdjustedImageArrayRotationAnimation = undefined,
    // Implements CacheableInterface
    

    pub fn create2(anyType: ?Object, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AdjustedImageArrayRotationAnimation, "create6", .{ Inheritance.receiverOf((Inheritance.cast(?*ImageArrayRotationAnimationInfo, anyType)).?, "getImageArray").getImageArray(), Inheritance.receiverOf((Inheritance.cast(?*ImageArrayRotationAnimationInfo, anyType)).?, "getAngleInfoP").getAngleInfoP(), Inheritance.receiverOf((Inheritance.cast(?*ImageArrayRotationAnimationInfo, anyType)).?, "getTotalAngle").getTotalAngle(), Inheritance.receiverOf((Inheritance.cast(?*ImageArrayRotationAnimationInfo, anyType)).?, "getDx").getDx(), Inheritance.receiverOf((Inheritance.cast(?*ImageArrayRotationAnimationInfo, anyType)).?, "getDy").getDy(), animationBehavior }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getKey(self: *Self) ?Object {
        _ = self;
        return Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }
    

    pub fn toString(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
};

