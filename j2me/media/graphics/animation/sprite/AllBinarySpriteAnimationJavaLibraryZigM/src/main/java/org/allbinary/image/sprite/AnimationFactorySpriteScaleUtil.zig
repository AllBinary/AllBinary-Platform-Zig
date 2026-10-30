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
// package org.allbinary.image.sprite

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
// const Sprite = @import("javax/microedition/lcdui/game/Sprite.zig").Sprite;
const SpriteFactory = @import("org/allbinary/game/layer/SpriteFactory.zig").SpriteFactory;
const OpenGLUtil = @import("org/allbinary/graphics/opengles/OpenGLUtil.zig").OpenGLUtil;
const ImageCache = @import("org/allbinary/image/ImageCache.zig").ImageCache;
const ImageCacheFactory = @import("org/allbinary/image/ImageCacheFactory.zig").ImageCacheFactory;
const OpenGLESImageExclusionUtil = @import("org/allbinary/image/opengles/OpenGLESImageExclusionUtil.zig").OpenGLESImageExclusionUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const J2SEMath = @import("org/allbinary/logic/math/J2SEMath.zig").J2SEMath;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const ImageScaleUtil = @import("org/allbinary/media/image/ImageScaleUtil.zig").ImageScaleUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const AnimationFactorySpriteScaleUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil";
    imageCache: ?*ImageCache = null,
    imageScaleUtil: ?*ImageScaleUtil = null,
    openGLUtil: ?*OpenGLUtil = null,
    j2seMath: ?*J2SEMath = null,
    openGLESImageExclusionUtil: ?*OpenGLESImageExclusionUtil = null,
    var instance: ?*AnimationFactorySpriteScaleUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AnimationFactorySpriteScaleUtil.create();
    }

    fn initFields(this: *Self) void {
        this.imageCache = Inheritance.upcast(?*ImageCache, ImageCacheFactory.getInstance());
        this.imageScaleUtil = Inheritance.upcast(?*ImageScaleUtil, ImageScaleUtil.getInstance());
        this.openGLUtil = Inheritance.upcast(?*OpenGLUtil, OpenGLUtil.getInstance());
        this.j2seMath = Inheritance.upcast(?*J2SEMath, J2SEMath.getInstance());
        this.openGLESImageExclusionUtil = Inheritance.upcast(?*OpenGLESImageExclusionUtil, OpenGLESImageExclusionUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*AnimationFactorySpriteScaleUtil {
        return Inheritance.upcast(?*AnimationFactorySpriteScaleUtil, AnimationFactorySpriteScaleUtil.instance);
    }
    

    // throws Exception
    pub fn createImage(self: *Self, image: ?*Image, width: i32, height: i32, scaleWidth: i32, scaleHeight: i32) ?*Sprite {
        const spriteFactory: ?*SpriteFactory = Inheritance.upcast(?*SpriteFactory, SpriteFactory.getInstance());
        var sprite: ?*Sprite = null;
        var scaledImage: ?*Image = null;
        if (scaleWidth != 0 and scaleHeight != 0) {
            var scaleX: f32 = (@as(f32, @floatFromInt(scaleWidth))) / (@as(f32, @floatFromInt(width)));
            var scaleY: f32 = (@as(f32, @floatFromInt(scaleHeight))) / (@as(f32, @floatFromInt(height)));
            if ((scaleX == 1.0 and scaleY == 1.0) or (scaleX == 0.0 or scaleY == 0.0)) {
                scaledImage = Inheritance.upcast(@TypeOf(scaledImage), Inheritance.call(self.openGLUtil.?, "addImage", .{ image }));
                sprite = Inheritance.upcast(@TypeOf(sprite), Inheritance.call(spriteFactory.?, "createSprite", .{ scaledImage, width, height }));
            } else {
                if (Inheritance.call(self.openGLESImageExclusionUtil.?, "isCustomScaling", .{ image })) {
                    const width2: i32 = Inheritance.call(self.j2seMath.?, "round", .{ @as(f32, @floatFromInt((scaleWidth))) - 0.5 });
                    const height2: i32 = Inheritance.call(self.j2seMath.?, "round", .{ @as(f32, @floatFromInt((scaleHeight))) - 0.5 });
                    const multiplesOf16Width: i32 = @divTrunc(width2, 16);
                    const by16Width: i32 = multiplesOf16Width * 16;
                    scaleX = (@as(f32, @floatFromInt(by16Width))) / @as(f32, @floatFromInt(width));
                    const multiplesOf16Height: i32 = @divTrunc(height2, 16);
                    const by16Height: i32 = multiplesOf16Height * 16;
                    scaleY = (@as(f32, @floatFromInt(by16Height))) / @as(f32, @floatFromInt(height));
                    if (scaleWidth < width) {
                        scaleX = scaleX * 2.35;
                    }
                    if (scaleHeight < height) {
                        scaleY = scaleY * 2.35;
                    }
                }
                scaledImage = Inheritance.upcast(@TypeOf(scaledImage), Inheritance.call(self.imageScaleUtil.?, "createImage2", .{ self.imageCache, image, scaleX, 1.0, scaleY, 1.0, true }));
                sprite = Inheritance.upcast(@TypeOf(sprite), Inheritance.call(spriteFactory.?, "createSprite", .{ scaledImage, @as(i32, @intFromFloat((@as(f32, @floatFromInt(width)) * scaleX))), @as(i32, @intFromFloat((@as(f32, @floatFromInt(height)) * scaleY))) }));
            }
        } else {
            scaledImage = Inheritance.upcast(@TypeOf(scaledImage), Inheritance.call(self.openGLUtil.?, "addImage", .{ image }));
            sprite = Inheritance.upcast(@TypeOf(sprite), Inheritance.call(spriteFactory.?, "createSprite", .{ scaledImage, width, height }));
        }
        return sprite;
    }
};

