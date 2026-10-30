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
// package org.allbinary.game.displayable.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const RectangleFactory = @import("org/allbinary/graphics/RectangleFactory.zig").RectangleFactory;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const OpenGLFeatureFactory = @import("org/allbinary/graphics/opengles/OpenGLFeatureFactory.zig").OpenGLFeatureFactory;
const SWTJOGLProcessor = @import("org/allbinary/graphics/threed/SWTJOGLProcessor.zig").SWTJOGLProcessor;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const MyFormUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.MyFormUtil";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    popupMenuRectangle: ?*Rectangle = null,
    var instance: ?*MyFormUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = MyFormUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.popupMenuRectangle = Inheritance.upcast(?*Rectangle, RectangleFactory.SINGLETON);
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*MyFormUtil {
        return Inheritance.upcast(?*MyFormUtil, MyFormUtil.instance);
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        const displayInfo: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        const isOpenGL: bool = Inheritance.call(features.?, "isDefault", .{ OpenGLFeatureFactory.getInstance().?.OPENGL });
        const TOTAL_CHAR_WIDTH: i32 = (if (Inheritance.receiverOf(SWTJOGLProcessor.getInstance().?, "isJOGL").isJOGL() and isOpenGL) 2 else 3);
        const width: i32 = Inheritance.callStatic(MyFontProcessor, "defaultStringWidth", .{ font, TOTAL_CHAR_WIDTH });
        const pointFactory: ?*PointFactory = Inheritance.upcast(?*PointFactory, PointFactory.getInstance());
        if (displayInfo.?.getLastHeight() < 320) {
            self.popupMenuRectangle = Inheritance.callStatic(Rectangle, "create3", .{ Inheritance.call(pointFactory.?, "createXY", .{ 0, 25 }), width, (font.?.getHeight() * 4) + 2 });
        } else {
            self.popupMenuRectangle = Inheritance.callStatic(Rectangle, "create3", .{ Inheritance.call(pointFactory.?, "createXY", .{ 0, displayInfo.?.getLastHalfHeight() - 70 }), width, (font.?.getHeight() * 5) });
        }
    }
    

    pub fn getPopupMenuRectangle(self: *Self) ?*Rectangle {
        return self.popupMenuRectangle;
    }
};

