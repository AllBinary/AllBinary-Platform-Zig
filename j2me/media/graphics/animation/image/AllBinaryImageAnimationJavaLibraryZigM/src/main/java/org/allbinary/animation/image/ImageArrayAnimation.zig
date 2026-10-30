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
// const NullImage = @import("javax/microedition/lcdui/NullImage.zig").NullImage;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const IndexedAnimation = @import("org/allbinary/animation/IndexedAnimation.zig").IndexedAnimation;
const Anchor = @import("org/allbinary/graphics/Anchor.zig").Anchor;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;

pub const ImageArrayAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.ImageArrayAnimation";
    base: IndexedAnimation = undefined,
    imageArray: []?*Image = &.{},
    totalFrames: i32 = 0,
    circularIndexUtil: ?*CircularIndexUtil = null,
    anchor: i32 = 0,

    fn initFields(this: *Self) void {
        this.imageArray = NullImage.NULL_IMAGE_ARRAY;
        this.totalFrames = 0;
        this.circularIndexUtil = Inheritance.upcast(?*CircularIndexUtil, CircularIndexUtil.NULL_CIRCULAR_INDEX_UTIL);
        this.anchor = Anchor.TOP_LEFT;
    }
    

    pub fn create2(imageArray: []?*Image, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(IndexedAnimation, "create1", .{ animationBehavior }).*;
        this.initFields();
        _ = Inheritance.call(this, "setImageArray", .{ imageArray });
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
    

    pub fn getImage(self: *Self, index: i32) ?*Image {
        return Inheritance.upcast(?*Image, self.imageArray[@intCast(index)]);
    }
    

    pub fn getImageArray(self: *Self) []?*Image {
        return self.imageArray;
    }
    

    pub fn setImageArray(self: *Self, imageArray: []?*Image) void {
        self.imageArray = imageArray;
        self.totalFrames = @as(i32, @intCast(imageArray.len));
        self.circularIndexUtil = Inheritance.upcast(@TypeOf(self.circularIndexUtil), Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ self.totalFrames }));
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(graphics.?, "drawImage", .{ self.imageArray[@intCast(self.circularIndexUtil.?.getIndex())], x, y, self.anchor });
    }
};

