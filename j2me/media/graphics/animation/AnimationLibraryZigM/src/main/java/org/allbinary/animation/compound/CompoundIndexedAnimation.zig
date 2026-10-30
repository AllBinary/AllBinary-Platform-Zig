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
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const IndexedAnimation = @import("org/allbinary/animation/IndexedAnimation.zig").IndexedAnimation;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;
const CompoundAnimationInterface = @import("org/allbinary/animation/compound/CompoundAnimationInterface.zig").CompoundAnimationInterface;

pub const CompoundIndexedAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.compound.CompoundIndexedAnimation";
    pub const java_interfaces = .{ CompoundAnimationInterface };
    base: IndexedAnimation = undefined,
    circularIndexUtil: ?*CircularIndexUtil = null,
    animationInterfaceArray: []?*Animation = &.{},
    // Implements CompoundAnimationInterface

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create2(animationInterfaceArray: []?*Animation, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(IndexedAnimation, "create1", .{ animationBehavior }).*;
        this.initFields();
        this.animationInterfaceArray = animationInterfaceArray;
        this.circularIndexUtil = Inheritance.upcast(@TypeOf(this.circularIndexUtil), Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ @as(i32, @intCast(this.animationInterfaceArray.len)) }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setFrame(self: *Self, index: i32) void {
        const indexedAnimation: ?*IndexedAnimation = Inheritance.cast(?*IndexedAnimation, self.animationInterfaceArray[@intCast(self.circularIndexUtil.?.getIndex())]);
        _ = Inheritance.call(indexedAnimation.?, "setFrame", .{ index });
    }
    

    pub fn getFrame(self: *Self) i32 {
        const indexedAnimation: ?*IndexedAnimation = Inheritance.cast(?*IndexedAnimation, self.animationInterfaceArray[@intCast(self.circularIndexUtil.?.getIndex())]);
        return Inheritance.receiver(indexedAnimation.?, "getFrame").getFrame();
    }
    

    pub fn getSize(self: *Self) i32 {
        const indexedAnimation: ?*IndexedAnimation = Inheritance.cast(?*IndexedAnimation, self.animationInterfaceArray[@intCast(self.circularIndexUtil.?.getIndex())]);
        return Inheritance.receiver(indexedAnimation.?, "getSize").getSize();
    }
    

    pub fn previousFrame(self: *Self) void {
        const indexedAnimation: ?*IndexedAnimation = Inheritance.cast(?*IndexedAnimation, self.animationInterfaceArray[@intCast(self.circularIndexUtil.?.getIndex())]);
        _ = Inheritance.receiver(indexedAnimation.?, "previousFrame").previousFrame();
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
        _ = self.animationInterfaceArray[@intCast(self.circularIndexUtil.?.getIndex())].?.nextFrame();
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(self.animationInterfaceArray[@intCast(self.circularIndexUtil.?.getIndex())].?, "paintXY", .{ graphics, x, y });
    }
    

    pub fn paintThreedXYZ(self: *Self, graphics: ?*Graphics, x: i32, y: i32, z: i32) void {
        _ = Inheritance.call(self.animationInterfaceArray[@intCast(self.circularIndexUtil.?.getIndex())].?, "paintThreedXYZ", .{ graphics, x, y, z });
    }
    

    pub fn getCurrentAnimation(self: *Self) ?*IndexedAnimation {
        return Inheritance.cast(?*IndexedAnimation, self.animationInterfaceArray[@intCast(self.circularIndexUtil.?.getIndex())]);
    }
    

    pub fn nextAnimation(self: *Self) void {
        const frame: i32 = self.getFrame();
        _ = self.circularIndexUtil.?.next();
        _ = Inheritance.call(self, "setFrame", .{ frame });
    }
    

    pub fn previousAnimation(self: *Self) void {
        const frame: i32 = self.getFrame();
        _ = self.circularIndexUtil.?.previous();
        _ = Inheritance.call(self, "setFrame", .{ frame });
    }
    

    pub fn setAnimation(self: *Self, index: i32) void {
        const frame: i32 = self.getFrame();
        _ = Inheritance.call(self.circularIndexUtil.?, "setIndex", .{ index });
        _ = Inheritance.call(self, "setFrame", .{ frame });
    }
    

    pub fn getAnimationInterfaceArray(self: *Self) []?*Animation {
        return self.animationInterfaceArray;
    }
    

    pub fn setAnimationInterfaceArray(self: *Self, animationInterfaceArray: []?*Animation) void {
        self.animationInterfaceArray = animationInterfaceArray;
    }
    

    // throws Exception
    pub fn set(self: *Self, gl: ?*GL) void {
        {
            var index: i32 = @as(i32, @intCast(self.animationInterfaceArray.len));
            while (value_N67900: { index -= 1; break :value_N67900 index; } >= 0) {
            _ = Inheritance.call(self.animationInterfaceArray[@intCast(index)].?, "set", .{ gl });
            }
        }
    }
};

