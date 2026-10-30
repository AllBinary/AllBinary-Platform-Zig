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

pub const ImageCompleteUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageCompleteUtil";
    var instance: ?*ImageCompleteUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageCompleteUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*ImageCompleteUtil {
        return Inheritance.upcast(?*ImageCompleteUtil, ImageCompleteUtil.instance);
    }
    

    // throws Exception
    pub fn waitForImage(self: *Self, image: ?*Image, name: ?*String) void {
        _ = image;
        _ = name;
        _ = self;
    }
};

