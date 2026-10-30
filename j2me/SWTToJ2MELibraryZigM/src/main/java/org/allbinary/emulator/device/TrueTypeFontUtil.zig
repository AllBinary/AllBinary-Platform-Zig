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
// package org.allbinary.emulator.device

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const SWT = @import("org/eclipse/swt/SWT.zig").SWT;
const ImageData = @import("org/eclipse/swt/graphics/ImageData.zig").ImageData;
const ImageLoader = @import("org/eclipse/swt/graphics/ImageLoader.zig").ImageLoader;
const SwtMutableImage = @import("org/microemu/device/swt/SwtMutableImage.zig").SwtMutableImage;
const AvianUtil = @import("org/allbinary/AvianUtil.zig").AvianUtil;
const ResourceUtil = @import("org/allbinary/data/resource/ResourceUtil.zig").ResourceUtil;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const CanvasStrings = @import("org/allbinary/graphics/displayable/CanvasStrings.zig").CanvasStrings;
const OpenGLCapabilities = @import("org/allbinary/graphics/opengles/OpenGLCapabilities.zig").OpenGLCapabilities;
const PreResourceImageUtil = @import("org/allbinary/image/PreResourceImageUtil.zig").PreResourceImageUtil;
const OpenGLESImage = @import("org/allbinary/image/opengles/OpenGLESImage.zig").OpenGLESImage;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const TrueTypeFontUtilBase = @import("org/allbinary/emulator/device/TrueTypeFontUtilBase.zig").TrueTypeFontUtilBase;

//TTF
pub const TrueTypeFontUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.emulator.device.TrueTypeFontUtil";
    base: TrueTypeFontUtilBase = undefined,
    preResourceImageUtil: ?*PreResourceImageUtil = null,
    widthFloatArray: []f32 = &.{},
    fontImage: ?*OpenGLESImage = null,
    widthScale: f32 = 0.0,
    var instance: ?*TrueTypeFontUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TrueTypeFontUtil.create();
    }

    fn initFields(this: *Self) void {
        this.preResourceImageUtil = Inheritance.upcast(?*PreResourceImageUtil, PreResourceImageUtil.getInstance());
        this.widthFloatArray = &.{};
        this.fontImage = Inheritance.upcast(?*OpenGLESImage, OpenGLESImage.NULL_OPENGL_IMAGE);
        
    }
    

    pub fn getInstance() ?*TrueTypeFontUtil {
        return Inheritance.upcast(?*TrueTypeFontUtil, TrueTypeFontUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TrueTypeFontUtilBase, "create1", .{ 2 }).*;
        this.initFields();
        if (AvianUtil.isAvian()) {
            this.widthFloatArray = Inheritance.upcast(@TypeOf(this.widthFloatArray), @constCast(&[_]f32{ 1504.0, 967.0, 527.0, 961.0, 957.0, 1087.0, 920.0, 954.0, 973.0, 961.0, 955.0, 1296.0, 1013.0, 1106.0, 1167.0, 815.0, 815.0, 1216.0, 1110.0, 170.0, 520.0, 1056.0, 815.0, 1448.0, 1142.0, 1345.0, 927.0, 1345.0, 1030.0, 920.0, 1096.0, 1119.0, 1219.0, 1841.0, 1166.0, 1147.0, 1005.0, 879.0, 965.0, 792.0, 964.0, 927.0, 753.0, 1034.0, 916.0, 196.0, 469.0, 877.0, 166.0, 1563.0, 916.0, 1007.0, 965.0, 964.0, 631.0, 777.0, 649.0, 917.0, 1026.0, 1548.0, 993.0, 1028.0, 795.0, 241.0, 798.0, 241.0, 905.0, 1477.0, 393.0, 961.0, 961.0, 961.0, 961.0, 555.0, 1029.0, 1010.0, 1378.0, 952.0, 952.0, 952.0, 952.0, 463.0, 463.0, 926.0, 961.0, 491.0, 930.0, 457.0, 457.0, 644.0, 643.0, 326.0, 186.0, 1219.0, 241.0, 1599.0, 961.0, 302.0, 711.0, 961.0, 961.0, 710.0, 141.0, 1504.0, 1504.0, 1504.0, 1504.0, 1504.0, 1504.0, 1504.0, 1504.0 })[0..]);
        } else {
            this.widthFloatArray = Inheritance.upcast(@TypeOf(this.widthFloatArray), @constCast(&[_]f32{ 1504.0, 967.0, 527.0, 961.0, 957.0, 1087.0, 920.0, 954.0, 973.0, 961.0, 955.0, 1296.0, 1013.0, 1106.0, 1167.0, 815.0, 815.0, 1216.0, 1110.0, 170.0, 520.0, 1056.0, 815.0, 1448.0, 1142.0, 1345.0, 927.0, 1345.0, 1030.0, 920.0, 1096.0, 1119.0, 1219.0, 1841.0, 1166.0, 1147.0, 1005.0, 879.0, 965.0, 792.0, 964.0, 927.0, 753.0, 1034.0, 916.0, 196.0, 469.0, 877.0, 166.0, 1563.0, 916.0, 1007.0, 965.0, 964.0, 631.0, 777.0, 649.0, 917.0, 1026.0, 1548.0, 993.0, 1028.0, 795.0, 241.0, 798.0, 241.0, 905.0, 1477.0, 393.0, 961.0, 555.0, 1029.0, 1010.0, 1378.0, 952.0, 463.0, 463.0, 926.0, 961.0, 491.0, 930.0, 457.0, 457.0, 644.0, 643.0, 326.0, 186.0, 1219.0, 241.0, 1599.0, 961.0, 302.0, 711.0, 961.0, 961.0, 710.0, 141.0, 1504.0, 1504.0 })[0..]);
        }
        this.widthScale = (if ((Inheritance.fieldPointer(this, "scale").* == 2)) 1.2 else 1.0);
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getFontBitmapGL(self: *Self, gl: ?*GL10, filename: ?*String, cellSize: i32, basicColor: ?*BasicColor) ?*Image {
        _ = gl;
        _ = filename;
        _ = cellSize;
        _ = basicColor;
        { // try
            if (Object.same(self.fontImage, OpenGLESImage.NULL_OPENGL_IMAGE)) {
                const canvasStrings: ?*CanvasStrings = Inheritance.upcast(?*CanvasStrings, CanvasStrings.getInstance());
                const openGLCapabilities: ?*OpenGLCapabilities = Inheritance.upcast(?*OpenGLCapabilities, OpenGLCapabilities.getInstance());
                if (Inheritance.call(openGLCapabilities.?, "isTextureSizeValid", .{ 1024 }) and Inheritance.fieldPointer(self, "scale").* == 2) {
                    const FONT_ATLAS_1024: ?*String = String.literal("/font_1024.png");
                    const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.callStatic(Image, "createImage", .{ Inheritance.call(ResourceUtil.getInstance().?, "getResourceAsStream", .{ FONT_ATLAS_1024 }) }));
                    _ = Inheritance.call(image.?, "setName", .{ canvasStrings.?.FONT_ATLAS });
                    self.fontImage = Inheritance.cast(?*OpenGLESImage, Inheritance.call(self.preResourceImageUtil.?, "encapsulate", .{ image }));
                } else if (Inheritance.call(openGLCapabilities.?, "isTextureSizeValid", .{ 512 })) {
                    const FONT_ATLAS_512: ?*String = String.literal("/font_512.png");
                    const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.callStatic(Image, "createImage", .{ Inheritance.call(ResourceUtil.getInstance().?, "getResourceAsStream", .{ FONT_ATLAS_512 }) }));
                    _ = Inheritance.call(image.?, "setName", .{ canvasStrings.?.FONT_ATLAS });
                    self.fontImage = Inheritance.cast(?*OpenGLESImage, Inheritance.call(self.preResourceImageUtil.?, "encapsulate", .{ image }));
                } else {
                    const FONT_ATLAS_512: ?*String = String.literal("/font_512.png");
                    const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.callStatic(Image, "createImage", .{ Inheritance.call(ResourceUtil.getInstance().?, "getResourceAsStream", .{ FONT_ATLAS_512 }) }));
                    _ = Inheritance.call(image.?, "setName", .{ canvasStrings.?.FONT_ATLAS });
                    self.fontImage = Inheritance.cast(?*OpenGLESImage, Inheritance.call(self.preResourceImageUtil.?, "encapsulate", .{ image }));
                }
                return Inheritance.upcast(?*Image, self.fontImage);
            } else {
                return Inheritance.upcast(?*Image, self.fontImage);
            }
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.EXCEPTION, e });
//             std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn saveFontAtlasAsFile(self: *Self) void {
        const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(self, "getFontBitmap", .{ null, Inheritance.fieldPointer(self, "cellSize").*, BasicColorFactory.getInstance().?.WHITE }));
        const imageLoader: ?*ImageLoader = ImageLoader.create();
        const imageData: ?*ImageData = Inheritance.upcast(?*ImageData, Inheritance.receiverOf((Inheritance.cast(?*SwtMutableImage, image)).?.image.?, "getImageData").getImageData());
        imageData.?.transparentPixel = Inheritance.upcast(@TypeOf(imageData.?.transparentPixel), Inheritance.call(imageData.?, "getPixel", .{ 0, 0 }));
        imageLoader.?.data = Inheritance.upcast(@TypeOf(imageLoader.?.data), @constCast(&[_]?*ImageData{ imageData })[0..]);
        _ = Inheritance.call(imageLoader.?, "save", .{ CommonSeps.getInstance().?.PERIOD + CanvasStrings.getInstance().?.FONT_ATLAS, SWT.IMAGE_PNG });
    }
    

    pub fn getFontBitmap(self: *Self, filename: ?*String, cellSize: i32, basicColor: ?*BasicColor) ?*Image {
        _ = filename;
        const cellsPerRow2: i32 = Inheritance.fieldPointer(self, "CELLS_PER_ROW").* * 2;
        const cellsPerRow3: i32 = Inheritance.fieldPointer(self, "CELLS_PER_ROW").* * 3;
        const cellsPerRow4: i32 = Inheritance.fieldPointer(self, "CELLS_PER_ROW").* * 4;
        const cellsPerRow5: i32 = Inheritance.fieldPointer(self, "CELLS_PER_ROW").* * 5;
        const cellsPerRow6: i32 = Inheritance.fieldPointer(self, "CELLS_PER_ROW").* * 6;
        const cellsPerRow7: i32 = Inheritance.fieldPointer(self, "CELLS_PER_ROW").* * 7;
        const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.callStatic(Image, "createImage", .{ Inheritance.fieldPointer(self, "textureSize").*, Inheritance.fieldPointer(self, "textureSize").* }));
        const graphics: ?*Graphics = Inheritance.upcast(?*Graphics, image.?.getGraphics());
        _ = Inheritance.call(graphics.?, "setColor", .{ basicColor.?.intValue() });
        var biggestHeight: i32 = 0;
        const bounds: ?*Rectangle = Inheritance.callStatic(Rectangle, "create3", .{ Inheritance.call(PointFactory.getInstance().?, "createXY", .{ 0, 0 }), cellSize, cellSize });
        var x: i32 = 0;
        var y: i32 = 0;
        {
            var index: i32 = 0;
            while (index < Inheritance.fieldPointer(self, "size").*) : (index += 1) {
            Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)]), Inheritance.call(Inheritance.fieldPointer(self, "pattern").*.?, "charAt", .{ index }));
            Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)]), bounds.?.getMaxX());
            if (bounds.?.getMaxY() - Inheritance.receiverOf(bounds.?.getPoint().?, "getX").getX() > biggestHeight) {
                biggestHeight = bounds.?.getMaxY() - Inheritance.receiverOf(bounds.?.getPoint().?, "getX").getX();
            }
            x = (@rem(index, Inheritance.fieldPointer(self, "CELLS_PER_ROW").*)) * cellSize;
            x += (cellSize >> @intCast(1));
            x -= (Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] >> @intCast(1));
            y = -(cellSize >> @intCast(1));
            if (index >= Inheritance.fieldPointer(self, "CELLS_PER_ROW").*) {
                y += cellSize;
            }
            if (index >= cellsPerRow2) {
                y += cellSize;
            }
            if (index >= cellsPerRow3) {
                y += cellSize;
            }
            if (index >= cellsPerRow4) {
                y += cellSize;
            }
            if (index >= cellsPerRow5) {
                y += cellSize;
            }
            if (index >= cellsPerRow6) {
                y += cellSize;
            }
            if (index >= cellsPerRow7) {
                y += cellSize;
            }
            y += cellSize;
            y -= (cellSize >> @intCast(2));
            _ = Inheritance.call(graphics.?, "drawChar", .{ Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)], x, y, 0 });
            }
        }
        return image;
    }
    

    pub fn getFontWidths(self: *Self, filename: ?*String, fontSize: i32) []i32 {
        _ = filename;
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
        {
            var index: i32 = 0;
            while (index < Inheritance.fieldPointer(self, "size").*) : (index += 1) {
            Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)]), Inheritance.call(Inheritance.fieldPointer(self, "pattern").*.?, "charAt", .{ index }));
            if (Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == ' ') {
                Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)]), (@divTrunc(fontSize, 4)));
            } else {
                const shortPatternIndex: i32 = Inheritance.call(Inheritance.fieldPointer(self, "shortPattern").*.?, "indexOf", .{ Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] });
                const w: i32 = @as(i32, @intFromFloat((self.widthFloatArray[@intCast(shortPatternIndex)] / 75.0))) + 19;
                Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] = w;
                if (Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == '.' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == '1') {
                    Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] += 4;
                }
                if (Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] >= 'a' and Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] < 'k') {
                    Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] -= 2;
                }
                if (Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] >= 'k' and Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] < 'v') {
                    Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] -= 4;
                }
                if (Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] >= 'v' and Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] < 'z') {
                    Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] -= 8;
                }
                if (Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'D') {
                    Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] -= 4;
                }
                if (Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] >= 'A' and Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] <= 'Z') {
                    Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] -= 2;
                }
            }
            Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] *= self.widthScale;
            }
        }
        return Inheritance.fieldPointer(self, "_characterWidth").*;
    }
};

