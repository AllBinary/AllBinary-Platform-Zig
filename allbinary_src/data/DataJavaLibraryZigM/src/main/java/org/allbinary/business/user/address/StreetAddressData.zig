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
// package org.allbinary.business.user.address

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const StreetAddressData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.address.StreetAddressData";
    pub const MAX: i32 = 255;
    pub const MIN: i32 = 0;
    pub const FORM: ?*String = String.literal("FORM");
    pub const STATES: ?*String = String.literal("STATES");
    pub const NUMBEROFADDRESSES: ?*String = String.literal("STREETADDRESS_NUMBEROFADDRESSES");
    pub const ID: ?*String = String.literal("STREETADDRESS_ID");
    pub const DEFAULT: ?*String = String.literal("STREETADDRESS_DEFAULT_ADDRESS");
    pub const ADDRESS: ?*String = String.literal("STREETADDRESS_ADDRESS");
    pub const NAME: ?*String = String.literal("STREETADDRESS_NAME");
    pub const STREET: ?*String = String.literal("STREETADDRESS_STREET");
    pub const CITY: ?*String = String.literal("STREETADDRESS_CITY");
    pub const STATE: ?*String = String.literal("STREETADDRESS_STATE");
    pub const CODE: ?*String = String.literal("STREETADDRESS_CODE");
    pub const COUNTRY: ?*String = String.literal("STREETADDRESS_COUNTRY");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

