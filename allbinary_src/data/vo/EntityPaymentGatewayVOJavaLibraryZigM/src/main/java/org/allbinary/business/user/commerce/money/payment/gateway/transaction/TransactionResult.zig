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
const HashMap = @import("java/util/HashMap.zig").HashMap;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Tokenizer = @import("org/allbinary/logic/string/tokens/Tokenizer.zig").Tokenizer;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const PaymentTransactionKeysFactory = @import("org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionKeysFactory.zig").PaymentTransactionKeysFactory;
const TransactionResultInterface = @import("org/allbinary/business/user/commerce/money/payment/gateway/transaction/TransactionResultInterface.zig").TransactionResultInterface;

pub const TransactionResult = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResult";
    pub const java_interfaces = .{ TransactionResultInterface };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    keyValuePairs: ?*HashMap = null,
    result: ?*String = null,
    // Implements TransactionResultInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        
    }
    

    pub fn create1(result: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        { // try
            this.result = result;
            const tokenizer: ?*Tokenizer = Inheritance.callStatic(Tokenizer, "create1", .{ CommonSeps.getInstance().?.AMPERSAND });
            const tokens: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(tokenizer.?, "getTokensFromString", .{ result, BasicArrayListD.create() }));
            const tokenizer2: ?*Tokenizer = Inheritance.callStatic(Tokenizer, "create1", .{ CommonSeps.getInstance().?.EQUALS });
            const hashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, Inheritance.call(tokenizer2.?, "getTokens", .{ tokens }));
            _ = Inheritance.call(this.keyValuePairs.?, "putAll", .{ hashtable });
        }
        // catch (Exception e):
//             const exceptionMessage: ?*String = String.literal("TransactionResult Constructor Failed"); _ = exceptionMessage;
//             _ = Inheritance.call(this.logUtil.?, "putF", .{ exceptionMessage, this, this.commonStrings.?.CONSTRUCTOR });
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(keyValuePairsParameter: ?*HashMap) *Self {
        var keyValuePairs = keyValuePairsParameter;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        keyValuePairs = keyValuePairs;
        this.result = String.literal("Needs to have the hashmap converted to string for other constructor");
        return this;
    }
    

    pub fn toString(self: *Self) ?*String {
        return self.result;
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        return self.keyValuePairs;
    }
    

    pub fn getAllPossibleKeys(self: *Self) ?*BasicArrayList {
        _ = self;
        const paymentTransactionKeysFactory: ?*PaymentTransactionKeysFactory = Inheritance.upcast(?*PaymentTransactionKeysFactory, PaymentTransactionKeysFactory.getInstance());
        const verisignResponseKeys: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(verisignResponseKeys.?, "add", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.RESULT)) });
        _ = Inheritance.call(verisignResponseKeys.?, "add", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.PNREF)) });
        _ = Inheritance.call(verisignResponseKeys.?, "add", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.RESPMSG)) });
        _ = Inheritance.call(verisignResponseKeys.?, "add", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.AUTHCODE)) });
        _ = Inheritance.call(verisignResponseKeys.?, "add", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.AVSADDR)) });
        _ = Inheritance.call(verisignResponseKeys.?, "add", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.AVSZIP)) });
        _ = Inheritance.call(verisignResponseKeys.?, "add", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.ORIGRESULT)) });
        _ = Inheritance.call(verisignResponseKeys.?, "add", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.STATUS)) });
        _ = Inheritance.call(verisignResponseKeys.?, "add", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.FRAUDCODE)) });
        _ = Inheritance.call(verisignResponseKeys.?, "add", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.FRAUDMSG)) });
        _ = Inheritance.call(verisignResponseKeys.?, "add", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.ERRCODE)) });
        _ = Inheritance.call(verisignResponseKeys.?, "add", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.SCORE)) });
        _ = Inheritance.call(verisignResponseKeys.?, "add", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.REASON1)) });
        _ = Inheritance.call(verisignResponseKeys.?, "add", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.REASON2)) });
        _ = Inheritance.call(verisignResponseKeys.?, "add", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.REASON3)) });
        _ = Inheritance.call(verisignResponseKeys.?, "add", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.EXCEPTION1)) });
        _ = Inheritance.call(verisignResponseKeys.?, "add", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.EXCEPTION2)) });
        _ = Inheritance.call(verisignResponseKeys.?, "add", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.EXCEPTION3)) });
        _ = Inheritance.call(verisignResponseKeys.?, "add", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.EXCEPTION4)) });
        _ = Inheritance.call(verisignResponseKeys.?, "add", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.EXCEPTION5)) });
        _ = Inheritance.call(verisignResponseKeys.?, "add", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.EXCEPTION6)) });
        _ = Inheritance.call(verisignResponseKeys.?, "add", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.EXCEPTION7)) });
        return verisignResponseKeys;
    }
    

    pub fn getValues(self: *Self) ?*BasicArrayList {
        const keyVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, self.getAllPossibleKeys());
        const valueVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const size: i32 = keyVector.?.size();
        {
            var i: i32 = 0;
            while (i < size) : (i += 1) {
            const key: ?*String = Inheritance.cast(?*String, Inheritance.call(keyVector.?, "get", .{ i }));
            if (Inheritance.call(self.keyValuePairs.?, "containsKey", .{ key })) {
                _ = Inheritance.call(valueVector.?, "add", .{ Inheritance.call(self.keyValuePairs.?, "get", .{ key }) });
            } else {
                const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
                _ = Inheritance.call(valueVector.?, "add", .{ stringUtil.?.EMPTY_STRING });
            }
            }
        }
        return valueVector;
    }
    

    pub fn getPnRef(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.keyValuePairs.?, "get", .{ Object.toString(Object.of(PaymentTransactionKeysFactory.getInstance().?.PNREF)) }));
    }
    

    pub fn getRespMsg(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.keyValuePairs.?, "get", .{ Object.toString(Object.of(PaymentTransactionKeysFactory.getInstance().?.RESPMSG)) }));
    }
    

    pub fn getResult(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.keyValuePairs.?, "get", .{ Object.toString(Object.of(PaymentTransactionKeysFactory.getInstance().?.RESULT)) }));
    }
    

    pub fn getScore(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.keyValuePairs.?, "get", .{ Object.toString(Object.of(PaymentTransactionKeysFactory.getInstance().?.SCORE)) }));
    }
    

    pub fn getStatus(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.keyValuePairs.?, "get", .{ Object.toString(Object.of(PaymentTransactionKeysFactory.getInstance().?.STATUS)) }));
    }
    

    pub fn getFraudCode(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.keyValuePairs.?, "get", .{ Object.toString(Object.of(PaymentTransactionKeysFactory.getInstance().?.FRAUDCODE)) }));
    }
    

    pub fn getFraudMsg(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.keyValuePairs.?, "get", .{ Object.toString(Object.of(PaymentTransactionKeysFactory.getInstance().?.FRAUDMSG)) }));
    }
    

    pub fn getOrigResult(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.keyValuePairs.?, "get", .{ Object.toString(Object.of(PaymentTransactionKeysFactory.getInstance().?.ORIGRESULT)) }));
    }
    

    pub fn getAvsAddr(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.keyValuePairs.?, "get", .{ Object.toString(Object.of(PaymentTransactionKeysFactory.getInstance().?.AVSADDR)) }));
    }
    

    pub fn getAvsZip(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.keyValuePairs.?, "get", .{ Object.toString(Object.of(PaymentTransactionKeysFactory.getInstance().?.AVSZIP)) }));
    }
    

    pub fn getErrCode(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.keyValuePairs.?, "get", .{ Object.toString(Object.of(PaymentTransactionKeysFactory.getInstance().?.ERRCODE)) }));
    }
    

    pub fn getException1(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.keyValuePairs.?, "get", .{ Object.toString(Object.of(PaymentTransactionKeysFactory.getInstance().?.EXCEPTION1)) }));
    }
    

    pub fn getException2(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.keyValuePairs.?, "get", .{ Object.toString(Object.of(PaymentTransactionKeysFactory.getInstance().?.EXCEPTION2)) }));
    }
    

    pub fn getException3(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.keyValuePairs.?, "get", .{ Object.toString(Object.of(PaymentTransactionKeysFactory.getInstance().?.EXCEPTION3)) }));
    }
    

    pub fn getException4(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.keyValuePairs.?, "get", .{ Object.toString(Object.of(PaymentTransactionKeysFactory.getInstance().?.EXCEPTION4)) }));
    }
    

    pub fn getException5(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.keyValuePairs.?, "get", .{ Object.toString(Object.of(PaymentTransactionKeysFactory.getInstance().?.EXCEPTION5)) }));
    }
    

    pub fn getException6(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.keyValuePairs.?, "get", .{ Object.toString(Object.of(PaymentTransactionKeysFactory.getInstance().?.EXCEPTION6)) }));
    }
    

    pub fn getException7(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.keyValuePairs.?, "get", .{ Object.toString(Object.of(PaymentTransactionKeysFactory.getInstance().?.EXCEPTION7)) }));
    }
    

    pub fn getReason1(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.keyValuePairs.?, "get", .{ Object.toString(Object.of(PaymentTransactionKeysFactory.getInstance().?.REASON1)) }));
    }
    

    pub fn getReason2(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.keyValuePairs.?, "get", .{ Object.toString(Object.of(PaymentTransactionKeysFactory.getInstance().?.REASON2)) }));
    }
    

    pub fn getReason3(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.keyValuePairs.?, "get", .{ Object.toString(Object.of(PaymentTransactionKeysFactory.getInstance().?.REASON3)) }));
    }
};

