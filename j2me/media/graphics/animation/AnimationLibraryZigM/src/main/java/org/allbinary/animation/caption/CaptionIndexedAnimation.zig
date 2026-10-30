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
// package org.allbinary.animation.caption

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const Player = @import("javax/microedition/media/Player.zig").Player;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const AnimationEventHandler = @import("org/allbinary/animation/AnimationEventHandler.zig").AnimationEventHandler;
const IndexedAnimation = @import("org/allbinary/animation/IndexedAnimation.zig").IndexedAnimation;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const GameTickTimeDelayHelperFactory = @import("org/allbinary/time/GameTickTimeDelayHelperFactory.zig").GameTickTimeDelayHelperFactory;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;

pub const CaptionIndexedAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.caption.CaptionIndexedAnimation";
    base: IndexedAnimation = undefined,
    animationInterface: ?*Animation = null,
    movieIndexedAnimationInterface: ?*IndexedAnimation = null,
    captionDx: i32 = 0,
    captionDy: i32 = 0,
    dx: i32 = 0,
    dy: i32 = 0,
    time: i32 = 0,
    END_EVENT: ?*AllBinaryEventObject = null,
    timeDelayHelper: ?*TimeDelayHelper = null,
    player: ?*Player = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
        
        
        
        
        
    }
    

    pub fn create9(animationInterface: ?*Animation, movieIndexedAnimationInterface: ?*IndexedAnimation, player: ?*Player, captionDx: i32, captionDy: i32, dx: i32, dy: i32, time: i32, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(IndexedAnimation, "create1", .{ animationBehavior }).*;
        this.initFields();
        this.animationInterface = animationInterface;
        this.movieIndexedAnimationInterface = movieIndexedAnimationInterface;
        this.captionDx = captionDx;
        this.captionDy = captionDy;
        this.dx = dx;
        this.dy = dy;
        this.time = time;
        this.END_EVENT = Inheritance.callStatic(AllBinaryEventObject, "create1", .{ this });
        const timePerFrame: i32 = @divTrunc(this.time, this.getSize());
        this.timeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ timePerFrame });
        this.player = player;
        _ = this.player.?.start();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn nextFrame(self: *Self) void {
        if (Inheritance.call(self.timeDelayHelper.?, "isTime", .{ GameTickTimeDelayHelperFactory.getInstance().?.startTime })) {
            _ = Inheritance.receiver(self.movieIndexedAnimationInterface.?, "nextFrame").nextFrame();
        }
        if (self.isLastFrame()) {
            _ = Inheritance.call(AnimationEventHandler.getInstance().?, "fireEvent", .{ self.END_EVENT });
        }
    }
    

    pub fn isLastFrame(self: *Self) bool {
        if (Inheritance.receiver(self.movieIndexedAnimationInterface.?, "getFrame").getFrame() == self.getSize() - 1) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn previousFrame(self: *Self) void {
        _ = Inheritance.receiver(self.movieIndexedAnimationInterface.?, "previousFrame").previousFrame();
    }
    

    pub fn setFrame(self: *Self, index: i32) void {
        _ = Inheritance.call(self.movieIndexedAnimationInterface.?, "setFrame", .{ index });
    }
    

    pub fn getFrame(self: *Self) i32 {
        return Inheritance.receiver(self.movieIndexedAnimationInterface.?, "getFrame").getFrame();
    }
    

    pub fn getSize(self: *Self) i32 {
        return Inheritance.receiver(self.movieIndexedAnimationInterface.?, "getSize").getSize();
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
        _ = Inheritance.call(self.animationInterface.?, "paintXY", .{ graphics, x + self.captionDx, y + self.captionDy });
        _ = Inheritance.call(self.movieIndexedAnimationInterface.?, "paintXY", .{ graphics, x + self.captionDx + self.dx, y + self.captionDy + self.dy });
    }
    

    pub fn paintThreedXYZ(self: *Self, graphics: ?*Graphics, x: i32, y: i32, z: i32) void {
        _ = Inheritance.call(self.animationInterface.?, "paintThreedXYZ", .{ graphics, x + self.captionDx, y + self.captionDy, z });
        _ = Inheritance.call(self.movieIndexedAnimationInterface.?, "paintThreedXYZ", .{ graphics, x + self.captionDx + self.dx, y + self.captionDy + self.dy, z });
    }
};

