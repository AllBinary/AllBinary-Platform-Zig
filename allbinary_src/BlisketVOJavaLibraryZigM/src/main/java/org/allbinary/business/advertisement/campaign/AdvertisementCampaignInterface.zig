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
const AdvertisementsInterface = @import("org/allbinary/business/advertisement/AdvertisementsInterface.zig").AdvertisementsInterface;
const AdvertisementSearchInterface = @import("org/allbinary/business/advertisement/search/AdvertisementSearchInterface.zig").AdvertisementSearchInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const AdvertisementCampaignInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getNameFn: *const fn (pointer: *anyopaque) ?*String,
    getComponentFn: *const fn (pointer: *anyopaque) ?Object,
    setNameFn: *const fn (pointer: *anyopaque, name: ?*String) void,
    setComponentNameFn: *const fn (pointer: *anyopaque, name: ?*String) void,
    searchFn: *const fn (pointer: *anyopaque, advertisementSearchInterface: ?*AdvertisementSearchInterface) ?*AdvertisementsInterface,

    pub fn getName(self: *Self) ?*String {
        return self.getNameFn(self.pointer);
    }

    pub fn getComponent(self: *Self) ?Object {
        return self.getComponentFn(self.pointer);
    }

    pub fn setName(self: *Self, name: ?*String) void {
        return self.setNameFn(self.pointer, name);
    }

    pub fn setComponentName(self: *Self, name: ?*String) void {
        return self.setComponentNameFn(self.pointer, name);
    }

    pub fn search(self: *Self, advertisementSearchInterface: ?*AdvertisementSearchInterface) ?*AdvertisementsInterface {
        return self.searchFn(self.pointer, advertisementSearchInterface);
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
            fn getName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getName").getName());
            }
            fn getComponent(pointer: *anyopaque) ?Object {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?Object, Inheritance.receiver(implementation, "getComponent").getComponent());
            }
            fn setName(pointer: *anyopaque, name: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setName").setName(name);
            }
            fn setComponentName(pointer: *anyopaque, name: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setComponentName").setComponentName(name);
            }
            fn search(pointer: *anyopaque, advertisementSearchInterface: ?*AdvertisementSearchInterface) ?*AdvertisementsInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*AdvertisementsInterface, Inheritance.receiver(implementation, "search").search(advertisementSearchInterface));
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getNameFn = Methods.getName, .getComponentFn = Methods.getComponent, .setNameFn = Methods.setName, .setComponentNameFn = Methods.setComponentName, .searchFn = Methods.search };
        return this;
    }
};

