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
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;

pub const CaptionAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.caption.CaptionAnimation";
    base: Animation = undefined,
    animationInterface: ?*Animation = null,
    overlayAnimationInterface: ?*Animation = null,
    captionDx: i32 = 0,
    captionDy: i32 = 0,
    dx: i32 = 0,
    dy: i32 = 0,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
        
    }
    

    pub fn create6(animationInterface: ?*Animation, overlayAnimationInterface: ?*Animation, captionDx: i32, captionDy: i32, dx: i32, dy: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Animation.create().*;
        this.initFields();
        this.animationInterface = animationInterface;
        this.overlayAnimationInterface = overlayAnimationInterface;
        this.captionDx = captionDx;
        this.captionDy = captionDy;
        this.dx = dx;
        this.dy = dy;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn nextFrame(self: *Self) void {
        _ = self;
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(self.animationInterface.?, "paintXY", .{ graphics, x + self.captionDx, y + self.captionDy });
        _ = Inheritance.call(self.overlayAnimationInterface.?, "paintXY", .{ graphics, x + self.captionDx + self.dx, y + self.captionDy + self.dy });
    }
    

    pub fn paintThreedXYZ(self: *Self, graphics: ?*Graphics, x: i32, y: i32, z: i32) void {
        _ = Inheritance.call(self.animationInterface.?, "paintThreedXYZ", .{ graphics, x + self.captionDx, y + self.captionDy, z });
        _ = Inheritance.call(self.overlayAnimationInterface.?, "paintThreedXYZ", .{ graphics, x + self.captionDx + self.dx, y + self.captionDy + self.dy, z });
    }
};

