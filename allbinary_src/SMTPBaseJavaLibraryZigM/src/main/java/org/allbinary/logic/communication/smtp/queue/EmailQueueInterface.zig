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
// package org.allbinary.logic.communication.smtp.queue

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const EmailInterface = @import("org/allbinary/logic/communication/smtp/EmailInterface.zig").EmailInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const EmailQueueInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.queue.EmailQueueInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    offerFn: *const fn (pointer: *anyopaque, emailInterface: ?*EmailInterface) bool,
    removeFn: *const fn (pointer: *anyopaque) ?*EmailInterface,

    pub fn offer(self: *Self, emailInterface: ?*EmailInterface) bool {
        return self.offerFn(self.pointer, emailInterface);
    }

    pub fn remove(self: *Self) ?*EmailInterface {
        return self.removeFn(self.pointer);
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
            fn offer(pointer: *anyopaque, emailInterface: ?*EmailInterface) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "offer").offer(emailInterface);
            }
            fn remove(pointer: *anyopaque) ?*EmailInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*EmailInterface, Inheritance.receiver(implementation, "remove").remove());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .offerFn = Methods.offer, .removeFn = Methods.remove };
        return this;
    }
};

