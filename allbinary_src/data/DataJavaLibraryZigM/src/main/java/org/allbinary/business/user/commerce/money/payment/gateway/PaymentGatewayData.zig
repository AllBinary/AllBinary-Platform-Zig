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
// package org.allbinary.business.user.commerce.money.payment.gateway

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const PaymentGatewayData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData";
    key: ?*String = null,
    pub const CRYPTNUM: i32 = 5;
    pub var ID: ?*PaymentGatewayData = undefined;
    pub var NAME: ?*PaymentGatewayData = undefined;
    pub var VALUE: ?*PaymentGatewayData = undefined;
    pub var PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE: ?*PaymentGatewayData = undefined;
    pub var PAYMENTPROCESSORINTERFACEFACTORYINTERFACE: ?*PaymentGatewayData = undefined;
    pub var MODE: ?*PaymentGatewayData = undefined;
    pub var SERVERPROTOCOL: ?*PaymentGatewayData = undefined;
    pub var SERVER: ?*PaymentGatewayData = undefined;
    pub var SERVERPORT: ?*PaymentGatewayData = undefined;
    pub var SERVERPATH: ?*PaymentGatewayData = undefined;
    pub var TESTPROTOCOL: ?*PaymentGatewayData = undefined;
    pub var TESTSERVER: ?*PaymentGatewayData = undefined;
    pub var TESTPORT: ?*PaymentGatewayData = undefined;
    pub var TESTPATH: ?*PaymentGatewayData = undefined;
    pub var TIMEOUT: ?*PaymentGatewayData = undefined;
    pub var PROXYPROTOCOL: ?*PaymentGatewayData = undefined;
    pub var PROXYSERVER: ?*PaymentGatewayData = undefined;
    pub var PROXYPATH: ?*PaymentGatewayData = undefined;
    pub var PROXYUSERNAME: ?*PaymentGatewayData = undefined;
    pub var PROXYPASSWORD: ?*PaymentGatewayData = undefined;
    pub var PROXYPORT: ?*PaymentGatewayData = undefined;
    pub var PROXYTIMEOUT: ?*PaymentGatewayData = undefined;
    pub var SPECIAL1: ?*PaymentGatewayData = undefined;
    pub var SPECIAL2: ?*PaymentGatewayData = undefined;
    pub var SPECIAL3: ?*PaymentGatewayData = undefined;
    pub var SPECIAL4: ?*PaymentGatewayData = undefined;
    pub var SPECIAL5: ?*PaymentGatewayData = undefined;
    pub var SPECIAL6: ?*PaymentGatewayData = undefined;
    pub var SPECIAL7: ?*PaymentGatewayData = undefined;
    pub var SPECIAL8: ?*PaymentGatewayData = undefined;
    pub var SPECIAL9: ?*PaymentGatewayData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        ID = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("PAYMENTGATEWAY_ID") });
        NAME = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("PAYMENTGATEWAY_NAME") });
        VALUE = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("PAYMENTGATEWAY_VALUE") });
        PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("PAYMENTGATEWAY_PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE") });
        PAYMENTPROCESSORINTERFACEFACTORYINTERFACE = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("PAYMENTGATEWAY_PAYMENTPROCESSORINTERFACEFACTORYINTERFACE") });
        MODE = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("MODE") });
        SERVERPROTOCOL = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("SERVERPROTOCOL") });
        SERVER = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("SERVER") });
        SERVERPORT = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("SERVERPORT") });
        SERVERPATH = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("SERVERPATH") });
        TESTPROTOCOL = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("TESTSERVERPROTOCOL") });
        TESTSERVER = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("TESTSERVER") });
        TESTPORT = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("TESTPORT") });
        TESTPATH = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("TESTSERVERPATH") });
        TIMEOUT = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("TIMEOUT") });
        PROXYPROTOCOL = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("PROXYPROTOCOL") });
        PROXYSERVER = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("PROXYSERVER") });
        PROXYPATH = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("PROXYPATH") });
        PROXYUSERNAME = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("PROXYUSERNAME") });
        PROXYPASSWORD = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("PROXYPASSWORD") });
        PROXYPORT = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("PROXYPORT") });
        PROXYTIMEOUT = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("PROXYTIMEOUT") });
        SPECIAL1 = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("SPECIAL1") });
        SPECIAL2 = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("SPECIAL2") });
        SPECIAL3 = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("SPECIAL3") });
        SPECIAL4 = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("SPECIAL4") });
        SPECIAL5 = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("SPECIAL5") });
        SPECIAL6 = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("SPECIAL6") });
        SPECIAL7 = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("SPECIAL7") });
        SPECIAL8 = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("SPECIAL8") });
        SPECIAL9 = Inheritance.callStatic(PaymentGatewayData, "create1", .{ String.literal("SPECIAL9") });
    }

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(value: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.key = value;
        return this;
    }
    

    pub fn toString(self: *Self) ?*String {
        return self.key;
    }
};

