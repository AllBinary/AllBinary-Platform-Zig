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
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const NullAnimationFactory = @import("org/allbinary/animation/NullAnimationFactory.zig").NullAnimationFactory;
const TextAnimation = @import("org/allbinary/animation/text/TextAnimation.zig").TextAnimation;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const GameTickTimeDelayHelperFactory = @import("org/allbinary/time/GameTickTimeDelayHelperFactory.zig").GameTickTimeDelayHelperFactory;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const CaptionAnimation = @import("org/allbinary/animation/caption/CaptionAnimation.zig").CaptionAnimation;
const CaptionAnimationHelperBase = @import("org/allbinary/animation/caption/CaptionAnimationHelperBase.zig").CaptionAnimationHelperBase;

pub const CaptionAnimationHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.caption.CaptionAnimationHelper";
    base: CaptionAnimationHelperBase = undefined,
    timeHelper: ?*TimeDelayHelper = null,
    textAnimation: ?*TextAnimation = null,
    captionAnimation: ?*Animation = null,
    animation: ?*Animation = null,

    fn initFields(this: *Self) void {
        this.timeHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 620 });
        this.textAnimation = Inheritance.callStatic(TextAnimation, "create2", .{ StringUtil.getInstance().?.EMPTY_STRING, AnimationBehavior.getInstance() });
        
        this.animation = Inheritance.upcast(?*Animation, Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }));
    }
    

    pub fn create5(captionAnimation: ?*Animation, captionDx: i32, captionDy: i32, dx: i32, dy: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = CaptionAnimationHelperBase.create().*;
        this.initFields();
        this.captionAnimation = Inheritance.upcast(@TypeOf(this.captionAnimation), Inheritance.callStatic(CaptionAnimation, "create6", .{ captionAnimation, this.textAnimation, captionDx, captionDy, dx, dy }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isShowing(self: *Self) bool {
        if (Object.same(self.animation, self.captionAnimation)) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn tick(self: *Self) void {
        if (Inheritance.call(self.timeHelper.?, "isTime", .{ GameTickTimeDelayHelperFactory.getInstance().?.startTime })) {
            self.animation = Inheritance.upcast(@TypeOf(self.animation), Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }));
        }
    }
    

    pub fn update(self: *Self, message: ?*String, basicColor: ?*BasicColor) void {
        _ = Inheritance.call(self.textAnimation.?, "setBasicColorP", .{ basicColor });
        _ = Inheritance.call(self.textAnimation.?, "setText", .{ message });
        self.animation = self.captionAnimation;
        _ = self.timeHelper.?.setStartTimeTNT();
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(self.animation.?, "paintXY", .{ graphics, x, y });
    }
};

