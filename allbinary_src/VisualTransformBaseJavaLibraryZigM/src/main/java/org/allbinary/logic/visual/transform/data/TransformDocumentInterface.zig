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
// package org.allbinary.logic.visual.transform.data

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;

// Java interface: an implementation is a pointer and a table of functions
pub const TransformDocumentInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.data.TransformDocumentInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getBaseNodeFn: *const fn (pointer: *anyopaque) ?*Node,
    getDocFn: *const fn (pointer: *anyopaque) ?*Document,

    pub fn getBaseNode(self: *Self) ?*Node {
        return self.getBaseNodeFn(self.pointer);
    }

    pub fn getDoc(self: *Self) ?*Document {
        return self.getDocFn(self.pointer);
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
            fn getBaseNode(pointer: *anyopaque) ?*Node {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Node, Inheritance.receiver(implementation, "getBaseNode").getBaseNode());
            }
            fn getDoc(pointer: *anyopaque) ?*Document {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Document, Inheritance.receiver(implementation, "getDoc").getDoc());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getBaseNodeFn = Methods.getBaseNode, .getDocFn = Methods.getDoc };
        return this;
    }
};

