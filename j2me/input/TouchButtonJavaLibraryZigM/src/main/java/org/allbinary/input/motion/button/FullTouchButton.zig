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
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const FeaturedAnimationInterfaceFactoryInterfaceFactory = @import("org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.zig").FeaturedAnimationInterfaceFactoryInterfaceFactory;
const CellPosition = @import("org/allbinary/graphics/CellPosition.zig").CellPosition;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const TouchButton = @import("org/allbinary/input/motion/button/TouchButton.zig").TouchButton;
const TouchButtonInput = @import("org/allbinary/input/motion/button/TouchButtonInput.zig").TouchButtonInput;
const TouchButtonResource = @import("org/allbinary/input/motion/button/TouchButtonResource.zig").TouchButtonResource;

pub const FullTouchButton = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.FullTouchButton";
    base: TouchButton = undefined,
    

    // throws Exception
    pub fn createButton(touchButtonInput: ?*TouchButtonInput, touchButtonResource: ?*TouchButtonResource, rawRectangle: ?*Rectangle, cellPosition: ?*CellPosition, xBorder: i32, yBorder: i32) ?*FullTouchButton {
        return Inheritance.callStatic(FullTouchButton, "create7", .{ touchButtonInput, Inheritance.call(Inheritance.call(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().?, "get", .{ touchButtonResource.?.RESOURCE }).?, "getInstance", .{ 0 }), Inheritance.call(Inheritance.call(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().?, "get", .{ touchButtonResource.?.HINT }).?, "getInstance", .{ 0 }), rawRectangle, cellPosition, xBorder, yBorder });
    }
    

    pub fn create7(touchButtonInput: ?*TouchButtonInput, animationInterface: ?*Animation, hintAnimationInterface: ?*Animation, rawRectangle: ?*Rectangle, cellPosition: ?*CellPosition, xBorder: i32, yBorder: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TouchButton, "create7", .{ touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, cellPosition, xBorder, yBorder }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateRectangle(self: *Self) void {
        { // try
            const pointFactory: ?*PointFactory = Inheritance.upcast(?*PointFactory, PointFactory.getInstance());
            const x: i32 = Inheritance.fieldPointer(self, "rawRectangle").*.?.getWidth() * Inheritance.receiverOf(Inheritance.fieldPointer(self, "cellPositionP").*.?, "getColumn").getColumn();
            const y: i32 = Inheritance.fieldPointer(self, "rawRectangle").*.?.getHeight() * Inheritance.receiverOf(Inheritance.fieldPointer(self, "cellPositionP").*.?, "getRow").getRow();
            Inheritance.fieldPointer(self, "rectangleP").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "rectangleP").*), Inheritance.callStatic(Rectangle, "create3", .{ Inheritance.call(pointFactory.?, "createXY", .{ x, y }), Inheritance.fieldPointer(self, "rawRectangle").*.?.getWidth() + (2 * Inheritance.fieldPointer(self, "xBorder").*), Inheritance.fieldPointer(self, "rawRectangle").*.?.getHeight() + (2 * Inheritance.fieldPointer(self, "yBorder").*) }));
            const point: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.receiverOf(Inheritance.fieldPointer(self, "rectangleP").*.?, "getPoint").getPoint());
            Inheritance.fieldPointer(self, "animationX").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "animationX").*), point.?.getX() + Inheritance.fieldPointer(self, "xBorder").*);
            Inheritance.fieldPointer(self, "animationY").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "animationY").*), point.?.getY() + Inheritance.fieldPointer(self, "yBorder").*);
            Inheritance.fieldPointer(self, "hintAnimationY").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "hintAnimationY").*), Inheritance.fieldPointer(self, "animationY").* - Inheritance.receiverOf(Inheritance.fieldPointer(self, "rectangleP").*.?, "getHeight").getHeight() >> @intCast(1));
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("updateRectangle"), e });
    }
};

