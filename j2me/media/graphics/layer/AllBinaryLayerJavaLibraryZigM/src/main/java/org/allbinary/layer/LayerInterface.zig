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
// package org.allbinary.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GroupInterfaceCompositeInterface = @import("org/allbinary/game/identification/GroupInterfaceCompositeInterface.zig").GroupInterfaceCompositeInterface;
const PaintableInterface = @import("org/allbinary/graphics/paint/PaintableInterface.zig").PaintableInterface;
const NamedInterface = @import("org/allbinary/layer/NamedInterface.zig").NamedInterface;
const PositionInterface = @import("org/allbinary/layer/PositionInterface.zig").PositionInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const LayerInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.layer.LayerInterface";
    pointer: *anyopaque,
    object: Object,
    base: NamedInterface,
    base2: PaintableInterface,
    base3: GroupInterfaceCompositeInterface,
    base4: PositionInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getHeightFn: *const fn (interface_pointer: *anyopaque) i32,
    getWidthFn: *const fn (interface_pointer: *anyopaque) i32,
    getHalfHeightFn: *const fn (interface_pointer: *anyopaque) i32,
    getHalfWidthFn: *const fn (interface_pointer: *anyopaque) i32,
    getXPFn: *const fn (interface_pointer: *anyopaque) i32,
    getYPFn: *const fn (interface_pointer: *anyopaque) i32,
    getZPFn: *const fn (interface_pointer: *anyopaque) i32,
    getX2Fn: *const fn (interface_pointer: *anyopaque) i32,
    getY2Fn: *const fn (interface_pointer: *anyopaque) i32,
    getZ2Fn: *const fn (interface_pointer: *anyopaque) i32,
    isVisibleFn: *const fn (interface_pointer: *anyopaque) bool,
    moveDXYZFn: *const fn (interface_pointer: *anyopaque, dx: i32, dy: i32, dz: i32) void,
    setVisibleFn: *const fn (interface_pointer: *anyopaque, visible: bool) void,
    implmentsTickableInterfaceFn: *const fn (interface_pointer: *anyopaque) bool,
    implmentsCollidableInterfaceFn: *const fn (interface_pointer: *anyopaque) bool,
    implmentsGameInputInterfaceFn: *const fn (interface_pointer: *anyopaque) bool,
    implmentsArtificialIntelligenceCompositeInterfaceFn: *const fn (interface_pointer: *anyopaque) bool,
    getTypeFn: *const fn (interface_pointer: *anyopaque) i32,

    pub fn getHeight(self: *Self) i32 {
        return self.getHeightFn(self.pointer);
    }

    pub fn getWidth(self: *Self) i32 {
        return self.getWidthFn(self.pointer);
    }

    pub fn getHalfHeight(self: *Self) i32 {
        return self.getHalfHeightFn(self.pointer);
    }

    pub fn getHalfWidth(self: *Self) i32 {
        return self.getHalfWidthFn(self.pointer);
    }

    pub fn getXP(self: *Self) i32 {
        return self.getXPFn(self.pointer);
    }

    pub fn getYP(self: *Self) i32 {
        return self.getYPFn(self.pointer);
    }

    pub fn getZP(self: *Self) i32 {
        return self.getZPFn(self.pointer);
    }

    pub fn getX2(self: *Self) i32 {
        return self.getX2Fn(self.pointer);
    }

    pub fn getY2(self: *Self) i32 {
        return self.getY2Fn(self.pointer);
    }

    pub fn getZ2(self: *Self) i32 {
        return self.getZ2Fn(self.pointer);
    }

    pub fn isVisible(self: *Self) bool {
        return self.isVisibleFn(self.pointer);
    }

    pub fn moveDXYZ(self: *Self, dx: i32, dy: i32, dz: i32) void {
        return self.moveDXYZFn(self.pointer, dx, dy, dz);
    }

    pub fn setVisible(self: *Self, visible: bool) void {
        return self.setVisibleFn(self.pointer, visible);
    }

    pub fn implmentsTickableInterface(self: *Self) bool {
        return self.implmentsTickableInterfaceFn(self.pointer);
    }

    pub fn implmentsCollidableInterface(self: *Self) bool {
        return self.implmentsCollidableInterfaceFn(self.pointer);
    }

    pub fn implmentsGameInputInterface(self: *Self) bool {
        return self.implmentsGameInputInterfaceFn(self.pointer);
    }

    pub fn implmentsArtificialIntelligenceCompositeInterface(self: *Self) bool {
        return self.implmentsArtificialIntelligenceCompositeInterfaceFn(self.pointer);
    }

    pub fn getType(self: *Self) i32 {
        return self.getTypeFn(self.pointer);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const ImplementationType = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: ImplementationType = @ptrCast(@alignCast(pointer));
                return String.valueOf(implementation);
            }
            fn getHeight(interface_pointer: *anyopaque) i32 {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "getHeight").getHeight();
            }
            fn getWidth(interface_pointer: *anyopaque) i32 {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "getWidth").getWidth();
            }
            fn getHalfHeight(interface_pointer: *anyopaque) i32 {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "getHalfHeight").getHalfHeight();
            }
            fn getHalfWidth(interface_pointer: *anyopaque) i32 {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "getHalfWidth").getHalfWidth();
            }
            fn getXP(interface_pointer: *anyopaque) i32 {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "getXP").getXP();
            }
            fn getYP(interface_pointer: *anyopaque) i32 {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "getYP").getYP();
            }
            fn getZP(interface_pointer: *anyopaque) i32 {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "getZP").getZP();
            }
            fn getX2(interface_pointer: *anyopaque) i32 {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "getX2").getX2();
            }
            fn getY2(interface_pointer: *anyopaque) i32 {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "getY2").getY2();
            }
            fn getZ2(interface_pointer: *anyopaque) i32 {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "getZ2").getZ2();
            }
            fn isVisible(interface_pointer: *anyopaque) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "isVisible").isVisible();
            }
            fn moveDXYZ(interface_pointer: *anyopaque, dx: i32, dy: i32, dz: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "moveDXYZ", .{ dx, dy, dz });
            }
            fn setVisible(interface_pointer: *anyopaque, visible: bool) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "setVisible", .{ visible });
            }
            fn implmentsTickableInterface(interface_pointer: *anyopaque) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "implmentsTickableInterface").implmentsTickableInterface();
            }
            fn implmentsCollidableInterface(interface_pointer: *anyopaque) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "implmentsCollidableInterface").implmentsCollidableInterface();
            }
            fn implmentsGameInputInterface(interface_pointer: *anyopaque) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "implmentsGameInputInterface").implmentsGameInputInterface();
            }
            fn implmentsArtificialIntelligenceCompositeInterface(interface_pointer: *anyopaque) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "implmentsArtificialIntelligenceCompositeInterface").implmentsArtificialIntelligenceCompositeInterface();
            }
            fn getType(interface_pointer: *anyopaque) i32 {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "getType").getType();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = NamedInterface.of(object).?.*, .base2 = PaintableInterface.of(object).?.*, .base3 = GroupInterfaceCompositeInterface.of(object).?.*, .base4 = PositionInterface.of(object).?.*, .toStringFn = Methods.toString, .getHeightFn = Methods.getHeight, .getWidthFn = Methods.getWidth, .getHalfHeightFn = Methods.getHalfHeight, .getHalfWidthFn = Methods.getHalfWidth, .getXPFn = Methods.getXP, .getYPFn = Methods.getYP, .getZPFn = Methods.getZP, .getX2Fn = Methods.getX2, .getY2Fn = Methods.getY2, .getZ2Fn = Methods.getZ2, .isVisibleFn = Methods.isVisible, .moveDXYZFn = Methods.moveDXYZ, .setVisibleFn = Methods.setVisible, .implmentsTickableInterfaceFn = Methods.implmentsTickableInterface, .implmentsCollidableInterfaceFn = Methods.implmentsCollidableInterface, .implmentsGameInputInterfaceFn = Methods.implmentsGameInputInterface, .implmentsArtificialIntelligenceCompositeInterfaceFn = Methods.implmentsArtificialIntelligenceCompositeInterface, .getTypeFn = Methods.getType };
        return this;
    }
};

