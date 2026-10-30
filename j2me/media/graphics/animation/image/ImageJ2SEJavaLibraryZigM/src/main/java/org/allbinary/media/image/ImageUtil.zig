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
// const Graphics2D = @import("java/awt/Graphics2D.zig").Graphics2D;
// const GraphicsConfiguration = @import("java/awt/GraphicsConfiguration.zig").GraphicsConfiguration;
// const GraphicsDevice = @import("java/awt/GraphicsDevice.zig").GraphicsDevice;
// const GraphicsEnvironment = @import("java/awt/GraphicsEnvironment.zig").GraphicsEnvironment;
// const Transparency = @import("java/awt/Transparency.zig").Transparency;
// const AffineTransform = @import("java/awt/geom/AffineTransform.zig").AffineTransform;
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const J2SEImmutableImage = @import("org/microemu/device/j2se/J2SEImmutableImage.zig").J2SEImmutableImage;
const J2SEMutableImage = @import("org/microemu/device/j2se/J2SEMutableImage.zig").J2SEMutableImage;

pub const ImageUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageUtil";
    commonStrings: ?*CommonStrings = null,
    commonSeps: ?*CommonSeps = null,
    IIOIMAGE_POOL_NAME: ?*String = null,
    CREATE_BUFFERED_IMAGE: ?*String = null,
    var instance: ?*ImageUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageUtil.create();
    }

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.commonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        this.IIOIMAGE_POOL_NAME = String.literal("IIOIMAGE_POOL_NAME");
        this.CREATE_BUFFERED_IMAGE = String.literal("createBufferedImage");
    }
    

    pub fn getInstance() ?*ImageUtil {
        return Inheritance.upcast(?*ImageUtil, ImageUtil.instance);
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
    

    pub fn create(self: *Self, width: i32, height: i32) ?*BufferedImage {
        const graphicsConfiguration: ?*GraphicsConfiguration = Inheritance.upcast(?*GraphicsConfiguration, self.getDefaultConfiguration());
        return Inheritance.upcast(?*BufferedImage, Inheritance.call(graphicsConfiguration.?, "createCompatibleImage", .{ width, height, Transparency.TRANSLUCENT }));
    }
    

    // throws Exception
    pub fn createBufferedImageForResize(self: *Self, bufferedImageArray: []?*BufferedImage, percent: i32, scale: bool) []?*BufferedImage {
        const size: i32 = @as(i32, @intCast(bufferedImageArray.len));
        const scaledBufferedImageArray: []?*BufferedImage = array_N66624: { const array_N66624_array = allocator.alloc(?*BufferedImage, @intCast(size)) catch unreachable; @memset(array_N66624_array, null); break :array_N66624 array_N66624_array; };
        var bufferedImage: ?*BufferedImage = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            bufferedImage = Inheritance.upcast(@TypeOf(bufferedImage), bufferedImageArray[@intCast(index)]);
            const newWidth: i32 = @as(i32, @intCast(((divide_N66768: { const left_N66768 = bufferedImage.?.getWidth() * percent; const right_N66768 = 100; break :divide_N66768 if (comptime @typeInfo(@TypeOf(left_N66768)) == .int or @TypeOf(left_N66768) == comptime_int) @divTrunc(left_N66768, right_N66768) else left_N66768 / right_N66768; }))));
            const newHeight: i32 = @as(i32, @intCast(((divide_N66848: { const left_N66848 = bufferedImage.?.getHeight() * percent; const right_N66848 = 100; break :divide_N66848 if (comptime @typeInfo(@TypeOf(left_N66848)) == .int or @TypeOf(left_N66848) == comptime_int) @divTrunc(left_N66848, right_N66848) else left_N66848 / right_N66848; }))));
            scaledBufferedImageArray[@intCast(index)] = Inheritance.upcast(@TypeOf(scaledBufferedImageArray[@intCast(index)]), Inheritance.call(self, "createBufferedImage", .{ bufferedImage, newWidth, newHeight, scale }));
            }
        }
        return scaledBufferedImageArray;
    }
    

    // throws Exception
    pub fn createBufferedImage2(self: *Self, bufferedImageArray: []?*BufferedImage, percent: f32, scale: bool) []?*BufferedImage {
        const size: i32 = @as(i32, @intCast(bufferedImageArray.len));
        const scaledBufferedImageArray: []?*BufferedImage = array_N67239: { const array_N67239_array = allocator.alloc(?*BufferedImage, @intCast(size)) catch unreachable; @memset(array_N67239_array, null); break :array_N67239 array_N67239_array; };
        var bufferedImage: ?*BufferedImage = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            bufferedImage = Inheritance.upcast(@TypeOf(bufferedImage), bufferedImageArray[@intCast(index)]);
            const newWidth: i32 = @as(i32, @intCast((bufferedImage.?.getWidth() * percent)));
            const newHeight: i32 = @as(i32, @intCast((bufferedImage.?.getHeight() * percent)));
            scaledBufferedImageArray[@intCast(index)] = Inheritance.upcast(@TypeOf(scaledBufferedImageArray[@intCast(index)]), Inheritance.call(self, "createBufferedImage", .{ bufferedImage, newWidth, newHeight, scale }));
            }
        }
        return scaledBufferedImageArray;
    }
    

    // throws Exception
    pub fn createBufferedImage3(self: *Self, bufferedImageArray: []?*BufferedImage, width: i32, height: i32, scale: bool) []?*BufferedImage {
        const size: i32 = @as(i32, @intCast(bufferedImageArray.len));
        const scaledBufferedImageArray: []?*BufferedImage = array_N67836: { const array_N67836_array = allocator.alloc(?*BufferedImage, @intCast(size)) catch unreachable; @memset(array_N67836_array, null); break :array_N67836 array_N67836_array; };
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            scaledBufferedImageArray[@intCast(index)] = Inheritance.upcast(@TypeOf(scaledBufferedImageArray[@intCast(index)]), Inheritance.call(self, "createBufferedImage", .{ bufferedImageArray[@intCast(index)], width, height, scale }));
            }
        }
        return scaledBufferedImageArray;
    }
    

    // throws Exception
    pub fn createBufferedImageForSave(self: *Self, bufferedImage: ?*BufferedImage, newWidth: i32, newHeight: i32) ?*BufferedImage {
        return Inheritance.upcast(?*BufferedImage, Inheritance.call(self, "createBufferedImage", .{ bufferedImage, newWidth, newHeight, true }));
    }
    

    // throws Exception
    pub fn createBufferedImage(self: *Self, bufferedImage: ?*BufferedImage, newWidth: i32, newHeight: i32, scale: bool) ?*BufferedImage {
        return Inheritance.upcast(?*BufferedImage, Inheritance.call(self, "createBufferedImageAllowTranslate", .{ bufferedImage, newWidth, newHeight, scale, false }));
    }
    

    // throws Exception
    pub fn createBufferedImageAllowTranslate(self: *Self, bufferedImage: ?*BufferedImage, newWidth: i32, newHeight: i32, scale: bool, allowTranslate: bool) ?*BufferedImage {
        _ = self;
        const width: f64 = bufferedImage.?.getWidth();
        const height: f64 = bufferedImage.?.getHeight();
        const d_newWidth: f64 = @as(f64, @floatFromInt(newWidth));
        const d_newHeight: f64 = @as(f64, @floatFromInt(newHeight));
        const widthRatio: f64 = d_newWidth / width;
        const heightRatio: f64 = d_newHeight / height;
        var ratioX: f64 = 1.0;
        var ratioY: f64 = 1.0;
        if (scale) {
            ratioX = widthRatio;
            ratioY = heightRatio;
        }
        const affineTransform: ?*AffineTransform = Inheritance.upcast(?*AffineTransform, Inheritance.callStatic(AffineTransform, "getScaleInstance", .{ ratioX, ratioY }));
        if (!scale and allowTranslate) {
            const dx: f64 = (@as(f64, @floatFromInt(newWidth)) - width) / 2.0;
            const dy: f64 = (@as(f64, @floatFromInt(newHeight)) - height) / 2.0;
            _ = Inheritance.call(affineTransform.?, "translate", .{ dx, dy });
        }
        const newBufferedImage: ?*BufferedImage = Inheritance.callStatic(BufferedImage, "create3", .{ newWidth, newHeight, BufferedImage.TYPE_INT_ARGB_PRE });
        const graphics: ?*Graphics2D = Inheritance.upcast(?*Graphics2D, newBufferedImage.?.createGraphics());
        _ = Inheritance.call(graphics.?, "drawRenderedImage", .{ bufferedImage, affineTransform });
        return newBufferedImage;
    }
    

    // throws Exception
    pub fn createBufferedImageWithLargerCanvas(self: *Self, bufferedImage: ?*BufferedImage, newWidth: i32, newHeight: i32) ?*BufferedImage {
        _ = self;
        const width: f64 = bufferedImage.?.getWidth();
        const height: f64 = bufferedImage.?.getHeight();
        const d_newWidth: f64 = @as(f64, @floatFromInt(newWidth));
        const d_newHeight: f64 = @as(f64, @floatFromInt(newHeight));
        const widthRatio: f64 = d_newWidth / width; _ = widthRatio;
        const heightRatio: f64 = d_newHeight / height; _ = heightRatio;
        const dx2: i32 = @as(i32, @intFromFloat((@as(f64, @floatFromInt(newWidth)) - width)));
        const dy2: i32 = @as(i32, @intFromFloat((@as(f64, @floatFromInt(newHeight)) - height)));
        const dx: i32 = @divTrunc(dx2, 2); _ = dx;
        const dy: i32 = @divTrunc(dy2, 2); _ = dy;
        const dx4: i32 = @divTrunc(dx2, 4);
        const dy4: i32 = @divTrunc(dy2, 4);
        const newBufferedImage: ?*BufferedImage = Inheritance.callStatic(BufferedImage, "create3", .{ newWidth, newHeight, BufferedImage.TYPE_INT_ARGB_PRE });
        const graphics: ?*Graphics2D = Inheritance.upcast(?*Graphics2D, newBufferedImage.?.createGraphics());
        _ = Inheritance.call(graphics.?, "drawImage", .{ bufferedImage, dx4, dy4, null });
        return newBufferedImage;
    }
    

    pub fn convertToBufferedImage(self: *Self, toolkitImage: ?*Image) ?*BufferedImage {
        _ = self;
        if (toolkitImage == null) {
            return null;
        }
        const bufferedImage: ?*BufferedImage = Inheritance.callStatic(BufferedImage, "create3", .{ Inheritance.call(toolkitImage.?, "getWidth", .{ null }), Inheritance.call(toolkitImage.?, "getHeight", .{ null }), BufferedImage.TYPE_INT_ARGB });
        const g2d: ?*Graphics2D = Inheritance.upcast(?*Graphics2D, bufferedImage.?.createGraphics());
        _ = Inheritance.call(g2d.?, "drawImage", .{ toolkitImage, 0, 0, null });
        _ = g2d.?.dispose();
        return bufferedImage;
    }
    

    pub fn getBufferedImage(self: *Self, image: ?*Image) ?*BufferedImage {
        _ = self;
        var bufferedImage: ?*BufferedImage = null;
        if (image.?.isMutable()) {
            const j2seImage: ?*J2SEMutableImage = Inheritance.cast(?*J2SEMutableImage, image);
            bufferedImage = Inheritance.cast(?*BufferedImage, j2seImage.?.getImage());
        } else {
            const j2seImage: ?*J2SEImmutableImage = Inheritance.cast(?*J2SEImmutableImage, image);
            bufferedImage = Inheritance.cast(?*BufferedImage, j2seImage.?.getImage());
        }
        return bufferedImage;
    }
    

    pub fn toString(self: *Self, bufferedImage: ?*BufferedImage) ?*String {
        _ = self;
        const commonLabels: ?*CommonLabels = Inheritance.upcast(?*CommonLabels, CommonLabels.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" BufferedImage -") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonLabels.?.WIDTH_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(bufferedImage.?.getWidth())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonLabels.?.HEIGHT_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(bufferedImage.?.getHeight())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Type: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(bufferedImage.?.getType())) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

