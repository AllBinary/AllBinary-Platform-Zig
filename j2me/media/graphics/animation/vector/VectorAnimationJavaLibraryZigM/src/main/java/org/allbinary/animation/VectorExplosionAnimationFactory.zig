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
// package org.allbinary.animation

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationBehaviorFactory = @import("org/allbinary/animation/AnimationBehaviorFactory.zig").AnimationBehaviorFactory;
const ProceduralAnimationInterfaceFactoryInterface = @import("org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.zig").ProceduralAnimationInterfaceFactoryInterface;
const VectorAnimationInterface = @import("org/allbinary/animation/VectorAnimationInterface.zig").VectorAnimationInterface;
const VectorExplosionGenerator = @import("org/allbinary/animation/VectorExplosionGenerator.zig").VectorExplosionGenerator;
const VectorRotationAnimation = @import("org/allbinary/animation/VectorRotationAnimation.zig").VectorRotationAnimation;

pub const VectorExplosionAnimationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.VectorExplosionAnimationFactory";
    pub const java_interfaces = .{ ProceduralAnimationInterfaceFactoryInterface };
    vectorExplosionGenerator: ?*VectorExplosionGenerator = null,
    basicColor: ?*BasicColor = null,
    animationBehaviorFactory: ?*AnimationBehaviorFactory = null,
    // Implements ProceduralAnimationInterfaceFactoryInterface

    fn initFields(this: *Self) void {
        this.vectorExplosionGenerator = Inheritance.upcast(?*VectorExplosionGenerator, VectorExplosionGenerator.getInstance());
        this.basicColor = Inheritance.upcast(?*BasicColor, BasicColorFactory.getInstance().?.WHITE);
        
    }
    

    pub fn create2(basicColor: ?*BasicColor, animationBehaviorFactory: ?*AnimationBehaviorFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.animationBehaviorFactory = animationBehaviorFactory;
        _ = Inheritance.call(this, "setBasicColorP", .{ basicColor });
        return this;
    }
    

    // throws Exception
    pub fn getInstanceAnimation(self: *Self, animationInterface: ?*Animation) ?*Animation {
        const vectorRotationAnimationInterface: ?*VectorAnimationInterface = Inheritance.cast(?*VectorAnimationInterface, animationInterface);
        const frame: i32 = Inheritance.receiver(vectorRotationAnimationInterface.?, "getFrame").getFrame();
        const framePoints: [][]i32 = Inheritance.call(vectorRotationAnimationInterface.?, "getPoints", .{ frame });
        const points: [][][]i32 = Inheritance.call(self.vectorExplosionGenerator.?, "getInstance", .{ framePoints, 6, self.vectorExplosionGenerator.?.ROTATION });
        return Inheritance.upcast(?*Animation, Inheritance.callStatic(VectorRotationAnimation, "create3", .{ points, self.getBasicColorP(), self.animationBehaviorFactory.?.getOrCreateInstance() }));
    }
    

    pub fn setBasicColorP(self: *Self, basicColor: ?*BasicColor) void {
        self.basicColor = basicColor;
    }
    

    pub fn getBasicColorP(self: *Self) ?*BasicColor {
        return self.basicColor;
    }
};

