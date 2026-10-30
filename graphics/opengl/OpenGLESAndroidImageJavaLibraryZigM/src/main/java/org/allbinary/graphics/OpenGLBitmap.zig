// Generated Code Do Not Modify
// package org.allbinary.graphics

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Bitmap = @import("android/graphics/Bitmap.zig").Bitmap;
const PlatformBitmapBase = @import("org/allbinary/platform/graphics/PlatformBitmapBase.zig").PlatformBitmapBase;

pub const OpenGLBitmap = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.OpenGLBitmap";
    base: PlatformBitmapBase = undefined,
    bitmap: ?*Bitmap = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(bitmap: ?Object) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = PlatformBitmapBase.create().*;
        this.initFields();
        this.bitmap = Inheritance.cast(?*Bitmap, bitmap);
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getPixels(self: *Self, pixels: []i32, offset: i32, stride: i32, x: i32, y: i32, width: i32, height: i32) void {
        _ = Inheritance.call(self.bitmap.?, "getPixels", .{ pixels, offset, stride, x, y, width, height });
    }
    

    pub fn setPixels(self: *Self, pixels: []i32, offset: i32, stride: i32, x: i32, y: i32, width: i32, height: i32) void {
        _ = Inheritance.call(self.bitmap.?, "setPixels", .{ pixels, offset, stride, x, y, width, height });
    }
    

    pub fn getWidth(self: *Self) i32 {
        return self.bitmap.?.getWidth();
    }
    

    pub fn getHeight(self: *Self) i32 {
        return self.bitmap.?.getHeight();
    }
    

    pub fn recycle(self: *Self) void {
        _ = self.bitmap.?.recycle();
    }
};

