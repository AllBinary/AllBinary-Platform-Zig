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
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const GameFeatureFactory = @import("org/allbinary/game/configuration/feature/GameFeatureFactory.zig").GameFeatureFactory;
const Anchor = @import("org/allbinary/graphics/Anchor.zig").Anchor;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ImageCreationUtil = @import("org/allbinary/media/image/ImageCreationUtil.zig").ImageCreationUtil;

pub const ImageCopyUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageCopyUtil";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    imageCreationUtil: ?*ImageCreationUtil = null,
    anchor: i32 = 0,
    gameFeatureFactory: ?*GameFeatureFactory = null,
    features: ?*Features = null,
    NO_COPY: ?*String = null,
    var instance: ?*ImageCopyUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageCopyUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.imageCreationUtil = Inheritance.upcast(?*ImageCreationUtil, ImageCreationUtil.getInstance());
        this.anchor = Anchor.TOP_LEFT;
        this.gameFeatureFactory = Inheritance.upcast(?*GameFeatureFactory, GameFeatureFactory.getInstance());
        this.features = Inheritance.upcast(?*Features, Features.getInstance());
        this.NO_COPY = String.literal("J2ME does not need to copy images after initial loading");
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
        if (!Inheritance.call(self.features.?, "isFeature", .{ self.gameFeatureFactory.?.POST_IMAGE_LOADING_MODIFICATION })) {
            _ = Inheritance.call(self.logUtil.?, "put", .{ self.NO_COPY, self, self.commonStrings.?.CONSTRUCTOR, error.Exception });
            return originalImage;
        }
        const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(self.imageCreationUtil.?, "createImageWH", .{ originalImage.?.getWidth(), originalImage.?.getHeight() }));
        if (image.?.isMutable()) {
            _ = Inheritance.call(image.?.getGraphics().?, "drawImage", .{ originalImage, 0, 0, self.anchor });
            return image;
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Not Mutable"); break :exception error.Exception; }});
        }
    }
    

    // throws Exception
    pub fn createImageScale(self: *Self, originalImage: ?*Image, canvasScale: f32, resize: bool) ?*Image {
        if (!Inheritance.call(self.features.?, "isFeature", .{ self.gameFeatureFactory.?.POST_IMAGE_LOADING_MODIFICATION })) {
            _ = Inheritance.call(self.logUtil.?, "put", .{ self.NO_COPY, self, self.commonStrings.?.CONSTRUCTOR, error.Exception });
            return originalImage;
        }
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
        const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(self.imageCreationUtil.?, "createImageWH", .{ newWidth, newHeight }));
        if (image.?.isMutable()) {
            const halfWidthDelta: i32 = (divide_N67326: { const left_N67326 = (newWidth - originalImage.?.getWidth()); const right_N67326 = 2; break :divide_N67326 if (comptime @typeInfo(@TypeOf(left_N67326)) == .int or @TypeOf(left_N67326) == comptime_int) @divTrunc(left_N67326, right_N67326) else left_N67326 / right_N67326; });
            const halfHeightDelta: i32 = (divide_N67398: { const left_N67398 = (newHeight - originalImage.?.getHeight()); const right_N67398 = 2; break :divide_N67398 if (comptime @typeInfo(@TypeOf(left_N67398)) == .int or @TypeOf(left_N67398) == comptime_int) @divTrunc(left_N67398, right_N67398) else left_N67398 / right_N67398; });
            const graphics: ?*Graphics = Inheritance.upcast(?*Graphics, image.?.getGraphics());
            _ = Inheritance.call(graphics.?, "drawImage", .{ originalImage, halfWidthDelta, halfHeightDelta, self.anchor });
            return image;
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Not Mutable"); break :exception error.Exception; }});
        }
    }
};

