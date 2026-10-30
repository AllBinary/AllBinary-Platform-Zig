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
// package org.allbinary.animation.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const ImageModifierUtil = @import("org/allbinary/media/image/ImageModifierUtil.zig").ImageModifierUtil;
const ModifierBaseProcessor = @import("org/allbinary/animation/image/ModifierBaseProcessor.zig").ModifierBaseProcessor;

pub const AlphaProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.AlphaProcessor";
    base: ModifierBaseProcessor = undefined,
    var instanceC: ?*AlphaProcessor = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instanceC = AlphaProcessor.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ModifierBaseProcessor.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*AlphaProcessor {
        return Inheritance.upcast(?*AlphaProcessor, AlphaProcessor.instanceC);
    }
    

    pub fn updateAlpha(self: *Self, imageModifierUtil: ?*ImageModifierUtil, originalImage: ?*Image, imageToShow: ?*Image, index: i32, alpha: i32) void {
        _ = self;
        _ = Inheritance.call(imageModifierUtil.?, "setAlpha", .{ originalImage, imageToShow, index, alpha });
    }
};

