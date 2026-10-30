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
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const ServletRequest = @import("javax/servlet/ServletRequest.zig").ServletRequest;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const SuperCrypt = @import("org/allbinary/logic/control/crypt/SuperCrypt.zig").SuperCrypt;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const PaymentData = @import("org/allbinary/business/user/commerce/money/payment/PaymentData.zig").PaymentData;
const PaymentInterface = @import("org/allbinary/business/user/commerce/money/payment/PaymentInterface.zig").PaymentInterface;
const Integer = @import("java/lang/Integer.zig").Integer;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const Payment = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.Payment";
    pub const java_interfaces = .{ PaymentInterface };
    name: ?*String = null,
    expiration: ?*String = null,
    encryption: ?*String = null,
    number: ?*String = null,
    id: ?*String = null,
    @"type": ?*String = null,
    tenderType: ?*String = null,
    transactionType: ?*String = null,
    aba: ?*String = null,
    account: ?*String = null,
    accountType: ?*String = null,
    authorizationCode: ?*String = null,
    checkNumber: ?*String = null,
    checkType: ?*String = null,
    driversLicense: ?*String = null,
    magneticInkCheckReader: ?*String = null,
    isDefault: bool = false,
    // Implements PaymentInterface
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        this.isDefault = false;
    }
    

    pub fn create1(payment: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.name = Inheritance.cast(?*String, Inheritance.call(payment.?, "get", .{ PaymentData.NAME }));
        this.@"type" = Inheritance.cast(?*String, Inheritance.call(payment.?, "get", .{ PaymentData.TYPE }));
        this.expiration = Inheritance.cast(?*String, Inheritance.call(payment.?, "get", .{ PaymentData.EXPIRATION }));
        this.encryption = Inheritance.cast(?*String, Inheritance.call(payment.?, "get", .{ EntryData.getInstance().?.ENCRYPTION }));
        this.number = Inheritance.cast(?*String, Inheritance.call(Inheritance.callStatic(SuperCrypt, "create1", .{ Inheritance.callStatic(Integer, "create1", .{ this.encryption }).intValue() }), "decrypt", .{ Inheritance.cast(?*String, Inheritance.call(payment.?, "get", .{ PaymentData.NUMBER })) }));
        this.id = Inheritance.cast(?*String, Inheritance.call(payment.?, "get", .{ PaymentData.ID }));
        const def: ?*String = Inheritance.cast(?*String, Inheritance.call(payment.?, "get", .{ EntryData.getInstance().?.DEFAULT }));
        if (def != null and Inheritance.call(def.?, "compareTo", .{ EntryData.getInstance().?.DEFAULT }) == 0) {
            this.isDefault = true;
        } else {
            this.isDefault = false;
        }
        this.tenderType = Inheritance.cast(?*String, Inheritance.call(payment.?, "get", .{ PaymentData.TENDERTYPE }));
        this.transactionType = Inheritance.cast(?*String, Inheritance.call(payment.?, "get", .{ PaymentData.TRANSACTIONTYPE }));
        this.aba = Inheritance.cast(?*String, Inheritance.call(payment.?, "get", .{ PaymentData.ABA }));
        this.account = Inheritance.cast(?*String, Inheritance.call(payment.?, "get", .{ PaymentData.ACCOUNT }));
        this.accountType = Inheritance.cast(?*String, Inheritance.call(payment.?, "get", .{ PaymentData.ACCOUNTTYPE }));
        this.authorizationCode = Inheritance.cast(?*String, Inheritance.call(payment.?, "get", .{ PaymentData.AUTHORIZATIONCODE }));
        this.checkNumber = Inheritance.cast(?*String, Inheritance.call(payment.?, "get", .{ PaymentData.CHECKNUMBER }));
        this.checkType = Inheritance.cast(?*String, Inheritance.call(payment.?, "get", .{ PaymentData.CHECKTYPE }));
        this.driversLicense = Inheritance.cast(?*String, Inheritance.call(payment.?, "get", .{ PaymentData.DRIVERSLICENSE }));
        this.magneticInkCheckReader = Inheritance.cast(?*String, Inheritance.call(payment.?, "get", .{ PaymentData.MAGNETICINKCHECKREADER }));
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(request: ?*ServletRequest) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.name = Inheritance.upcast(@TypeOf(this.name), Inheritance.call(request.?, "getParameter", .{ PaymentData.NAME }));
        this.@"type" = Inheritance.upcast(@TypeOf(this.@"type"), Inheritance.call(request.?, "getParameter", .{ PaymentData.TYPE }));
        this.expiration = Inheritance.upcast(@TypeOf(this.expiration), Inheritance.call(request.?, "getParameter", .{ PaymentData.EXPIRATION }));
        this.number = Inheritance.upcast(@TypeOf(this.number), Inheritance.call(request.?, "getParameter", .{ PaymentData.NUMBER }));
        this.tenderType = Inheritance.upcast(@TypeOf(this.tenderType), Inheritance.call(request.?, "getParameter", .{ PaymentData.TENDERTYPE }));
        this.transactionType = Inheritance.upcast(@TypeOf(this.transactionType), Inheritance.call(request.?, "getParameter", .{ PaymentData.TRANSACTIONTYPE }));
        this.aba = Inheritance.upcast(@TypeOf(this.aba), Inheritance.call(request.?, "getParameter", .{ PaymentData.ABA }));
        this.account = Inheritance.upcast(@TypeOf(this.account), Inheritance.call(request.?, "getParameter", .{ PaymentData.ACCOUNT }));
        this.accountType = Inheritance.upcast(@TypeOf(this.accountType), Inheritance.call(request.?, "getParameter", .{ PaymentData.ACCOUNTTYPE }));
        this.authorizationCode = Inheritance.upcast(@TypeOf(this.authorizationCode), Inheritance.call(request.?, "getParameter", .{ PaymentData.AUTHORIZATIONCODE }));
        this.checkNumber = Inheritance.upcast(@TypeOf(this.checkNumber), Inheritance.call(request.?, "getParameter", .{ PaymentData.CHECKNUMBER }));
        this.checkType = Inheritance.upcast(@TypeOf(this.checkType), Inheritance.call(request.?, "getParameter", .{ PaymentData.CHECKTYPE }));
        this.driversLicense = Inheritance.upcast(@TypeOf(this.driversLicense), Inheritance.call(request.?, "getParameter", .{ PaymentData.DRIVERSLICENSE }));
        this.magneticInkCheckReader = Inheritance.upcast(@TypeOf(this.magneticInkCheckReader), Inheritance.call(request.?, "getParameter", .{ PaymentData.MAGNETICINKCHECKREADER }));
        return this;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        const aFalse: ?*Boolean = Inheritance.upcast(?*Boolean, Boolean.FALSE);
        if (self.name == null or Inheritance.call(self.name.?, "compareTo", .{ stringUtil.?.EMPTY_STRING }) == 0) {
            return aFalse;
        }
        if (self.@"type" == null or Inheritance.call(self.@"type".?, "compareTo", .{ stringUtil.?.EMPTY_STRING }) == 0) {
            return aFalse;
        }
        if (self.expiration == null or Inheritance.call(self.expiration.?, "compareTo", .{ stringUtil.?.EMPTY_STRING }) == 0) {
            return aFalse;
        }
        if (self.number == null or Inheritance.call(self.number.?, "compareTo", .{ stringUtil.?.EMPTY_STRING }) == 0) {
            return aFalse;
        }
        if (self.number.?.length() > org.allbinary.?.business.?.user.?.commerce.?.money.?.payment.?.types.?.CreditCardType.?.MAXLEN) {
            return aFalse;
        }
        return Inheritance.upcast(?*Boolean, Boolean.TRUE);
    }
    

    pub fn setTenderType(self: *Self, value: ?*String) void {
        self.tenderType = value;
    }
    

    pub fn setTransactionType(self: *Self, value: ?*String) void {
        self.transactionType = value;
    }
    

    pub fn setAuthorizationCode(self: *Self, value: ?*String) void {
        self.authorizationCode = value;
    }
    

    pub fn setCheckType(self: *Self, value: ?*String) void {
        self.checkType = value;
    }
    

    pub fn setCheckNumber(self: *Self, value: ?*String) void {
        self.checkNumber = value;
    }
    

    pub fn setDriversLicense(self: *Self, value: ?*String) void {
        self.driversLicense = value;
    }
    

    pub fn setMagneticInkCheckReader(self: *Self, value: ?*String) void {
        self.magneticInkCheckReader = value;
    }
    

    pub fn setAba(self: *Self, value: ?*String) void {
        self.aba = value;
    }
    

    pub fn setAccountType(self: *Self, value: ?*String) void {
        self.accountType = value;
    }
    

    pub fn setName(self: *Self, value: ?*String) void {
        self.name = value;
    }
    

    pub fn setType(self: *Self, value: ?*String) void {
        self.@"type" = value;
    }
    

    pub fn setExpiration(self: *Self, value: ?*String) void {
        self.expiration = value;
    }
    

    pub fn setNumber(self: *Self, value: ?*String) void {
        self.number = value;
    }
    

    pub fn getId(self: *Self) ?*String {
        return self.id;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn getType(self: *Self) ?*String {
        return self.@"type";
    }
    

    pub fn getExpiration(self: *Self) ?*String {
        return self.expiration;
    }
    

    pub fn getEncryption(self: *Self) ?*String {
        return self.encryption;
    }
    

    pub fn getNumber(self: *Self) ?*String {
        return self.number;
    }
    

    pub fn getTenderType(self: *Self) ?*String {
        return self.tenderType;
    }
    

    pub fn getTransactionType(self: *Self) ?*String {
        return self.transactionType;
    }
    

    pub fn getAba(self: *Self) ?*String {
        return self.aba;
    }
    

    pub fn getAccount(self: *Self) ?*String {
        return self.account;
    }
    

    pub fn getAccountType(self: *Self) ?*String {
        return self.accountType;
    }
    

    pub fn getAuthorizationCode(self: *Self) ?*String {
        return self.authorizationCode;
    }
    

    pub fn getCheckNumber(self: *Self) ?*String {
        return self.checkNumber;
    }
    

    pub fn getCheckType(self: *Self) ?*String {
        return self.checkType;
    }
    

    pub fn getDriversLicense(self: *Self) ?*String {
        return self.driversLicense;
    }
    

    pub fn getMagneticInkCheckReader(self: *Self) ?*String {
        return self.magneticInkCheckReader;
    }
    

    pub fn getLastFour(self: *Self) ?*String {
        if (self.number.?.length() > PaymentData.MIN and self.number.?.length() <= PaymentData.MAX) {
            return Inheritance.upcast(?*String, Inheritance.call(self.number.?, "substring", .{ self.number.?.length() - 4 }));
        } else {
            return String.literal("Invalid #");
        }
    }
    

    pub fn isDefault(self: *Self) bool {
        return self.isDefault;
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ PaymentData.NAME, self.name });
        _ = Inheritance.call(hashMap.?, "put", .{ PaymentData.TYPE, self.@"type" });
        _ = Inheritance.call(hashMap.?, "put", .{ PaymentData.EXPIRATION, self.expiration });
        _ = Inheritance.call(hashMap.?, "put", .{ PaymentData.NUMBER, self.getLastFour() });
        _ = Inheritance.call(hashMap.?, "put", .{ PaymentData.TENDERTYPE, self.tenderType });
        _ = Inheritance.call(hashMap.?, "put", .{ PaymentData.TRANSACTIONTYPE, self.transactionType });
        _ = Inheritance.call(hashMap.?, "put", .{ PaymentData.ABA, self.aba });
        _ = Inheritance.call(hashMap.?, "put", .{ PaymentData.ACCOUNT, self.account });
        _ = Inheritance.call(hashMap.?, "put", .{ PaymentData.ACCOUNTTYPE, self.accountType });
        _ = Inheritance.call(hashMap.?, "put", .{ PaymentData.AUTHORIZATIONCODE, self.authorizationCode });
        _ = Inheritance.call(hashMap.?, "put", .{ PaymentData.CHECKNUMBER, self.checkNumber });
        _ = Inheritance.call(hashMap.?, "put", .{ PaymentData.DRIVERSLICENSE, self.driversLicense });
        _ = Inheritance.call(hashMap.?, "put", .{ PaymentData.MAGNETICINKCHECKREADER, self.magneticInkCheckReader });
        if (self.isDefault) {
            _ = Inheritance.call(hashMap.?, "put", .{ EntryData.getInstance().?.DEFAULT, EntryData.getInstance().?.DEFAULT });
        } else {
            _ = Inheritance.call(hashMap.?, "put", .{ EntryData.getInstance().?.DEFAULT, StringUtil.getInstance().?.EMPTY_STRING });
        }
        return hashMap;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, self.toHashMap());
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, PaymentData.PAYMENT, hashMap }));
        return node;
    }
    

    pub fn toXmlDoc(self: *Self) ?*Document {
        _ = self;
        return null;
    }
    

    pub fn view(self: *Self) ?*String {
        _ = self;
        return null;
    }
    

    pub fn toValidationInfoDoc(self: *Self) ?*Document {
        _ = self;
        return null;
    }
    

    pub fn toValidationInfoNode(self: *Self, document: ?*Document) ?*Node {
        _ = document;
        _ = self;
        return null;
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        _ = self;
        return null;
    }
};

