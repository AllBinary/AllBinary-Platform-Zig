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
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ImageScaleUtil = @import("org/allbinary/media/image/ImageScaleUtil.zig").ImageScaleUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ScaleBaseProcessor = @import("org/allbinary/animation/image/ScaleBaseProcessor.zig").ScaleBaseProcessor;

pub const ScaleProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.ScaleProcessor";
    base: ScaleBaseProcessor = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    imageScaleUtil: ?*ImageScaleUtil = null,
    var instanceC: ?*ScaleProcessor = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instanceC = ScaleProcessor.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.imageScaleUtil = Inheritance.upcast(?*ImageScaleUtil, ImageScaleUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ScaleBaseProcessor.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*ScaleBaseProcessor {
        return Inheritance.upcast(?*ScaleBaseProcessor, ScaleProcessor.instanceC);
    }
    

    pub fn update(self: *Self, originalImage: ?*Image, originalImageArray: []?*Image, ximageToShowArray: []?*Image, unused: i32, scaleX: f32, scaleY: f32, maxScaleX: f32, maxScaleY: f32) void {
        { // try
            _ = Inheritance.call(self.imageScaleUtil.?, "scale2", .{ originalImage, originalImageArray, ximageToShowArray, unused, scaleX, scaleY, maxScaleX, maxScaleY });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.UPDATE, e });
    }
};

