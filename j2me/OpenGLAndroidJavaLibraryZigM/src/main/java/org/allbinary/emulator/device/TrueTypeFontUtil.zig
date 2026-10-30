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
const File = @import("java/io/File.zig").File;
// const FileOutputStream = @import("java/io/FileOutputStream.zig").FileOutputStream;
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const Bitmap = @import("android/graphics/Bitmap.zig").Bitmap;
const Canvas = @import("android/graphics/Canvas.zig").Canvas;
const Paint = @import("android/graphics/Paint.zig").Paint;
const Rect = @import("android/graphics/Rect.zig").Rect;
const Typeface = @import("android/graphics/Typeface.zig").Typeface;
const ResourceUtil = @import("org/allbinary/data/resource/ResourceUtil.zig").ResourceUtil;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const CanvasStrings = @import("org/allbinary/graphics/displayable/CanvasStrings.zig").CanvasStrings;
const PreResourceImageUtil = @import("org/allbinary/image/PreResourceImageUtil.zig").PreResourceImageUtil;
const OpenGLESImage = @import("org/allbinary/image/opengles/OpenGLESImage.zig").OpenGLESImage;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const AndroidImageInterface = @import("org/microemu/android/device/AndroidImageInterface.zig").AndroidImageInterface;
const AndroidImmutableImage = @import("org/microemu/android/device/AndroidImmutableImage.zig").AndroidImmutableImage;
const TrueTypeFontUtilBase = @import("org/allbinary/emulator/device/TrueTypeFontUtilBase.zig").TrueTypeFontUtilBase;

//TTF
pub const TrueTypeFontUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.emulator.device.TrueTypeFontUtil";
    base: TrueTypeFontUtilBase = undefined,
    logUtil: ?*LogUtil = null,
    preResourceImageUtil: ?*PreResourceImageUtil = null,
    realFontSize: i32 = 0,
    fontImage: ?*OpenGLESImage = null,
    var instance: ?*TrueTypeFontUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TrueTypeFontUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.preResourceImageUtil = Inheritance.upcast(?*PreResourceImageUtil, PreResourceImageUtil.getInstance());
        this.realFontSize = 18;
        this.fontImage = Inheritance.upcast(?*OpenGLESImage, OpenGLESImage.NULL_OPENGL_IMAGE);
    }
    

    pub fn getInstance() ?*TrueTypeFontUtil {
        return Inheritance.upcast(?*TrueTypeFontUtil, TrueTypeFontUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TrueTypeFontUtilBase, "create1", .{ 1 }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn saveFontAtlasAsFile(self: *Self) void {
        { // try
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
            const file: ?*File = Inheritance.upcast(?*File, Inheritance.receiverOf(Inheritance.receiverOf(ResourceUtil.getInstance().?, "getContext").getContext().?, "getFilesDir").getFilesDir());
            const path: ?*String = Inheritance.upcast(?*String, file.?.getAbsolutePath() + CanvasStrings.getInstance().?.FONT_ATLAS);
            _ = Inheritance.call(self.logUtil.?, "putF", .{ path, self, commonStrings.?.CONSTRUCTOR });
            const fos: ?*FileOutputStream = Inheritance.callStatic(FileOutputStream, "create1", .{ path });
            const bitmap: ?*Bitmap = Inheritance.upcast(?*Bitmap, Inheritance.receiverOf((Inheritance.cast(?*AndroidImageInterface, Inheritance.receiverOf(self.fontImage.?.openGLBitmap.?, "getImage").getImage())).?, "getBitmap").getBitmap());
            _ = Inheritance.call(bitmap.?, "compress", .{ Bitmap.CompressFormat.?.PNG, 100, fos });
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.EXCEPTION, e });
    }
    

    pub fn getFontBitmapGL(self: *Self, gl: ?*GL10, filename: ?*String, cellSize: i32, basicColor: ?*BasicColor) ?*Image {
        _ = gl;
        _ = filename;
        if (Object.same(self.fontImage, OpenGLESImage.NULL_OPENGL_IMAGE)) {
            const cellsPerRow2: i32 = Inheritance.fieldPointer(self, "CELLS_PER_ROW").* * 2;
            const cellsPerRow3: i32 = Inheritance.fieldPointer(self, "CELLS_PER_ROW").* * 3;
            const cellsPerRow4: i32 = Inheritance.fieldPointer(self, "CELLS_PER_ROW").* * 4;
            const cellsPerRow5: i32 = Inheritance.fieldPointer(self, "CELLS_PER_ROW").* * 5;
            const cellsPerRow6: i32 = Inheritance.fieldPointer(self, "CELLS_PER_ROW").* * 6;
            const cellsPerRow7: i32 = Inheritance.fieldPointer(self, "CELLS_PER_ROW").* * 7;
            const typeface: ?*Typeface = Inheritance.upcast(?*Typeface, Typeface.DEFAULT);
            const textureSize: i32 = Inheritance.call(self, "getAsTextureSize", .{ Inheritance.fieldPointer(self, "CELLS_PER_ROW").* * cellSize });
            const bitmap: ?*Bitmap = Inheritance.upcast(?*Bitmap, Inheritance.callStatic(Bitmap, "createBitmap", .{ textureSize, textureSize, Bitmap.Config.?.ARGB_8888 }));
            const canvas: ?*Canvas = Inheritance.callStatic(Canvas, "create1", .{ bitmap });
            const paint: ?*Paint = Paint.create();
            _ = Inheritance.call(paint.?, "setTypeface", .{ typeface });
            _ = Inheritance.call(paint.?, "setTextSize", .{ @as(f32, @floatFromInt(self.realFontSize)) });
            _ = Inheritance.call(paint.?, "setAlpha", .{ @as(i32, @intCast(basicColor.?.alpha)) });
            _ = Inheritance.call(paint.?, "setColor", .{ basicColor.?.intValue() });
            var biggestHeight: i32 = 0;
            const bounds: ?*Rect = Rect.create();
            var x: i32 = 0;
            var y: i32 = 0;
            {
                var index: i32 = 0;
                while (index < Inheritance.fieldPointer(self, "size").*) : (index += 1) {
                Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)]), Inheritance.call(Inheritance.fieldPointer(self, "pattern").*.?, "charAt", .{ index }));
                _ = Inheritance.call(paint.?, "getTextBounds", .{ Inheritance.fieldPointer(self, "characterArray").*, 0, 1, bounds });
                Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)]), bounds.?.right);
                if (bounds.?.bottom - bounds.?.top > biggestHeight) {
                    biggestHeight = bounds.?.bottom - bounds.?.top;
                }
                x = (@rem(index, Inheritance.fieldPointer(self, "CELLS_PER_ROW").*)) * cellSize;
                x += (cellSize >> @intCast(1));
                x -= (Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] >> @intCast(1));
                y = 0;
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
                _ = Inheritance.call(canvas.?, "drawText", .{ Inheritance.fieldPointer(self, "characterArray").*, 0, 1, @as(f32, @floatFromInt(x)) - 3.0, @as(f32, @floatFromInt(y)) - 6.0, paint });
                }
            }
            _ = canvas.?.save();
            const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.callStatic(AndroidImmutableImage, "create", .{ bitmap }));
            self.fontImage = Inheritance.cast(?*OpenGLESImage, Inheritance.call(self.preResourceImageUtil.?, "encapsulate", .{ image }));
            return Inheritance.upcast(?*Image, self.fontImage);
        } else {
            return Inheritance.upcast(?*Image, self.fontImage);
        }
    }
    

    pub fn getFontWidths(self: *Self, filename: ?*String, fontSize: i32) []i32 {
        _ = filename;
        const typeface: ?*Typeface = Inheritance.upcast(?*Typeface, Typeface.DEFAULT);
        const paint: ?*Paint = Paint.create();
        _ = Inheritance.call(paint.?, "setTypeface", .{ typeface });
        _ = Inheritance.call(paint.?, "setTextSize", .{ @as(f32, @floatFromInt(fontSize)) });
        _ = Inheritance.call(paint.?, "setARGB", .{ 255, 255, 255, 255 });
        const bounds: ?*Rect = Rect.create();
        {
            var index: i32 = 0;
            while (index < Inheritance.fieldPointer(self, "size").*) : (index += 1) {
            Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)]), Inheritance.call(Inheritance.fieldPointer(self, "pattern").*.?, "charAt", .{ index }));
            _ = Inheritance.call(paint.?, "getTextBounds", .{ Inheritance.fieldPointer(self, "characterArray").*, 0, 1, bounds });
            if (index < Inheritance.fieldPointer(self, "lastCapIndex").*) {
                if (Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == '1') {
                    Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)]), bounds.?.right + 3);
                } else if (Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'J' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'V' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == '2' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == '9' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'I' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'N' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'U') {
                    Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)]), bounds.?.right + 1);
                } else if (Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == '4' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'C' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'E' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'O') {
                    Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)]), bounds.?.right - 2);
                } else if (Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'B' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'D' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'G' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'H' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'T' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'W') {
                    Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)]), bounds.?.right - 3);
                } else if (Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'A' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'Q' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'R') {
                    Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)]), bounds.?.right - 5);
                } else if (Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'M') {
                    Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)]), bounds.?.right - 6);
                } else if (Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'm') {
                    Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)]), bounds.?.right - 8);
                } else {
                    Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)]), bounds.?.right);
                }
            } else {
                if (Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == ' ') {
                    Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)]), bounds.?.right + 10);
                } else if (Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'l' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'i' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'j' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == '.' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == '!' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == '|') {
                    Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)]), bounds.?.right + 6);
                } else if (Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'f' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 't' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'u' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'v') {
                    Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)]), bounds.?.right + 1);
                } else if (Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'r') {
                    Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)]), bounds.?.right + 2);
                } else if (Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'a' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'b' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'g' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'u') {
                    Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)]), bounds.?.right - 1);
                } else if (Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'o' or Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'e') {
                    Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)]), bounds.?.right - 2);
                } else if (Inheritance.fieldPointer(self, "characterArray").*[@intCast(0)] == 'm') {
                    Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)]), bounds.?.right - 7);
                } else {
                    Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(index)]), bounds.?.right);
                }
            }
            }
        }
        Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(0)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "_characterWidth").*[@intCast(0)]), (fontSize >> @intCast(1)) - 2);
        return Inheritance.fieldPointer(self, "_characterWidth").*;
    }
};

