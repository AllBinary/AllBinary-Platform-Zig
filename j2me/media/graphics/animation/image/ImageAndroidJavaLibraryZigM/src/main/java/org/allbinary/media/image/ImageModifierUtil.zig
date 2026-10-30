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
// package org.allbinary.media.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Paint = @import("android/graphics/Paint.zig").Paint;
const PorterDuff = @import("android/graphics/PorterDuff.zig").PorterDuff;
const PorterDuffColorFilter = @import("android/graphics/PorterDuffColorFilter.zig").PorterDuffColorFilter;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;

pub const ImageModifierUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageModifierUtil";
    paint: ?*Paint = null,

    fn initFields(this: *Self) void {
        this.paint = Inheritance.callStatic(Paint, "create1", .{ Paint.ANTI_ALIAS_FLAG });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstanceOrCreate() ?*ImageModifierUtil {
        return ImageModifierUtil.create();
    }
    

    pub fn setColor(self: *Self, unusedOriginalImage: ?*Image, image: ?*Image, imageIndex: i32, basicColor: ?*BasicColor) void {
        _ = unusedOriginalImage;
        _ = image;
        _ = imageIndex;
        _ = Inheritance.call(self.paint.?, "setColorFilter", .{ Inheritance.callStatic(PorterDuffColorFilter, "create2", .{ basicColor.?.intValue(), PorterDuff.Mode.?.SRC_IN }) });
    }
    

    pub fn changeColor(self: *Self, unusedOriginalImage: ?*Image, image: ?*Image, imageIndex: i32, basicColor: ?*BasicColor) void {
        _ = unusedOriginalImage;
        _ = image;
        _ = imageIndex;
        _ = Inheritance.call(self.paint.?, "setColorFilter", .{ Inheritance.callStatic(PorterDuffColorFilter, "create2", .{ basicColor.?.intValue(), PorterDuff.Mode.?.SRC_IN }) });
    }
    

    pub fn setAlpha(self: *Self, originalImage: ?*Image, image: ?*Image, imageIndex: i32, alphaInt: i32) void {
        _ = originalImage;
        _ = image;
        _ = imageIndex;
        if (alphaInt != self.paint.?.getAlpha()) {
            _ = Inheritance.call(self.paint.?, "setAlpha", .{ alphaInt });
        }
    }
    

    pub fn getImageArray(self: *Self, originalImageArray: []?*Image) []?*Image {
        _ = self;
        return originalImageArray;
    }
    

    pub fn handleImage(self: *Self, imageArray: []?*Image, index: i32, image: ?*Image) void {
        _ = imageArray;
        _ = index;
        _ = image;
        _ = self;
    }
    

    pub fn reset(self: *Self) void {
        _ = self;
    }
};

