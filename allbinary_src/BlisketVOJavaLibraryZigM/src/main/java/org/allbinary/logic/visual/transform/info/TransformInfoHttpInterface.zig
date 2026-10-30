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
const WeblisketSessionInterface = @import("org/allbinary/logic/communication/http/request/session/WeblisketSessionInterface.zig").WeblisketSessionInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const TransformInfoHttpInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface";
    pointer: *anyopaque,
    object: Object,
    base: TransformInfoInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getWeblisketSessionFn: *const fn (pointer: *anyopaque) ?*WeblisketSessionInterface,
    getPageContextFn: *const fn (pointer: *anyopaque) ?*PageContext,
    getPropertiesHashMapFn: *const fn (pointer: *anyopaque) ?*HashMap,

    pub fn getWeblisketSession(self: *Self) ?*WeblisketSessionInterface {
        return self.getWeblisketSessionFn(self.pointer);
    }

    pub fn getPageContext(self: *Self) ?*PageContext {
        return self.getPageContextFn(self.pointer);
    }

    pub fn getPropertiesHashMap(self: *Self) ?*HashMap {
        return self.getPropertiesHashMapFn(self.pointer);
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
            fn getWeblisketSession(pointer: *anyopaque) ?*WeblisketSessionInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*WeblisketSessionInterface, Inheritance.receiver(implementation, "getWeblisketSession").getWeblisketSession());
            }
            fn getPageContext(pointer: *anyopaque) ?*PageContext {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*PageContext, Inheritance.receiver(implementation, "getPageContext").getPageContext());
            }
            fn getPropertiesHashMap(pointer: *anyopaque) ?*HashMap {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*HashMap, Inheritance.receiver(implementation, "getPropertiesHashMap").getPropertiesHashMap());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = TransformInfoInterface.of(object).?.*, .toStringFn = Methods.toString, .getWeblisketSessionFn = Methods.getWeblisketSession, .getPageContextFn = Methods.getPageContext, .getPropertiesHashMapFn = Methods.getPropertiesHashMap };
        return this;
    }
};

