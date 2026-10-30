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
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const GameFeatureFactory = @import("org/allbinary/game/configuration/feature/GameFeatureFactory.zig").GameFeatureFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const SWT = @import("org/eclipse/swt/SWT.zig").SWT;
const GC = @import("org/eclipse/swt/graphics/GC.zig").GC;
const ImageData = @import("org/eclipse/swt/graphics/ImageData.zig").ImageData;
const ImageUtil = @import("org/allbinary/media/image/ImageUtil.zig").ImageUtil;

pub const ImageSwtRotationUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageSwtRotationUtil";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    imageUtil: ?*ImageUtil = null,
    gameFeatureFactory: ?*GameFeatureFactory = null,
    features: ?*Features = null,
    NO_COPY: ?*String = null,
    var instance: ?*ImageSwtRotationUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageSwtRotationUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.imageUtil = Inheritance.upcast(?*ImageUtil, ImageUtil.getInstance());
        this.gameFeatureFactory = Inheritance.upcast(?*GameFeatureFactory, GameFeatureFactory.getInstance());
        this.features = Inheritance.upcast(?*Features, Features.getInstance());
        this.NO_COPY = String.literal("SWT should not copy images after initial loading as the alpha is not honored");
    }
    

    pub fn getInstance() ?*ImageSwtRotationUtil {
        return Inheritance.upcast(?*ImageSwtRotationUtil, ImageSwtRotationUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getRotatedImage(self: *Self, bufferedImage: ?*Image, totalAngle: i32) ?*Image {
        _ = totalAngle;
        if (!Inheritance.call(self.features.?, "isFeature", .{ self.gameFeatureFactory.?.POST_IMAGE_LOADING_MODIFICATION })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.NO_COPY, self, self.commonStrings.?.CONSTRUCTOR });
            return bufferedImage;
        }
        return bufferedImage;
    }
    

    pub fn getRotatedImage2(self: *Self, bufferedImage: ?*Image, newBufferedImage: ?*Image, gc: ?*GC, angle: f32) ?*Image {
        _ = newBufferedImage;
        _ = gc;
        _ = angle;
        if (!Inheritance.call(self.features.?, "isFeature", .{ self.gameFeatureFactory.?.POST_IMAGE_LOADING_MODIFICATION })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.NO_COPY, self, self.commonStrings.?.CONSTRUCTOR });
            return bufferedImage;
        }
        return bufferedImage;
    }
    

    pub fn rotateImage(self: *Self, originalSwtImage: ?*Image, newSwtImage: ?*Image, gc: ?*GC, totalAngle: i32) ?*Image {
        return Inheritance.upcast(?*Image, Inheritance.call(self, "getRotatedImage2", .{ originalSwtImage, newSwtImage, gc, totalAngle }));
    }
    

    pub fn getRotatedImageSWT(self: *Self, bufferedImage: ?*Image, newSwtImage: ?*Image, gc: ?*GC, totalAngle: i32) ?*Image {
        return Inheritance.upcast(?*Image, Inheritance.call(self, "getRotatedImage2", .{ bufferedImage, newSwtImage, gc, totalAngle }));
    }
    

    pub fn getRotatedImages(self: *Self, bufferedImage: ?*Image, numberOfFrames: i32, totalAngle: i32) []?*Image {
        const bufferedImageArray: []?*Image = array_N67438: { const array_N67438_array = allocator.alloc(?*Image, @intCast(numberOfFrames)) catch unreachable; @memset(array_N67438_array, null); break :array_N67438 array_N67438_array; };
        var angle: i32 = 0;
        const size: i32 = @as(i32, @intCast(bufferedImageArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            angle = (@divTrunc(totalAngle, size)) * index;
            bufferedImageArray[@intCast(index)] = Inheritance.upcast(@TypeOf(bufferedImageArray[@intCast(index)]), Inheritance.call(self, "getRotatedImage", .{ bufferedImage, angle }));
            }
        }
        return bufferedImageArray;
    }
    

    pub fn createSpriteImage(self: *Self, bufferedImageArray: []?*Image) ?*Image {
        var columns: i32 = 9;
        var rows: i32 = 0;
        const size: i32 = @as(i32, @intCast(bufferedImageArray.len));
        if (size < columns) {
            columns = size;
        }
        rows = (@divTrunc(size, columns));
        if (@rem(size, columns) != 0) {
            rows += 1;
        }
        const firstBufferedImage: ?*Image = Inheritance.upcast(?*Image, bufferedImageArray[@intCast(0)]);
        var imageData: ?*ImageData = Inheritance.upcast(?*ImageData, firstBufferedImage.?.getImageData());
        const bufferedImage: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(self.imageUtil.?, "create", .{ imageData.?.width * columns, imageData.?.height * rows }));
        const gc: ?*GC = Inheritance.callStatic(GC, "create1", .{ bufferedImage });
        _ = Inheritance.call(gc.?, "setAntialias", .{ SWT.ON });
        _ = Inheritance.call(gc.?, "setInterpolation", .{ SWT.HIGH });
        var columnIndex: i32 = 0;
        var rowIndex: i32 = 0;
        var nextBufferedImage: ?*Image = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            if (@divTrunc(index, 9) != 0 and @rem(index, 9) == 0) {
                rowIndex += 1;
                columnIndex = 0;
            }
            nextBufferedImage = Inheritance.upcast(@TypeOf(nextBufferedImage), bufferedImageArray[@intCast(index)]);
            imageData = Inheritance.upcast(@TypeOf(imageData), nextBufferedImage.?.getImageData());
            _ = Inheritance.call(gc.?, "drawImage", .{ bufferedImage, 0, 0, bufferedImage.?.getBounds().?.width, bufferedImage.?.getBounds().?.height, imageData.?.width * columnIndex, imageData.?.height * rowIndex, imageData.?.width, imageData.?.height });
            columnIndex += 1;
            }
        }
        _ = gc.?.dispose();
        return bufferedImage;
    }
};

