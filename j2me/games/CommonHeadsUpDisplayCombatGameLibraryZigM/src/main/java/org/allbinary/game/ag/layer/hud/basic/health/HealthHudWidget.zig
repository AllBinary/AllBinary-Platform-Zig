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
// package org.allbinary.game.ag.layer.hud.basic.health

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const BasicHud = @import("org/allbinary/game/graphics/hud/BasicHud.zig").BasicHud;
const Health = @import("org/allbinary/game/health/Health.zig").Health;
const HealthListenerInterface = @import("org/allbinary/game/health/HealthListenerInterface.zig").HealthListenerInterface;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const PaintableInterface = @import("org/allbinary/graphics/paint/PaintableInterface.zig").PaintableInterface;
const GameTickTimeDelayHelper = @import("org/allbinary/time/GameTickTimeDelayHelper.zig").GameTickTimeDelayHelper;
const GameTickTimeDelayHelperFactory = @import("org/allbinary/time/GameTickTimeDelayHelperFactory.zig").GameTickTimeDelayHelperFactory;
const NoTimeDelayHelper = @import("org/allbinary/time/NoTimeDelayHelper.zig").NoTimeDelayHelper;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;

pub const HealthHudWidget = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget";
    base: BasicHud = undefined,
    healthScale: i32 = 0,
    animationInterface: ?*Animation = null,
    healthInterface: ?*Health = null,
    max: i32 = 0,
    xArray: []i32 = &.{},
    gameTickTimeDelayHelper: ?*GameTickTimeDelayHelper = null,
    timeDelayHelper: ?*TimeDelayHelper = null,
    slowBeatTimeDelayHelper: ?*TimeDelayHelper = null,
    mediumBeatTimeDelayHelper: ?*TimeDelayHelper = null,
    fastBeatTimeDelayHelper: ?*TimeDelayHelper = null,
    // Implements PaintableInterface
    // Implements HealthListenerInterface

    fn initFields(this: *Self) void {
        
        
        
        this.max = 0;
        
        this.gameTickTimeDelayHelper = Inheritance.upcast(?*GameTickTimeDelayHelper, GameTickTimeDelayHelperFactory.getInstance());
        this.timeDelayHelper = Inheritance.upcast(?*TimeDelayHelper, NoTimeDelayHelper.SINGLETON);
        this.slowBeatTimeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 1280 });
        this.mediumBeatTimeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 640 });
        this.fastBeatTimeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 320 });
    }
    

    pub fn create4(animationInterface: ?*Animation, healthInterface: ?*Health, location: i32, direction: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicHud, "create4", .{ location, direction, 2, BasicColorFactory.getInstance().?.WHITE }).*;
        this.initFields();
        this.animationInterface = animationInterface;
        this.healthInterface = healthInterface;
        _ = Inheritance.call(this.healthInterface.?, "addListener", .{ this });
        this.healthScale = ((divide_N66298: { const left_N66298 = this.healthInterface.?.getMaxHealth(); const right_N66298 = 6; break :divide_N66298 if (comptime @typeInfo(@TypeOf(left_N66298)) == .int or @TypeOf(left_N66298) == comptime_int) @divTrunc(left_N66298, right_N66298) else left_N66298 / right_N66298; })) + 1;
        _ = this.onHealthChange();
        Inheritance.fieldPointer(this, "updateMaxWidth").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "updateMaxWidth").*), healthInterface.?.getMaxHealth() * 16);
        Inheritance.fieldPointer(this, "updateMaxHeight").* = 16;
        this.xArray = Inheritance.upcast(@TypeOf(this.xArray), array_N66436: { const array_N66436_array = allocator.alloc(i32, @intCast(30)) catch unreachable; @memset(array_N66436_array, 0); break :array_N66436 array_N66436_array; });
        _ = this.update();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn update(self: *Self) void {
        if (self.xArray != null) {
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(self.xArray.len))) : (index += 1) {
                self.xArray[@intCast(index)] = Inheritance.receiver(self, "getX").getX() + (index * 16);
                }
            }
        }
    }
    

    pub fn setX(self: *Self, x: i32) void {
        _ = Inheritance.call(&self.base, "setX", .{ x });
        _ = self.update();
    }
    

    pub fn onHealthChange(self: *Self) void {
        self.max = ((divide_N67112: { const left_N67112 = self.healthInterface.?.getHealth(); const right_N67112 = self.healthScale; break :divide_N67112 if (comptime @typeInfo(@TypeOf(left_N67112)) == .int or @TypeOf(left_N67112) == comptime_int) @divTrunc(left_N67112, right_N67112) else left_N67112 / right_N67112; }));
        self.timeDelayHelper = Inheritance.upcast(@TypeOf(self.timeDelayHelper), NoTimeDelayHelper.SINGLETON);
        if (self.max <= 1 and self.healthInterface.?.isAlive()) {
            self.max = 1;
            if (self.healthScale - self.healthInterface.?.getHealth() > @divTrunc((self.healthScale * 2), 3)) {
                self.timeDelayHelper = self.slowBeatTimeDelayHelper;
            } else if (self.healthScale - self.healthInterface.?.getHealth() > @divTrunc(self.healthScale, 3)) {
                self.timeDelayHelper = self.mediumBeatTimeDelayHelper;
            } else {
                self.timeDelayHelper = self.fastBeatTimeDelayHelper;
            }
        }
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "myFontProcessor").*.?, "process", .{ graphics });
        {
            var index: i32 = 0;
            while (index < self.max) : (index += 1) {
            if (Inheritance.call(self.timeDelayHelper.?, "isTime", .{ self.gameTickTimeDelayHelper.?.startTime })) {
                _ = Inheritance.call(self.animationInterface.?, "paintXY", .{ graphics, self.xArray[@intCast(index)], Inheritance.receiver(self, "getY").getY() });
            }
            }
        }
    }
    

    pub fn paintThreed(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
};

