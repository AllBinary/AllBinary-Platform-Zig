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
// package org.allbinary.platform.graphics

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
// const NullImage = @import("javax/microedition/lcdui/NullImage.zig").NullImage;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;

pub const PlatformBitmapBase = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.platform.graphics.PlatformBitmapBase";
    alpha: i32 = 0,
    basicColor: ?*BasicColor = null,
    pub var NULL_PLATFORM_BITMAP_BASE: ?*PlatformBitmapBase = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_PLATFORM_BITMAP_BASE = PlatformBitmapBase.create();
    }

    fn initFields(this: *Self) void {
        this.alpha = 255;
        this.basicColor = Inheritance.upcast(?*BasicColor, BasicColorFactory.getInstance().?.NULL_COLOR);
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getWidth(self: *Self) i32 {
        _ = self;
        return 0;
    }
    

    pub fn getHeight(self: *Self) i32 {
        _ = self;
        return 0;
    }
    

    pub fn getImage(self: *Self) ?*Image {
        _ = self;
        return Inheritance.upcast(?*Image, NullImage.NULL_IMAGE);
    }
};

