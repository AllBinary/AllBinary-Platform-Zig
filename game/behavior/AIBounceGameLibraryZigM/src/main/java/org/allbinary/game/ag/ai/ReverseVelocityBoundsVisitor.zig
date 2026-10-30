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
// package org.allbinary.game.ag.ai

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BoundsVisitorInterface = @import("org/allbinary/bounds/BoundsVisitorInterface.zig").BoundsVisitorInterface;
const VelocityInterface = @import("org/allbinary/game/physics/velocity/VelocityInterface.zig").VelocityInterface;
const VelocityInterfaceCompositeInterface = @import("org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface.zig").VelocityInterfaceCompositeInterface;
const LayerInterface = @import("org/allbinary/layer/LayerInterface.zig").LayerInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;

pub const ReverseVelocityBoundsVisitor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.ReverseVelocityBoundsVisitor";
    logUtil: ?*LogUtil = null,
    velocityInterface: ?*VelocityInterface = null,
    layerInterface: ?*LayerInterface = null,
    // Implements BoundsVisitorInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
    }
    

    pub fn create1(layerInterface: ?*LayerInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.layerInterface = layerInterface;
        const velocityInterfaceCompositeInterface: ?*VelocityInterfaceCompositeInterface = Inheritance.cast(?*VelocityInterfaceCompositeInterface, layerInterface);
        this.velocityInterface = Inheritance.cast(?*VelocityInterface, velocityInterfaceCompositeInterface.?.getVelocityProperties());
        return this;
    }
    

    pub fn getX(self: *Self) i32 {
        return Inheritance.receiver(self.layerInterface.?, "getXP").getXP();
    }
    

    pub fn getY(self: *Self) i32 {
        return Inheritance.receiver(self.layerInterface.?, "getYP").getYP();
    }
    

    pub fn minX(self: *Self) void {
        if (Inheritance.receiverOf(Inheritance.receiver(self.velocityInterface.?, "getVelocityXBasicDecimalP").getVelocityXBasicDecimalP().?, "getUnscaled").getUnscaled() < 0) {
            _ = Inheritance.call(Inheritance.receiver(self.velocityInterface.?, "getVelocityXBasicDecimalP").getVelocityXBasicDecimalP().?, "multiplyint", .{ -1 });
        }
    }
    

    pub fn maxX(self: *Self) void {
        if (Inheritance.receiverOf(Inheritance.receiver(self.velocityInterface.?, "getVelocityXBasicDecimalP").getVelocityXBasicDecimalP().?, "getUnscaled").getUnscaled() > 0) {
            _ = Inheritance.call(Inheritance.receiver(self.velocityInterface.?, "getVelocityXBasicDecimalP").getVelocityXBasicDecimalP().?, "multiplyint", .{ -1 });
        }
    }
    

    pub fn minY(self: *Self) void {
        if (Inheritance.receiverOf(Inheritance.receiver(self.velocityInterface.?, "getVelocityYBasicDecimalP").getVelocityYBasicDecimalP().?, "getUnscaled").getUnscaled() < 0) {
            _ = Inheritance.call(Inheritance.receiver(self.velocityInterface.?, "getVelocityYBasicDecimalP").getVelocityYBasicDecimalP().?, "multiplyint", .{ -1 });
        }
    }
    

    pub fn maxY(self: *Self) void {
        if (Inheritance.receiverOf(Inheritance.receiver(self.velocityInterface.?, "getVelocityYBasicDecimalP").getVelocityYBasicDecimalP().?, "getUnscaled").getUnscaled() > 0) {
            _ = Inheritance.call(Inheritance.receiver(self.velocityInterface.?, "getVelocityYBasicDecimalP").getVelocityYBasicDecimalP().?, "multiplyint", .{ -1 });
        }
    }
};

