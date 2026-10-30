// Generated Code Do Not Modify
// package org.allbinary.graphics

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const IOException = @import("java/io/IOException.zig").IOException;
// const InputStream = @import("java/io/InputStream.zig").InputStream;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const ImageFactory = @import("org/allbinary/image/ImageFactory.zig").ImageFactory;
const PlatformBitmapBaseFactory = @import("org/allbinary/platform/graphics/PlatformBitmapBaseFactory.zig").PlatformBitmapBaseFactory;
const PlatformBitmapBase = @import("org/allbinary/platform/graphics/PlatformBitmapBase.zig").PlatformBitmapBase;
const OpenGLBitmap = @import("org/allbinary/graphics/OpenGLBitmap.zig").OpenGLBitmap;

pub const OpenGLBitmapFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.OpenGLBitmapFactory";
    base: PlatformBitmapBaseFactory = undefined,
    ARGB_8888: ?*Config = null,
    var instance: ?*OpenGLBitmapFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OpenGLBitmapFactory.create();
    }

    fn initFields(this: *Self) void {
        this.ARGB_8888 = Inheritance.callStatic(Config, "create1", .{ null });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = PlatformBitmapBaseFactory.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*OpenGLBitmapFactory {
        return Inheritance.upcast(?*OpenGLBitmapFactory, OpenGLBitmapFactory.instance);
    }
    

    pub fn createBitmap3(self: *Self, width: i32, height: i32, config: ?*Config) ?*OpenGLBitmap {
        _ = config;
        _ = self;
        return Inheritance.callStatic(OpenGLBitmap, "create1", .{ Inheritance.callStatic(Image, "createImage", .{ width, height }) });
    }
    

    // throws Exception
    pub fn decodeStream(self: *Self, inputStream: ?*InputStream) ?*OpenGLBitmap {
        _ = self;
        return Inheritance.callStatic(OpenGLBitmap, "create1", .{ Inheritance.call(ImageFactory.getInstance().?, "createImageFromInputStream", .{ inputStream }) });
    }
    

    pub fn createBitmap(self: *Self, image: ?*Image) ?*PlatformBitmapBase {
        _ = self;
        return Inheritance.upcast(?*PlatformBitmapBase, Inheritance.callStatic(OpenGLBitmap, "create1", .{ image }));
    }
    pub const Config = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.graphics.Config";
        bitmapConfig: ?Object = null,

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(bitmapConfig: ?Object) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
            this.initFields();
            Inheritance.fieldPointer(this, "bitmapConfig").* = bitmapConfig;
            return this;
        }
    };
};

