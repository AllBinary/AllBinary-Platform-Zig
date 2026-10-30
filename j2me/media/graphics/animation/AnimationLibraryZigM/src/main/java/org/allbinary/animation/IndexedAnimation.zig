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
// package org.allbinary.animation

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const IndexedAnimationInterface = @import("org/allbinary/animation/IndexedAnimationInterface.zig").IndexedAnimationInterface;

pub const IndexedAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.IndexedAnimation";
    pub const java_interfaces = .{ IndexedAnimationInterface };
    base: Animation = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    animationBehaviorP: ?*AnimationBehavior = null,
    // Implements IndexedAnimationInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
    }
    

    pub fn create1(animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Animation.create().*;
        this.initFields();
        this.animationBehaviorP = animationBehavior;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getAnimationBehavior(self: *Self) ?*AnimationBehavior {
        return self.animationBehaviorP;
    }
    

    pub fn reset(self: *Self) void {
        _ = self.animationBehaviorP.?.reset();
        _ = Inheritance.call(self, "setFrame", .{ 0 });
    }
    

    pub fn setFrame(self: *Self, index: i32) void {
        _ = index;
        _ = self;
    }
    

    pub fn getFrame(self: *Self) i32 {
        _ = self;
        return 0;
    }
    

    // throws Exception
    pub fn getAnimationSize(self: *Self) i32 {
        std.debug.panic("{any}", .{exception: { _ = self.commonStrings.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    pub fn getSize(self: *Self) i32 {
        _ = self;
        return 0;
    }
    

    pub fn previousFrame(self: *Self) void {
        _ = self;
    }
    

    pub fn isLastFrame(self: *Self) bool {
        if (self.getFrame() == self.getSize() - 1) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn setSequence(self: *Self, sequence: []i32) void {
        _ = sequence;
        _ = self;
    }
    

    pub fn getSequence(self: *Self) []i32 {
        _ = self;
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    pub fn setState(self: *Self, indexedAnimation: ?*IndexedAnimation) void {
        _ = Inheritance.call(self, "setFrame", .{ Inheritance.receiver(indexedAnimation.?, "getFrame").getFrame() });
        _ = Inheritance.call(self, "setDx", .{ Inheritance.receiver(indexedAnimation.?, "getDx").getDx() });
        _ = Inheritance.call(self, "setDy", .{ Inheritance.receiver(indexedAnimation.?, "getDy").getDy() });
    }
    

    pub fn getWidth(self: *Self) i32 {
        _ = self;
        return 0;
    }
    

    pub fn getHeight(self: *Self) i32 {
        _ = self;
        return 0;
    }
};

