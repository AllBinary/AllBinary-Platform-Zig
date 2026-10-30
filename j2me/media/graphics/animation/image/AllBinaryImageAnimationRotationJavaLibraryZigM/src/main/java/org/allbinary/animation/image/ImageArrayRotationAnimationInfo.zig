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
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;

pub const ImageArrayRotationAnimationInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.ImageArrayRotationAnimationInfo";
    imageArray: []?*Image = &.{},
    angleIncrement: i32 = 0,
    totalAngle: i32 = 0,
    dx: i32 = 0,
    dy: i32 = 0,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
    }
    

    pub fn create5(imageArray: []?*Image, angleIncrement: i32, totalAngle: i32, dx: i32, dy: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.imageArray = imageArray;
        this.angleIncrement = angleIncrement;
        this.totalAngle = totalAngle;
        this.dx = dx;
        this.dy = dy;
        return this;
    }
    

    pub fn setImageArray(self: *Self, imageArray: []?*Image) void {
        self.imageArray = imageArray;
    }
    

    pub fn getImageArray(self: *Self) []?*Image {
        return self.imageArray;
    }
    

    pub fn getAngleInfoP(self: *Self) ?*AngleInfo {
        return Inheritance.upcast(?*AngleInfo, Inheritance.callStatic(AngleInfo, "getInstance", .{ @as(i16, @intCast(self.angleIncrement)) }));
    }
    

    pub fn setTotalAngle(self: *Self, totalAngle: i32) void {
        self.totalAngle = totalAngle;
    }
    

    pub fn getTotalAngle(self: *Self) i32 {
        return self.totalAngle;
    }
    

    pub fn setDx(self: *Self, dx: i32) void {
        self.dx = dx;
    }
    

    pub fn getDx(self: *Self) i32 {
        return self.dx;
    }
    

    pub fn setDy(self: *Self, dy: i32) void {
        self.dy = dy;
    }
    

    pub fn getDy(self: *Self) i32 {
        return self.dy;
    }
};

