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
// package org.allbinary.animation.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const GL = @import("javax/microedition/khronos/opengles/GL.zig").GL;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const IndexedAnimation = @import("org/allbinary/animation/IndexedAnimation.zig").IndexedAnimation;
const NullRotationAnimationFactory = @import("org/allbinary/animation/NullRotationAnimationFactory.zig").NullRotationAnimationFactory;
const RotationAnimation = @import("org/allbinary/animation/RotationAnimation.zig").RotationAnimation;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const ImageCache = @import("org/allbinary/image/ImageCache.zig").ImageCache;
const ImageCacheFactory = @import("org/allbinary/image/ImageCacheFactory.zig").ImageCacheFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const ScaleProperties = @import("org/allbinary/media/ScaleProperties.zig").ScaleProperties;
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;
const BaseImageAnimationFactory = @import("org/allbinary/animation/image/BaseImageAnimationFactory.zig").BaseImageAnimationFactory;

pub const LazyImageRotationAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.LazyImageRotationAnimation";
    base: RotationAnimation = undefined,
    logUtil: ?*LogUtil = null,
    layoutIndex: i32 = 0,
    instanceId: i32 = 0,
    animationInterfaceFactoryInterface: ?*BaseImageAnimationFactory = null,
    NULL_INDEX_ANIMATION: ?*IndexedAnimation = null,
    animation: ?*IndexedAnimation = null,
    scaleProperties: ?*ScaleProperties = null,
    const SET_REAL_ANIMATION: ?*String = String.literal("setRealAnimation");

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
        
        
        
        this.scaleProperties = Inheritance.upcast(?*ScaleProperties, ScaleProperties.instance);
    }
    

    pub fn create5(layoutIndex: i32, instanceId: i32, scaleProperties: ?*ScaleProperties, animationInterfaceFactoryInterface: ?*BaseImageAnimationFactory, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RotationAnimation, "create3", .{ Inheritance.callStatic(AngleInfo, "getInstance", .{ AngleFactory.getInstance().?.QUARTER_TOTAL_ANGLE }), Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ 4 }), animationBehavior }).*;
        this.initFields();
        this.layoutIndex = layoutIndex;
        this.instanceId = instanceId;
        this.animationInterfaceFactoryInterface = animationInterfaceFactoryInterface;
        const imageCache: ?*ImageCache = Inheritance.upcast(?*ImageCache, ImageCacheFactory.getInstance());
        _ = Inheritance.call(imageCache.?, "add", .{ this });
        this.scaleProperties = scaleProperties;
        this.NULL_INDEX_ANIMATION = Inheritance.cast(?*IndexedAnimation, Inheritance.call(NullRotationAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }));
        const ActualRotationAnimation = struct {
            const Self = @This();
            pub const java_name = "org.allbinary.animation.image.ActualRotationAnimation";
            base: RotationAnimation = undefined,
            lazyImageRotationAnimation: ?*LazyImageRotationAnimation = null,
            index: i32 = 0,

    fn initFields(this: *Self) void {
                
                this.index = 0;
    }
            

            pub fn create1(lazyImageRotationAnimation: ?*LazyImageRotationAnimation) *Self {
                const this = allocator.create(Self) catch unreachable;
                this.* = .{};
                this.base = Inheritance.callStatic(RotationAnimation, "create3", .{ Inheritance.callStatic(AngleInfo, "getInstance", .{ AngleFactory.getInstance().?.QUARTER_TOTAL_ANGLE }), Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ 4 }), Inheritance.fieldPointer(this, "animationBehavior").* }).*;
                this.initFields();
                Inheritance.fieldPointer(this, "lazyImageRotationAnimation").* = lazyImageRotationAnimation;
                Inheritance.bindOverrides(this);
                return this;
            }
            

            pub fn setFrame(self: *Self, index: i32) void {
                Inheritance.fieldPointer(self, "index").* = index;
            }
            

            pub fn getFrame(self: *Self) i32 {
                return Inheritance.fieldPointer(self, "index").*;
            }
            

            pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
                _ = graphics;
                _ = x;
                _ = y;
                { // try
                    _ = Inheritance.call(ImageCacheFactory.getInstance().?, "insertFirst", .{ self });
                    Inheritance.fieldPointer(self, "lazyImageRotationAnimation").*.?.animation = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "lazyImageRotationAnimation").*.?.animation), Inheritance.fieldPointer(self, "lazyImageRotationAnimation").*.?.NULL_INDEX_ANIMATION);
                }
                // catch (Exception e):
//                     const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
//                     _ = Inheritance.call(logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.PROCESS, e });
            }
            

            pub fn paintThreedXYZ(self: *Self, graphics: ?*Graphics, x: i32, y: i32, z: i32) void {
                _ = graphics;
                _ = x;
                _ = y;
                _ = z;
                { // try
                    _ = Inheritance.call(ImageCacheFactory.getInstance().?, "insertFirst", .{ self });
                    Inheritance.fieldPointer(self, "lazyImageRotationAnimation").*.?.animation = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "lazyImageRotationAnimation").*.?.animation), Inheritance.fieldPointer(self, "lazyImageRotationAnimation").*.?.NULL_INDEX_ANIMATION);
                }
                // catch (Exception e):
//                     const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
//                     _ = Inheritance.call(logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.PROCESS, e });
            }
        };
        this.animation = Inheritance.upcast(@TypeOf(this.animation), Inheritance.callStatic(ActualRotationAnimation, "create1", .{ this }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setRealAnimation(self: *Self) void {
        { // try
            const animation: ?*IndexedAnimation = self.animation;
            _ = Inheritance.call(self.animationInterfaceFactoryInterface.?, "setInitialScale", .{ self.scaleProperties });
            self.animation = Inheritance.cast(?*IndexedAnimation, Inheritance.call(self.animationInterfaceFactoryInterface.?, "getInstance", .{ self.instanceId }));
            _ = Inheritance.call(self.animation.?, "setState", .{ animation });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, LazyImageRotationAnimation.SET_REAL_ANIMATION, e });
    }
    

    pub fn setScale(self: *Self, scaleX: f32, scaleY: f32) void {
        _ = Inheritance.call(self.animation.?, "setScale", .{ scaleX, scaleY });
    }
    

    pub fn getAnimationBehavior(self: *Self) ?*AnimationBehavior {
        return Inheritance.upcast(?*AnimationBehavior, Inheritance.receiver(self.animation.?, "getAnimationBehavior").getAnimationBehavior());
    }
    

    // throws Exception
    pub fn set(self: *Self, gl: ?*GL) void {
        _ = Inheritance.call(self.animation.?, "set", .{ gl });
    }
    

    pub fn setAlpha(self: *Self, alpha: i32) void {
        _ = Inheritance.call(self.animation.?, "setAlpha", .{ alpha });
    }
    

    pub fn setDx(self: *Self, dx: i32) void {
        _ = Inheritance.call(self.animation.?, "setDx", .{ dx });
    }
    

    pub fn setDy(self: *Self, dy: i32) void {
        _ = Inheritance.call(self.animation.?, "setDy", .{ dy });
    }
    

    pub fn setMaxScale(self: *Self, maxScaleX: f32, maxScaleY: f32) void {
        _ = Inheritance.call(self.animation.?, "setMaxScale", .{ maxScaleX, maxScaleY });
    }
    

    pub fn nextRotation(self: *Self) void {
        const rotationAnimation: ?*RotationAnimation = Inheritance.upcast(?*RotationAnimation, (Inheritance.cast(?*RotationAnimation, self.animation)));
        _ = Inheritance.receiver(rotationAnimation.?, "nextRotation").nextRotation();
    }
    

    pub fn previousRotation(self: *Self) void {
        const rotationAnimation: ?*RotationAnimation = Inheritance.upcast(?*RotationAnimation, (Inheritance.cast(?*RotationAnimation, self.animation)));
        _ = Inheritance.receiver(rotationAnimation.?, "previousRotation").previousRotation();
    }
    

    pub fn nextRotationX(self: *Self) void {
        const rotationAnimation: ?*RotationAnimation = Inheritance.upcast(?*RotationAnimation, (Inheritance.cast(?*RotationAnimation, self.animation)));
        _ = Inheritance.receiver(rotationAnimation.?, "nextRotationX").nextRotationX();
    }
    

    pub fn previousRotationX(self: *Self) void {
        const rotationAnimation: ?*RotationAnimation = Inheritance.upcast(?*RotationAnimation, (Inheritance.cast(?*RotationAnimation, self.animation)));
        _ = Inheritance.receiver(rotationAnimation.?, "previousRotationX").previousRotationX();
    }
    

    pub fn nextRotationZ(self: *Self) void {
        const rotationAnimation: ?*RotationAnimation = Inheritance.upcast(?*RotationAnimation, (Inheritance.cast(?*RotationAnimation, self.animation)));
        _ = Inheritance.receiver(rotationAnimation.?, "nextRotationZ").nextRotationZ();
    }
    

    pub fn previousRotationZ(self: *Self) void {
        const rotationAnimation: ?*RotationAnimation = Inheritance.upcast(?*RotationAnimation, (Inheritance.cast(?*RotationAnimation, self.animation)));
        _ = Inheritance.receiver(rotationAnimation.?, "previousRotationZ").previousRotationZ();
    }
    

    pub fn changeBasicColor(self: *Self, basicColor: ?*BasicColor) void {
        _ = Inheritance.call(self.animation.?, "changeBasicColor", .{ basicColor });
    }
    

    pub fn getBasicColorP(self: *Self) ?*BasicColor {
        return Inheritance.upcast(?*BasicColor, Inheritance.receiver(self.animation.?, "getBasicColorP").getBasicColorP());
    }
    

    pub fn getChangeBasicColor(self: *Self) ?*BasicColor {
        return Inheritance.upcast(?*BasicColor, Inheritance.receiver(self.animation.?, "getChangeBasicColor").getChangeBasicColor());
    }
    

    pub fn getChangeColor(self: *Self) i32 {
        return Inheritance.receiver(self.animation.?, "getChangeColor").getChangeColor();
    }
    

    pub fn getColor(self: *Self) i32 {
        return Inheritance.receiver(self.animation.?, "getColor").getColor();
    }
    

    pub fn getDx(self: *Self) i32 {
        return Inheritance.receiver(self.animation.?, "getDx").getDx();
    }
    

    pub fn getDy(self: *Self) i32 {
        return Inheritance.receiver(self.animation.?, "getDy").getDy();
    }
    

    pub fn isThreed(self: *Self) bool {
        return Inheritance.receiver(self.animation.?, "isThreed").isThreed();
    }
    

    // throws Exception
    pub fn nextFrame(self: *Self) void {
        _ = Inheritance.receiver(self.animation.?, "nextFrame").nextFrame();
    }
    

    pub fn reset(self: *Self) void {
        _ = Inheritance.receiver(self.animation.?, "reset").reset();
    }
    

    pub fn setFrame(self: *Self, index: i32) void {
        _ = Inheritance.call(self.animation.?, "setFrame", .{ index });
    }
    

    pub fn getFrame(self: *Self) i32 {
        return Inheritance.receiver(self.animation.?, "getFrame").getFrame();
    }
    

    // throws Exception
    pub fn getAnimationSize(self: *Self) i32 {
        return Inheritance.receiver(self.animation.?, "getAnimationSize").getAnimationSize();
    }
    

    pub fn getSize(self: *Self) i32 {
        return Inheritance.receiver(self.animation.?, "getSize").getSize();
    }
    

    pub fn previousFrame(self: *Self) void {
        _ = Inheritance.receiver(self.animation.?, "previousFrame").previousFrame();
    }
    

    pub fn isLastFrame(self: *Self) bool {
        return Inheritance.receiver(self.animation.?, "isLastFrame").isLastFrame();
    }
    

    pub fn setSequence(self: *Self, sequence: []i32) void {
        _ = Inheritance.call(self.animation.?, "setSequence", .{ sequence });
    }
    

    pub fn getSequence(self: *Self) []i32 {
        return Inheritance.receiver(self.animation.?, "getSequence").getSequence();
    }
    

    pub fn getWidth(self: *Self) i32 {
        return Inheritance.receiver(self.animation.?, "getWidth").getWidth();
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        { // try
            _ = Inheritance.call(self.animation.?, "paintXY", .{ graphics, x, y });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.PROCESS, e });
    }
    

    pub fn paintThreedXYZ(self: *Self, graphics: ?*Graphics, x: i32, y: i32, z: i32) void {
        { // try
            _ = Inheritance.call(self.animation.?, "paintThreedXYZ", .{ graphics, x, y, z });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.PROCESS, e });
    }
    

    pub fn toString(self: *Self) ?*String {
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        const image: ?*Image = Inheritance.upcast(?*Image, self.animationInterfaceFactoryInterface.?.getImage());
        return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.base.toString() }).?, "append", .{ commonSeps.?.SPACE }).?, "append", .{ image.?.getName() }).?, "append", .{ commonSeps.?.SPACE }).?, "appendint", .{ @as(i32, @intCast(image.?.getWidth())) }).?, "append", .{ commonSeps.?.SPACE }).?, "appendint", .{ @as(i32, @intCast(image.?.getHeight())) }))));
    }
};

