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
// package org.allbinary.business.user

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const UserData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.UserData";
    pub var MAXLEN: i32 = 250;
    pub const NAME: ?*String = String.literal("USER_NAME");
    pub const USERNAME: ?*String = String.literal("CUSTOMER_USER_NAME");
    pub const PASSWORD: ?*String = String.literal("CUSTOMER_PASSWORD");
    pub const PREFIXNAME: ?*String = String.literal("CUSTOMER_PREFIX_NAME");
    pub const FIRSTNAME: ?*String = String.literal("CUSTOMER_FIRST_NAME");
    pub const LASTNAME: ?*String = String.literal("CUSTOMER_LAST_NAME");
    pub const MIDDLENAME: ?*String = String.literal("CUSTOMER_MIDDLE_NAME");
    pub const SUFFIXNAME: ?*String = String.literal("CUSTOMER_SUFFIX_NAME");
    pub const COMPANY: ?*String = String.literal("CUSTOMER_COMPANY");
    pub const POSITIONATCOMPANY: ?*String = String.literal("CUSTOMER_POSITION_AT_COMPANY");
    pub const MAINEMAIL: ?*String = String.literal("CUSTOMER_MAIN_EMAIL");
    pub const SECONDARYEMAIL: ?*String = String.literal("CUSTOMER_SECONDARY_EMAIL");
    pub const HOMEPHONE: ?*String = String.literal("CUSTOMER_HOME_PHONE");
    pub const CELLPHONE: ?*String = String.literal("CUSTOMER_CELL_PHONE");
    pub const WORKPHONE: ?*String = String.literal("CUSTOMER_WORK_PHONE");
    pub const OTHERCONTACT: ?*String = String.literal("CUSTOMER_OTHER_CONTACT");
    pub const ELECTRONICDEVICE: ?*String = String.literal("CUSTOMER_ELECTRONIC_DEVICE");
    pub const FAX: ?*String = String.literal("CUSTOMER_FAX");
    pub const SECRET: ?*String = String.literal("CUSTOMER_SECRET");
    pub const PERMISSIONS: ?*String = String.literal("CUSTOMER_PERMISSIONS");
    pub const CONFIGURATION: ?*String = String.literal("CUSTOMER_CONFIGURATION");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

