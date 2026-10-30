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
// package org.allbinary.business.user.commerce.money.payment

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const PaymentData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.PaymentData";
    pub const MIN: i32 = 4;
    pub const MAX: i32 = 19;
    pub const ADDNEW: ?*String = String.literal("Add New Payment");
    pub const VIEW: ?*String = String.literal("View Payment");
    pub const SELECT: ?*String = String.literal("Select Payment");
    pub const CHANGE: ?*String = String.literal("Change Payment");
    pub const PAYMENT: ?*String = String.literal("PAYMENT");
    pub const METHOD: ?*String = String.literal("PAYMENT_METHOD");
    pub const ID: ?*String = String.literal("PAYMENT_ID");
    pub const NUMBER: ?*String = String.literal("PAYMENT_NUMBER");
    pub const NAME: ?*String = String.literal("PAYMENT_NAME");
    pub const TYPE: ?*String = String.literal("PAYMENT_TYPE");
    pub const EXPIRATION: ?*String = String.literal("PAYMENT_EXPIRATION");
    pub const TENDERTYPE: ?*String = String.literal("PAYMENT_TENDERTYPE");
    pub const TRANSACTIONTYPE: ?*String = String.literal("PAYMENT_TRANSACTIONTYPE");
    pub const ABA: ?*String = String.literal("PAYMENT_ABA");
    pub const ACCOUNT: ?*String = String.literal("PAYMENT_ACCOUNT");
    pub const ACCOUNTTYPE: ?*String = String.literal("PAYMENT_ACCOUNTTYPE");
    pub const AUTHORIZATIONCODE: ?*String = String.literal("PAYMENT_AUTHORIZATIONCODE");
    pub const CHECKNUMBER: ?*String = String.literal("PAYMENT_CHECKNUMBER");
    pub const CHECKTYPE: ?*String = String.literal("PAYMENT_CHECKTYPE");
    pub const DRIVERSLICENSE: ?*String = String.literal("PAYMENT_DRIVERSLICENSE");
    pub const MAGNETICINKCHECKREADER: ?*String = String.literal("PAYMENT_MAGNETICINKCHECKREADER");

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

