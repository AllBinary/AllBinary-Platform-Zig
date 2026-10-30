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
// package org.allbinary.animation

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const GameTickTimeDelayHelperFactory = @import("org/allbinary/time/GameTickTimeDelayHelperFactory.zig").GameTickTimeDelayHelperFactory;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const VectorAnimation = @import("org/allbinary/animation/VectorAnimation.zig").VectorAnimation;

pub const TimedVectorAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.TimedVectorAnimation";
    base: VectorAnimation = undefined,
    timeElapsedHelper: ?*TimeDelayHelper = null,

    fn initFields(this: *Self) void {
        this.timeElapsedHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 200 });
    }
    

    pub fn create3(currentPoints: [][][]i32, basicColor: ?*BasicColor, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(VectorAnimation, "create3", .{ currentPoints, basicColor, animationBehavior }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn nextFrame(self: *Self) void {
        if (Inheritance.call(self.timeElapsedHelper.?, "isTime", .{ GameTickTimeDelayHelperFactory.getInstance().?.startTime })) {
            _ = self.base.nextFrame();
        }
    }
};

