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
// package org.allbinary.game.health

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const BasicHudFactory = @import("org/allbinary/game/graphics/hud/BasicHudFactory.zig").BasicHudFactory;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;

pub const HealthBarAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.health.HealthBarAnimation";
    base: Animation = undefined,
    basicColorFactory: ?*BasicColorFactory = null,
    x2: i32 = 0,
    thickness: i32 = 0,
    location: i32 = 0,
    allbinaryLayer: ?*AllBinaryLayer = null,

    fn initFields(this: *Self) void {
        this.basicColorFactory = Inheritance.upcast(?*BasicColorFactory, BasicColorFactory.getInstance());
        this.x2 = 0;
        this.thickness = 0;
        
        
    }
    

    pub fn create2(layerInterface: ?*AllBinaryLayer, location: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Animation.create().*;
        this.initFields();
        this.allbinaryLayer = layerInterface;
        this.location = location;
        const basicHudFactory: ?*BasicHudFactory = Inheritance.upcast(?*BasicHudFactory, BasicHudFactory.getInstance());
        if (this.location != basicHudFactory.?.TOPLEFT and this.location != basicHudFactory.?.BOTTOMLEFT) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Location Not Valid"); break :exception error.Exception; }});
        }
        if (Inheritance.receiver(layerInterface.?, "getWidth").getWidth() > 40) {
            this.thickness = 3;
        } else if (Inheritance.receiver(layerInterface.?, "getWidth").getWidth() > 20) {
            this.thickness = 2;
        } else {
            this.thickness = 1;
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn onHealthChange(self: *Self, newX2: i32) void {
        self.x2 = newX2;
        const quarter: i32 = (Inheritance.receiver(self.allbinaryLayer.?, "getWidth").getWidth() >> @intCast(2));
        if (self.x2 > quarter * 3) {
            Inheritance.fieldPointer(self, "basicColor").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "basicColor").*), self.basicColorFactory.?.GREEN);
            Inheritance.fieldPointer(self, "colorP").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "colorP").*), Inheritance.receiverOf(Inheritance.fieldPointer(self, "basicColor").*.?, "intValue").intValue());
        } else if (self.x2 > quarter * 2) {
            Inheritance.fieldPointer(self, "basicColor").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "basicColor").*), self.basicColorFactory.?.YELLOW);
            Inheritance.fieldPointer(self, "colorP").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "colorP").*), Inheritance.receiverOf(Inheritance.fieldPointer(self, "basicColor").*.?, "intValue").intValue());
        } else if (self.x2 > quarter) {
            Inheritance.fieldPointer(self, "basicColor").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "basicColor").*), self.basicColorFactory.?.ORANGE);
            Inheritance.fieldPointer(self, "colorP").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "colorP").*), Inheritance.receiverOf(Inheritance.fieldPointer(self, "basicColor").*.?, "intValue").intValue());
        } else {
            Inheritance.fieldPointer(self, "basicColor").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "basicColor").*), self.basicColorFactory.?.RED);
            Inheritance.fieldPointer(self, "colorP").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "colorP").*), Inheritance.receiverOf(Inheritance.fieldPointer(self, "basicColor").*.?, "intValue").intValue());
        }
    }
    

    pub fn getY(self: *Self) i32 {
        const basicHudFactory: ?*BasicHudFactory = Inheritance.upcast(?*BasicHudFactory, BasicHudFactory.getInstance());
        if (self.location == basicHudFactory.?.TOPLEFT) {
            return Inheritance.receiverOf(Inheritance.receiver(self.allbinaryLayer.?, "getViewPosition").getViewPosition().?, "getY").getY() - 4;
        } else if (self.location == basicHudFactory.?.BOTTOMLEFT) {
            return Inheritance.receiverOf(Inheritance.receiver(self.allbinaryLayer.?, "getViewPosition").getViewPosition().?, "getY2").getY2() + 4;
        }
        return -1;
    }
};

