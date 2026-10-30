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
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;
const ImageAnimation = @import("org/allbinary/animation/image/ImageAnimation.zig").ImageAnimation;

pub const ImageSegmentAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.ImageSegmentAnimation";
    base: ImageAnimation = undefined,
    startX: i32 = 0,
    startY: i32 = 0,
    drawWidth: i32 = 0,
    drawHeight: i32 = 0,
    circularIndexUtil: ?*CircularIndexUtil = null,
    sequenceArray: []i32 = &.{},

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
        
    }
    

    pub fn create3(image: ?*Image, sequenceArray: []i32, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ImageAnimation, "create2", .{ image, animationBehavior }).*;
        this.initFields();
        this.startX = 0;
        this.startY = 0;
        this.drawWidth = Inheritance.receiverOf(Inheritance.receiver(this, "getImage").getImage().?, "getWidth").getWidth();
        this.drawHeight = Inheritance.receiverOf(Inheritance.receiver(this, "getImage").getImage().?, "getHeight").getHeight();
        this.circularIndexUtil = Inheritance.upcast(@TypeOf(this.circularIndexUtil), Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ this.drawHeight }));
        this.sequenceArray = sequenceArray;
        Inheritance.bindOverrides(this);
        return this;
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
        return self.circularIndexUtil.?.getSize();
    }
    

    pub fn setSequence(self: *Self, sequenceArray: []i32) void {
        self.sequenceArray = sequenceArray;
    }
    

    pub fn getSequence(self: *Self) []i32 {
        return self.sequenceArray;
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = graphics;
        _ = x;
        _ = y;
        _ = self;
    }
    

    pub fn getStartX(self: *Self) i32 {
        return self.startX;
    }
    

    pub fn setStartX(self: *Self, startX: i32) void {
        self.startX = startX;
    }
    

    pub fn getStartY(self: *Self) i32 {
        return self.startY;
    }
    

    pub fn setStartY(self: *Self, startY: i32) void {
        self.startY = startY;
    }
    

    pub fn getDrawWidth(self: *Self) i32 {
        return self.drawWidth;
    }
    

    pub fn setDrawWidth(self: *Self, drawWidth: i32) void {
        self.drawWidth = drawWidth;
    }
    

    pub fn getDrawHeight(self: *Self) i32 {
        return self.drawHeight;
    }
    

    pub fn setDrawHeight(self: *Self, drawHeight: i32) void {
        self.drawHeight = drawHeight;
    }
};

