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
// package org.allbinary.input.motion.button

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const FeaturedAnimationInterfaceFactoryInterfaceFactory = @import("org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.zig").FeaturedAnimationInterfaceFactoryInterfaceFactory;
const CellPosition = @import("org/allbinary/graphics/CellPosition.zig").CellPosition;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const RectangleFactory = @import("org/allbinary/graphics/RectangleFactory.zig").RectangleFactory;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const TouchButtonInput = @import("org/allbinary/input/motion/button/TouchButtonInput.zig").TouchButtonInput;
const TouchButtonResource = @import("org/allbinary/input/motion/button/TouchButtonResource.zig").TouchButtonResource;

pub const TouchButton = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.TouchButton";
    base: Paintable = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    touchButtonInput: ?*TouchButtonInput = null,
    animationInterface: ?*Animation = null,
    hintAnimationInterface: ?*Animation = null,
    rawRectangle: ?*Rectangle = null,
    xBorder: i32 = 0,
    yBorder: i32 = 0,
    rectangleP: ?*Rectangle = null,
    cellPositionP: ?*CellPosition = null,
    animationX: i32 = 0,
    animationY: i32 = 0,
    hintAnimationY: i32 = 0,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        
        
        
        
        
        this.rectangleP = Inheritance.upcast(?*Rectangle, RectangleFactory.SINGLETON);
        
        this.animationX = 0;
        this.animationY = 0;
        this.hintAnimationY = 0;
    }
    

    // throws Exception
    pub fn createButton(touchButtonInput: ?*TouchButtonInput, touchButtonResource: ?*TouchButtonResource, rawRectangle: ?*Rectangle, cellPosition: ?*CellPosition, xBorder: i32, yBorder: i32) ?*TouchButton {
        return Inheritance.callStatic(TouchButton, "create7", .{ touchButtonInput, Inheritance.call(Inheritance.call(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().?, "get", .{ touchButtonResource.?.RESOURCE }).?, "getInstance", .{ 0 }), Inheritance.call(Inheritance.call(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().?, "get", .{ touchButtonResource.?.HINT }).?, "getInstance", .{ 0 }), rawRectangle, cellPosition, xBorder, yBorder });
    }
    

    pub fn create7(touchButtonInput: ?*TouchButtonInput, animationInterface: ?*Animation, hintAnimationInterface: ?*Animation, rawRectangle: ?*Rectangle, cellPosition: ?*CellPosition, xBorder: i32, yBorder: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Paintable.create().*;
        this.initFields();
        this.touchButtonInput = touchButtonInput;
        this.animationInterface = animationInterface;
        this.hintAnimationInterface = hintAnimationInterface;
        this.rawRectangle = rawRectangle;
        this.cellPositionP = cellPosition;
        this.xBorder = xBorder;
        this.yBorder = yBorder;
        _ = this.updateRectangle();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Created: ") }).?, "append", .{ Object.toString(Object.of(this)) }))), this, this.commonStrings.?.CONSTRUCTOR });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn paintHint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.hintAnimationInterface.?, "paintXY", .{ graphics, self.animationX, self.hintAnimationY });
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.animationInterface.?, "paintXY", .{ graphics, self.animationX, self.animationY });
    }
    

    pub fn updateRectangle(self: *Self) void {
        { // try
            const pointFactory: ?*PointFactory = Inheritance.upcast(?*PointFactory, PointFactory.getInstance());
            const x: i32 = self.rawRectangle.?.getWidth() * Inheritance.receiver(self.cellPositionP.?, "getColumn").getColumn();
            const y: i32 = self.rawRectangle.?.getHeight() * Inheritance.receiver(self.cellPositionP.?, "getRow").getRow();
            self.rectangleP = Inheritance.callStatic(Rectangle, "create3", .{ Inheritance.call(pointFactory.?, "createXY", .{ x + self.xBorder, y + self.yBorder }), self.rawRectangle.?.getWidth(), self.rawRectangle.?.getHeight() });
            const point: ?*GPoint = Inheritance.upcast(?*GPoint, self.rectangleP.?.getPoint());
            self.animationX = point.?.getX();
            self.animationY = point.?.getY();
            self.hintAnimationY = self.animationY - 32;
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("updateRectangle"), e });
    }
    

    pub fn getCellPosition(self: *Self) ?*CellPosition {
        return self.cellPositionP;
    }
    

    pub fn getRectangle(self: *Self) ?*Rectangle {
        return self.rectangleP;
    }
    

    pub fn getTouchButtonInput(self: *Self) ?*TouchButtonInput {
        return self.touchButtonInput;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("TouchButton: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(stringUtil.?, "toString", .{ self.getRectangle() }) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" CellPosition: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(stringUtil.?, "toString", .{ self.cellPositionP }) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" xBorder: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.xBorder });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" yBorder: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.yBorder });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

