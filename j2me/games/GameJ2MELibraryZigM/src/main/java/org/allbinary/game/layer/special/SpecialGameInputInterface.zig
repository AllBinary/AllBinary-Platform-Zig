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
// package org.allbinary.game.layer.special

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const PaintableInterface = @import("org/allbinary/graphics/paint/PaintableInterface.zig").PaintableInterface;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;

// Java interface: an implementation is a pointer and a table of functions
pub const SpecialGameInputInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.special.SpecialGameInputInterface";
    pointer: *anyopaque,
    object: Object,
    base: PaintableInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    upFn: *const fn (pointer: *anyopaque) void,
    downFn: *const fn (pointer: *anyopaque) void,
    rightFn: *const fn (pointer: *anyopaque) void,
    leftFn: *const fn (pointer: *anyopaque) void,
    strafeLeftFn: *const fn (pointer: *anyopaque) void,
    strafeRightFn: *const fn (pointer: *anyopaque) void,
    fireFn: *const fn (pointer: *anyopaque, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void,
    special1Fn: *const fn (pointer: *anyopaque, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void,
    special2Fn: *const fn (pointer: *anyopaque, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void,
    special3Fn: *const fn (pointer: *anyopaque, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void,
    special4Fn: *const fn (pointer: *anyopaque, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void,
    special5Fn: *const fn (pointer: *anyopaque, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void,

    pub fn up(self: *Self) void {
        return self.upFn(self.pointer);
    }

    pub fn down(self: *Self) void {
        return self.downFn(self.pointer);
    }

    pub fn right(self: *Self) void {
        return self.rightFn(self.pointer);
    }

    pub fn left(self: *Self) void {
        return self.leftFn(self.pointer);
    }

    pub fn strafeLeft(self: *Self) void {
        return self.strafeLeftFn(self.pointer);
    }

    pub fn strafeRight(self: *Self) void {
        return self.strafeRightFn(self.pointer);
    }

    pub fn fire(self: *Self, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
        return self.fireFn(self.pointer, layerManager, gameKeyEvent);
    }

    pub fn special1(self: *Self, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
        return self.special1Fn(self.pointer, layerManager, gameKeyEvent);
    }

    pub fn special2(self: *Self, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
        return self.special2Fn(self.pointer, layerManager, gameKeyEvent);
    }

    pub fn special3(self: *Self, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
        return self.special3Fn(self.pointer, layerManager, gameKeyEvent);
    }

    pub fn special4(self: *Self, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
        return self.special4Fn(self.pointer, layerManager, gameKeyEvent);
    }

    pub fn special5(self: *Self, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
        return self.special5Fn(self.pointer, layerManager, gameKeyEvent);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return String.valueOf(implementation);
            }
            fn up(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "up").up();
            }
            fn down(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "down").down();
            }
            fn right(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "right").right();
            }
            fn left(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "left").left();
            }
            fn strafeLeft(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "strafeLeft").strafeLeft();
            }
            fn strafeRight(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "strafeRight").strafeRight();
            }
            fn fire(pointer: *anyopaque, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "fire").fire(layerManager, gameKeyEvent);
            }
            fn special1(pointer: *anyopaque, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "special1").special1(layerManager, gameKeyEvent);
            }
            fn special2(pointer: *anyopaque, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "special2").special2(layerManager, gameKeyEvent);
            }
            fn special3(pointer: *anyopaque, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "special3").special3(layerManager, gameKeyEvent);
            }
            fn special4(pointer: *anyopaque, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "special4").special4(layerManager, gameKeyEvent);
            }
            fn special5(pointer: *anyopaque, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "special5").special5(layerManager, gameKeyEvent);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = PaintableInterface.of(object).?.*, .toStringFn = Methods.toString, .upFn = Methods.up, .downFn = Methods.down, .rightFn = Methods.right, .leftFn = Methods.left, .strafeLeftFn = Methods.strafeLeft, .strafeRightFn = Methods.strafeRight, .fireFn = Methods.fire, .special1Fn = Methods.special1, .special2Fn = Methods.special2, .special3Fn = Methods.special3, .special4Fn = Methods.special4, .special5Fn = Methods.special5 };
        return this;
    }
};

