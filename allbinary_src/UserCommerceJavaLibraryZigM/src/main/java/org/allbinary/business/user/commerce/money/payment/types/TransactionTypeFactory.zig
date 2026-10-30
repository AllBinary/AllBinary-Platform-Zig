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
// package org.allbinary.business.user.commerce.money.payment.types

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const TransactionType = @import("org/allbinary/business/user/commerce/money/payment/types/TransactionType.zig").TransactionType;

pub const TransactionTypeFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory";
    SALE: ?*TransactionType = null,
    CREDIT: ?*TransactionType = null,
    AUTHORIZATION: ?*TransactionType = null,
    DELAYEDCAPTURE: ?*TransactionType = null,
    VOID: ?*TransactionType = null,
    INQUIRY: ?*TransactionType = null,
    var instance: ?*TransactionTypeFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TransactionTypeFactory.create();
    }

    fn initFields(this: *Self) void {
        this.SALE = Inheritance.callStatic(TransactionType, "create1", .{ String.literal("Sale") });
        this.CREDIT = Inheritance.callStatic(TransactionType, "create1", .{ String.literal("Credit") });
        this.AUTHORIZATION = Inheritance.callStatic(TransactionType, "create1", .{ String.literal("Authorization") });
        this.DELAYEDCAPTURE = Inheritance.callStatic(TransactionType, "create1", .{ String.literal("Delayed Capture") });
        this.VOID = Inheritance.callStatic(TransactionType, "create1", .{ String.literal("Void") });
        this.INQUIRY = Inheritance.callStatic(TransactionType, "create1", .{ String.literal("Inquiry") });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*TransactionTypeFactory {
        return Inheritance.upcast(?*TransactionTypeFactory, TransactionTypeFactory.instance);
    }
};

