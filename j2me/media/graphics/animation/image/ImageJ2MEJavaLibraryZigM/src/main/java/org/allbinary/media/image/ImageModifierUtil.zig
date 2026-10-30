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
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;

pub const ImageModifierUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageModifierUtil";
    var instance: ?*ImageModifierUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageModifierUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstanceOrCreate() ?*ImageModifierUtil {
        return Inheritance.upcast(?*ImageModifierUtil, ImageModifierUtil.instance);
    }
    

    pub fn setColor(self: *Self, unusedOriginalImage: ?*Image, image: ?*Image, imageIndex: i32, basicColor: ?*BasicColor) void {
        _ = unusedOriginalImage;
        _ = image;
        _ = imageIndex;
        _ = basicColor;
        _ = self;
    }
    

    pub fn changeColor(self: *Self, unusedOriginalImage: ?*Image, image: ?*Image, imageIndex: i32, basicColor: ?*BasicColor) void {
        _ = unusedOriginalImage;
        _ = image;
        _ = imageIndex;
        _ = basicColor;
        _ = self;
    }
    

    pub fn setAlpha(self: *Self, originalImage: ?*Image, image: ?*Image, imageIndex: i32, alphaInt: i32) void {
        _ = originalImage;
        _ = image;
        _ = imageIndex;
        _ = alphaInt;
        _ = self;
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

