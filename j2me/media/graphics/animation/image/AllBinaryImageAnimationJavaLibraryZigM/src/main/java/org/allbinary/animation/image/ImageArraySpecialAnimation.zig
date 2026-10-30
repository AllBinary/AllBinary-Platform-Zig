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
const SpecialAnimationInterface = @import("org/allbinary/animation/special/SpecialAnimationInterface.zig").SpecialAnimationInterface;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const GameTickTimeDelayHelperFactory = @import("org/allbinary/time/GameTickTimeDelayHelperFactory.zig").GameTickTimeDelayHelperFactory;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const ImageArrayAnimation = @import("org/allbinary/animation/image/ImageArrayAnimation.zig").ImageArrayAnimation;

pub const ImageArraySpecialAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.ImageArraySpecialAnimation";
    base: ImageArrayAnimation = undefined,
    timeDelayHelper: ?*TimeDelayHelper = null,
    loopCount: i32 = 0,
    loopCountTotal: i32 = 0,
    // Implements SpecialAnimationInterface

    fn initFields(this: *Self) void {
        this.timeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 270 });
        this.loopCount = 0;
        this.loopCountTotal = 1;
    }
    

    pub fn create2(imageArray: []?*Image, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ImageArrayAnimation, "create2", .{ imageArray, animationBehavior }).*;
        this.initFields();
        _ = this.reset();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getLoopCount(self: *Self) i32 {
        return self.loopCount;
    }
    

    pub fn setLastFrame(self: *Self) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "setIndex", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getSize").getSize() - 1 });
    }
    

    pub fn reset(self: *Self) void {
        _ = Inheritance.call(self, "setFrame", .{ Inheritance.receiver(self, "getSize").getSize() - 1 });
        self.loopCount = 0;
    }
    

    pub fn nextFrame(self: *Self) void {
        if (Inheritance.receiver(self, "getFrame").getFrame() > 0) {
            if (Inheritance.call(self.timeDelayHelper.?, "isTime", .{ GameTickTimeDelayHelperFactory.getInstance().?.startTime })) {
                _ = Inheritance.receiver(self, "previousFrame").previousFrame();
                if (Inheritance.receiver(self, "getFrame").getFrame() == 0) {
                    self.loopCount += 1;
                }
            }
        }
    }
    

    pub fn isComplete(self: *Self) bool {
        if (self.loopCount < self.loopCountTotal or Inheritance.receiver(self, "getFrame").getFrame() != 0) {
            return false;
        } else {
            return true;
        }
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, xParameter: i32, yParameter: i32) void {
        var x = xParameter;
        var y = yParameter;
        x = Inheritance.receiverOf(DisplayInfoSingleton.getInstance().?, "getLastHalfWidth").getLastHalfWidth() - (Inheritance.receiverOf(Inheritance.call(self, "getImage", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getIndex").getIndex() }).?, "getWidth").getWidth() >> @intCast(1));
        y = 5;
        _ = Inheritance.call(&self.base, "paintXY", .{ graphics, x, y });
    }
};

