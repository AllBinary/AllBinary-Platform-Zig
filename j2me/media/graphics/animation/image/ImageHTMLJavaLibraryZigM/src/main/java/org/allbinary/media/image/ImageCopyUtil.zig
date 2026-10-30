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
// package org.allbinary.media.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const Anchor = @import("org/allbinary/graphics/Anchor.zig").Anchor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const BasicColorSetUtil = @import("org/allbinary/graphics/color/BasicColorSetUtil.zig").BasicColorSetUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ImageCreationUtil = @import("org/allbinary/media/image/ImageCreationUtil.zig").ImageCreationUtil;

pub const ImageCopyUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageCopyUtil";
    logUtil: ?*LogUtil = null,
    imageCreationUtil: ?*ImageCreationUtil = null,
    anchor: i32 = 0,
    var instance: ?*ImageCopyUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageCopyUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.imageCreationUtil = Inheritance.upcast(?*ImageCreationUtil, ImageCreationUtil.getInstance());
        this.anchor = Anchor.TOP_LEFT;
    }
    

    pub fn getInstance() ?*ImageCopyUtil {
        return Inheritance.upcast(?*ImageCopyUtil, ImageCopyUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn createImageForRotation(self: *Self, originalImage: ?*Image) ?*Image {
        return Inheritance.upcast(?*Image, Inheritance.call(self, "createImage", .{ originalImage }));
    }
    

    // throws Exception
    pub fn createImage(self: *Self, originalImage: ?*Image) ?*Image {
        const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(self.imageCreationUtil.?, "getInstance", .{ originalImage.?.getWidth(), originalImage.?.getHeight() }));
        if (image.?.isMutable()) {
            _ = Inheritance.call(image.?.getGraphics().?, "drawImage", .{ originalImage, 0, 0, self.anchor });
            return image;
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Not Mutable"); break :exception error.Exception; }});
        }
    }
    

    // throws Exception
    pub fn createImageScale(self: *Self, originalImage: ?*Image, canvasScale: f32, resize: bool) ?*Image {
        var newWidth: i32 = @as(i32, @intCast((originalImage.?.getWidth() * canvasScale)));
        var newHeight: i32 = @as(i32, @intCast((originalImage.?.getHeight() * canvasScale)));
        if (resize) {
            if (newWidth < newHeight) {
                newWidth = newHeight;
            }
            if (newHeight < newWidth) {
                newHeight = newWidth;
            }
        }
        const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(self.imageCreationUtil.?, "getInstance", .{ newWidth, newHeight }));
        if (image.?.isMutable()) {
            const halfWidthDelta: i32 = (divide_N66848: { const left_N66848 = (newWidth - originalImage.?.getWidth()); const right_N66848 = 2; break :divide_N66848 if (comptime @typeInfo(@TypeOf(left_N66848)) == .int or @TypeOf(left_N66848) == comptime_int) @divTrunc(left_N66848, right_N66848) else left_N66848 / right_N66848; });
            const halfHeightDelta: i32 = (divide_N66920: { const left_N66920 = (newHeight - originalImage.?.getHeight()); const right_N66920 = 2; break :divide_N66920 if (comptime @typeInfo(@TypeOf(left_N66920)) == .int or @TypeOf(left_N66920) == comptime_int) @divTrunc(left_N66920, right_N66920) else left_N66920 / right_N66920; });
            const graphics: ?*Graphics = Inheritance.upcast(?*Graphics, image.?.getGraphics());
            _ = Inheritance.call(graphics.?, "drawImage", .{ originalImage, halfWidthDelta, halfHeightDelta, self.anchor });
            return image;
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Not Mutable"); break :exception error.Exception; }});
        }
    }
};

