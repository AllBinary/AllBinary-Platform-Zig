// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.graphics.opengles.renderer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const OpenGLESImage = @import("org/allbinary/image/opengles/OpenGLESImage.zig").OpenGLESImage;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;

pub const AllBinaryRendererBase3 = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3";
    list: ?*BasicArrayList = null,

    fn initFields(this: *Self) void {
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn update(self: *Self, gl: ?*GL10) void {
        while (self.list.?.size() > 0) {
            const openGLESImage: ?*OpenGLESImage = Inheritance.cast(?*OpenGLESImage, Inheritance.call(self.list.?, "removeAt", .{ 0 }));
            if (openGLESImage != null) {
                _ = Inheritance.call(openGLESImage.?, "set", .{ gl });
            }
        }
    }
    

    pub fn add(self: *Self, image: ?*Image) void {
        _ = Inheritance.call(self.list.?, "add", .{ image });
    }
};

