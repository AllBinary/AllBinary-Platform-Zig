// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// const InputStream = @import("java/io/InputStream.zig").InputStream;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;

//ImageCacheBaseJavaLibrary - J2ME
pub const ImageFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.ImageFactory";
    var instance: ?*ImageFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageFactory.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*ImageFactory {
        return Inheritance.upcast(?*ImageFactory, ImageFactory.instance);
    }
    

    // throws Exception
    pub fn createImageUrl(self: *Self, url: ?*String) ?*Image {
        _ = self;
        return Inheritance.upcast(?*Image, Inheritance.callStatic(Image, "createImage", .{ url }));
    }
    

    // throws Exception
    pub fn createImage(self: *Self, caller: ?*String, width: i32, height: i32) ?*Image {
        _ = caller;
        _ = self;
        return Inheritance.upcast(?*Image, Inheritance.callStatic(Image, "createImage", .{ width, height }));
    }
    

    // throws Exception
    pub fn createImageFromInputStream2(self: *Self, key: ?Object, inputStream: ?*InputStream) ?*Image {
        _ = key;
        _ = self;
        const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.callStatic(Image, "createImage", .{ inputStream }));
        return image;
    }
    

    // throws Exception
    pub fn createImageFromInputStream(self: *Self, inputStream: ?*InputStream) ?*Image {
        _ = self;
        return Inheritance.upcast(?*Image, Inheritance.callStatic(Image, "createImage", .{ inputStream }));
    }
};

