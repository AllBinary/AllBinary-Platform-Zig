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
// package org.allbinary.game.layer.hud.basic

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const AnimationInterface = @import("org/allbinary/animation/AnimationInterface.zig").AnimationInterface;
const HealthInterface = @import("org/allbinary/game/health/HealthInterface.zig").HealthInterface;
const Anchor = @import("org/allbinary/graphics/Anchor.zig").Anchor;
const ImageCacheFactory = @import("org/allbinary/image/ImageCacheFactory.zig").ImageCacheFactory;

pub const ImageHealthGraphic = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.hud.basic.ImageHealthGraphic";
    base: HealthGraphic = undefined,
    image: []?*Image = &.{},

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create4(animationInterface: ?*AnimationInterface, healthInterface: ?*HealthInterface, location: i32, direction: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HealthGraphic, "create4", .{ animationInterface, healthInterface, location, direction }).*;
        this.initFields();
        this.image = Inheritance.upcast(@TypeOf(this.image), array_N65860: { const array_N65860_array = allocator.alloc(?*Image, @intCast(Inheritance.fieldPointer(this, "healthInterface").*.?.getMaxHealth())) catch unreachable; @memset(array_N65860_array, null); break :array_N65860 array_N65860_array; });
        const imageCacheFactory: ?*ImageCacheFactory = Inheritance.upcast(?*ImageCacheFactory, ImageCacheFactory.getInstance());
        {
            var numOfHealth: i32 = 0;
            while (numOfHealth <= Inheritance.fieldPointer(this, "max").*) : (numOfHealth += 1) {
            this.image[@intCast(numOfHealth)] = Inheritance.upcast(@TypeOf(this.image[@intCast(numOfHealth)]), Inheritance.call(imageCacheFactory.?, "get", .{ this, numOfHealth + 1 * 10, 10 }));
            }
        }
        {
            var numOfHealth: i32 = 0;
            while (numOfHealth <= Inheritance.fieldPointer(this, "max").*) : (numOfHealth += 1) {
            {
                var index: i32 = 0;
                while (index < numOfHealth) : (index += 1) {
                _ = Inheritance.call(Inheritance.fieldPointer(this, "animationInterface").*.?, "paint", .{ this.image[@intCast(numOfHealth)].?.getGraphics(), numOfHealth * 10, 0 });
                }
            }
            }
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(graphics.?, "drawImage", .{ self.image[@intCast(Inheritance.fieldPointer(self, "max").*)], Inheritance.fieldPointer(self, "x").*, Inheritance.fieldPointer(self, "y").*, Anchor.TOP_LEFT });
    }
};

