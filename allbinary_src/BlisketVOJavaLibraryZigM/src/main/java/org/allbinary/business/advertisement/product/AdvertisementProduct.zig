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
// package org.allbinary.business.advertisement.product

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const TwoDimensionalConstraintInterface = @import("org/allbinary/logic/control/contraints/size/TwoDimensionalConstraintInterface.zig").TwoDimensionalConstraintInterface;
const AdvertisementProductInterface = @import("org/allbinary/business/advertisement/product/AdvertisementProductInterface.zig").AdvertisementProductInterface;

pub const AdvertisementProduct = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.advertisement.product.AdvertisementProduct";
    pub const java_interfaces = .{ AdvertisementProductInterface };
    @"type": ?*String = null,
    link: ?*String = null,
    number: i32 = 0,
    constraint: ?*TwoDimensionalConstraintInterface = null,
    // Implements AdvertisementProductInterface

    fn initFields(this: *Self) void {
        this.@"type" = null;
        this.link = null;
        this.number = 0;
        this.constraint = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getType(self: *Self) ?*String {
        return self.@"type";
    }
    

    pub fn getLink(self: *Self) ?*String {
        return self.link;
    }
    

    pub fn getNumber(self: *Self) i32 {
        return self.number;
    }
    

    pub fn getTwoDimensionalConstraint(self: *Self) ?*TwoDimensionalConstraintInterface {
        return self.constraint;
    }
};

