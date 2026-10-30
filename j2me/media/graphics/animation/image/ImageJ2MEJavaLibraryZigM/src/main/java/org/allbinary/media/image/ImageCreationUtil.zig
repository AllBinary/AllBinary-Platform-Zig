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
const GameFeatureImageCacheFactory = @import("org/allbinary/image/GameFeatureImageCacheFactory.zig").GameFeatureImageCacheFactory;

pub const ImageCreationUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageCreationUtil";
    var instance: ?*ImageCreationUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageCreationUtil.create();
    }
    

    pub fn getInstance() ?*ImageCreationUtil {
        return Inheritance.upcast(?*ImageCreationUtil, ImageCreationUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn createImageWH(self: *Self, width: i32, height: i32) ?*Image {
        const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(GameFeatureImageCacheFactory.getInstance().?, "get", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self).?.class))).?))).name), width, height }));
        return image;
    }
    

    // throws Exception
    pub fn createImage(self: *Self, width: i32, height: i32, maxScaleX: f32, maxScaleY: f32) ?*Image {
        const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(GameFeatureImageCacheFactory.getInstance().?, "get", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self).?.class))).?))).name), @as(i32, @intFromFloat((@as(f32, @floatFromInt(width)) * maxScaleX))) + 1, @as(i32, @intFromFloat((@as(f32, @floatFromInt(height)) * maxScaleY))) + 1 }));
        return image;
    }
};

