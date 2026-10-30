// Generated Code Do Not Modify
// package org.allbinary.graphics

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const DisposalUtil = @import("org/allbinary/DisposalUtil.zig").DisposalUtil;
const PlatformBitmapBase = @import("org/allbinary/platform/graphics/PlatformBitmapBase.zig").PlatformBitmapBase;
const SwtImmutableImage = @import("org/microemu/device/swt/SwtImmutableImage.zig").SwtImmutableImage;
const SwtMutableImage = @import("org/microemu/device/swt/SwtMutableImage.zig").SwtMutableImage;

pub const OpenGLBitmap = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.OpenGLBitmap";
    base: PlatformBitmapBase = undefined,
    image: ?*Image = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(bitmap: ?Object) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = PlatformBitmapBase.create().*;
        this.initFields();
        this.image = Inheritance.cast(?*Image, bitmap);
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getImage(self: *Self) ?*Image {
        return self.image;
    }
    

    pub fn getDepth(self: *Self) i32 {
        if (self.image.?.isMutable()) {
            const mutableImage: ?*SwtMutableImage = Inheritance.cast(?*SwtMutableImage, self.image);
            return mutableImage.?.getDepth();
        } else {
            const immutableImage: ?*SwtImmutableImage = Inheritance.cast(?*SwtImmutableImage, self.image);
            return immutableImage.?.getDepth();
        }
    }
    

    pub fn getPixels(self: *Self, pixels: []i32, offset: i32, stride: i32, x: i32, y: i32, width: i32, height: i32) void {
        if (self.image.?.isMutable()) {
            const mutableImage: ?*SwtMutableImage = Inheritance.cast(?*SwtMutableImage, self.image);
            _ = Inheritance.call(mutableImage.?, "getRGB", .{ pixels, offset, stride, x, y, width, height });
        } else {
            const immutableImage: ?*SwtImmutableImage = Inheritance.cast(?*SwtImmutableImage, self.image);
            _ = Inheritance.call(immutableImage.?, "getRGB", .{ pixels, offset, stride, x, y, width, height });
        }
    }
    

    pub fn setPixels(self: *Self, pixels: []i32, offset: i32, stride: i32, x: i32, y: i32, width: i32, height: i32) void {
        _ = stride;
        _ = Inheritance.call(self.image.?, "setRGB2", .{ pixels, offset, height, x, y, width, height });
    }
    

    pub fn getWidth(self: *Self) i32 {
        return self.image.?.getWidth();
    }
    

    pub fn getHeight(self: *Self) i32 {
        return self.image.?.getHeight();
    }
    

    pub fn recycle(self: *Self) void {
        _ = Inheritance.call(DisposalUtil.getInstance().?, "disposeImage", .{ self.image });
    }
};

