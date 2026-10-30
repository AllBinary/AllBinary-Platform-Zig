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
// package org.allbinary.media.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const ImageCache = @import("org/allbinary/image/ImageCache.zig").ImageCache;

pub const ImageScaleUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageScaleUtil";
    var instance: ?*ImageScaleUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageScaleUtil.create();
    }
    

    pub fn getInstance() ?*ImageScaleUtil {
        return Inheritance.upcast(?*ImageScaleUtil, ImageScaleUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn createImage2(self: *Self, imageCache: ?*ImageCache, originalImage: ?*Image, scaleNominatorX: f32, scaleDenominatorX: f32, scaleNominatorY: f32, scaleDenominatorY: f32, cached: bool) ?*Image {
        return Inheritance.upcast(?*Image, Inheritance.call(self, "createImage3", .{ imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, true }));
    }
    

    // throws Exception
    pub fn createImage3(self: *Self, imageCache: ?*ImageCache, originalImage: ?*Image, scaleNominatorX: f32, scaleDenominatorX: f32, scaleNominatorY: f32, scaleDenominatorY: f32, cached: bool, mutable: bool) ?*Image {
        _ = imageCache;
        _ = scaleNominatorX;
        _ = scaleDenominatorX;
        _ = scaleNominatorY;
        _ = scaleDenominatorY;
        _ = cached;
        _ = mutable;
        _ = self;
        return originalImage;
    }
};

