// Generated Code Do Not Modify
// package org.allbinary.graphics

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PlatformBitmapBase = @import("org/allbinary/platform/graphics/PlatformBitmapBase.zig").PlatformBitmapBase;

pub const OpenGLBitmap = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.OpenGLBitmap";
    base: PlatformBitmapBase = undefined,
    bitmap: ?Object = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(bitmap: ?Object) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = PlatformBitmapBase.create().*;
        this.initFields();
        this.bitmap = bitmap;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getPixels(self: *Self, pixels: []i32, offset: i32, stride: i32, x: i32, y: i32, width: i32, height: i32) void {
        _ = pixels;
        _ = offset;
        _ = stride;
        _ = x;
        _ = y;
        _ = width;
        _ = height;
        _ = self;
    }
    

    pub fn setPixels(self: *Self, pixels: []i32, offset: i32, stride: i32, x: i32, y: i32, width: i32, height: i32) void {
        _ = pixels;
        _ = offset;
        _ = stride;
        _ = x;
        _ = y;
        _ = width;
        _ = height;
        _ = self;
    }
    

    pub fn recycle(self: *Self) void {
        _ = self;
    }
};

