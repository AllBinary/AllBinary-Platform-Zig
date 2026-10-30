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
// package org.allbinary.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const GL = @import("javax/microedition/khronos/opengles/GL.zig").GL;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;

pub const PreResourceImageUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.PreResourceImageUtil";
    var instance: ?*PreResourceImageUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PreResourceImageUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*PreResourceImageUtil {
        return Inheritance.upcast(?*PreResourceImageUtil, PreResourceImageUtil.instance);
    }
    

    pub fn encapsulate(self: *Self, image: ?*Image) ?*Image {
        _ = self;
        return image;
    }
    

    pub fn updateGL(self: *Self, gl: ?*GL, image: ?*Image) void {
        _ = gl;
        _ = image;
        _ = self;
    }
    

    pub fn update(self: *Self, graphics: ?*Graphics, image: ?*Image) void {
        _ = graphics;
        _ = image;
        _ = self;
    }
};

