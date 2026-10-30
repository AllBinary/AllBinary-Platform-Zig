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
// package org.allbinary.game.layer.pickup

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const NullAnimationFactory = @import("org/allbinary/animation/NullAnimationFactory.zig").NullAnimationFactory;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const ViewPosition = @import("org/allbinary/view/ViewPosition.zig").ViewPosition;

pub const IconLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.pickup.IconLayer";
    base: AllBinaryLayer = undefined,
    animationInterface: ?*Animation = null,
    pub var NULL_ICON_LAYER: ?*IconLayer = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_ICON_LAYER = Inheritance.callStatic(IconLayer, "create3", .{ Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }), 0, 0 });
    }

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create3(animationInterface: ?*Animation, width: i32, height: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryLayer, "create3", .{ StringUtil.getInstance().?.EMPTY_STRING, Inheritance.callStatic(Rectangle, "create3", .{ PointFactory.getInstance().?.ZERO_ZERO, width, height }), ViewPosition.getInstanceD() }).*;
        this.initFields();
        this.animationInterface = animationInterface;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.animationInterface.?, "paintXY", .{ graphics, Inheritance.fieldPointer(self, "x").*, Inheritance.fieldPointer(self, "y").* });
    }
    

    pub fn paintThreed(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.animationInterface.?, "paintThreedXYZ", .{ graphics, Inheritance.fieldPointer(self, "x").*, Inheritance.fieldPointer(self, "y").*, Inheritance.fieldPointer(self, "z").* });
    }
    

    pub fn getAnimationInterface(self: *Self) ?*Animation {
        return self.animationInterface;
    }
};

