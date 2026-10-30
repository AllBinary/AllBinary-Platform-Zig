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
// package org.allbinary.animation.compound

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationBehaviorFactory = @import("org/allbinary/animation/AnimationBehaviorFactory.zig").AnimationBehaviorFactory;
const AnimationInterfaceFactoryInterface = @import("org/allbinary/animation/AnimationInterfaceFactoryInterface.zig").AnimationInterfaceFactoryInterface;
const NullAnimationFactory = @import("org/allbinary/animation/NullAnimationFactory.zig").NullAnimationFactory;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const ScaleProperties = @import("org/allbinary/media/ScaleProperties.zig").ScaleProperties;

pub const CompoundAnimationInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.compound.CompoundAnimationInterfaceFactory";
    basicAnimationInterfaceFactoryInterfaceArrayP: []?*AnimationInterfaceFactoryInterface = &.{},
    animationBehaviorFactory: ?*AnimationBehaviorFactory = null,
    // Implements AnimationInterfaceFactoryInterface

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create2(basicAnimationInterfaceFactoryInterfaceArray: []?*AnimationInterfaceFactoryInterface, animationBehaviorFactory: ?*AnimationBehaviorFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.basicAnimationInterfaceFactoryInterfaceArrayP = basicAnimationInterfaceFactoryInterfaceArray;
        this.animationBehaviorFactory = animationBehaviorFactory;
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, instanceId: i32) ?*Animation {
        const size: i32 = @as(i32, @intCast(self.basicAnimationInterfaceFactoryInterfaceArrayP.len));
        const animationInterfaceArray: []?*Animation = Inheritance.call(self, "createArray", .{ size });
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            animationInterfaceArray[@intCast(index)] = Inheritance.upcast(@TypeOf(animationInterfaceArray[@intCast(index)]), Inheritance.call(self.basicAnimationInterfaceFactoryInterfaceArrayP[@intCast(index)].?, "getInstance", .{ instanceId }));
            }
        }
        return Inheritance.upcast(?*Animation, Inheritance.call(self, "createAnimation", .{ animationInterfaceArray }));
    }
    

    pub fn createArray(self: *Self, size: i32) []?*Animation {
        _ = size;
        _ = self;
        return NullAnimationFactory.getFactoryInstance().?.EMPTY_ARRAY;
    }
    

    pub fn createAnimation(self: *Self, animationInterfaceArray: []?*Animation) ?*Animation {
        _ = animationInterfaceArray;
        _ = self;
        return Inheritance.upcast(?*Animation, Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }));
    }
    

    pub fn getBasicAnimationInterfaceFactoryInterfaceArray(self: *Self) []?*AnimationInterfaceFactoryInterface {
        return self.basicAnimationInterfaceFactoryInterfaceArrayP;
    }
    

    pub fn setInitialScale(self: *Self, scaleProperties: ?*ScaleProperties) void {
        const size: i32 = @as(i32, @intCast(self.basicAnimationInterfaceFactoryInterfaceArrayP.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(self.basicAnimationInterfaceFactoryInterfaceArrayP[@intCast(index)].?, "setInitialScale", .{ scaleProperties });
            }
        }
    }
};

