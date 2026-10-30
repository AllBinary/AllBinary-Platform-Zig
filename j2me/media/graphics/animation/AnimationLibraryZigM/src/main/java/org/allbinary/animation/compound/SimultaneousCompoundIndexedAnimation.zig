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
// package org.allbinary.animation.compound

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const IndexedAnimation = @import("org/allbinary/animation/IndexedAnimation.zig").IndexedAnimation;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;

pub const SimultaneousCompoundIndexedAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.compound.SimultaneousCompoundIndexedAnimation";
    base: IndexedAnimation = undefined,
    animationInterfaceArray: []?*Animation = &.{},

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create2(animationInterfaceArray: []?*Animation, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(IndexedAnimation, "create1", .{ animationBehavior }).*;
        this.initFields();
        this.animationInterfaceArray = animationInterfaceArray;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setFrame(self: *Self, frameIndex: i32) void {
        var indexedAnimation: ?*IndexedAnimation = null;
        {
            var index: i32 = @as(i32, @intCast(self.animationInterfaceArray.len));
            while (value_N66021: { index -= 1; break :value_N66021 index; } >= 0) {
            indexedAnimation = Inheritance.cast(?*IndexedAnimation, self.animationInterfaceArray[@intCast(index)]);
            _ = Inheritance.call(indexedAnimation.?, "setFrame", .{ frameIndex });
            }
        }
    }
    

    pub fn getFrame(self: *Self) i32 {
        const indexedAnimation: ?*IndexedAnimation = Inheritance.cast(?*IndexedAnimation, self.animationInterfaceArray[@intCast(0)]);
        return Inheritance.receiver(indexedAnimation.?, "getFrame").getFrame();
    }
    

    pub fn getSize(self: *Self) i32 {
        const indexedAnimation: ?*IndexedAnimation = Inheritance.cast(?*IndexedAnimation, self.animationInterfaceArray[@intCast(0)]);
        return Inheritance.receiver(indexedAnimation.?, "getSize").getSize();
    }
    

    pub fn previousFrame(self: *Self) void {
        var indexedAnimation: ?*IndexedAnimation = null;
        {
            var index: i32 = @as(i32, @intCast(self.animationInterfaceArray.len));
            while (value_N66497: { index -= 1; break :value_N66497 index; } >= 0) {
            indexedAnimation = Inheritance.cast(?*IndexedAnimation, self.animationInterfaceArray[@intCast(index)]);
            _ = Inheritance.receiver(indexedAnimation.?, "previousFrame").previousFrame();
            }
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
    

    // throws Exception
    pub fn nextFrame(self: *Self) void {
        {
            var index: i32 = @as(i32, @intCast(self.animationInterfaceArray.len));
            while (value_N66764: { index -= 1; break :value_N66764 index; } >= 0) {
            _ = self.animationInterfaceArray[@intCast(index)].?.nextFrame();
            }
        }
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        const size: i32 = @as(i32, @intCast(self.animationInterfaceArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(self.animationInterfaceArray[@intCast(index)].?, "paintXY", .{ graphics, x, y });
            }
        }
    }
    

    pub fn paintThreedXYZ(self: *Self, graphics: ?*Graphics, x: i32, y: i32, z: i32) void {
        const size: i32 = @as(i32, @intCast(self.animationInterfaceArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(self.animationInterfaceArray[@intCast(index)].?, "paintThreedXYZ", .{ graphics, x, y, z });
            }
        }
    }
    

    pub fn getAnimationInterfaceArray(self: *Self) []?*Animation {
        return self.animationInterfaceArray;
    }
    

    pub fn setAnimationInterfaceArray(self: *Self, animationInterfaceArray: []?*Animation) void {
        self.animationInterfaceArray = animationInterfaceArray;
    }
};

