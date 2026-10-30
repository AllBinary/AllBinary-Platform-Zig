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
// package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const AuthorizeNetAimData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim.AuthorizeNetAimData";
    pub const X_DELIM_DATA: ?*String = String.literal("x_delim_data");
    pub const X_DELIM_CHAR: ?*String = String.literal("x_delim_char");
    pub const X_ENCAP_CHAR: ?*String = String.literal("x_encap_char");
    pub const X_AUTHENTICATION_INDICATOR: ?*String = String.literal("x_authentication_indicator");
    pub const X_CARDHOLDER_AUTHENTICATION_VALUE: ?*String = String.literal("x_cardholder_authentication_value");
    pub const X_DRIVERS_LICENSE_NUM: ?*String = String.literal("x_drivers_license_num");
    pub const X_DRIVERS_LICENSE_STATE: ?*String = String.literal("x_drivers_license_state");
    pub const X_DRIVERS_LICENSE_DOB: ?*String = String.literal("x_drivers_license_dob");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

