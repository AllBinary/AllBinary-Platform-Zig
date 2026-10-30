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
// package org.allbinary.business.advertisement.area

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AdvertisementAreaConstraintsInterface = @import("org/allbinary/business/advertisement/area/AdvertisementAreaConstraintsInterface.zig").AdvertisementAreaConstraintsInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const AdvertisementAreaInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.advertisement.area.AdvertisementAreaInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getNameFn: *const fn (pointer: *anyopaque) ?*String,
    getStoreNameFn: *const fn (pointer: *anyopaque) ?*String,
    getDescriptionFn: *const fn (pointer: *anyopaque) ?*String,
    getConstraintsFn: *const fn (pointer: *anyopaque) ?*AdvertisementAreaConstraintsInterface,
    getCampaignFn: *const fn (pointer: *anyopaque) ?*String,
    setNameFn: *const fn (pointer: *anyopaque, name: ?*String) void,
    setStoreNameFn: *const fn (pointer: *anyopaque, storeName: ?*String) void,
    setDescriptionFn: *const fn (pointer: *anyopaque, description: ?*String) void,
    setConstraintsFn: *const fn (pointer: *anyopaque, advertisementConstraintsInterface: ?*AdvertisementAreaConstraintsInterface) void,
    setCampaignFn: *const fn (pointer: *anyopaque, campaign: ?*String) void,

    pub fn getName(self: *Self) ?*String {
        return self.getNameFn(self.pointer);
    }

    pub fn getStoreName(self: *Self) ?*String {
        return self.getStoreNameFn(self.pointer);
    }

    pub fn getDescription(self: *Self) ?*String {
        return self.getDescriptionFn(self.pointer);
    }

    pub fn getConstraints(self: *Self) ?*AdvertisementAreaConstraintsInterface {
        return self.getConstraintsFn(self.pointer);
    }

    pub fn getCampaign(self: *Self) ?*String {
        return self.getCampaignFn(self.pointer);
    }

    pub fn setName(self: *Self, name: ?*String) void {
        return self.setNameFn(self.pointer, name);
    }

    pub fn setStoreName(self: *Self, storeName: ?*String) void {
        return self.setStoreNameFn(self.pointer, storeName);
    }

    pub fn setDescription(self: *Self, description: ?*String) void {
        return self.setDescriptionFn(self.pointer, description);
    }

    pub fn setConstraints(self: *Self, advertisementConstraintsInterface: ?*AdvertisementAreaConstraintsInterface) void {
        return self.setConstraintsFn(self.pointer, advertisementConstraintsInterface);
    }

    pub fn setCampaign(self: *Self, campaign: ?*String) void {
        return self.setCampaignFn(self.pointer, campaign);
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
            fn getStoreName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getStoreName").getStoreName());
            }
            fn getDescription(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getDescription").getDescription());
            }
            fn getConstraints(pointer: *anyopaque) ?*AdvertisementAreaConstraintsInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*AdvertisementAreaConstraintsInterface, Inheritance.receiver(implementation, "getConstraints").getConstraints());
            }
            fn getCampaign(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getCampaign").getCampaign());
            }
            fn setName(pointer: *anyopaque, name: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setName").setName(name);
            }
            fn setStoreName(pointer: *anyopaque, storeName: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setStoreName").setStoreName(storeName);
            }
            fn setDescription(pointer: *anyopaque, description: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setDescription").setDescription(description);
            }
            fn setConstraints(pointer: *anyopaque, advertisementConstraintsInterface: ?*AdvertisementAreaConstraintsInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setConstraints").setConstraints(advertisementConstraintsInterface);
            }
            fn setCampaign(pointer: *anyopaque, campaign: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setCampaign").setCampaign(campaign);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getNameFn = Methods.getName, .getStoreNameFn = Methods.getStoreName, .getDescriptionFn = Methods.getDescription, .getConstraintsFn = Methods.getConstraints, .getCampaignFn = Methods.getCampaign, .setNameFn = Methods.setName, .setStoreNameFn = Methods.setStoreName, .setDescriptionFn = Methods.setDescription, .setConstraintsFn = Methods.setConstraints, .setCampaignFn = Methods.setCampaign };
        return this;
    }
};

