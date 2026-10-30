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
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const VectorInfo = @import("org/allbinary/vector/VectorInfo.zig").VectorInfo;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const IndexedAnimation = @import("org/allbinary/animation/IndexedAnimation.zig").IndexedAnimation;
const ProceduralAnimationInterfaceFactoryInterface = @import("org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.zig").ProceduralAnimationInterfaceFactoryInterface;
const VectorAnimationFactoryInterface = @import("org/allbinary/animation/VectorAnimationFactoryInterface.zig").VectorAnimationFactoryInterface;
const VectorExplosionGenerator = @import("org/allbinary/animation/VectorExplosionGenerator.zig").VectorExplosionGenerator;
const VectorRotationGenerator = @import("org/allbinary/animation/VectorRotationGenerator.zig").VectorRotationGenerator;

pub const IndependentVectorExplosionRotationAnimationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.IndependentVectorExplosionRotationAnimationFactory";
    pub const java_interfaces = .{ ProceduralAnimationInterfaceFactoryInterface };
    framePoints: [][][]i32 = &.{},
    vectorInfo: ?*VectorInfo = null,
    basicColor: ?*BasicColor = null,
    vectorAnimationFactoryInterface: ?*VectorAnimationFactoryInterface = null,
    vectorExplosionGenerator: ?*VectorExplosionGenerator = null,
    // Implements ProceduralAnimationInterfaceFactoryInterface

    fn initFields(this: *Self) void {
        this.framePoints = NullUtil.getInstance().?.NULL_INT_ARRAY_ARRAY_ARRAY;
        
        
        
        this.vectorExplosionGenerator = Inheritance.upcast(?*VectorExplosionGenerator, VectorExplosionGenerator.getInstance());
    }
    

    pub fn create3(vectorInfo: ?*VectorInfo, basicColor: ?*BasicColor, vectorAnimationFactoryInterface: ?*VectorAnimationFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.vectorInfo = vectorInfo;
        this.basicColor = basicColor;
        this.vectorAnimationFactoryInterface = vectorAnimationFactoryInterface;
        _ = this.init();
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self) void {
        self.framePoints = Inheritance.upcast(@TypeOf(self.framePoints), Inheritance.call(VectorRotationGenerator.getInstance().?, "getInstance", .{ self.vectorInfo }));
    }
    

    // throws Exception
    pub fn getInstanceAnimation(self: *Self, animationInterface: ?*Animation) ?*Animation {
        var frame: i32 = 0;
        if (animationInterface != null) {
            const rotationAnimationInterface: ?*IndexedAnimation = Inheritance.cast(?*IndexedAnimation, animationInterface);
            frame = Inheritance.receiver(rotationAnimationInterface.?, "getFrame").getFrame();
        }
        const points: [][][]i32 = Inheritance.call(self.vectorExplosionGenerator.?, "getInstance", .{ self.framePoints[@intCast(frame)], 6, self.vectorExplosionGenerator.?.ROTATION });
        return Inheritance.upcast(?*Animation, Inheritance.call(self.vectorAnimationFactoryInterface.?, "getInstance", .{ points, self.basicColor }));
    }
};

