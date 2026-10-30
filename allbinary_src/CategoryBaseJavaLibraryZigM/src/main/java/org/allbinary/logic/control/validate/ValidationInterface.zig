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
// package org.allbinary.logic.control.validate

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

// Java interface: an implementation is a pointer and a table of functions
pub const ValidationInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.control.validate.ValidationInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    isValidFn: *const fn (pointer: *anyopaque) ?*Boolean,
    toValidationInfoNodeFn: *const fn (pointer: *anyopaque, document: ?*Document) ?*Node,
    toValidationInfoDocFn: *const fn (pointer: *anyopaque) ?*Document,
    validationInfoFn: *const fn (pointer: *anyopaque) ?*String,

    pub fn isValid(self: *Self) ?*Boolean {
        return self.isValidFn(self.pointer);
    }

    pub fn toValidationInfoNode(self: *Self, document: ?*Document) ?*Node {
        return self.toValidationInfoNodeFn(self.pointer, document);
    }

    pub fn toValidationInfoDoc(self: *Self) ?*Document {
        return self.toValidationInfoDocFn(self.pointer);
    }

    pub fn validationInfo(self: *Self) ?*String {
        return self.validationInfoFn(self.pointer);
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
            fn isValid(pointer: *anyopaque) ?*Boolean {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Boolean, Inheritance.receiver(implementation, "isValid").isValid());
            }
            fn toValidationInfoNode(pointer: *anyopaque, document: ?*Document) ?*Node {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Node, Inheritance.receiver(implementation, "toValidationInfoNode").toValidationInfoNode(document));
            }
            fn toValidationInfoDoc(pointer: *anyopaque) ?*Document {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Document, Inheritance.receiver(implementation, "toValidationInfoDoc").toValidationInfoDoc());
            }
            fn validationInfo(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "validationInfo").validationInfo());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .isValidFn = Methods.isValid, .toValidationInfoNodeFn = Methods.toValidationInfoNode, .toValidationInfoDocFn = Methods.toValidationInfoDoc, .validationInfoFn = Methods.validationInfo };
        return this;
    }
};

