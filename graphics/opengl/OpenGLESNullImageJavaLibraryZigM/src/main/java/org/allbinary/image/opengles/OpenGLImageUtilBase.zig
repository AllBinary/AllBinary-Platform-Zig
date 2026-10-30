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
// package org.allbinary.image.opengles

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const IOException = @import("java/io/IOException.zig").IOException;
// const InputStream = @import("java/io/InputStream.zig").InputStream;
const OpenGLBitmap = @import("org/allbinary/graphics/OpenGLBitmap.zig").OpenGLBitmap;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;

pub const OpenGLImageUtilBase = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.opengles.OpenGLImageUtilBase";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn paint(self: *Self, alphaBitmap: ?*OpenGLBitmap, originalBitmap: ?*OpenGLBitmap, index: i32) ?*OpenGLBitmap {
        _ = alphaBitmap;
        _ = originalBitmap;
        _ = index;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn paint4(self: *Self, colorBitmap: ?*OpenGLBitmap, originalBitmap: ?*OpenGLBitmap, alpha: i32, basicColor: ?*BasicColor) ?*OpenGLBitmap {
        _ = colorBitmap;
        _ = originalBitmap;
        _ = alpha;
        _ = basicColor;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws IOException
    pub fn createImage(self: *Self, name: ?*String) ?*OpenGLBitmap {
        _ = name;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws IOException
    pub fn createImageFromInputStream(self: *Self, inputStream: ?*InputStream) ?*OpenGLBitmap {
        _ = inputStream;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};

