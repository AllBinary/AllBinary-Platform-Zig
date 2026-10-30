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
const SWT = @import("org/eclipse/swt/SWT.zig").SWT;
const Canvas = @import("org/eclipse/swt/widgets/Canvas.zig").Canvas;
const Composite = @import("org/eclipse/swt/widgets/Composite.zig").Composite;
const GC = @import("org/eclipse/swt/graphics/GC.zig").GC;
const ImageData = @import("org/eclipse/swt/graphics/ImageData.zig").ImageData;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const PaintEvent = @import("org/eclipse/swt/events/PaintEvent.zig").PaintEvent;
const PaintListener = @import("org/eclipse/swt/events/PaintListener.zig").PaintListener;
const Transform = @import("org/eclipse/swt/graphics/Transform.zig").Transform;
const Display = @import("org/eclipse/swt/widgets/Display.zig").Display;
const BareMain = @import("org/microemu/app/BareMain.zig").BareMain;

pub const ImageUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageUtil";
    logUtil: ?*LogUtil = null,
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
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
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
        { // try
            _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.START, this, this.commonStrings.?.CONSTRUCTOR });
        }
        // catch (Exception e):
//             _ = Inheritance.call(this.logUtil.?, "put", .{ this.commonStrings.?.EXCEPTION, this, this.commonStrings.?.CONSTRUCTOR, e });
        return this;
    }
    

    pub fn create(self: *Self, width: i32, height: i32) ?*Image {
        _ = self;
        const display: ?*Display = Inheritance.upcast(?*Display, Inheritance.receiverOf(BareMain.shell.?, "getDisplay").getDisplay());
        return Inheritance.callStatic(Image, "create3", .{ display, width, height });
    }
    

    // throws Exception
    pub fn createBufferedImage(self: *Self, bufferedImageArray: []?*Image, percent: i32, scale: bool) []?*Image {
        const size: i32 = @as(i32, @intCast(bufferedImageArray.len));
        const scaledBufferedImageArray: []?*Image = array_N66863: { const array_N66863_array = allocator.alloc(?*Image, @intCast(size)) catch unreachable; @memset(array_N66863_array, null); break :array_N66863 array_N66863_array; };
        var bufferedImage: ?*Image = null;
        var imageData: ?*ImageData = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            bufferedImage = Inheritance.upcast(@TypeOf(bufferedImage), bufferedImageArray[@intCast(index)]);
            imageData = Inheritance.upcast(@TypeOf(imageData), bufferedImage.?.getImageData());
            const newWidth: i32 = @as(i32, @intCast(((divide_N67163: { const left_N67163 = imageData.?.width * percent; const right_N67163 = 100; break :divide_N67163 if (comptime @typeInfo(@TypeOf(left_N67163)) == .int or @TypeOf(left_N67163) == comptime_int) @divTrunc(left_N67163, right_N67163) else left_N67163 / right_N67163; }))));
            const newHeight: i32 = @as(i32, @intCast(((divide_N67243: { const left_N67243 = imageData.?.height * percent; const right_N67243 = 100; break :divide_N67243 if (comptime @typeInfo(@TypeOf(left_N67243)) == .int or @TypeOf(left_N67243) == comptime_int) @divTrunc(left_N67243, right_N67243) else left_N67243 / right_N67243; }))));
            scaledBufferedImageArray[@intCast(index)] = Inheritance.upcast(@TypeOf(scaledBufferedImageArray[@intCast(index)]), Inheritance.call(self, "createBufferedImage5", .{ bufferedImage, newWidth, newHeight, scale }));
            }
        }
        return scaledBufferedImageArray;
    }
    

    // throws Exception
    pub fn createBufferedImage2(self: *Self, bufferedImageArray: []?*Image, percent: f32, scale: bool) []?*Image {
        const size: i32 = @as(i32, @intCast(bufferedImageArray.len));
        const scaledBufferedImageArray: []?*Image = array_N67698: { const array_N67698_array = allocator.alloc(?*Image, @intCast(size)) catch unreachable; @memset(array_N67698_array, null); break :array_N67698 array_N67698_array; };
        var bufferedImage: ?*Image = null;
        var imageData: ?*ImageData = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            bufferedImage = Inheritance.upcast(@TypeOf(bufferedImage), bufferedImageArray[@intCast(index)]);
            imageData = Inheritance.upcast(@TypeOf(imageData), bufferedImage.?.getImageData());
            const newWidth: i32 = @as(i32, @intCast((imageData.?.width * percent)));
            const newHeight: i32 = @as(i32, @intCast((imageData.?.height * percent)));
            scaledBufferedImageArray[@intCast(index)] = Inheritance.upcast(@TypeOf(scaledBufferedImageArray[@intCast(index)]), Inheritance.call(self, "createBufferedImage5", .{ bufferedImage, newWidth, newHeight, scale }));
            }
        }
        return scaledBufferedImageArray;
    }
    

    // throws Exception
    pub fn createBufferedImage3(self: *Self, bufferedImageArray: []?*Image, width: i32, height: i32, scale: bool) []?*Image {
        const size: i32 = @as(i32, @intCast(bufferedImageArray.len));
        const scaledBufferedImageArray: []?*Image = array_N68515: { const array_N68515_array = allocator.alloc(?*Image, @intCast(size)) catch unreachable; @memset(array_N68515_array, null); break :array_N68515 array_N68515_array; };
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            scaledBufferedImageArray[@intCast(index)] = Inheritance.upcast(@TypeOf(scaledBufferedImageArray[@intCast(index)]), Inheritance.call(self, "createBufferedImage5", .{ bufferedImageArray[@intCast(index)], width, height, scale }));
            }
        }
        return scaledBufferedImageArray;
    }
    

    // throws Exception
    pub fn createBufferedImage4(self: *Self, bufferedImage: ?*Image, newWidth: i32, newHeight: i32) ?*Image {
        return Inheritance.upcast(?*Image, Inheritance.call(self, "createBufferedImage5", .{ bufferedImage, newWidth, newHeight, true }));
    }
    

    // throws Exception
    pub fn createBufferedImage5(self: *Self, bufferedImage: ?*Image, newWidth: i32, newHeight: i32, scale: bool) ?*Image {
        return Inheritance.upcast(?*Image, Inheritance.call(self, "createBufferedImage6", .{ bufferedImage, newWidth, newHeight, scale, false }));
    }
    

    // throws Exception
    pub fn createBufferedImage6(self: *Self, bufferedImage: ?*Image, newWidth: i32, newHeight: i32, scale: bool, allowTranslate: bool) ?*Image {
        const imageData: ?*ImageData = Inheritance.upcast(?*ImageData, bufferedImage.?.getImageData());
        const width: f32 = imageData.?.width;
        const height: f32 = imageData.?.height;
        const d_newWidth: f32 = @as(f32, @floatFromInt(newWidth));
        const d_newHeight: f32 = @as(f32, @floatFromInt(newHeight));
        const widthRatio: f32 = d_newWidth / width;
        const heightRatio: f32 = d_newHeight / height;
        var ratioX: f32 = 1.0;
        var ratioY: f32 = 1.0;
        if (scale) {
            ratioX = widthRatio;
            ratioY = heightRatio;
        }
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "appendfloat", .{ width }).?, "append", .{ self.commonSeps.?.FORWARD_SLASH }).?, "appendfloat", .{ height }).?, "append", .{ self.commonSeps.?.COLON }).?, "appendint", .{ newWidth }).?, "append", .{ self.commonSeps.?.FORWARD_SLASH }).?, "appendint", .{ newHeight }).?, "append", .{ self.commonSeps.?.COLON }).?, "appendfloat", .{ widthRatio }).?, "append", .{ self.commonSeps.?.FORWARD_SLASH }).?, "appendfloat", .{ heightRatio }))), self, self.CREATE_BUFFERED_IMAGE });
        var dx: f32 = 0.0;
        var dy: f32 = 0.0;
        if (!scale and allowTranslate) {
            dx = (@as(f32, @floatFromInt(newWidth)) - width) / 2.0;
            dy = (@as(f32, @floatFromInt(newHeight)) - height) / 2.0;
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Translate dx: ") }).?, "appendfloat", .{ dx }).?, "append", .{ String.literal(" dy: ") }).?, "appendfloat", .{ dy }))), self, self.CREATE_BUFFERED_IMAGE });
        }
        const newBufferedImage: ?*Image = Inheritance.callStatic(Image, "create3", .{ Inheritance.receiverOf(BareMain.shell.?, "getDisplay").getDisplay(), newWidth, newHeight });
        const gc: ?*GC = Inheritance.callStatic(GC, "create1", .{ newBufferedImage });
        const affineTransform: ?*Transform = Inheritance.callStatic(Transform, "create1", .{ gc.?.getDevice() });
        _ = Inheritance.call(affineTransform.?, "scale", .{ ratioX, ratioY });
        _ = Inheritance.call(affineTransform.?, "translate", .{ dx, dy });
        _ = Inheritance.call(gc.?, "setTransform", .{ affineTransform });
        _ = Inheritance.call(gc.?, "setAntialias", .{ SWT.ON });
        _ = Inheritance.call(gc.?, "setInterpolation", .{ SWT.HIGH });
        _ = Inheritance.call(gc.?, "drawImage", .{ bufferedImage, 0, 0, bufferedImage.?.getBounds().?.width, bufferedImage.?.getBounds().?.height, 0, 0, newWidth, newHeight });
        _ = gc.?.dispose();
        return newBufferedImage;
    }
    

    pub fn drawTransformedImage(self: *Self, image: ?*Image, parent: ?*Composite, dx: i32, dy: i32, width: i32, height: i32) ?*Canvas {
        _ = self;
        const imageCanvas: ?*Canvas = Inheritance.callStatic(Canvas, "create2", .{ parent, SWT.NONE });
        _ = Inheritance.call(imageCanvas.?, "addPaintListener", .{ PaintListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn paintControl(self: *Self, event: ?*PaintEvent) void {
//                 _ = self;
//                 const gc: ?*GC = Inheritance.upcast(?*GC, event.?.gc);
//                 const affineTransform: ?*Transform = Inheritance.callStatic(Transform, "create1", .{ gc.?.getDevice() });
//                 _ = Inheritance.call(affineTransform.?, "translate", .{ dx, dy });
//                 _ = Inheritance.call(gc.?, "setAntialias", .{ SWT.ON });
//                 _ = Inheritance.call(gc.?, "setInterpolation", .{ SWT.HIGH });
//                 _ = Inheritance.call(gc.?, "drawImage", .{ image, 0, 0, image.?.getBounds().?.width, image.?.getBounds().?.height, 0, 0, width, height });
//             }
 });
        return imageCanvas;
    }
    

    pub fn toString(self: *Self, bufferedImage: ?*Image) ?*String {
        _ = self;
        const commonLabels: ?*CommonLabels = Inheritance.upcast(?*CommonLabels, CommonLabels.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const imageData: ?*ImageData = Inheritance.upcast(?*ImageData, bufferedImage.?.getImageData());
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" org.eclipse.swt.graphics.Image: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonLabels.?.WIDTH_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(imageData.?.width)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonLabels.?.HEIGHT_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(imageData.?.height)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Type: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(imageData.?.@"type")) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

