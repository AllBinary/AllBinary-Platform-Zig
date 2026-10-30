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
// package org.allbinary.game.combat.damage

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const IndexedAnimation = @import("org/allbinary/animation/IndexedAnimation.zig").IndexedAnimation;
const CanvasStrings = @import("org/allbinary/graphics/displayable/CanvasStrings.zig").CanvasStrings;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;
const ViewPosition = @import("org/allbinary/view/ViewPosition.zig").ViewPosition;
const ViewPositionBase = @import("org/allbinary/view/ViewPositionBase.zig").ViewPositionBase;
const DamageFloaters = @import("org/allbinary/game/combat/damage/DamageFloaters.zig").DamageFloaters;

pub const AnimationDamageFloaters = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.combat.damage.AnimationDamageFloaters";
    base: DamageFloaters = undefined,
    logUtil: ?*LogUtil = null,
    layerInterface: ?*AllBinaryLayer = null,
    animationInterfaceArray: []?*IndexedAnimation = &.{},
    circularIndexUtil: ?*CircularIndexUtil = null,
    dx: i32 = 0,
    dy: i32 = 0,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
        
        
        
    }
    

    pub fn create4(layerInterface: ?*AllBinaryLayer, animationInterfaceArray: []?*IndexedAnimation, dx: i32, dy: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = DamageFloaters.create().*;
        this.initFields();
        this.animationInterfaceArray = animationInterfaceArray;
        {
            var index: i32 = @as(i32, @intCast(this.animationInterfaceArray.len)) - 1;
            while (index >= 0) : (index -= 1) {
            _ = Inheritance.call(this.animationInterfaceArray[@intCast(index)].?, "setFrame", .{ Inheritance.receiver(this.animationInterfaceArray[@intCast(index)].?, "getSize").getSize() - 1 });
            }
        }
        this.layerInterface = layerInterface;
        this.circularIndexUtil = Inheritance.upcast(@TypeOf(this.circularIndexUtil), Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ @as(i32, @intCast(this.animationInterfaceArray.len)) }));
        this.dx = dx;
        this.dy = dy;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn add(self: *Self, damage: i32) void {
        _ = damage;
        const i: i32 = self.circularIndexUtil.?.getIndex();
        _ = Inheritance.call(self.animationInterfaceArray[@intCast(i)].?, "setFrame", .{ 0 });
        _ = self.circularIndexUtil.?.next();
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        { // try
            const viewPosition: ?*ViewPositionBase = Inheritance.upcast(?*ViewPositionBase, Inheritance.receiver(self.layerInterface.?, "getViewPosition").getViewPosition());
            const x: i32 = Inheritance.receiver(viewPosition.?, "getX").getX();
            const y: i32 = Inheritance.receiver(viewPosition.?, "getY").getY();
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(self.animationInterfaceArray.len))) : (index += 1) {
                const animationInterface: ?*IndexedAnimation = Inheritance.upcast(?*IndexedAnimation, self.animationInterfaceArray[@intCast(index)]);
                if (Inheritance.receiver(animationInterface.?, "getFrame").getFrame() < Inheritance.receiver(animationInterface.?, "getAnimationSize").getAnimationSize() - 1) {
                    const delta: i32 = Inheritance.receiver(animationInterface.?, "getFrame").getFrame() * 20;
                    _ = Inheritance.call(animationInterface.?, "paintXY", .{ graphics, x + self.dx, y - delta + self.dy });
                    _ = Inheritance.receiver(animationInterface.?, "nextFrame").nextFrame();
                }
                }
            }
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             const canvasStrings: ?*CanvasStrings = Inheritance.upcast(?*CanvasStrings, CanvasStrings.getInstance()); _ = canvasStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, canvasStrings.?.PAINT, e });
    }
};

