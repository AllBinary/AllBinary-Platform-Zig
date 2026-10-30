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
// const GL = @import("javax/microedition/khronos/opengles/GL.zig").GL;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const IndexedAnimation = @import("org/allbinary/animation/IndexedAnimation.zig").IndexedAnimation;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;

pub const SimultaneousCompoundIndexAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.compound.SimultaneousCompoundIndexAnimation";
    base: IndexedAnimation = undefined,
    animationInterfaceArray: []?*IndexedAnimation = &.{},

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create2(animationInterfaceArray: []?*IndexedAnimation, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(IndexedAnimation, "create1", .{ animationBehavior }).*;
        this.initFields();
        this.animationInterfaceArray = animationInterfaceArray;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setFrame(self: *Self, frameIndex: i32) void {
        {
            var index: i32 = @as(i32, @intCast(self.animationInterfaceArray.len));
            while (value_N65958: { index -= 1; break :value_N65958 index; } >= 0) {
            _ = Inheritance.call(self.animationInterfaceArray[@intCast(index)].?, "setFrame", .{ frameIndex });
            }
        }
    }
    

    pub fn getFrame(self: *Self) i32 {
        return Inheritance.receiver(self.animationInterfaceArray[@intCast(0)].?, "getFrame").getFrame();
    }
    

    // throws Exception
    pub fn getAnimationSize(self: *Self) i32 {
        return Inheritance.receiver(self.animationInterfaceArray[@intCast(0)].?, "getAnimationSize").getAnimationSize();
    }
    

    pub fn getSize(self: *Self) i32 {
        return Inheritance.receiver(self.animationInterfaceArray[@intCast(0)].?, "getSize").getSize();
    }
    

    pub fn previousFrame(self: *Self) void {
        {
            var index: i32 = @as(i32, @intCast(self.animationInterfaceArray.len));
            while (value_N66341: { index -= 1; break :value_N66341 index; } >= 0) {
            _ = Inheritance.receiver(self.animationInterfaceArray[@intCast(index)].?, "previousFrame").previousFrame();
            }
        }
    }
    

    // throws Exception
    pub fn nextFrame(self: *Self) void {
        {
            var index: i32 = @as(i32, @intCast(self.animationInterfaceArray.len));
            while (value_N66486: { index -= 1; break :value_N66486 index; } >= 0) {
            _ = Inheritance.receiver(self.animationInterfaceArray[@intCast(index)].?, "nextFrame").nextFrame();
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
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        {
            var index: i32 = @as(i32, @intCast(self.animationInterfaceArray.len));
            while (value_N66791: { index -= 1; break :value_N66791 index; } >= 0) {
            _ = Inheritance.call(self.animationInterfaceArray[@intCast(index)].?, "paintXY", .{ graphics, x, y });
            }
        }
    }
    

    pub fn paintThreedXYZ(self: *Self, graphics: ?*Graphics, x: i32, y: i32, z: i32) void {
        {
            var index: i32 = @as(i32, @intCast(self.animationInterfaceArray.len));
            while (value_N67038: { index -= 1; break :value_N67038 index; } >= 0) {
            _ = Inheritance.call(self.animationInterfaceArray[@intCast(index)].?, "paintThreedXYZ", .{ graphics, x, y, z });
            }
        }
    }
    

    // throws Exception
    pub fn set(self: *Self, gl: ?*GL) void {
        {
            var index: i32 = @as(i32, @intCast(self.animationInterfaceArray.len));
            while (value_N67281: { index -= 1; break :value_N67281 index; } >= 0) {
            _ = Inheritance.call(self.animationInterfaceArray[@intCast(index)].?, "set", .{ gl });
            }
        }
    }
    

    pub fn getAnimationInterfaceArray(self: *Self) []?*IndexedAnimation {
        return self.animationInterfaceArray;
    }
    

    pub fn setAnimationInterfaceArray(self: *Self, animationInterfaceArray: []?*IndexedAnimation) void {
        self.animationInterfaceArray = animationInterfaceArray;
    }
};

