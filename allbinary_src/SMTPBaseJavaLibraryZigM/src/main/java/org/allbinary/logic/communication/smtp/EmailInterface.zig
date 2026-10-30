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
// package org.allbinary.logic.communication.smtp

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const MimeMessage = @import("javax/mail/internet/MimeMessage.zig").MimeMessage;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const DomDocumentMappingInterface = @import("org/allbinary/data/tree/dom/document/mapping/DomDocumentMappingInterface.zig").DomDocumentMappingInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const EmailInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.EmailInterface";
    pointer: *anyopaque,
    object: Object,
    base: DomNodeInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getDebugInfoFn: *const fn (pointer: *anyopaque) ?*String,
    getMimeMessageFn: *const fn (pointer: *anyopaque) ?*MimeMessage,
    logFn: *const fn (pointer: *anyopaque) ?*String,

    pub fn getDebugInfo(self: *Self) ?*String {
        return self.getDebugInfoFn(self.pointer);
    }

    pub fn getMimeMessage(self: *Self) ?*MimeMessage {
        return self.getMimeMessageFn(self.pointer);
    }

    pub fn log(self: *Self) ?*String {
        return self.logFn(self.pointer);
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
            fn getDebugInfo(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getDebugInfo").getDebugInfo());
            }
            fn getMimeMessage(pointer: *anyopaque) ?*MimeMessage {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*MimeMessage, Inheritance.receiver(implementation, "getMimeMessage").getMimeMessage());
            }
            fn log(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "log").log());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = DomNodeInterface.of(object).?.*, .toStringFn = Methods.toString, .getDebugInfoFn = Methods.getDebugInfo, .getMimeMessageFn = Methods.getMimeMessage, .logFn = Methods.log };
        return this;
    }
};

