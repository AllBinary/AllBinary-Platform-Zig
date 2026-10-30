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
// package org.allbinary.business.user.commerce.money.payment.gateway.transaction

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PaymentTransactionKeys = @import("org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionKeys.zig").PaymentTransactionKeys;

pub const PaymentTransactionKeysFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeysFactory";
    TRXTYPE: ?*PaymentTransactionKeys = null,
    TENDER: ?*PaymentTransactionKeys = null,
    ACCT: ?*PaymentTransactionKeys = null,
    EXPDATE: ?*PaymentTransactionKeys = null,
    AMT: ?*PaymentTransactionKeys = null,
    AUTHCODE: ?*PaymentTransactionKeys = null,
    MICR: ?*PaymentTransactionKeys = null,
    CHECKNUM: ?*PaymentTransactionKeys = null,
    NAME: ?*PaymentTransactionKeys = null,
    STREET: ?*PaymentTransactionKeys = null,
    CITY: ?*PaymentTransactionKeys = null,
    STATE: ?*PaymentTransactionKeys = null,
    ZIP: ?*PaymentTransactionKeys = null,
    DL: ?*PaymentTransactionKeys = null,
    EMAIL: ?*PaymentTransactionKeys = null,
    COMMENT1: ?*PaymentTransactionKeys = null,
    COMMENT2: ?*PaymentTransactionKeys = null,
    ORIGID: ?*PaymentTransactionKeys = null,
    PONUM: ?*PaymentTransactionKeys = null,
    DESC: ?*PaymentTransactionKeys = null,
    DESC1TO4: ?*PaymentTransactionKeys = null,
    INVNUM: ?*PaymentTransactionKeys = null,
    SHIPTOZIP: ?*PaymentTransactionKeys = null,
    SWIPE: ?*PaymentTransactionKeys = null,
    TAXAMT: ?*PaymentTransactionKeys = null,
    COMMCARD: ?*PaymentTransactionKeys = null,
    DUTYAMT: ?*PaymentTransactionKeys = null,
    FRIEGHTAMT: ?*PaymentTransactionKeys = null,
    ORDERDATE: ?*PaymentTransactionKeys = null,
    TAXEXEMPT: ?*PaymentTransactionKeys = null,
    COUNTRYCODE: ?*PaymentTransactionKeys = null,
    CUSTCODE: ?*PaymentTransactionKeys = null,
    CVV2: ?*PaymentTransactionKeys = null,
    ABA: ?*PaymentTransactionKeys = null,
    ACCTTYPE: ?*PaymentTransactionKeys = null,
    DISCOUNT: ?*PaymentTransactionKeys = null,
    FIRSTNAME: ?*PaymentTransactionKeys = null,
    LASTNAME: ?*PaymentTransactionKeys = null,
    SHIPFROMZIP: ?*PaymentTransactionKeys = null,
    PRENOTE: ?*PaymentTransactionKeys = null,
    CHKTYPE: ?*PaymentTransactionKeys = null,
    DOB: ?*PaymentTransactionKeys = null,
    PHONENUM: ?*PaymentTransactionKeys = null,
    SS: ?*PaymentTransactionKeys = null,
    COMPANYNAME: ?*PaymentTransactionKeys = null,
    COUNTRY: ?*PaymentTransactionKeys = null,
    FREIGHTAMT: ?*PaymentTransactionKeys = null,
    SHIPTOCITY: ?*PaymentTransactionKeys = null,
    SHIPTOFIRSTNAME: ?*PaymentTransactionKeys = null,
    SHIPTOLASTNAME: ?*PaymentTransactionKeys = null,
    SHIPTOSTATE: ?*PaymentTransactionKeys = null,
    SHIPTOSTREET: ?*PaymentTransactionKeys = null,
    SPECIAL1: ?*PaymentTransactionKeys = null,
    SPECIAL2: ?*PaymentTransactionKeys = null,
    SPECIAL3: ?*PaymentTransactionKeys = null,
    PARTNER: ?*PaymentTransactionKeys = null,
    VENDOR: ?*PaymentTransactionKeys = null,
    USER: ?*PaymentTransactionKeys = null,
    PWD: ?*PaymentTransactionKeys = null,
    CHKNUM: ?*PaymentTransactionKeys = null,
    AVSADDR: ?*PaymentTransactionKeys = null,
    AVSZIP: ?*PaymentTransactionKeys = null,
    PNREF: ?*PaymentTransactionKeys = null,
    RESPMSG: ?*PaymentTransactionKeys = null,
    RESULT: ?*PaymentTransactionKeys = null,
    ORIGRESULT: ?*PaymentTransactionKeys = null,
    STATUS: ?*PaymentTransactionKeys = null,
    FRAUDCODE: ?*PaymentTransactionKeys = null,
    FRAUDMSG: ?*PaymentTransactionKeys = null,
    ERRCODE: ?*PaymentTransactionKeys = null,
    SCORE: ?*PaymentTransactionKeys = null,
    REASON1: ?*PaymentTransactionKeys = null,
    REASON2: ?*PaymentTransactionKeys = null,
    REASON3: ?*PaymentTransactionKeys = null,
    EXCEPTION1: ?*PaymentTransactionKeys = null,
    EXCEPTION2: ?*PaymentTransactionKeys = null,
    EXCEPTION3: ?*PaymentTransactionKeys = null,
    EXCEPTION4: ?*PaymentTransactionKeys = null,
    EXCEPTION5: ?*PaymentTransactionKeys = null,
    EXCEPTION6: ?*PaymentTransactionKeys = null,
    EXCEPTION7: ?*PaymentTransactionKeys = null,
    var instance: ?*PaymentTransactionKeysFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PaymentTransactionKeysFactory.create();
    }

    fn initFields(this: *Self) void {
        this.TRXTYPE = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("TRXTYPE") });
        this.TENDER = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("TENDER") });
        this.ACCT = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("ACCT") });
        this.EXPDATE = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("EXPDATE") });
        this.AMT = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("AMT") });
        this.AUTHCODE = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("AUTHCODE") });
        this.MICR = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("MICR") });
        this.CHECKNUM = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("CHECKNUM") });
        this.NAME = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("NAME") });
        this.STREET = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("STREET") });
        this.CITY = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("CITY") });
        this.STATE = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("STATE") });
        this.ZIP = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("ZIP") });
        this.DL = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("DL") });
        this.EMAIL = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("EMAIL") });
        this.COMMENT1 = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("COMMENT1") });
        this.COMMENT2 = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("COMMENT2") });
        this.ORIGID = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("ORIGID") });
        this.PONUM = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("PONUM") });
        this.DESC = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("PaymentTransactionDESC") });
        this.DESC1TO4 = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("DESC1TO4") });
        this.INVNUM = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("INVNUM") });
        this.SHIPTOZIP = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("SHIPTOZIP") });
        this.SWIPE = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("SWIPE") });
        this.TAXAMT = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("TAXAMT") });
        this.COMMCARD = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("COMMCARD") });
        this.DUTYAMT = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("DUTYAMT") });
        this.FRIEGHTAMT = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("FRIEGHTAMT") });
        this.ORDERDATE = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("ORDERDATE") });
        this.TAXEXEMPT = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("TAXEXEMPT") });
        this.COUNTRYCODE = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("COUNTRYCODE") });
        this.CUSTCODE = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("CUSTCODE") });
        this.CVV2 = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("CVV2") });
        this.ABA = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("ABA") });
        this.ACCTTYPE = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("ACCTTYPE") });
        this.DISCOUNT = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("DISCOUNT") });
        this.FIRSTNAME = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("FIRSTNAME") });
        this.LASTNAME = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("LASNAME") });
        this.SHIPFROMZIP = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("SHIPFROMZIP") });
        this.PRENOTE = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("PRENOTE") });
        this.CHKTYPE = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("CHKTYPE") });
        this.DOB = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("DOB") });
        this.PHONENUM = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("PHONENUM") });
        this.SS = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("SS") });
        this.COMPANYNAME = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("COMPANYNAME") });
        this.COUNTRY = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("COUNTRY") });
        this.FREIGHTAMT = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("FREIGHTAMT") });
        this.SHIPTOCITY = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("SHIPTOCITY") });
        this.SHIPTOFIRSTNAME = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("SHIPTOFIRSTNAME") });
        this.SHIPTOLASTNAME = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("SHIPTOLASTNAME") });
        this.SHIPTOSTATE = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("SHIPTOSTATE") });
        this.SHIPTOSTREET = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("SHIPTOSTREET") });
        this.SPECIAL1 = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("SPECIAL1") });
        this.SPECIAL2 = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("SPECIAL2") });
        this.SPECIAL3 = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("SPECIAL3") });
        this.PARTNER = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("PARTNER") });
        this.VENDOR = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("VENDOR") });
        this.USER = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("USER") });
        this.PWD = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("PWD") });
        this.CHKNUM = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("CHKNUM") });
        this.AVSADDR = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("AVSADDR") });
        this.AVSZIP = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("AVSZIP") });
        this.PNREF = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("PNREF") });
        this.RESPMSG = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("RESPMSG") });
        this.RESULT = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("RESULT") });
        this.ORIGRESULT = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("ORIGRESULT") });
        this.STATUS = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("STATUS") });
        this.FRAUDCODE = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("FRAUDCODE") });
        this.FRAUDMSG = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("FRAUDMSG") });
        this.ERRCODE = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("ERRCODE") });
        this.SCORE = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("SCORE") });
        this.REASON1 = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("REASON1") });
        this.REASON2 = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("REASON2") });
        this.REASON3 = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("REASON3") });
        this.EXCEPTION1 = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("EXCEPTION1") });
        this.EXCEPTION2 = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("EXCEPTION2") });
        this.EXCEPTION3 = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("EXCEPTION3") });
        this.EXCEPTION4 = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("EXCEPTION4") });
        this.EXCEPTION5 = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("EXCEPTION5") });
        this.EXCEPTION6 = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("EXCEPTION6") });
        this.EXCEPTION7 = Inheritance.callStatic(PaymentTransactionKeys, "create1", .{ String.literal("EXCEPTION7") });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*PaymentTransactionKeysFactory {
        return Inheritance.upcast(?*PaymentTransactionKeysFactory, PaymentTransactionKeysFactory.instance);
    }
};

