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
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
// const IOException = @import("java/io/IOException.zig").IOException;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const ImageProcessedVisitor = @import("org/allbinary/media/image/ImageProcessedVisitor.zig").ImageProcessedVisitor;
const ImageProcessorInput = @import("org/allbinary/media/image/ImageProcessorInput.zig").ImageProcessorInput;

pub const CanvasTrimUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.CanvasTrimUtil";
    logUtil: ?*LogUtil = null,
    stringUtil: ?*StringUtil = null,
    var instance: ?*CanvasTrimUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = CanvasTrimUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.stringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*CanvasTrimUtil {
        return Inheritance.upcast(?*CanvasTrimUtil, CanvasTrimUtil.instance);
    }
    

    // throws IOException
    pub fn process(self: *Self, imageProcessorInput: ?*ImageProcessorInput, cutCanvasFromLeftReduction: i32, cutCanvasFromTopReduction: i32, cutCanvasFromRightReduction: i32, cutCanvasFromBottomReduction: i32, visitor: ?*ImageProcessedVisitor) void {
        const bufferedImageArray: []?*BufferedImage = imageProcessorInput.?.getBufferedImageArray();
        const subBufferedImageArray: []?*BufferedImage = array_N65990: { const array_N65990_array = allocator.alloc(?*BufferedImage, @intCast(@as(i32, @intCast(bufferedImageArray.len)))) catch unreachable; @memset(array_N65990_array, null); break :array_N65990 array_N65990_array; };
        const size: i32 = @as(i32, @intCast(bufferedImageArray.len));
        var bufferedImage: ?*BufferedImage = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            bufferedImage = Inheritance.upcast(@TypeOf(bufferedImage), bufferedImageArray[@intCast(index)]);
            subBufferedImageArray[@intCast(index)] = Inheritance.upcast(@TypeOf(subBufferedImageArray[@intCast(index)]), Inheritance.call(bufferedImage.?, "getSubimage", .{ cutCanvasFromLeftReduction, cutCanvasFromTopReduction, bufferedImage.?.getWidth() - cutCanvasFromLeftReduction - cutCanvasFromRightReduction, bufferedImage.?.getHeight() - cutCanvasFromTopReduction - cutCanvasFromBottomReduction }));
            _ = Inheritance.call(visitor.?, "visit", .{ subBufferedImageArray[@intCast(index)], self.stringUtil.?.EMPTY_STRING, index });
            }
        }
    }
};

