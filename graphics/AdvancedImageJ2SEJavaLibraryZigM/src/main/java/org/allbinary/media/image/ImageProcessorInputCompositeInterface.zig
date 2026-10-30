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
// package org.allbinary.media.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ImageProcessorInput = @import("org/allbinary/media/image/ImageProcessorInput.zig").ImageProcessorInput;

// Java interface: an implementation is a pointer and a table of functions
pub const ImageProcessorInputCompositeInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageProcessorInputCompositeInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getImageProcessorInputFn: *const fn (pointer: *anyopaque) ?*ImageProcessorInput,
    setImageProcessorInputFn: *const fn (pointer: *anyopaque, imageProcessorInput: ?*ImageProcessorInput) void,

    pub fn getImageProcessorInput(self: *Self) ?*ImageProcessorInput {
        return self.getImageProcessorInputFn(self.pointer);
    }

    pub fn setImageProcessorInput(self: *Self, imageProcessorInput: ?*ImageProcessorInput) void {
        return self.setImageProcessorInputFn(self.pointer, imageProcessorInput);
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
            fn getImageProcessorInput(pointer: *anyopaque) ?*ImageProcessorInput {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*ImageProcessorInput, Inheritance.receiver(implementation, "getImageProcessorInput").getImageProcessorInput());
            }
            fn setImageProcessorInput(pointer: *anyopaque, imageProcessorInput: ?*ImageProcessorInput) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setImageProcessorInput").setImageProcessorInput(imageProcessorInput);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getImageProcessorInputFn = Methods.getImageProcessorInput, .setImageProcessorInputFn = Methods.setImageProcessorInput };
        return this;
    }
};

