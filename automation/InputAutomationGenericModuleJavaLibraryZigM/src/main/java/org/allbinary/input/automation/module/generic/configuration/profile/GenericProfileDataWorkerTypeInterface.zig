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
// package org.allbinary.input.automation.module.generic.configuration.profile

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;

// Java interface: an implementation is a pointer and a table of functions
pub const GenericProfileDataWorkerTypeInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.generic.configuration.profile.GenericProfileDataWorkerTypeInterface";
    pointer: *anyopaque,
    object: Object,
    getNameFn: *const fn (pointer: *anyopaque) ?*String,
    setNameFn: *const fn (pointer: *anyopaque, name: ?*String) void,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    toXmlNodeFn: *const fn (pointer: *anyopaque, document: ?*Document) ?*Node,

    pub fn getName(self: *Self) ?*String {
        return self.getNameFn(self.pointer);
    }

    pub fn setName(self: *Self, name: ?*String) void {
        return self.setNameFn(self.pointer, name);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        return self.toXmlNodeFn(self.pointer, document);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn getName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getName").getName());
            }
            fn setName(pointer: *anyopaque, name: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setName").setName(name);
            }
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "toString").toString());
            }
            fn toXmlNode(pointer: *anyopaque, document: ?*Document) ?*Node {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Node, Inheritance.receiver(implementation, "toXmlNode").toXmlNode(document));
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .getNameFn = Methods.getName, .setNameFn = Methods.setName, .toStringFn = Methods.toString, .toXmlNodeFn = Methods.toXmlNode };
        return this;
    }
};

