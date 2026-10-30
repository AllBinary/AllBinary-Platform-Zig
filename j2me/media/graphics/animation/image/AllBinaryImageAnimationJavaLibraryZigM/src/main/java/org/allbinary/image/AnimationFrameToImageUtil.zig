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
// package org.allbinary.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const GameFeatureImageCacheFactory = @import("org/allbinary/image/GameFeatureImageCacheFactory.zig").GameFeatureImageCacheFactory;

pub const AnimationFrameToImageUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.AnimationFrameToImageUtil";
    var instance: ?*AnimationFrameToImageUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AnimationFrameToImageUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*AnimationFrameToImageUtil {
        return Inheritance.upcast(?*AnimationFrameToImageUtil, AnimationFrameToImageUtil.instance);
    }
    

    // throws Exception
    pub fn getInstanceTranslate(self: *Self, width: i32, height: i32, animationInterface: ?*Animation) ?*Image {
        _ = self;
        const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(GameFeatureImageCacheFactory.getInstance().?, "get", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(AnimationFrameToImageUtil.instance).?.class))).?))).name), ((width * 3) >> @intCast(1)), ((height * 3) >> @intCast(1)) }));
        const graphics: ?*Graphics = Inheritance.upcast(?*Graphics, image.?.getGraphics());
        const tranlateX: i32 = (width >> @intCast(2));
        const tranlateY: i32 = (height >> @intCast(2));
        _ = Inheritance.call(graphics.?, "translate", .{ tranlateX, tranlateY });
        _ = Inheritance.call(animationInterface.?, "paintXY", .{ graphics, 0, 0 });
        _ = Inheritance.call(graphics.?, "translate", .{ -tranlateX, -tranlateY });
        return image;
    }
    

    // throws Exception
    pub fn getInstanceWH(self: *Self, width: i32, height: i32, animationInterface: ?*Animation) ?*Image {
        _ = self;
        const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(GameFeatureImageCacheFactory.getInstance().?, "get", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(AnimationFrameToImageUtil.instance).?.class))).?))).name), width, height }));
        const graphics: ?*Graphics = Inheritance.upcast(?*Graphics, image.?.getGraphics());
        _ = Inheritance.call(animationInterface.?, "paintXY", .{ graphics, 0, 0 });
        return image;
    }
};

