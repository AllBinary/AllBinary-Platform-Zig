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
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const ImageModifierUtil = @import("org/allbinary/media/image/ImageModifierUtil.zig").ImageModifierUtil;
const ModifierBaseProcessor = @import("org/allbinary/animation/image/ModifierBaseProcessor.zig").ModifierBaseProcessor;

pub const ChangeColorProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.ChangeColorProcessor";
    base: ModifierBaseProcessor = undefined,
    var instanceC: ?*ChangeColorProcessor = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instanceC = ChangeColorProcessor.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ModifierBaseProcessor.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*ChangeColorProcessor {
        return Inheritance.upcast(?*ChangeColorProcessor, ChangeColorProcessor.instanceC);
    }
    

    pub fn updateColor(self: *Self, imageModifierUtil: ?*ImageModifierUtil, originalImage: ?*Image, imageToShow: ?*Image, index: i32, basicColor: ?*BasicColor) void {
        _ = self;
        _ = Inheritance.call(imageModifierUtil.?, "changeColor", .{ originalImage, imageToShow, index, basicColor });
    }
};

