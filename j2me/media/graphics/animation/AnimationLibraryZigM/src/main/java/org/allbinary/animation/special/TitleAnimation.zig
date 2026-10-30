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
// package org.allbinary.animation.special

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const IndexedAnimation = @import("org/allbinary/animation/IndexedAnimation.zig").IndexedAnimation;
const IndexedAnimationBehavior = @import("org/allbinary/animation/IndexedAnimationBehavior.zig").IndexedAnimationBehavior;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const ABSystemWrapper = @import("org/allbinary/logic/ABSystemWrapper.zig").ABSystemWrapper;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;
const SpecialAnimation = @import("org/allbinary/animation/special/SpecialAnimation.zig").SpecialAnimation;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const TitleAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.special.TitleAnimation";
    base: SpecialAnimation = undefined,
    systemWrapper: ?*ABSystemWrapper = null,
    deltaX: f32 = 0.0,
    deltaY: f32 = 0.0,
    deltaZ: f32 = 0.0,
    basicColorArray: []?*BasicColor = &.{},
    dxArray: []i32 = &.{},
    dyArray: []i32 = &.{},
    widthP: i32 = 0,
    animationInterfaceArray: []?*IndexedAnimation = &.{},
    sizeP: i32 = 0,
    y: i32 = 0,
    lastFrameStartTime: i64 = 0,
    displayInfoSingleton: ?*DisplayInfoSingleton = null,
    CLEAR_COLOR: ?*BasicColor = null,

    fn initFields(this: *Self) void {
        this.systemWrapper = Inheritance.upcast(?*ABSystemWrapper, ABSystemWrapper.getInstance());
        this.deltaX = 0.0;
        this.deltaY = 0.0;
        this.deltaZ = 0.0;
        
        
        
        
        
        
        
        
        this.displayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        this.CLEAR_COLOR = Inheritance.upcast(?*BasicColor, BasicColorFactory.getInstance().?.CLEAR_COLOR);
    }
    

    pub fn createAnimation(animationInterfaceArray: []?*IndexedAnimation, basicColorArray: []?*BasicColor, dxArray: []i32, dyArray: []i32, y: i32, width: i32) ?*TitleAnimation {
        return Inheritance.callStatic(TitleAnimation, "create7", .{ animationInterfaceArray, basicColorArray, dxArray, dyArray, y, width, Inheritance.callStatic(IndexedAnimationBehavior, "create2", .{ 1, 250 }) });
    }
    

    pub fn create7(animationInterfaceArray: []?*IndexedAnimation, basicColorArray: []?*BasicColor, dxArray: []i32, dyArray: []i32, y: i32, width: i32, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(SpecialAnimation, "create1", .{ animationBehavior }).*;
        this.initFields();
        this.lastFrameStartTime = this.systemWrapper.?.currentTimeMillis();
        this.animationInterfaceArray = animationInterfaceArray;
        this.sizeP = @as(i32, @intCast(this.animationInterfaceArray.len));
        this.basicColorArray = basicColorArray;
        this.dxArray = dxArray;
        this.dyArray = dyArray;
        this.y = y;
        this.widthP = width;
        _ = this.reset();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn nextFrame(self: *Self) void {
        const currentTime: i64 = self.systemWrapper.?.currentTimeMillis();
        const totalTimeElapsed: i64 = currentTime - self.lastFrameStartTime;
        const indexedAnimationBehavior: ?*IndexedAnimationBehavior = Inheritance.cast(?*IndexedAnimationBehavior, Inheritance.receiver(self, "getAnimationBehavior").getAnimationBehavior());
        if (totalTimeElapsed > indexedAnimationBehavior.?.frameDelayTime) {
            _ = self.previousFrame();
            self.lastFrameStartTime = currentTime;
        }
        if (Inheritance.receiver(self.animationInterfaceArray[@intCast(0)].?, "getFrame").getFrame() == 0) {
            indexedAnimationBehavior.?.loopIndex += 1;
        }
    }
    

    pub fn isComplete(self: *Self) bool {
        const indexedAnimationBehavior: ?*IndexedAnimationBehavior = Inheritance.cast(?*IndexedAnimationBehavior, Inheritance.receiver(self, "getAnimationBehavior").getAnimationBehavior());
        if (indexedAnimationBehavior.?.loopTotal == -1 or indexedAnimationBehavior.?.loopIndex < indexedAnimationBehavior.?.loopTotal or self.getFrame() != 0) {
            return false;
        } else {
            return true;
        }
    }
    

    pub fn setSequence(self: *Self, sequence: []i32) void {
        _ = sequence;
        _ = self;
    }
    

    pub fn getSequence(self: *Self) []i32 {
        _ = self;
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    pub fn getSize(self: *Self) i32 {
        return Inheritance.receiver(self.animationInterfaceArray[@intCast(0)].?, "getSize").getSize();
    }
    

    pub fn getFrame(self: *Self) i32 {
        return Inheritance.receiver(self.animationInterfaceArray[@intCast(0)].?, "getFrame").getFrame();
    }
    

    pub fn setFrame(self: *Self, frame: i32) void {
        {
            var index: i32 = 0;
            while (index < self.sizeP) : (index += 1) {
            _ = Inheritance.call(self.animationInterfaceArray[@intCast(index)].?, "setFrame", .{ frame });
            }
        }
    }
    

    pub fn setLastFrame(self: *Self) void {
        _ = Inheritance.call(self, "setFrame", .{ self.getSize() - 1 });
    }
    

    pub fn reset(self: *Self) void {
        _ = self.setLastFrame();
        const indexedAnimationBehavior: ?*IndexedAnimationBehavior = Inheritance.upcast(?*IndexedAnimationBehavior, (Inheritance.cast(?*IndexedAnimationBehavior, Inheritance.receiver(self, "getAnimationBehavior").getAnimationBehavior())));
        _ = Inheritance.receiver(indexedAnimationBehavior.?, "reset").reset();
    }
    

    pub fn previousFrame(self: *Self) void {
        {
            var index: i32 = 0;
            while (index < self.sizeP) : (index += 1) {
            _ = Inheritance.receiver(self.animationInterfaceArray[@intCast(index)].?, "previousFrame").previousFrame();
            }
        }
    }
    

    pub fn paintFrameXY(self: *Self, graphics: ?*Graphics, frame: i32, x: i32, y: i32) void {
        _ = Inheritance.call(self, "setFrame", .{ frame });
        _ = Inheritance.call(self, "paintXY", .{ graphics, x, y });
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, ax: i32, ay: i32) void {
        _ = ax;
        _ = ay;
        var x: i32 = 0;
        if (self.widthP != @as(i32, std.math.minInt(i32))) {
            x = ((divide_N68755: { const left_N68755 = (self.displayInfoSingleton.?.getLastWidth() - self.widthP); const right_N68755 = 2; break :divide_N68755 if (comptime @typeInfo(@TypeOf(left_N68755)) == .int or @TypeOf(left_N68755) == comptime_int) @divTrunc(left_N68755, right_N68755) else left_N68755 / right_N68755; }));
        }
        var deltaX: i32 = 0;
        var deltaY: i32 = 0;
        {
            var index: i32 = 0;
            while (index < self.sizeP) : (index += 1) {
            deltaX = self.dxArray[@intCast(index)] + x;
            deltaY = self.dyArray[@intCast(index)] + self.y;
            if (!Object.same(self.basicColorArray[@intCast(index)], self.CLEAR_COLOR)) {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "basicSetColorUtil").*.?, "setBasicColorP", .{ graphics, self.basicColorArray[@intCast(index)] });
            }
            _ = Inheritance.call(self.animationInterfaceArray[@intCast(index)].?, "paintXY", .{ graphics, deltaX, deltaY });
            }
        }
    }
};

