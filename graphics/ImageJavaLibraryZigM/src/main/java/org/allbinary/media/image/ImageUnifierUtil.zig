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
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const ImageUnifierProperties = @import("org/allbinary/media/image/ImageUnifierProperties.zig").ImageUnifierProperties;
const ImageUtil = @import("org/allbinary/media/image/ImageUtil.zig").ImageUtil;

pub const ImageUnifierUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageUnifierUtil";
    logUtil: ?*LogUtil = null,
    imageUtil: ?*ImageUtil = null,
    var instance: ?*ImageUnifierUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageUnifierUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.imageUtil = Inheritance.upcast(?*ImageUtil, ImageUtil.getInstance());
    }
    

    pub fn getInstance() ?*ImageUnifierUtil {
        return Inheritance.upcast(?*ImageUnifierUtil, ImageUnifierUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getDefaultConfiguration(self: *Self) ?*GraphicsConfiguration {
        _ = self;
        const ge: ?*GraphicsEnvironment = Inheritance.upcast(?*GraphicsEnvironment, GraphicsEnvironment.getLocalGraphicsEnvironment());
        const gd: ?*GraphicsDevice = Inheritance.upcast(?*GraphicsDevice, ge.?.getDefaultScreenDevice());
        return Inheritance.upcast(?*GraphicsConfiguration, gd.?.getDefaultConfiguration());
    }
    

    pub fn getImage(self: *Self, bufferedImageArray: []?*BufferedImage, imageUnifierProperties: ?*ImageUnifierProperties) ?*BufferedImage {
        const newBufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, Inheritance.call(self.imageUtil.?, "create", .{ imageUnifierProperties.?.getWidth(), imageUnifierProperties.?.getHeight() }));
        const commonLabels: ?*CommonLabels = Inheritance.upcast(?*CommonLabels, CommonLabels.getInstance());
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.plus(String.literal("Setting Image - "), commonLabels.?.WIDTH_LABEL), newBufferedImage.?.getWidth()), commonLabels.?.HEIGHT_LABEL), newBufferedImage.?.getHeight()), self, String.literal("getImage") });
        const g: ?*Graphics2D = Inheritance.upcast(?*Graphics2D, newBufferedImage.?.createGraphics());
        var columnIndex: i32 = 0;
        var rowIndex: i32 = 0;
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(bufferedImageArray.len))) : (index += 1) {
            const x: i32 = Inheritance.receiverOf(Inheritance.receiverOf(imageUnifierProperties.?.getImageUnifierCell().?, "getWidth").getWidth().?, "intValue").intValue() * value_N66457: { const value_N66457_value = columnIndex; columnIndex += 1; break :value_N66457 value_N66457_value; };
            const y: i32 = Inheritance.receiverOf(Inheritance.receiverOf(imageUnifierProperties.?.getImageUnifierCell().?, "getHeight").getHeight().?, "intValue").intValue() * rowIndex;
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.plus(String.plus(String.literal("Adding Image: "), index), String.literal(" x: ")), x), String.literal(" y: ")), y), self, String.literal("getImage") });
            _ = Inheritance.call(g.?, "drawImage", .{ bufferedImageArray[@intCast(index)], x, y, Inheritance.receiverOf(Inheritance.receiverOf(imageUnifierProperties.?.getImageUnifierCell().?, "getWidth").getWidth().?, "intValue").intValue(), Inheritance.receiverOf(Inheritance.receiverOf(imageUnifierProperties.?.getImageUnifierCell().?, "getHeight").getHeight().?, "intValue").intValue(), null });
            const totalColumnsMinusOne: i32 = (Inheritance.receiverOf(imageUnifierProperties.?.getColumns().?, "intValue").intValue() - 1);
            if (columnIndex > totalColumnsMinusOne) {
                rowIndex += 1;
                columnIndex = 0;
            }
            }
        }
        _ = g.?.dispose();
        return newBufferedImage;
    }
};

