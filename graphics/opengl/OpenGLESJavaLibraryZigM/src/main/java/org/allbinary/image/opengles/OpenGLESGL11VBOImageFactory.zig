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
// package org.allbinary.image.opengles

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const PlatformBitmapBaseFactory = @import("org/allbinary/platform/graphics/PlatformBitmapBaseFactory.zig").PlatformBitmapBaseFactory;
const PlatformTextureBaseFactory = @import("org/allbinary/platform/opengles/PlatformTextureBaseFactory.zig").PlatformTextureBaseFactory;
const OpenGLESGL10Image = @import("org/allbinary/image/opengles/OpenGLESGL10Image.zig").OpenGLESGL10Image;
const OpenGLImageFactory = @import("org/allbinary/image/opengles/OpenGLImageFactory.zig").OpenGLImageFactory;

pub const OpenGLESGL11VBOImageFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.opengles.OpenGLESGL11VBOImageFactory";
    base: OpenGLImageFactory = undefined,

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = OpenGLImageFactory.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance(self: *Self, image: ?*Image, bitmapFactory: ?*PlatformBitmapBaseFactory, textureFactory: ?*PlatformTextureBaseFactory) ?*Image {
        _ = self;
        return Inheritance.upcast(?*Image, Inheritance.callStatic(OpenGLESGL10Image, "create3", .{ image, bitmapFactory, textureFactory }));
    }
};

