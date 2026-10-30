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
// package org.allbinary.logic.visual.transform.info

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const TransformInfoFactoryInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getInstanceFn: *const fn (pointer: *anyopaque, databaseHashMap: ?*HashMap, propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) ?*TransformInfoInterface,

    pub fn getInstance(self: *Self, databaseHashMap: ?*HashMap, propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) ?*TransformInfoInterface {
        return self.getInstanceFn(self.pointer, databaseHashMap, propertiesHashMap, pageContext);
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
            fn getInstance(pointer: *anyopaque, databaseHashMap: ?*HashMap, propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) ?*TransformInfoInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*TransformInfoInterface, Inheritance.receiver(implementation, "getInstance").getInstance(databaseHashMap, propertiesHashMap, pageContext));
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getInstanceFn = Methods.getInstance };
        return this;
    }
};

