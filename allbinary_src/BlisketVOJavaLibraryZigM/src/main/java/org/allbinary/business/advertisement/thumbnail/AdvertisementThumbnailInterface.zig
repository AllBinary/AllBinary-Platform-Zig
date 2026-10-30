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
// package org.allbinary.business.advertisement.thumbnail

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AdvertisementImageInterface = @import("org/allbinary/business/advertisement/image/AdvertisementImageInterface.zig").AdvertisementImageInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const AdvertisementThumbnailInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface";
    pointer: *anyopaque,
    object: Object,
    base: AdvertisementImageInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,

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
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = AdvertisementImageInterface.of(object).?.*, .toStringFn = Methods.toString };
        return this;
    }
};

