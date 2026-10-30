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
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const GameFeatureFactory = @import("org/allbinary/game/configuration/feature/GameFeatureFactory.zig").GameFeatureFactory;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const OpenGLFeatureFactory = @import("org/allbinary/graphics/opengles/OpenGLFeatureFactory.zig").OpenGLFeatureFactory;
const OpenGLUtil = @import("org/allbinary/graphics/opengles/OpenGLUtil.zig").OpenGLUtil;
const OpenGLESDeviceImageTranslate = @import("org/allbinary/image/opengles/OpenGLESDeviceImageTranslate.zig").OpenGLESDeviceImageTranslate;
const OpenGLESImage = @import("org/allbinary/image/opengles/OpenGLESImage.zig").OpenGLESImage;
const OpenGLESImageExclusionUtil = @import("org/allbinary/image/opengles/OpenGLESImageExclusionUtil.zig").OpenGLESImageExclusionUtil;
const OpenGLESImageProperties = @import("org/allbinary/image/opengles/OpenGLESImageProperties.zig").OpenGLESImageProperties;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ImageData = @import("org/eclipse/swt/graphics/ImageData.zig").ImageData;
const SwtDeviceComponent = @import("org/microemu/app/ui/swt/SwtDeviceComponent.zig").SwtDeviceComponent;
const PostLoadSwtImmutableImageProcessor = @import("org/microemu/device/swt/PostLoadSwtImmutableImageProcessor.zig").PostLoadSwtImmutableImageProcessor;
const PostLoadSwtMutableImageProcessor = @import("org/microemu/device/swt/PostLoadSwtMutableImageProcessor.zig").PostLoadSwtMutableImageProcessor;
const SwtImmutableImage = @import("org/microemu/device/swt/SwtImmutableImage.zig").SwtImmutableImage;
const SwtMutableImage = @import("org/microemu/device/swt/SwtMutableImage.zig").SwtMutableImage;

pub const ImageCopyUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageCopyUtil";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    gameFeatureFactory: ?*GameFeatureFactory = null,
    features: ?*Features = null,
    openGLFeatureFactory: ?*OpenGLFeatureFactory = null,
    openGLUtil: ?*OpenGLUtil = null,
    openGLESImageExclusionUtil: ?*OpenGLESImageExclusionUtil = null,
    NO_COPY: ?*String = null,
    UNABLE: ?*String = null,
    INFORMATION: ?*String = null,
    LEADERBOARD: ?*String = null,
    var instance: ?*ImageCopyUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageCopyUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.gameFeatureFactory = Inheritance.upcast(?*GameFeatureFactory, GameFeatureFactory.getInstance());
        this.features = Inheritance.upcast(?*Features, Features.getInstance());
        this.openGLFeatureFactory = Inheritance.upcast(?*OpenGLFeatureFactory, OpenGLFeatureFactory.getInstance());
        this.openGLUtil = Inheritance.upcast(?*OpenGLUtil, OpenGLUtil.getInstance());
        this.openGLESImageExclusionUtil = Inheritance.upcast(?*OpenGLESImageExclusionUtil, OpenGLESImageExclusionUtil.getInstance());
        this.NO_COPY = String.literal("SWT should not copy images after initial loading as the alpha is not honored");
        this.UNABLE = String.literal("Unable to scale image without dimensions");
        this.INFORMATION = String.literal("about_");
        this.LEADERBOARD = String.literal("leaderboard");
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
        if (Inheritance.call(self.features.?, "isFeature", .{ self.openGLFeatureFactory.?.OPENGL })) {
            var image: ?*Image = originalImage;
            image = Inheritance.upcast(@TypeOf(image), Inheritance.call(self.openGLUtil.?, "addImage", .{ image }));
            return image;
        } else {
            return Inheritance.upcast(?*Image, Inheritance.call(self, "createImage", .{ originalImage }));
        }
    }
    

    // throws Exception
    pub fn createImage(self: *Self, originalImage: ?*Image) ?*Image {
        if (!Inheritance.call(self.features.?, "isFeature", .{ self.gameFeatureFactory.?.POST_IMAGE_LOADING_MODIFICATION })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.NO_COPY, self, self.commonStrings.?.CONSTRUCTOR });
            return originalImage;
        }
        var originalImage2: ?*Image = originalImage;
        if (Inheritance.call(self.features.?, "isFeature", .{ self.openGLFeatureFactory.?.OPENGL })) {
            if (originalImage.?.getType() >= OpenGLESImage.TYPE) {
                const openGLESImage: ?*OpenGLESImage = Inheritance.upcast(?*OpenGLESImage, (Inheritance.cast(?*OpenGLESImage, originalImage)));
                originalImage2 = Inheritance.upcast(@TypeOf(originalImage2), Inheritance.receiverOf(openGLESImage.?.openGLBitmap.?, "getImage").getImage());
            }
        }
        var image: ?*Image = null;
        if (originalImage2.?.isMutable()) {
            const originalMutableImage: ?*SwtMutableImage = Inheritance.cast(?*SwtMutableImage, originalImage2);
            image = Inheritance.upcast(@TypeOf(image), Inheritance.callStatic(SwtMutableImage, "create1", .{ Inheritance.callStatic(SwtDeviceComponent, "createImage", .{ Inheritance.receiverOf(originalMutableImage.?.image.?, "getImageData").getImageData() }) }));
        } else {
            const originalImmutableImage: ?*SwtImmutableImage = Inheritance.cast(?*SwtImmutableImage, originalImage2);
            image = Inheritance.upcast(@TypeOf(image), Inheritance.callStatic(SwtMutableImage, "create1", .{ Inheritance.callStatic(SwtDeviceComponent, "createImage", .{ Inheritance.receiverOf(originalImmutableImage.?.image.?, "getImageData").getImageData() }) }));
        }
        image = Inheritance.upcast(@TypeOf(image), Inheritance.call(self.openGLUtil.?, "addImage", .{ image }));
        return image;
    }
    

    // throws Exception
    pub fn createImageWH(self: *Self, originalImage: ?*Image, width: i32, height: i32, mutable: bool) ?*Image {
        var originalImage2: ?*Image = originalImage;
        if (!Inheritance.call(self.features.?, "isFeature", .{ self.gameFeatureFactory.?.POST_IMAGE_LOADING_MODIFICATION })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.NO_COPY, self, self.commonStrings.?.CONSTRUCTOR });
            return originalImage;
        }
        if (Inheritance.call(self.features.?, "isFeature", .{ self.openGLFeatureFactory.?.OPENGL })) {
            if (Inheritance.call(self.openGLESImageExclusionUtil.?, "isCustomScaling", .{ originalImage })) {
                return Inheritance.upcast(?*Image, Inheritance.call(self, "createImage2", .{ originalImage, width, height, mutable }));
            }
            if (originalImage.?.getType() >= OpenGLESImage.TYPE) {
                const openGLESImage: ?*OpenGLESImage = Inheritance.upcast(?*OpenGLESImage, (Inheritance.cast(?*OpenGLESImage, originalImage)));
                originalImage2 = Inheritance.upcast(@TypeOf(originalImage2), Inheritance.receiverOf(openGLESImage.?.openGLBitmap.?, "getImage").getImage());
            }
        }
        var image: ?*Image = null;
        if (originalImage2.?.isMutable() and mutable) {
            const originalMutableImage: ?*SwtMutableImage = Inheritance.cast(?*SwtMutableImage, originalImage2);
            if (originalMutableImage.?.getImage() != null) {
                const imageData2: ?*ImageData = Inheritance.upcast(?*ImageData, Inheritance.receiverOf(originalMutableImage.?.image.?, "getImageData").getImageData());
                const imageData: ?*ImageData = Inheritance.upcast(?*ImageData, Inheritance.call(imageData2.?, "scaledTo", .{ width, height }));
                image = Inheritance.upcast(@TypeOf(image), Inheritance.callStatic(SwtMutableImage, "create1", .{ Inheritance.callStatic(SwtDeviceComponent, "createImage", .{ imageData }) }));
            } else {
                image = Inheritance.upcast(@TypeOf(image), Inheritance.callStatic(SwtMutableImage, "create2", .{ originalMutableImage.?.getName(), Inheritance.callStatic(PostLoadSwtMutableImageProcessor, "create1", .{ originalMutableImage }) }));
            }
        } else {
            const originalImmutableImage: ?*SwtImmutableImage = Inheritance.cast(?*SwtImmutableImage, originalImage2);
            if (originalImmutableImage.?.getImage() != null) {
                const imageData2: ?*ImageData = Inheritance.upcast(?*ImageData, Inheritance.receiverOf(originalImmutableImage.?.image.?, "getImageData").getImageData());
                if (width > 0 and height > 0) {
                    const imageData: ?*ImageData = Inheritance.upcast(?*ImageData, Inheritance.call(imageData2.?, "scaledTo", .{ width, height }));
                    image = Inheritance.upcast(@TypeOf(image), Inheritance.callStatic(SwtImmutableImage, "create2", .{ originalImage.?.getName(), Inheritance.callStatic(SwtDeviceComponent, "createImage", .{ imageData }) }));
                } else {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ self.UNABLE, self, self.commonStrings.?.CONSTRUCTOR });
                    image = Inheritance.upcast(@TypeOf(image), Inheritance.callStatic(SwtImmutableImage, "create2", .{ originalImmutableImage.?.getName(), Inheritance.callStatic(PostLoadSwtImmutableImageProcessor, "create1", .{ originalImmutableImage }) }));
                }
            } else {
                image = Inheritance.upcast(@TypeOf(image), Inheritance.callStatic(SwtImmutableImage, "create2", .{ originalImmutableImage.?.getName(), Inheritance.callStatic(PostLoadSwtImmutableImageProcessor, "create1", .{ originalImmutableImage }) }));
            }
        }
        image = Inheritance.upcast(@TypeOf(image), Inheritance.call(self.openGLUtil.?, "addImage", .{ image }));
        return image;
    }
    

    // throws Exception
    pub fn createImage2(self: *Self, originalImage: ?*Image, width: i32, height: i32, mutable: bool) ?*Image {
        const originalImage2: ?*Image = originalImage;
        if (!Inheritance.call(self.features.?, "isFeature", .{ self.gameFeatureFactory.?.POST_IMAGE_LOADING_MODIFICATION })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.NO_COPY, self, self.commonStrings.?.CONSTRUCTOR });
            return originalImage;
        }
        var image: ?*Image = null;
        if (Inheritance.call(self.features.?, "isFeature", .{ self.openGLFeatureFactory.?.OPENGL })) {
            const displayInfoSingleton: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
            if (originalImage.?.getType() >= OpenGLESImage.TYPE) {
                const openGLESImage: ?*OpenGLESImage = Inheritance.upcast(?*OpenGLESImage, (Inheritance.cast(?*OpenGLESImage, originalImage)));
                const openGLESImageProperties: ?*OpenGLESImageProperties = Inheritance.upcast(?*OpenGLESImageProperties, openGLESImage.?.openGLESImageProperties);
                const openGLWidth: i32 = Inheritance.receiverOf(openGLESImage.?.openGLBitmap.?, "getWidth").getWidth();
                const openGLHeight: i32 = Inheritance.receiverOf(openGLESImage.?.openGLBitmap.?, "getHeight").getHeight();
                openGLESImageProperties.?.scaleX2 = Inheritance.upcast(@TypeOf(openGLESImageProperties.?.scaleX2), ((@as(f32, @floatFromInt(width))) / @as(f32, @floatFromInt(openGLWidth))));
                openGLESImageProperties.?.scaleX = openGLESImageProperties.?.scaleX2;
                openGLESImageProperties.?.scaleY2 = Inheritance.upcast(@TypeOf(openGLESImageProperties.?.scaleY2), ((@as(f32, @floatFromInt(height))) / @as(f32, @floatFromInt(openGLHeight))));
                openGLESImageProperties.?.scaleY = openGLESImageProperties.?.scaleY2;
                openGLESImageProperties.?.scaleX = Inheritance.upcast(@TypeOf(openGLESImageProperties.?.scaleX), openGLESImageProperties.?.scaleX * 0.75);
                openGLESImageProperties.?.scaleY = Inheritance.upcast(@TypeOf(openGLESImageProperties.?.scaleY), openGLESImageProperties.?.scaleY * 0.75);
                if (@rem(originalImage.?.getHeight(), 2) != 0) {
                    openGLESImageProperties.?.scaleX2 += 1.0 / @as(f32, @floatFromInt(openGLWidth));
                    openGLESImageProperties.?.scaleY2 += 1.0 / @as(f32, @floatFromInt(openGLHeight));
                }
                image = Inheritance.upcast(@TypeOf(image), openGLESImage);
            } else {
                image = originalImage;
                const openGLESImage: ?*OpenGLESImage = Inheritance.cast(?*OpenGLESImage, Inheritance.call(self.openGLUtil.?, "addImage", .{ image }));
                const openGLESImageProperties: ?*OpenGLESImageProperties = Inheritance.upcast(?*OpenGLESImageProperties, openGLESImage.?.openGLESImageProperties);
                openGLESImageProperties.?.scaleX2 = @as(f32, @floatCast(((@as(f32, @floatFromInt(width))) / Inheritance.receiver(openGLESImage.?, "getWidth").getWidth())));
                openGLESImageProperties.?.scaleX = openGLESImageProperties.?.scaleX2;
                openGLESImageProperties.?.scaleY2 = @as(f32, @floatCast(((@as(f32, @floatFromInt(height))) / Inheritance.receiver(openGLESImage.?, "getHeight").getHeight())));
                openGLESImageProperties.?.scaleY = openGLESImageProperties.?.scaleY2;
                if (Inheritance.call(image.?.getName().?, "startsWith", .{ self.INFORMATION })) {
                    openGLESImage.?.openGLESImageTranslate = Inheritance.upcast(@TypeOf(openGLESImage.?.openGLESImageTranslate), OpenGLESDeviceImageTranslate.create());
                    const openGLESDeviceImageTranslate: ?*OpenGLESDeviceImageTranslate = Inheritance.cast(?*OpenGLESDeviceImageTranslate, openGLESImage.?.openGLESImageTranslate);
                    openGLESDeviceImageTranslate.?.translateX = Inheritance.upcast(@TypeOf(openGLESDeviceImageTranslate.?.translateX), (divide_N71652: { const left_N71652 = (divide_N71656: { const left_N71656 = displayInfoSingleton.?.getLastWidth(); const right_N71656 = 1.4; break :divide_N71656 if (comptime @typeInfo(@TypeOf(left_N71656)) == .int or @TypeOf(left_N71656) == comptime_int) @divTrunc(left_N71656, right_N71656) else left_N71656 / right_N71656; }); const right_N71652 = openGLESImageProperties.?.scaleX; break :divide_N71652 if (comptime @typeInfo(@TypeOf(left_N71652)) == .int or @TypeOf(left_N71652) == comptime_int) @divTrunc(left_N71652, right_N71652) else left_N71652 / right_N71652; }));
                    openGLESDeviceImageTranslate.?.translateY = Inheritance.upcast(@TypeOf(openGLESDeviceImageTranslate.?.translateY), (divide_N71723: { const left_N71723 = (divide_N71727: { const left_N71727 = displayInfoSingleton.?.getLastHeight(); const right_N71727 = 4; break :divide_N71727 if (comptime @typeInfo(@TypeOf(left_N71727)) == .int or @TypeOf(left_N71727) == comptime_int) @divTrunc(left_N71727, right_N71727) else left_N71727 / right_N71727; }); const right_N71723 = openGLESImageProperties.?.scaleY; break :divide_N71723 if (comptime @typeInfo(@TypeOf(left_N71723)) == .int or @TypeOf(left_N71723) == comptime_int) @divTrunc(left_N71723, right_N71723) else left_N71723 / right_N71723; }));
                    openGLESImageProperties.?.scaleX = Inheritance.upcast(@TypeOf(openGLESImageProperties.?.scaleX), openGLESImageProperties.?.scaleX * 0.25);
                    openGLESImageProperties.?.scaleY = Inheritance.upcast(@TypeOf(openGLESImageProperties.?.scaleY), openGLESImageProperties.?.scaleY * 0.25);
                } else {
                    openGLESImageProperties.?.scaleX = Inheritance.upcast(@TypeOf(openGLESImageProperties.?.scaleX), openGLESImageProperties.?.scaleX * 0.75);
                    openGLESImageProperties.?.scaleY = Inheritance.upcast(@TypeOf(openGLESImageProperties.?.scaleY), openGLESImageProperties.?.scaleY * 0.75);
                    if (Inheritance.call(image.?.getName().?, "startsWith", .{ self.LEADERBOARD })) {
                        openGLESImage.?.openGLESImageTranslate = Inheritance.upcast(@TypeOf(openGLESImage.?.openGLESImageTranslate), OpenGLESDeviceImageTranslate.create());
                        const openGLESDeviceImageTranslate: ?*OpenGLESDeviceImageTranslate = Inheritance.cast(?*OpenGLESDeviceImageTranslate, openGLESImage.?.openGLESImageTranslate);
                        openGLESDeviceImageTranslate.?.translateX = Inheritance.upcast(@TypeOf(openGLESDeviceImageTranslate.?.translateX), (divide_N71349: { const left_N71349 = (divide_N71353: { const left_N71353 = -displayInfoSingleton.?.getLastWidth(); const right_N71353 = 40; break :divide_N71353 if (comptime @typeInfo(@TypeOf(left_N71353)) == .int or @TypeOf(left_N71353) == comptime_int) @divTrunc(left_N71353, right_N71353) else left_N71353 / right_N71353; }); const right_N71349 = openGLESImageProperties.?.scaleX; break :divide_N71349 if (comptime @typeInfo(@TypeOf(left_N71349)) == .int or @TypeOf(left_N71349) == comptime_int) @divTrunc(left_N71349, right_N71349) else left_N71349 / right_N71349; }));
                    }
                    if (Inheritance.call(image.?.getName().?, "startsWith", .{ self.LEADERBOARD })) {
                    } else {
                        openGLESImageProperties.?.scaleX = 1.0;
                        openGLESImageProperties.?.scaleY = 1.0;
                    }
                }
                image = Inheritance.upcast(@TypeOf(image), openGLESImage);
            }
        } else {
            if (originalImage2.?.isMutable() and mutable) {
                const originalMutableImage: ?*SwtMutableImage = Inheritance.cast(?*SwtMutableImage, originalImage2);
                if (originalMutableImage.?.getImage() != null) {
                    const imageData2: ?*ImageData = Inheritance.upcast(?*ImageData, Inheritance.receiverOf(originalMutableImage.?.image.?, "getImageData").getImageData());
                    const imageData: ?*ImageData = Inheritance.upcast(?*ImageData, Inheritance.call(imageData2.?, "scaledTo", .{ width, height }));
                    image = Inheritance.upcast(@TypeOf(image), Inheritance.callStatic(SwtMutableImage, "create1", .{ Inheritance.callStatic(SwtDeviceComponent, "createImage", .{ imageData }) }));
                } else {
                    image = Inheritance.upcast(@TypeOf(image), Inheritance.callStatic(SwtMutableImage, "create2", .{ originalMutableImage.?.getName(), Inheritance.callStatic(PostLoadSwtMutableImageProcessor, "create1", .{ originalMutableImage }) }));
                }
            } else {
                const originalImmutableImage: ?*SwtImmutableImage = Inheritance.cast(?*SwtImmutableImage, originalImage2);
                if (originalImmutableImage.?.getImage() != null) {
                    const imageData2: ?*ImageData = Inheritance.upcast(?*ImageData, Inheritance.receiverOf(originalImmutableImage.?.image.?, "getImageData").getImageData());
                    const imageData: ?*ImageData = Inheritance.upcast(?*ImageData, Inheritance.call(imageData2.?, "scaledTo", .{ width, height }));
                    image = Inheritance.upcast(@TypeOf(image), Inheritance.callStatic(SwtImmutableImage, "create2", .{ originalImage.?.getName(), Inheritance.callStatic(SwtDeviceComponent, "createImage", .{ imageData }) }));
                } else {
                    image = Inheritance.upcast(@TypeOf(image), Inheritance.callStatic(SwtImmutableImage, "create2", .{ originalImmutableImage.?.getName(), Inheritance.callStatic(PostLoadSwtImmutableImageProcessor, "create1", .{ originalImmutableImage }) }));
                }
            }
            image = Inheritance.upcast(@TypeOf(image), Inheritance.call(self.openGLUtil.?, "addImage", .{ image }));
        }
        return image;
    }
    

    // throws Exception
    pub fn createImageScale(self: *Self, originalImage: ?*Image, canvasScale: f32, resize: bool) ?*Image {
        if (!Inheritance.call(self.features.?, "isFeature", .{ self.gameFeatureFactory.?.POST_IMAGE_LOADING_MODIFICATION })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.NO_COPY, self, self.commonStrings.?.CONSTRUCTOR });
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
        const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(self, "createImageWH", .{ originalImage, newWidth, newHeight, true }));
        if (image.?.isMutable()) {
            const originalImageData: ?*ImageData = Inheritance.upcast(?*ImageData, Inheritance.receiverOf((Inheritance.cast(?*Image, originalImage.?.getImage())).?, "getImageData").getImageData());
            const mutableImage2: ?*SwtMutableImage = Inheritance.cast(?*SwtMutableImage, image);
            const halfWidthDelta: i32 = (divide_N74538: { const left_N74538 = (newWidth - originalImage.?.getWidth()); const right_N74538 = 2; break :divide_N74538 if (comptime @typeInfo(@TypeOf(left_N74538)) == .int or @TypeOf(left_N74538) == comptime_int) @divTrunc(left_N74538, right_N74538) else left_N74538 / right_N74538; });
            const halfHeightDelta: i32 = (divide_N74610: { const left_N74610 = (newHeight - originalImage.?.getHeight()); const right_N74610 = 2; break :divide_N74610 if (comptime @typeInfo(@TypeOf(left_N74610)) == .int or @TypeOf(left_N74610) == comptime_int) @divTrunc(left_N74610, right_N74610) else left_N74610 / right_N74610; });
            const originalPixelArray: []i32 = array_N74682: { const array_N74682_array = allocator.alloc(i32, @intCast(originalImage.?.getWidth() * originalImage.?.getHeight())) catch unreachable; @memset(array_N74682_array, 0); break :array_N74682 array_N74682_array; };
            const newPixelArray: []i32 = array_N74769: { const array_N74769_array = allocator.alloc(i32, @intCast(image.?.getWidth() * image.?.getHeight())) catch unreachable; @memset(array_N74769_array, 0); break :array_N74769 array_N74769_array; };
            const width: i32 = originalImage.?.getWidth();
            const height: i32 = originalImage.?.getHeight();
            {
                var i: i32 = 0;
                while (i < height) : (i += 1) {
                _ = Inheritance.call(originalImageData.?, "getPixels", .{ 0, i, width, originalPixelArray, (i * width) });
                }
            }
            {
                var index: i32 = halfWidthDelta;
                while (index < width) : (index += 1) {
                {
                    var index2: i32 = halfHeightDelta;
                    while (index2 < height) : (index2 += 1) {
                    newPixelArray[@intCast(index + (index2 * width))] = originalPixelArray[@intCast((index - halfWidthDelta) + ((index2 - halfHeightDelta) * width))];
                    }
                }
                }
            }
            _ = Inheritance.call(Inheritance.receiverOf((Inheritance.cast(?*Image, mutableImage2.?.getImage())).?, "getImageData").getImageData().?, "setPixels", .{ 0, 0, image.?.getWidth(), newPixelArray, 0 });
            return image;
        } else {
            const originalImmutableImage: ?*SwtImmutableImage = Inheritance.cast(?*SwtImmutableImage, image);
            const originalImageData: ?*ImageData = Inheritance.upcast(?*ImageData, Inheritance.receiverOf((Inheritance.cast(?*Image, originalImage.?.getImage())).?, "getImageData").getImageData());
            const halfWidthDelta: i32 = (divide_N73384: { const left_N73384 = (newWidth - originalImage.?.getWidth()); const right_N73384 = 2; break :divide_N73384 if (comptime @typeInfo(@TypeOf(left_N73384)) == .int or @TypeOf(left_N73384) == comptime_int) @divTrunc(left_N73384, right_N73384) else left_N73384 / right_N73384; });
            const halfHeightDelta: i32 = (divide_N73456: { const left_N73456 = (newHeight - originalImage.?.getHeight()); const right_N73456 = 2; break :divide_N73456 if (comptime @typeInfo(@TypeOf(left_N73456)) == .int or @TypeOf(left_N73456) == comptime_int) @divTrunc(left_N73456, right_N73456) else left_N73456 / right_N73456; });
            const originalPixelArray: []i32 = array_N73528: { const array_N73528_array = allocator.alloc(i32, @intCast(originalImage.?.getWidth() * originalImage.?.getHeight())) catch unreachable; @memset(array_N73528_array, 0); break :array_N73528 array_N73528_array; };
            const newPixelArray: []i32 = array_N73615: { const array_N73615_array = allocator.alloc(i32, @intCast(image.?.getWidth() * image.?.getHeight())) catch unreachable; @memset(array_N73615_array, 0); break :array_N73615 array_N73615_array; };
            const width: i32 = originalImage.?.getWidth();
            const height: i32 = originalImage.?.getHeight();
            {
                var i: i32 = 0;
                while (i < height) : (i += 1) {
                _ = Inheritance.call(originalImageData.?, "getPixels", .{ 0, i, width, originalPixelArray, (i * width) });
                }
            }
            {
                var index: i32 = halfWidthDelta;
                while (index < width) : (index += 1) {
                {
                    var index2: i32 = halfHeightDelta;
                    while (index2 < height) : (index2 += 1) {
                    newPixelArray[@intCast(index + (index2 * width))] = originalPixelArray[@intCast((index - halfWidthDelta) + ((index2 - halfHeightDelta) * width))];
                    }
                }
                }
            }
            _ = Inheritance.call(Inheritance.receiverOf((Inheritance.cast(?*Image, originalImmutableImage.?.getImage())).?, "getImageData").getImageData().?, "setPixels", .{ 0, 0, image.?.getWidth(), newPixelArray, 0 });
            return image;
        }
    }
};

