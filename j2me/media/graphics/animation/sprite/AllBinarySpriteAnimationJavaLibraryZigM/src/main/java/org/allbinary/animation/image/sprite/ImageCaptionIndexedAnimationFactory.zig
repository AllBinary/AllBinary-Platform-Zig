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
// package org.allbinary.animation.image.sprite

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
// const Sprite = @import("javax/microedition/lcdui/game/Sprite.zig").Sprite;
// const Player = @import("javax/microedition/media/Player.zig").Player;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationBehaviorFactory = @import("org/allbinary/animation/AnimationBehaviorFactory.zig").AnimationBehaviorFactory;
const AnimationInterfaceFactoryInterface = @import("org/allbinary/animation/AnimationInterfaceFactoryInterface.zig").AnimationInterfaceFactoryInterface;
const IndexedAnimation = @import("org/allbinary/animation/IndexedAnimation.zig").IndexedAnimation;
const CaptionIndexedAnimation = @import("org/allbinary/animation/caption/CaptionIndexedAnimation.zig").CaptionIndexedAnimation;
const ImageAnimation = @import("org/allbinary/animation/image/ImageAnimation.zig").ImageAnimation;
const BasicColorUtil = @import("org/allbinary/graphics/color/BasicColorUtil.zig").BasicColorUtil;
const AnimationFactoryImageScaleUtil = @import("org/allbinary/image/AnimationFactoryImageScaleUtil.zig").AnimationFactoryImageScaleUtil;
const AnimationFactorySpriteScaleUtil = @import("org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil.zig").AnimationFactorySpriteScaleUtil;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const ScaleProperties = @import("org/allbinary/media/ScaleProperties.zig").ScaleProperties;
const Sound = @import("org/allbinary/media/audio/Sound.zig").Sound;
const SpriteIndexedAnimation = @import("org/allbinary/animation/image/sprite/SpriteIndexedAnimation.zig").SpriteIndexedAnimation;

pub const ImageCaptionIndexedAnimationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.sprite.ImageCaptionIndexedAnimationFactory";
    animationFactoryImageScaleUtil: ?*AnimationFactoryImageScaleUtil = null,
    animationFactorySpriteScaleUtil: ?*AnimationFactorySpriteScaleUtil = null,
    captionImage: ?*Image = null,
    spriteMovieImage: ?*Image = null,
    frameWidth: i32 = 0,
    frameHeight: i32 = 0,
    captionDx: i32 = 0,
    captionDy: i32 = 0,
    dx: i32 = 0,
    dy: i32 = 0,
    time: i32 = 0,
    soundInterface: ?*Sound = null,
    scaleProperties: ?*ScaleProperties = null,
    animationBehaviorFactory: ?*AnimationBehaviorFactory = null,
    // Implements AnimationInterfaceFactoryInterface

    fn initFields(this: *Self) void {
        this.animationFactoryImageScaleUtil = Inheritance.upcast(?*AnimationFactoryImageScaleUtil, AnimationFactoryImageScaleUtil.getInstance());
        this.animationFactorySpriteScaleUtil = Inheritance.upcast(?*AnimationFactorySpriteScaleUtil, AnimationFactorySpriteScaleUtil.getInstance());
        
        
        
        
        
        
        
        
        
        
        this.scaleProperties = Inheritance.upcast(?*ScaleProperties, ScaleProperties.instance);
        
    }
    

    pub fn create11(captionImage: ?*Image, spriteMovieImage: ?*Image, soundInterface: ?*Sound, frameWidth: i32, frameHeight: i32, captionDx: i32, captionDy: i32, dx: i32, dy: i32, time: i32, animationBehaviorFactory: ?*AnimationBehaviorFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (Object.same(animationBehaviorFactory, AnimationBehaviorFactory.getInstance())) {
            _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ String.literal("Using default AnimationBehaviorFactory with IndexedAnimationFactory"), this });
        }
        this.captionImage = captionImage;
        this.spriteMovieImage = spriteMovieImage;
        this.frameWidth = frameWidth;
        this.frameHeight = frameHeight;
        this.captionDx = captionDx;
        this.captionDy = captionDy;
        this.dx = dx;
        this.dy = dy;
        this.time = time;
        this.soundInterface = soundInterface;
        this.animationBehaviorFactory = animationBehaviorFactory;
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, instanceId: i32) ?*Animation {
        _ = instanceId;
        const scaledImage: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(self.animationFactoryImageScaleUtil.?, "createImage", .{ self.captionImage, self.captionImage.?.getWidth(), self.captionImage.?.getHeight(), self.scaleProperties.?.scaleWidth, self.scaleProperties.?.scaleHeight }));
        const animationInterface: ?*Animation = Inheritance.upcast(?*Animation, Inheritance.callStatic(ImageAnimation, "create2", .{ scaledImage, self.animationBehaviorFactory.?.getOrCreateInstance() }));
        const sprite: ?*Sprite = Inheritance.upcast(?*Sprite, Inheritance.call(self.animationFactorySpriteScaleUtil.?, "createImage", .{ self.spriteMovieImage, self.frameWidth, self.frameHeight, self.scaleProperties.?.scaleWidth, self.scaleProperties.?.scaleHeight }));
        const movieIndexedAnimationInterface: ?*IndexedAnimation = Inheritance.upcast(?*IndexedAnimation, Inheritance.callStatic(SpriteIndexedAnimation, "create4", .{ sprite, self.spriteMovieImage, BasicColorUtil.getInstance().?.ZERO_ARRAY, self.animationBehaviorFactory.?.getOrCreateInstance() }));
        const player: ?*Player = Inheritance.upcast(?*Player, self.soundInterface.?.getPlayerP());
        if (player == null) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Sound Was not Initialized"); break :exception error.Exception; }});
        }
        return Inheritance.upcast(?*Animation, Inheritance.callStatic(CaptionIndexedAnimation, "create9", .{ animationInterface, movieIndexedAnimationInterface, player, self.captionDx, self.captionDy, self.dx, self.dy, self.time, self.animationBehaviorFactory.?.getOrCreateInstance() }));
    }
    

    pub fn setInitialScale(self: *Self, scaleProperties: ?*ScaleProperties) void {
        self.scaleProperties = scaleProperties;
    }
};

