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
// package org.allbinary.media.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const Anchor = @import("org/allbinary/graphics/Anchor.zig").Anchor;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const PlaynImage = @import("org/microemu/device/playn/PlaynImage.zig").PlaynImage;
const ResourceCallbackStrings = @import("org/microemu/device/ResourceCallbackStrings.zig").ResourceCallbackStrings;
const Callback = @import("playn/core/Callback.zig").Callback;
const Canvas = @import("playn/core/Canvas.zig").Canvas;
const CoreImage = @import("playn/core/CoreImage.zig").CoreImage;
const ImageImpl = @import("playn/core/ImageImpl.zig").ImageImpl;
const HTMLPlaynUtil = @import("playn/html/HTMLPlaynUtil.zig").HTMLPlaynUtil;

pub const ImageModifierUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageModifierUtil";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    resourceCallbackStrings: ?*ResourceCallbackStrings = null,
    playnUtil: ?*HTMLPlaynUtil = null,
    alphaArray: []bool = &.{},

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.resourceCallbackStrings = Inheritance.upcast(?*ResourceCallbackStrings, ResourceCallbackStrings.getInstance());
        this.playnUtil = Inheritance.upcast(?*HTMLPlaynUtil, HTMLPlaynUtil.getInstance());
        this.alphaArray = &.{};
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstanceOrCreate() ?*ImageModifierUtil {
        return ImageModifierUtil.create();
    }
    

    pub fn setColor(self: *Self, unusedOriginalImage: ?*Image, image: ?*Image, imageIndex: i32, basicColor: ?*BasicColor) void {
        _ = unusedOriginalImage;
        _ = image;
        _ = imageIndex;
        _ = basicColor;
        _ = self;
    }
    

    pub fn changeColor(self: *Self, unusedOriginalImage: ?*Image, image: ?*Image, imageIndex: i32, basicColor: ?*BasicColor) void {
        _ = unusedOriginalImage;
        _ = image;
        _ = imageIndex;
        _ = basicColor;
        _ = self;
    }
    

    pub fn setAlpha(self: *Self, originalImage: ?*Image, image: ?*Image, imageIndex: i32, alpha: i32) void {
        const alphaF: f32 = @as(f32, @floatFromInt(alpha));
        const alphaFloat: f32 = alphaF / 255.0;
        _ = Inheritance.call(self, "setAlphaF", .{ originalImage, image, imageIndex, alphaFloat });
    }
    

    pub fn setAlphaF(self: *Self, originalImage: ?*Image, image: ?*Image, imageIndex: i32, alpha: f32) void {
        if (self.alphaArray[@intCast(imageIndex)]) {
            self.alphaArray[@intCast(imageIndex)] = false;
            _ = Inheritance.call(self, "setAlpha2", .{ originalImage, image, imageIndex, alpha });
        }
    }
    

    pub fn setAlpha2(self: *Self, originalImage: ?*Image, image: ?*Image, imageIndex: i32, alpha: f32) void {
        _ = imageIndex;
        const htmlImage: ?*PlaynImage = Inheritance.cast(?*PlaynImage, image);
        const canvasImage: ?*ImageImpl = Inheritance.cast(?*ImageImpl, htmlImage.?.getImage());
        const originalPlaynImage: ?*CoreImage = Inheritance.cast(?*CoreImage, Inheritance.receiverOf((Inheritance.cast(?*PlaynImage, originalImage)).?, "getImage").getImage());
        const canvas: ?*Canvas = Inheritance.upcast(?*Canvas, Inheritance.call(self.playnUtil.?, "getCanvas", .{ canvasImage }));
        _ = canvas.?.clear();
        _ = Inheritance.call(canvas.?, "setAlpha", .{ alpha });
        _ = Inheritance.call(canvas.?, "draw", .{ originalPlaynImage, 0, 0 });
    }
    

    pub fn setAlpha3(self: *Self, image: ?*Image, alpha: f32) void {
        const alphaF: f32 = alpha;
        const alphaFloat: f32 = alphaF / 255.0;
        const htmlImage: ?*PlaynImage = Inheritance.cast(?*PlaynImage, image);
        const canvasImage: ?*ImageImpl = Inheritance.cast(?*ImageImpl, htmlImage.?.getImage());
        const canvas: ?*Canvas = Inheritance.upcast(?*Canvas, Inheritance.call(self.playnUtil.?, "getCanvas", .{ canvasImage }));
        _ = Inheritance.call(canvas.?, "setAlpha", .{ alphaFloat });
    }
    

    pub fn getImageArray(self: *Self, originalImageArray: []?*Image) []?*Image {
        const size: i32 = @as(i32, @intCast(originalImageArray.len));
        self.alphaArray = Inheritance.upcast(@TypeOf(self.alphaArray), array_N67861: { const array_N67861_array = allocator.alloc(bool, @intCast(size)) catch unreachable; @memset(array_N67861_array, false); break :array_N67861 array_N67861_array; });
        const imageArray: []?*Image = array_N67904: { const array_N67904_array = allocator.alloc(?*Image, @intCast(size)) catch unreachable; @memset(array_N67904_array, null); break :array_N67904 array_N67904_array; };
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            imageArray[@intCast(index)] = Inheritance.upcast(@TypeOf(imageArray[@intCast(index)]), originalImageArray[@intCast(index)]);
            _ = Inheritance.call(self, "handleImage", .{ imageArray, index, originalImageArray[@intCast(index)] });
            }
        }
        return imageArray;
    }
    

    pub fn handleImage(self: *Self, imageArray: []?*Image, index: i32, image: ?*Image) void {
        const image3: ?*CoreImage = Inheritance.cast(?*CoreImage, Inheritance.receiverOf((Inheritance.cast(?*PlaynImage, image)).?, "getImage").getImage());
        if (image3 != null) {
            if (image3.?.isReady() or image3.?.width() + image3.?.height() <= 0 or Object.same(image.?.getName(), self.resourceCallbackStrings.?.FROM_DATA)) {
                _ = Inheritance.call(self, "copy", .{ imageArray, index, image, image3 });
            } else {
                const callback: ?*Callback = Callback.create() // Java anonymous class body: implement it as a named type
//                     
// 
//                     pub fn onSuccess(self: *Self, resource: ?Object) void {
//                         _ = resource;
//                         const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
//                         _ = Inheritance.call(logUtil.?, "putF", .{ String.plus(self.resourceCallbackStrings.?.DONE, image.?.getName()), self, self.resourceCallbackStrings.?.HANDLE_IMAGE });
//                         _ = Inheritance.call(self, "copy", .{ imageArray, index, image, image3 });
//                     }
//                     
// 
//                     pub fn onFailure(self: *Self, e: ?anyerror) void {
//                         const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
//                         _ = Inheritance.call(logUtil.?, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.commonStrings.?.EXCEPTION_LABEL }).?, "append", .{ self.resourceCallbackStrings.?.ERROR }).?, "append", .{ image.?.getName() }))), self, self.resourceCallbackStrings.?.HANDLE_IMAGE, e });
//                     }
;
                _ = Inheritance.call(image3.?, "addCallback", .{ callback });
            }
        } else {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.resourceCallbackStrings.?.NULL + image.?.isMutable(), self, self.resourceCallbackStrings.?.HANDLE_IMAGE });
        }
    }
    

    pub fn copy(self: *Self, imageArray: []?*Image, index: i32, image: ?*Image, image3: ?*CoreImage) void {
        _ = self;
        { // try
            const image2: ?*Image = Inheritance.upcast(?*Image, Inheritance.callStatic(Image, "createImageWH", .{ @as(i32, @intCast(image3.?.width())), @as(i32, @intCast(image3.?.height())) }));
            const graphics: ?*Graphics = Inheritance.upcast(?*Graphics, image2.?.getGraphics());
            _ = Inheritance.call(graphics.?, "drawImage", .{ image, 0, 0, Anchor.TOP_LEFT });
            imageArray[@intCast(index)] = Inheritance.upcast(@TypeOf(imageArray[@intCast(index)]), image2);
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.EXCEPTION_LABEL + self.resourceCallbackStrings.?.DONE, self, self.resourceCallbackStrings.?.HANDLE_IMAGE });
    }
    

    pub fn reset(self: *Self) void {
        const size: i32 = @as(i32, @intCast(self.alphaArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            self.alphaArray[@intCast(index)] = true;
            }
        }
    }
};

