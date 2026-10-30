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
// package org.allbinary.graphics.form

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const FeaturedAnimationInterfaceFactoryInterfaceFactory = @import("org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.zig").FeaturedAnimationInterfaceFactoryInterfaceFactory;
const LockedResources = @import("org/allbinary/logic/system/security/licensing/LockedResources.zig").LockedResources;
const LockedUtil = @import("org/allbinary/logic/system/security/licensing/LockedUtil.zig").LockedUtil;
const ItemPaintable = @import("org/allbinary/graphics/form/ItemPaintable.zig").ItemPaintable;

pub const LockablePaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.LockablePaintable";
    base: ItemPaintable = undefined,
    animation: ?*Animation = null,
    lockedIndex: i32 = 0,

    fn initFields(this: *Self) void {
        this.animation = Inheritance.upcast(?*Animation, Inheritance.call(Inheritance.call(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().?, "get", .{ LockedResources.getInstance().?.LOCKED_DEMO_GAME_FEATURE_RESOURCE }).?, "getInstance", .{ 0 }));
        
    }
    

    pub fn create1(lockedIndex: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ItemPaintable.create().*;
        this.initFields();
        this.lockedIndex = lockedIndex;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics, currentIndex: i32, x: i32, y: i32) void {
        if (Inheritance.receiverOf(LockedUtil.getInstance().?, "isLocked").isLocked() and currentIndex >= self.getLockedIndex()) {
            _ = Inheritance.call(self.getAnimation().?, "paintXY", .{ graphics, x, y });
        }
    }
    

    pub fn getLockedIndex(self: *Self) i32 {
        return self.lockedIndex;
    }
    

    pub fn getAnimation(self: *Self) ?*Animation {
        return self.animation;
    }
};

