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
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const OpenGLFeatureFactory = @import("org/allbinary/graphics/opengles/OpenGLFeatureFactory.zig").OpenGLFeatureFactory;
const OpenGLImageCacheFactory = @import("org/allbinary/image/opengles/OpenGLImageCacheFactory.zig").OpenGLImageCacheFactory;
const TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory = @import("org/allbinary/input/motion/button/TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.zig").TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory;

pub const TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory";
    base: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory, "create1", .{ String.literal("OpenGL TouchButton Animations") }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self, level: i32) void {
        _ = Inheritance.call(&self.base, "initImageCache", .{ OpenGLImageCacheFactory.getInstance(), level });
    }
    

    pub fn isFeature(self: *Self) bool {
        _ = self;
        if (Inheritance.call(Features.getInstance().?, "isDefault", .{ OpenGLFeatureFactory.getInstance().?.OPENGL })) {
            return true;
        } else {
            return false;
        }
    }
};

