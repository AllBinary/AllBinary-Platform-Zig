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
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const UserData = @import("org/allbinary/business/user/UserData.zig").UserData;
const PaymentData = @import("org/allbinary/business/user/commerce/money/payment/PaymentData.zig").PaymentData;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const SuperCrypt = @import("org/allbinary/logic/control/crypt/SuperCrypt.zig").SuperCrypt;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const PaymentGatewayData = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData.zig").PaymentGatewayData;
const PaymentGatewayInterface = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterface.zig").PaymentGatewayInterface;
const PaymentGatewayPrimaryKey = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayPrimaryKey.zig").PaymentGatewayPrimaryKey;

pub const PaymentGateway = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.gateway.PaymentGateway";
    pub const java_interfaces = .{ PaymentGatewayInterface };
    storeName: ?*String = null,
    name: ?*String = null,
    enable: ?*String = null,
    paymentMethod: ?*String = null,
    mode: ?*String = null,
    testProtocol: ?*String = null,
    testServer: ?*String = null,
    testPort: ?*String = null,
    testPath: ?*String = null,
    serverProtocol: ?*String = null,
    server: ?*String = null,
    serverPort: ?*String = null,
    serverPath: ?*String = null,
    timeout: ?*String = null,
    userName: ?*String = null,
    password: ?*String = null,
    proxyProtocol: ?*String = null,
    proxyServer: ?*String = null,
    proxyPort: ?*String = null,
    proxyPath: ?*String = null,
    proxyUserName: ?*String = null,
    proxyPassword: ?*String = null,
    proxyTimeout: ?*String = null,
    special1: ?*String = null,
    special2: ?*String = null,
    special3: ?*String = null,
    special4: ?*String = null,
    special5: ?*String = null,
    special6: ?*String = null,
    special7: ?*String = null,
    special8: ?*String = null,
    special9: ?*String = null,
    lastModified: ?*String = null,
    timeEntered: ?*String = null,
    // Implements PaymentGatewayInterface

    fn initFields(this: *Self) void {
        this.storeName = null;
        this.name = null;
        this.enable = null;
        this.paymentMethod = null;
        this.mode = null;
        this.testProtocol = null;
        this.testServer = null;
        this.testPort = null;
        this.testPath = null;
        this.serverProtocol = null;
        this.server = null;
        this.serverPort = null;
        this.serverPath = null;
        this.timeout = null;
        this.userName = null;
        this.password = null;
        this.proxyProtocol = null;
        this.proxyServer = null;
        this.proxyPort = null;
        this.proxyPath = null;
        this.proxyUserName = null;
        this.proxyPassword = null;
        this.proxyTimeout = null;
        this.special1 = null;
        this.special2 = null;
        this.special3 = null;
        this.special4 = null;
        this.special5 = null;
        this.special6 = null;
        this.special7 = null;
        this.special8 = null;
        this.special9 = null;
        this.lastModified = null;
        this.timeEntered = null;
    }
    

    pub fn create1(hashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "getFormData", .{ hashMap });
        return this;
    }
    

    pub fn getFormData(self: *Self, hashMap: ?*HashMap) void {
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        const empty: ?*String = Inheritance.upcast(?*String, stringUtil.?.EMPTY_STRING);
        self.storeName = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(StoreFrontData.getInstance().?.NAME)) }));
        self.name = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.NAME)) }));
        self.enable = Inheritance.upcast(@TypeOf(self.enable), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(EntryData.getInstance().?.ENABLE)) })) }));
        self.paymentMethod = Inheritance.upcast(@TypeOf(self.paymentMethod), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentData.METHOD)) })) }));
        self.mode = Inheritance.upcast(@TypeOf(self.mode), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.MODE)) })) }));
        self.testProtocol = Inheritance.upcast(@TypeOf(self.testProtocol), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.TESTPROTOCOL)) })) }));
        self.testServer = Inheritance.upcast(@TypeOf(self.testServer), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.TESTSERVER)) })) }));
        self.testPort = Inheritance.upcast(@TypeOf(self.testPort), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.TESTPORT)) })) }));
        self.testPath = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.TESTPATH)) }));
        if (self.testPath == null) {
            self.testPath = empty;
        }
        self.serverProtocol = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.SERVERPROTOCOL)) }));
        if (self.serverProtocol == null) {
            self.serverProtocol = empty;
        }
        self.server = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.SERVER)) }));
        if (self.server == null) {
            self.server = empty;
        }
        self.serverPort = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.SERVERPORT)) }));
        if (self.serverPort == null) {
            self.serverPort = empty;
        }
        self.serverPath = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.SERVERPATH)) }));
        if (self.serverPath == null) {
            self.serverPath = empty;
        }
        self.userName = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(UserData.USERNAME)) }));
        if (self.userName == null) {
            self.userName = empty;
        }
        self.password = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(UserData.PASSWORD)) }));
        if (self.password == null) {
            self.password = empty;
        }
        self.timeout = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.TIMEOUT)) }));
        if (self.timeout == null) {
            self.timeout = empty;
        }
        self.proxyProtocol = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.PROXYPROTOCOL)) }));
        if (self.proxyProtocol == null) {
            self.proxyProtocol = empty;
        }
        self.proxyServer = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.PROXYSERVER)) }));
        if (self.proxyServer == null) {
            self.proxyServer = empty;
        }
        self.proxyPort = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.PROXYPORT)) }));
        if (self.proxyPort == null) {
            self.proxyPort = empty;
        }
        self.proxyPath = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.PROXYPATH)) }));
        if (self.proxyPath == null) {
            self.proxyPath = empty;
        }
        self.proxyUserName = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.PROXYUSERNAME)) }));
        if (self.proxyUserName == null) {
            self.proxyUserName = empty;
        }
        self.proxyPassword = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.PROXYPASSWORD)) }));
        if (self.proxyPassword == null) {
            self.proxyPassword = empty;
        }
        self.proxyTimeout = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.PROXYTIMEOUT)) }));
        if (self.proxyTimeout == null) {
            self.proxyTimeout = empty;
        }
        self.special1 = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL1)) }));
        if (self.special1 == null) {
            self.special1 = empty;
        }
        self.special2 = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL2)) }));
        if (self.special2 == null) {
            self.special2 = empty;
        }
        self.special3 = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL3)) }));
        if (self.special3 == null) {
            self.special3 = empty;
        }
        self.special4 = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL4)) }));
        if (self.special4 == null) {
            self.special4 = empty;
        }
        self.special5 = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL5)) }));
        if (self.special5 == null) {
            self.special5 = empty;
        }
        self.special6 = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL6)) }));
        if (self.special6 == null) {
            self.special6 = empty;
        }
        self.special7 = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL7)) }));
        if (self.special7 == null) {
            self.special7 = empty;
        }
        self.special8 = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL8)) }));
        if (self.special8 == null) {
            self.special8 = empty;
        }
        self.special9 = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL9)) }));
        if (self.special9 == null) {
            self.special9 = empty;
        }
        self.lastModified = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(EntryData.getInstance().?.LASTMODIFIED)) }));
        if (self.lastModified == null) {
            self.lastModified = empty;
        }
        self.timeEntered = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(EntryData.getInstance().?.TIMECREATED)) }));
        if (self.timeEntered == null) {
            self.timeEntered = empty;
        }
    }
    

    pub fn getStoreName(self: *Self) ?*String {
        return self.storeName;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn getEnable(self: *Self) ?*String {
        return self.enable;
    }
    

    pub fn getPaymentMethod(self: *Self) ?*String {
        return self.paymentMethod;
    }
    

    pub fn getMode(self: *Self) ?*String {
        return self.mode;
    }
    

    pub fn getTestProtocol(self: *Self) ?*String {
        return self.testProtocol;
    }
    

    pub fn getTestServer(self: *Self) ?*String {
        return self.testServer;
    }
    

    pub fn getTestPort(self: *Self) ?*String {
        return self.testPort;
    }
    

    pub fn getTestPath(self: *Self) ?*String {
        return self.testPath;
    }
    

    pub fn getServerProtocol(self: *Self) ?*String {
        return self.serverProtocol;
    }
    

    pub fn getServer(self: *Self) ?*String {
        return self.server;
    }
    

    pub fn getServerPort(self: *Self) ?*String {
        return self.serverPort;
    }
    

    pub fn getServerPath(self: *Self) ?*String {
        return self.serverPath;
    }
    

    pub fn getUserName(self: *Self) ?*String {
        return self.userName;
    }
    

    pub fn getPassword(self: *Self) ?*String {
        return self.password;
    }
    

    pub fn getProxyProtocol(self: *Self) ?*String {
        return self.proxyProtocol;
    }
    

    pub fn getProxyServer(self: *Self) ?*String {
        return self.proxyServer;
    }
    

    pub fn getProxyPath(self: *Self) ?*String {
        return self.proxyPath;
    }
    

    pub fn getProxyPort(self: *Self) ?*String {
        return self.proxyPort;
    }
    

    pub fn getProxyUserName(self: *Self) ?*String {
        return self.proxyUserName;
    }
    

    pub fn getProxyPassword(self: *Self) ?*String {
        return self.proxyPassword;
    }
    

    pub fn getTimeout(self: *Self) ?*String {
        return self.timeout;
    }
    

    pub fn getProxyTimeout(self: *Self) ?*String {
        return self.proxyTimeout;
    }
    

    pub fn getSpecial1(self: *Self) ?*String {
        return self.special1;
    }
    

    pub fn getSpecial2(self: *Self) ?*String {
        return self.special2;
    }
    

    pub fn getSpecial3(self: *Self) ?*String {
        return self.special3;
    }
    

    pub fn getSpecial4(self: *Self) ?*String {
        return self.special4;
    }
    

    pub fn getSpecial5(self: *Self) ?*String {
        return self.special5;
    }
    

    pub fn getSpecial6(self: *Self) ?*String {
        return self.special6;
    }
    

    pub fn getSpecial7(self: *Self) ?*String {
        return self.special7;
    }
    

    pub fn getSpecial8(self: *Self) ?*String {
        return self.special8;
    }
    

    pub fn getSpecial9(self: *Self) ?*String {
        return self.special9;
    }
    

    pub fn getLastModified(self: *Self) ?*String {
        return self.lastModified;
    }
    

    pub fn getTimeEntered(self: *Self) ?*String {
        return self.timeEntered;
    }
    

    pub fn setEnable(self: *Self, value: ?*String) void {
        self.enable = value;
    }
    

    pub fn setStoreName(self: *Self, value: ?*String) void {
        self.storeName = value;
    }
    

    pub fn setName(self: *Self, value: ?*String) void {
        self.name = value;
    }
    

    pub fn setPaymentMethod(self: *Self, value: ?*String) void {
        self.paymentMethod = value;
    }
    

    pub fn setMode(self: *Self, value: ?*String) void {
        self.mode = value;
    }
    

    pub fn setTestProtocol(self: *Self, value: ?*String) void {
        self.testProtocol = value;
    }
    

    pub fn setTestServer(self: *Self, value: ?*String) void {
        self.testServer = value;
    }
    

    pub fn setTestPort(self: *Self, value: ?*String) void {
        self.testPort = value;
    }
    

    pub fn setTestPath(self: *Self, value: ?*String) void {
        self.testPath = value;
    }
    

    pub fn setServerProtocol(self: *Self, value: ?*String) void {
        self.serverProtocol = value;
    }
    

    pub fn setServer(self: *Self, value: ?*String) void {
        self.server = value;
    }
    

    pub fn setServerPort(self: *Self, value: ?*String) void {
        self.serverPort = value;
    }
    

    pub fn setServerPath(self: *Self, value: ?*String) void {
        self.serverPath = value;
    }
    

    pub fn setTimeout(self: *Self, value: ?*String) void {
        self.timeout = value;
    }
    

    pub fn setUserName(self: *Self, value: ?*String) void {
        self.userName = value;
    }
    

    pub fn setPassword(self: *Self, value: ?*String) void {
        self.password = value;
    }
    

    pub fn setProxyProtocol(self: *Self, value: ?*String) void {
        self.proxyProtocol = value;
    }
    

    pub fn setProxyServer(self: *Self, value: ?*String) void {
        self.proxyServer = value;
    }
    

    pub fn setProxyPort(self: *Self, value: ?*String) void {
        self.proxyPort = value;
    }
    

    pub fn setProxyPath(self: *Self, value: ?*String) void {
        self.proxyPath = value;
    }
    

    pub fn setProxyUserName(self: *Self, value: ?*String) void {
        self.proxyUserName = value;
    }
    

    pub fn setProxyPassword(self: *Self, value: ?*String) void {
        self.proxyPassword = value;
    }
    

    pub fn setProxyTimeout(self: *Self, value: ?*String) void {
        self.proxyTimeout = value;
    }
    

    pub fn setSpecial1(self: *Self, value: ?*String) void {
        self.special1 = value;
    }
    

    pub fn setSpecial2(self: *Self, value: ?*String) void {
        self.special2 = value;
    }
    

    pub fn setSpecial3(self: *Self, value: ?*String) void {
        self.special3 = value;
    }
    

    pub fn setSpecial4(self: *Self, value: ?*String) void {
        self.special4 = value;
    }
    

    pub fn setSpecial5(self: *Self, value: ?*String) void {
        self.special5 = value;
    }
    

    pub fn setSpecial6(self: *Self, value: ?*String) void {
        self.special6 = value;
    }
    

    pub fn setSpecial7(self: *Self, value: ?*String) void {
        self.special7 = value;
    }
    

    pub fn setSpecial8(self: *Self, value: ?*String) void {
        self.special8 = value;
    }
    

    pub fn setSpecial9(self: *Self, value: ?*String) void {
        self.special9 = value;
    }
    

    pub fn setLastModified(self: *Self, value: ?*String) void {
        self.lastModified = value;
    }
    

    pub fn setTimeEntered(self: *Self, value: ?*String) void {
        self.timeEntered = value;
    }
    

    // throws Exception
    pub fn toHashMap(self: *Self) ?*HashMap {
        return Inheritance.upcast(?*HashMap, Inheritance.call(self, "toHashMap", .{ true }));
    }
    

    // throws Exception
    pub fn toHashMap1(self: *Self, isEncrypted: bool) ?*HashMap {
        const paymentGatewayHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ EntryData.getInstance().?.ENABLE, self.enable });
        _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(StoreFrontData.getInstance().?.NAME)), self.storeName });
        _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.NAME)), self.getName() });
        _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentData.METHOD)), self.paymentMethod });
        _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.MODE)), self.mode });
        _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.TESTPROTOCOL)), self.testProtocol });
        _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.TESTSERVER)), self.testServer });
        _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.TESTPORT)), self.testPort });
        _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.TESTPATH)), self.testPath });
        _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SERVERPROTOCOL)), self.serverProtocol });
        _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SERVER)), self.server });
        _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SERVERPORT)), self.serverPort });
        _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SERVERPATH)), self.serverPath });
        if (isEncrypted) {
            const superCrypt: ?*SuperCrypt = Inheritance.callStatic(SuperCrypt, "create1", .{ PaymentGatewayData.CRYPTNUM });
            _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(UserData.USERNAME)), Inheritance.call(superCrypt.?, "encrypt", .{ self.userName }) });
            _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(UserData.PASSWORD)), Inheritance.call(superCrypt.?, "encrypt", .{ self.password }) });
        } else {
            _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(UserData.USERNAME)), self.userName });
            _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(UserData.PASSWORD)), self.password });
        }
        _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.TIMEOUT)), self.timeout });
        _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.PROXYPROTOCOL)), self.proxyProtocol });
        _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.PROXYSERVER)), self.proxyServer });
        _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.PROXYPORT)), self.proxyPort });
        _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.PROXYPATH)), self.proxyPath });
        _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.PROXYUSERNAME)), self.proxyUserName });
        _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.PROXYPASSWORD)), self.proxyPassword });
        _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.PROXYTIMEOUT)), self.proxyTimeout });
        if (isEncrypted) {
            const superCrypt: ?*SuperCrypt = Inheritance.callStatic(SuperCrypt, "create1", .{ PaymentGatewayData.CRYPTNUM });
            _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL1)), Inheritance.call(superCrypt.?, "encrypt", .{ self.special1 }) });
            _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL2)), Inheritance.call(superCrypt.?, "encrypt", .{ self.special2 }) });
            _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL3)), Inheritance.call(superCrypt.?, "encrypt", .{ self.special3 }) });
            _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL4)), Inheritance.call(superCrypt.?, "encrypt", .{ self.special4 }) });
            _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL5)), Inheritance.call(superCrypt.?, "encrypt", .{ self.special5 }) });
            _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL6)), Inheritance.call(superCrypt.?, "encrypt", .{ self.special6 }) });
            _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL7)), Inheritance.call(superCrypt.?, "encrypt", .{ self.special7 }) });
            _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL8)), Inheritance.call(superCrypt.?, "encrypt", .{ self.special8 }) });
        } else {
            _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL1)), self.special1 });
            _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL2)), self.special2 });
            _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL3)), self.special3 });
            _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL4)), self.special4 });
            _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL5)), self.special5 });
            _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL6)), self.special6 });
            _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL7)), self.special7 });
            _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL8)), self.special8 });
            _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL9)), self.special9 });
        }
        _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(EntryData.getInstance().?.LASTMODIFIED)), self.lastModified });
        return paymentGatewayHashMap;
    }
    

    pub fn toVector(self: *Self) ?*BasicArrayList {
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "toVector", .{ true }));
    }
    

    pub fn toVector1(self: *Self, isEncrypted: bool) ?*BasicArrayList {
        const updateVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(updateVector.?, "add", .{ self.enable });
        _ = Inheritance.call(updateVector.?, "add", .{ self.storeName });
        _ = Inheritance.call(updateVector.?, "add", .{ self.getName() });
        _ = Inheritance.call(updateVector.?, "add", .{ self.paymentMethod });
        _ = Inheritance.call(updateVector.?, "add", .{ self.mode });
        _ = Inheritance.call(updateVector.?, "add", .{ self.testProtocol });
        _ = Inheritance.call(updateVector.?, "add", .{ self.testServer });
        _ = Inheritance.call(updateVector.?, "add", .{ self.testPort });
        _ = Inheritance.call(updateVector.?, "add", .{ self.testPath });
        _ = Inheritance.call(updateVector.?, "add", .{ self.serverProtocol });
        _ = Inheritance.call(updateVector.?, "add", .{ self.server });
        _ = Inheritance.call(updateVector.?, "add", .{ self.serverPort });
        _ = Inheritance.call(updateVector.?, "add", .{ self.serverPath });
        if (isEncrypted) {
            const superCrypt: ?*SuperCrypt = Inheritance.callStatic(SuperCrypt, "create1", .{ PaymentGatewayData.CRYPTNUM });
            _ = Inheritance.call(updateVector.?, "add", .{ Inheritance.call(superCrypt.?, "encrypt", .{ self.userName }) });
            _ = Inheritance.call(updateVector.?, "add", .{ Inheritance.call(superCrypt.?, "encrypt", .{ self.password }) });
        } else {
            _ = Inheritance.call(updateVector.?, "add", .{ self.userName });
            _ = Inheritance.call(updateVector.?, "add", .{ self.password });
        }
        _ = Inheritance.call(updateVector.?, "add", .{ self.timeout });
        _ = Inheritance.call(updateVector.?, "add", .{ self.proxyProtocol });
        _ = Inheritance.call(updateVector.?, "add", .{ self.proxyServer });
        _ = Inheritance.call(updateVector.?, "add", .{ self.proxyPort });
        _ = Inheritance.call(updateVector.?, "add", .{ self.proxyPath });
        _ = Inheritance.call(updateVector.?, "add", .{ self.proxyUserName });
        _ = Inheritance.call(updateVector.?, "add", .{ self.proxyPassword });
        _ = Inheritance.call(updateVector.?, "add", .{ self.proxyTimeout });
        if (isEncrypted) {
            const superCrypt: ?*SuperCrypt = Inheritance.callStatic(SuperCrypt, "create1", .{ PaymentGatewayData.CRYPTNUM });
            _ = Inheritance.call(updateVector.?, "add", .{ Inheritance.call(superCrypt.?, "encrypt", .{ self.special1 }) });
            _ = Inheritance.call(updateVector.?, "add", .{ Inheritance.call(superCrypt.?, "encrypt", .{ self.special2 }) });
            _ = Inheritance.call(updateVector.?, "add", .{ Inheritance.call(superCrypt.?, "encrypt", .{ self.special3 }) });
            _ = Inheritance.call(updateVector.?, "add", .{ Inheritance.call(superCrypt.?, "encrypt", .{ self.special4 }) });
            _ = Inheritance.call(updateVector.?, "add", .{ Inheritance.call(superCrypt.?, "encrypt", .{ self.special5 }) });
            _ = Inheritance.call(updateVector.?, "add", .{ Inheritance.call(superCrypt.?, "encrypt", .{ self.special6 }) });
            _ = Inheritance.call(updateVector.?, "add", .{ Inheritance.call(superCrypt.?, "encrypt", .{ self.special7 }) });
            _ = Inheritance.call(updateVector.?, "add", .{ Inheritance.call(superCrypt.?, "encrypt", .{ self.special8 }) });
            _ = Inheritance.call(updateVector.?, "add", .{ Inheritance.call(superCrypt.?, "encrypt", .{ self.special9 }) });
        } else {
            _ = Inheritance.call(updateVector.?, "add", .{ self.special1 });
            _ = Inheritance.call(updateVector.?, "add", .{ self.special2 });
            _ = Inheritance.call(updateVector.?, "add", .{ self.special3 });
            _ = Inheritance.call(updateVector.?, "add", .{ self.special4 });
            _ = Inheritance.call(updateVector.?, "add", .{ self.special5 });
            _ = Inheritance.call(updateVector.?, "add", .{ self.special6 });
            _ = Inheritance.call(updateVector.?, "add", .{ self.special7 });
            _ = Inheritance.call(updateVector.?, "add", .{ self.special8 });
            _ = Inheritance.call(updateVector.?, "add", .{ self.special9 });
        }
        return updateVector;
    }
    

    // throws Exception
    pub fn getKey(self: *Self) ?Object {
        return Inheritance.cast(?Object, Inheritance.callStatic(PaymentGatewayPrimaryKey, "create2", .{ self.getStoreName(), self.getName() }));
    }
};

