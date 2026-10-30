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
// package org.allbinary.logic.visual.transform

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DomDocumentMappingInterface = @import("org/allbinary/data/tree/dom/document/mapping/DomDocumentMappingInterface.zig").DomDocumentMappingInterface;
const TransformDocumentInterface = @import("org/allbinary/logic/visual/transform/data/TransformDocumentInterface.zig").TransformDocumentInterface;
const CompositeTransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/CompositeTransformInfoInterface.zig").CompositeTransformInfoInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const TransformInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.TransformInterface";
    pointer: *anyopaque,
    object: Object,
    base: DomDocumentMappingInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getTypeIdFn: *const fn (pointer: *anyopaque) i32,
    setTransformDocumentInterfaceFn: *const fn (pointer: *anyopaque, viewDocumentInterface: ?*TransformDocumentInterface) void,
    getTransformDocumentInterfaceFn: *const fn (pointer: *anyopaque) ?*TransformDocumentInterface,
    viewFn: *const fn (pointer: *anyopaque) ?*String,

    pub fn getTypeId(self: *Self) i32 {
        return self.getTypeIdFn(self.pointer);
    }

    pub fn setTransformDocumentInterface(self: *Self, viewDocumentInterface: ?*TransformDocumentInterface) void {
        return self.setTransformDocumentInterfaceFn(self.pointer, viewDocumentInterface);
    }

    pub fn getTransformDocumentInterface(self: *Self) ?*TransformDocumentInterface {
        return self.getTransformDocumentInterfaceFn(self.pointer);
    }

    pub fn view(self: *Self) ?*String {
        return self.viewFn(self.pointer);
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
            fn getTypeId(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getTypeId").getTypeId();
            }
            fn setTransformDocumentInterface(pointer: *anyopaque, viewDocumentInterface: ?*TransformDocumentInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTransformDocumentInterface").setTransformDocumentInterface(viewDocumentInterface);
            }
            fn getTransformDocumentInterface(pointer: *anyopaque) ?*TransformDocumentInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*TransformDocumentInterface, Inheritance.receiver(implementation, "getTransformDocumentInterface").getTransformDocumentInterface());
            }
            fn view(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "view").view());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = DomDocumentMappingInterface.of(object).?.*, .toStringFn = Methods.toString, .getTypeIdFn = Methods.getTypeId, .setTransformDocumentInterfaceFn = Methods.setTransformDocumentInterface, .getTransformDocumentInterfaceFn = Methods.getTransformDocumentInterface, .viewFn = Methods.view };
        return this;
    }
};

