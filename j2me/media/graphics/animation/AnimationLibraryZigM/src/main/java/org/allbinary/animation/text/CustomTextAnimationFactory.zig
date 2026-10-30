// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.animation.text

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationBehaviorFactory = @import("org/allbinary/animation/AnimationBehaviorFactory.zig").AnimationBehaviorFactory;
const AnimationInterfaceFactoryInterface = @import("org/allbinary/animation/AnimationInterfaceFactoryInterface.zig").AnimationInterfaceFactoryInterface;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ScaleProperties = @import("org/allbinary/media/ScaleProperties.zig").ScaleProperties;
const AdjustCustomTextAnimation = @import("org/allbinary/animation/text/AdjustCustomTextAnimation.zig").AdjustCustomTextAnimation;
const CustomTextAnimation = @import("org/allbinary/animation/text/CustomTextAnimation.zig").CustomTextAnimation;

pub const CustomTextAnimationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.text.CustomTextAnimationFactory";
    logUtil: ?*LogUtil = null,
    animationBehaviorFactory: ?*AnimationBehaviorFactory = null,
    basicColor: ?*BasicColor = null,
    text: ?*String = null,
    initScaleHeight: i32 = 0,
    dx: i32 = 0,
    dy: i32 = 0,
    font: ?*Font = null,
    scaleProperties: ?*ScaleProperties = null,
    // Implements AnimationInterfaceFactoryInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        this.basicColor = Inheritance.upcast(?*BasicColor, BasicColorFactory.getInstance().?.BLACK);
        
        
        this.dx = 0;
        this.dy = 0;
        
        
    }
    

    pub fn createDXY(text: ?*String, fontSize: i32, dx: i32, dy: i32, animationBehaviorFactory: ?*AnimationBehaviorFactory) ?*CustomTextAnimationFactory {
        const customTextAnimationFactory: ?*CustomTextAnimationFactory = Inheritance.callStatic(CustomTextAnimationFactory, "create3", .{ text, fontSize, animationBehaviorFactory });
        customTextAnimationFactory.?.dx = Inheritance.upcast(@TypeOf(customTextAnimationFactory.?.dx), dx);
        customTextAnimationFactory.?.dy = Inheritance.upcast(@TypeOf(customTextAnimationFactory.?.dy), dy);
        return customTextAnimationFactory;
    }
    

    pub fn create3(text: ?*String, fontSize: i32, animationBehaviorFactory: ?*AnimationBehaviorFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.scaleProperties = ScaleProperties.create();
        this.text = text;
        this.scaleProperties.?.scaleHeight = Inheritance.upcast(@TypeOf(this.scaleProperties.?.scaleHeight), fontSize - (@divTrunc(fontSize, 4)));
        this.initScaleHeight = this.scaleProperties.?.scaleHeight;
        this.animationBehaviorFactory = animationBehaviorFactory;
        this.font = Inheritance.upcast(@TypeOf(this.font), Inheritance.callStatic(Font, "getFont", .{ Font.FACE_SYSTEM, Font.STYLE_PLAIN, this.initScaleHeight }));
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, instanceId: i32) ?*Animation {
        _ = instanceId;
        var customTextAnimation: ?*CustomTextAnimation = null;
        if (self.dx != 0 or self.dy != 0) {
            customTextAnimation = Inheritance.upcast(@TypeOf(customTextAnimation), Inheritance.callStatic(AdjustCustomTextAnimation, "create5", .{ self.text, self.scaleProperties.?.scaleHeight, self.dx, self.dy, self.animationBehaviorFactory.?.getOrCreateInstance() }));
        } else {
            customTextAnimation = Inheritance.callStatic(CustomTextAnimation, "create3", .{ self.text, self.scaleProperties.?.scaleHeight, self.animationBehaviorFactory.?.getOrCreateInstance() });
        }
        _ = Inheritance.call(customTextAnimation.?, "setBasicColorP", .{ self.basicColor });
        return Inheritance.upcast(?*Animation, customTextAnimation);
    }
    

    pub fn setInitialScale(self: *Self, scaleProperties: ?*ScaleProperties) void {
        _ = scaleProperties;
        _ = self;
    }
    

    pub fn getWidth(self: *Self) i32 {
        return Inheritance.call(self.font.?, "stringWidth", .{ self.text });
    }
    

    pub fn getHeight(self: *Self) i32 {
        return self.font.?.getHeight();
    }
};

