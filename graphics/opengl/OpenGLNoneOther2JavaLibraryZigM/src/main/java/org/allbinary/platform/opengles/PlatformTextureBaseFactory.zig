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
// package org.allbinary.platform.opengles

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const PlatformTextureBaseFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.platform.opengles.PlatformTextureBaseFactory";
    commonStrings: ?*CommonStrings = null,
    pub var NULL_PLATFORM_TEXTURE_BASE_FACTORY: ?*PlatformTextureBaseFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_PLATFORM_TEXTURE_BASE_FACTORY = PlatformTextureBaseFactory.create();
    }

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn load(self: *Self, gl: ?*GL10, target: i32, level: i32, image: ?*Image, border: i32, flip: bool) void {
        _ = gl;
        _ = target;
        _ = level;
        _ = image;
        _ = border;
        _ = flip;
        _ = self;
    }
};

