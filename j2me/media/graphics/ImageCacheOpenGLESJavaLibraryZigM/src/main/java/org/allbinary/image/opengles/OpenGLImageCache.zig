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
// const InputStream = @import("java/io/InputStream.zig").InputStream;
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
// const NullImage = @import("javax/microedition/lcdui/NullImage.zig").NullImage;
const NullGL10 = @import("org/allbinary/device/NullGL10.zig").NullGL10;
const AllBinaryRendererBase3 = @import("org/allbinary/graphics/opengles/renderer/AllBinaryRendererBase3.zig").AllBinaryRendererBase3;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const ImageCache = @import("org/allbinary/image/ImageCache.zig").ImageCache;
const ImageCacheFactory = @import("org/allbinary/image/ImageCacheFactory.zig").ImageCacheFactory;
const PreResourceImageUtil = @import("org/allbinary/image/PreResourceImageUtil.zig").PreResourceImageUtil;
const SynchObject = @import("org/allbinary/thread/SynchObject.zig").SynchObject;
const OpenGLESImage = @import("org/allbinary/image/opengles/OpenGLESImage.zig").OpenGLESImage;

//ImageCacheOpenGLESJavaLibrary
pub const OpenGLImageCache = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.opengles.OpenGLImageCache";
    base: ImageCache = undefined,
    imageCache: ?*ImageCache = null,
    preResourceImageUtil: ?*PreResourceImageUtil = null,
    gl: ?*GL10 = null,
    lock: ?*SynchObject = null,
    list: ?*BasicArrayList = null,
    renderer: ?*AllBinaryRendererBase3 = null,

    fn initFields(this: *Self) void {
        this.imageCache = Inheritance.upcast(?*ImageCache, ImageCacheFactory.getInstance());
        this.preResourceImageUtil = Inheritance.upcast(?*PreResourceImageUtil, PreResourceImageUtil.getInstance());
        this.gl = Inheritance.upcast(?*GL10, NullGL10.NULL_GL10);
        this.lock = SynchObject.create();
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.renderer = AllBinaryRendererBase3.create();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ImageCache.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn addListener(self: *Self, renderer: ?Object) void {
        self.renderer = Inheritance.cast(?*AllBinaryRendererBase3, renderer);
    }
    

    // throws Exception
    pub fn update(self: *Self, gl: ?*GL10) void {
        self.gl = gl;
        {
            const monitor_N66346 = Object.monitor(self.lock).enter();
            defer monitor_N66346.exit();
            {
                var index: i32 = self.list.?.size() - 1;
                while (index >= 0) : (index -= 1) {
                const openGLESImage: ?*OpenGLESImage = Inheritance.upcast(?*OpenGLESImage, (Inheritance.cast(?*OpenGLESImage, self.list.?.objectArray[@intCast(index)])));
                if (!Object.same(openGLESImage, OpenGLESImage.NULL_OPENGL_IMAGE)) {
                    _ = Inheritance.call(openGLESImage.?, "set", .{ gl });
                }
                }
            }
        }
    }
    

    // throws Exception
    pub fn createImage(self: *Self, caller: ?*String, widthParameter: i32, heightParameter: i32) ?*Image {
        var width = widthParameter;
        var height = heightParameter;
        var textureSize: i32 = width;
        if (height > width) {
            textureSize = height;
        }
        while ((@rem(textureSize, 4)) != 0) {
            textureSize += 1;
        }
        width = textureSize;
        height = textureSize;
        const image2: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(self.imageCache.?, "get", .{ caller, width, height }));
        const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(self.preResourceImageUtil.?, "encapsulate", .{ image2 }));
        {
            const monitor_N67010 = Object.monitor(self.lock).enter();
            defer monitor_N67010.exit();
            if (!Object.same(image, NullImage.NULL_IMAGE)) {
                _ = Inheritance.call(self.list.?, "add", .{ image });
            }
        }
        return image;
    }
    

    // throws Exception
    pub fn createImageFromInputStream(self: *Self, key: ?Object, inputStream: ?*InputStream) ?*Image {
        _ = inputStream;
        const cachedImage: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(self.imageCache.?, "getWithKey", .{ key }));
        const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(self.preResourceImageUtil.?, "encapsulate", .{ cachedImage }));
        {
            const monitor_N67359 = Object.monitor(self.lock).enter();
            defer monitor_N67359.exit();
            if (!Object.same(image, NullImage.NULL_IMAGE)) {
                _ = Inheritance.call(self.list.?, "add", .{ image });
            }
        }
        return image;
    }
    

    pub fn getGlP(self: *Self) ?*GL10 {
        return self.gl;
    }
    

    pub fn init(self: *Self, image: ?*Image) void {
        { // try
            {
                const monitor_N67631 = Object.monitor(self.lock).enter();
                defer monitor_N67631.exit();
                if (Inheritance.call(self.list.?, "contains", .{ image })) {
                    std.debug.panic("{any}", .{error.RuntimeException});
                }
                _ = Inheritance.call(self.list.?, "add", .{ image });
            }
            _ = Inheritance.call(self.renderer.?, "add", .{ image });
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.INIT, e });
    }
};

