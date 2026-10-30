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
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const DisposalUtil = @import("org/allbinary/DisposalUtil.zig").DisposalUtil;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const IndexedAnimation = @import("org/allbinary/animation/IndexedAnimation.zig").IndexedAnimation;
const Anchor = @import("org/allbinary/graphics/Anchor.zig").Anchor;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;

pub const TweenedImageAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.TweenedImageAnimation";
    base: IndexedAnimation = undefined,
    image: ?*Image = null,
    dx: i32 = 0,
    dy: i32 = 0,
    totalFrames: i32 = 0,
    circularIndexUtil: ?*CircularIndexUtil = null,
    anchor: i32 = 0,

    fn initFields(this: *Self) void {
        
        
        
        
        
        this.anchor = Anchor.TOP_LEFT;
    }
    

    pub fn create5(image: ?*Image, dx: i32, dy: i32, totalFrames: i32, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(IndexedAnimation, "create1", .{ animationBehavior }).*;
        this.initFields();
        this.image = image;
        this.dx = dx;
        this.dy = dy;
        this.totalFrames = totalFrames;
        this.circularIndexUtil = Inheritance.upcast(@TypeOf(this.circularIndexUtil), Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ this.totalFrames }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getAnimationSize(self: *Self) i32 {
        return self.getSize();
    }
    

    pub fn nextFrame(self: *Self) void {
        _ = self.circularIndexUtil.?.next();
    }
    

    pub fn previousFrame(self: *Self) void {
        _ = self.circularIndexUtil.?.previous();
    }
    

    pub fn setFrame(self: *Self, index: i32) void {
        _ = Inheritance.call(self.circularIndexUtil.?, "setIndex", .{ index });
    }
    

    pub fn getFrame(self: *Self) i32 {
        return self.circularIndexUtil.?.getIndex();
    }
    

    pub fn getSize(self: *Self) i32 {
        return self.totalFrames;
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
        const frame: i32 = self.getFrame();
        const currentX: i32 = self.dx * frame;
        const currentY: i32 = self.dy * frame;
        _ = Inheritance.call(graphics.?, "drawImage", .{ self.image, x + currentX, y + currentY, self.anchor });
    }
    

    // throws Exception
    pub fn close(self: *Self) void {
        _ = Inheritance.call(DisposalUtil.getInstance().?, "disposeImage", .{ self.image });
    }
    

    // throws Throwable
    pub fn finalize(self: *Self) void {
        _ = Inheritance.call(DisposalUtil.getInstance().?, "disposeImage", .{ self.image });
    }
};

