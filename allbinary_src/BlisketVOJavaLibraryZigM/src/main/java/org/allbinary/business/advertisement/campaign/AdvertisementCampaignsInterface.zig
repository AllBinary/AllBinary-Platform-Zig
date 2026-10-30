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
// package org.allbinary.business.advertisement.campaign

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AdvertisementInterface = @import("org/allbinary/business/advertisement/AdvertisementInterface.zig").AdvertisementInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const AdvertisementCampaignsInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    addFn: *const fn (pointer: *anyopaque, advertisementInterface: ?*AdvertisementInterface) void,
    getFn: *const fn (pointer: *anyopaque, index: i32) ?*AdvertisementInterface,
    sizeFn: *const fn (pointer: *anyopaque) i32,
    isEnabledFn: *const fn (pointer: *anyopaque) bool,

    pub fn add(self: *Self, advertisementInterface: ?*AdvertisementInterface) void {
        return self.addFn(self.pointer, advertisementInterface);
    }

    pub fn get(self: *Self, index: i32) ?*AdvertisementInterface {
        return self.getFn(self.pointer, index);
    }

    pub fn size(self: *Self) i32 {
        return self.sizeFn(self.pointer);
    }

    pub fn isEnabled(self: *Self) bool {
        return self.isEnabledFn(self.pointer);
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
            fn add(pointer: *anyopaque, advertisementInterface: ?*AdvertisementInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "add").add(advertisementInterface);
            }
            fn get(pointer: *anyopaque, index: i32) ?*AdvertisementInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*AdvertisementInterface, Inheritance.receiver(implementation, "get").get(index));
            }
            fn size(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "size").size();
            }
            fn isEnabled(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isEnabled").isEnabled();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .addFn = Methods.add, .getFn = Methods.get, .sizeFn = Methods.size, .isEnabledFn = Methods.isEnabled };
        return this;
    }
};

