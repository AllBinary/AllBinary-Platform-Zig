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
// package org.allbinary.input.media.image.capture

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicEventListenerInterface = @import("org/allbinary/logic/util/event/BasicEventListenerInterface.zig").BasicEventListenerInterface;
const CapturedImageWorkerResultsEvent = @import("org/allbinary/input/media/image/capture/CapturedImageWorkerResultsEvent.zig").CapturedImageWorkerResultsEvent;

// Java interface: an implementation is a pointer and a table of functions
pub const CapturedImageWorkerResultsListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener";
    pointer: *anyopaque,
    object: Object,
    base: BasicEventListenerInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    onCaptureEventFn: *const fn (pointer: *anyopaque, capturedimageworkerresultsevent: ?*CapturedImageWorkerResultsEvent) void,

    pub fn onCaptureEvent(self: *Self, capturedimageworkerresultsevent: ?*CapturedImageWorkerResultsEvent) void {
        return self.onCaptureEventFn(self.pointer, capturedimageworkerresultsevent);
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
            fn onCaptureEvent(pointer: *anyopaque, capturedimageworkerresultsevent: ?*CapturedImageWorkerResultsEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onCaptureEvent").onCaptureEvent(capturedimageworkerresultsevent);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = BasicEventListenerInterface.of(object).?.*, .toStringFn = Methods.toString, .onCaptureEventFn = Methods.onCaptureEvent };
        return this;
    }
};

