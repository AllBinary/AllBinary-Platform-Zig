// 
// AllBinary Open License Version 1 
// Copyright (c) 2003 AllBinary 
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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LayerInterfaceFactoryInterface = @import("org/allbinary/layer/LayerInterfaceFactoryInterface.zig").LayerInterfaceFactoryInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const CostLayerInterfaceFactoryInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.CostLayerInterfaceFactoryInterface";
    pointer: *anyopaque,
    object: Object,
    base: LayerInterfaceFactoryInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getCostFn: *const fn (pointer: *anyopaque) i32,

    pub fn getCost(self: *Self) i32 {
        return self.getCostFn(self.pointer);
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
            fn getCost(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getCost").getCost();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = LayerInterfaceFactoryInterface.of(object).?.*, .toStringFn = Methods.toString, .getCostFn = Methods.getCost };
        return this;
    }
};

