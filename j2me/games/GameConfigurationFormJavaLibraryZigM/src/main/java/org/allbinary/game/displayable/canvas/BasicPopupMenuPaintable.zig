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
const AndroidUtil = @import("org/allbinary/AndroidUtil.zig").AndroidUtil;
const J2MEUtil = @import("org/allbinary/J2MEUtil.zig").J2MEUtil;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const NullAnimationFactory = @import("org/allbinary/animation/NullAnimationFactory.zig").NullAnimationFactory;
const RectangleFilledAnimation = @import("org/allbinary/animation/vector/RectangleFilledAnimation.zig").RectangleFilledAnimation;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const SWTUtil = @import("org/allbinary/game/layer/SWTUtil.zig").SWTUtil;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const BasicColorSetUtil = @import("org/allbinary/graphics/color/BasicColorSetUtil.zig").BasicColorSetUtil;
const DrawVerticalStringUtil = @import("org/allbinary/graphics/draw/DrawVerticalStringUtil.zig").DrawVerticalStringUtil;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const UpdateMyFontProcessor = @import("org/allbinary/graphics/font/UpdateMyFontProcessor.zig").UpdateMyFontProcessor;
const OpenGLFeatureFactory = @import("org/allbinary/graphics/opengles/OpenGLFeatureFactory.zig").OpenGLFeatureFactory;
const OpenGLFeatureUtil = @import("org/allbinary/graphics/opengles/OpenGLFeatureUtil.zig").OpenGLFeatureUtil;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const SWTJOGLProcessor = @import("org/allbinary/graphics/threed/SWTJOGLProcessor.zig").SWTJOGLProcessor;

pub const BasicPopupMenuPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable";
    base: Paintable = undefined,
    basicSetColorUtil: ?*BasicColorSetUtil = null,
    drawStringUtil: ?*DrawVerticalStringUtil = null,
    label: ?*String = null,
    foregroundBasicColor: ?*BasicColor = null,
    myFontProcessor: ?*MyFontProcessor = null,
    rectangle: ?*Rectangle = null,
    BORDER: i32 = 0,
    heightOffset: i32 = 0,
    offset: i32 = 0,
    animationInterface: ?*Animation = null,
    // Implements UpdateMyFontInterface
    const NAME: ?*String = String.literal("MENU");

    fn initFields(this: *Self) void {
        this.basicSetColorUtil = Inheritance.upcast(?*BasicColorSetUtil, BasicColorSetUtil.getInstance());
        this.drawStringUtil = Inheritance.upcast(?*DrawVerticalStringUtil, DrawVerticalStringUtil.getInstance());
        
        
        this.myFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        
        this.BORDER = 0;
        this.heightOffset = 0;
        this.offset = 0;
        this.animationInterface = null;
    }
    

    pub fn create3(rectangle: ?*Rectangle, backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        _ = backgroundBasicColor;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Paintable.create().*;
        this.initFields();
        this.foregroundBasicColor = foregroundBasicColor;
        this.label = Inheritance.upcast(@TypeOf(this.label), BasicPopupMenuPaintable.NAME);
        this.rectangle = rectangle;
        if (J2MEUtil.isJ2ME() or J2MEUtil.isHTML()) {
            this.animationInterface = Inheritance.upcast(@TypeOf(this.animationInterface), Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }));
        } else {
            this.animationInterface = Inheritance.upcast(@TypeOf(this.animationInterface), Inheritance.callStatic(RectangleFilledAnimation, "create3", .{ this.rectangle.?.getWidth(), this.rectangle.?.getHeight(), BasicColorFactory.getInstance().?.TRANSPARENT_GREY }));
        }
        _ = Inheritance.call(this, "init", .{ rectangle });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        const isOpenGL: bool = Inheritance.call(features.?, "isDefault", .{ OpenGLFeatureFactory.getInstance().?.OPENGL });
        _ = Inheritance.call(self.drawStringUtil.?, "updateMeasurement", .{ graphics, self.label });
        var BORDER: i32 = 0;
        if (J2MEUtil.isHTML() or isOpenGL) {
            BORDER = (divide_N67540: { const left_N67540 = Inheritance.callStatic(MyFontProcessor, "defaultCharWidth", .{ font }); const right_N67540 = 2; break :divide_N67540 if (comptime @typeInfo(@TypeOf(left_N67540)) == .int or @TypeOf(left_N67540) == comptime_int) @divTrunc(left_N67540, right_N67540) else left_N67540 / right_N67540; });
        } else if (AndroidUtil.isAndroid() or J2MEUtil.isJ2SE() or SWTUtil.isSWT) {
            BORDER = Inheritance.callStatic(MyFontProcessor, "defaultCharWidth", .{ font });
        } else {
            BORDER = Inheritance.callStatic(MyFontProcessor, "defaultCharWidth", .{ font }) * 2;
        }
        self.BORDER = BORDER;
        self.heightOffset = self.rectangle.?.getHeight() - (font.?.getHeight() * Inheritance.receiverOf(BasicPopupMenuPaintable.NAME.?, "length").length());
        if (Inheritance.receiverOf(OpenGLFeatureUtil.getInstance().?, "isAnyThreed").isAnyThreed()) {
            self.heightOffset -= font.?.getHeight() + 2;
            if (AndroidUtil.isAndroid()) {
                self.heightOffset = font.?.getHeight();
            } else {
                self.heightOffset -= font.?.getHeight() + 2;
            }
        }
        self.offset = (self.heightOffset >> @intCast(1)) + ((if (Inheritance.receiverOf(SWTJOGLProcessor.getInstance().?, "isJOGL").isJOGL()) 4 else 0));
        self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
    }
    

    // throws Exception
    pub fn init(self: *Self, rectangle: ?*Rectangle) void {
        self.rectangle = rectangle;
        const width: i32 = self.rectangle.?.getWidth();
        const height: i32 = self.rectangle.?.getHeight();
        if (J2MEUtil.isJ2ME() or J2MEUtil.isHTML()) {
        } else {
            const rectangleFilledAnimation: ?*RectangleFilledAnimation = Inheritance.cast(?*RectangleFilledAnimation, self.animationInterface);
            _ = Inheritance.call(rectangleFilledAnimation.?, "setWidth", .{ width });
            _ = Inheritance.call(rectangleFilledAnimation.?, "setHeight", .{ height });
        }
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
        const point: ?*GPoint = Inheritance.upcast(?*GPoint, self.rectangle.?.getPoint());
        const x: i32 = point.?.getX();
        const y: i32 = point.?.getY();
        const width: i32 = self.rectangle.?.getWidth();
        const height: i32 = self.rectangle.?.getHeight();
        _ = Inheritance.call(self.animationInterface.?, "paintXY", .{ graphics, x, y });
        _ = Inheritance.call(self.basicSetColorUtil.?, "setBasicColorP", .{ graphics, self.foregroundBasicColor });
        _ = Inheritance.call(self.drawStringUtil.?, "paintVerticle", .{ graphics, self.label, x + self.BORDER, y + self.offset, 0 });
        _ = Inheritance.call(graphics.?, "drawRect", .{ x, y, width, height });
    }
};

