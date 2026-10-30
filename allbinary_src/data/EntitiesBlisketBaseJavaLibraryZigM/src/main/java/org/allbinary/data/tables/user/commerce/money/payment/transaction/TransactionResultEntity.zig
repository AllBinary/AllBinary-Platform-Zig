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
// package org.allbinary.data.tables.user.commerce.money.payment.transaction

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Calendar = @import("java/util/Calendar.zig").Calendar;
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const UserDbInitInfo = @import("org/allbinary/business/init/db/UserDbInitInfo.zig").UserDbInitInfo;
const UserData = @import("org/allbinary/business/user/UserData.zig").UserData;
const OrderData = @import("org/allbinary/business/user/commerce/inventory/order/OrderData.zig").OrderData;
const PaymentTransactionKeysFactory = @import("org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionKeysFactory.zig").PaymentTransactionKeysFactory;
const TransactionResult = @import("org/allbinary/business/user/commerce/money/payment/gateway/transaction/TransactionResult.zig").TransactionResult;
const TransactionResultInterface = @import("org/allbinary/business/user/commerce/money/payment/gateway/transaction/TransactionResultInterface.zig").TransactionResultInterface;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbSqlBean = @import("org/allbinary/logic/communication/sql/AbSqlBean.zig").AbSqlBean;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const TransactionResultEntityInterface = @import("org/allbinary/data/tables/user/commerce/money/payment/transaction/TransactionResultEntityInterface.zig").TransactionResultEntityInterface;
const Long = @import("java/lang/Long.zig").Long;

pub const TransactionResultEntity = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntity";
    pub const java_interfaces = .{ TransactionResultEntityInterface };
    base: AbSqlBean = undefined,
    logUtil: ?*LogUtil = null,
    tableName: ?*String = null,
    // Implements TransactionResultEntityInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.tableName = String.literal("vresults");
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbSqlBean, "create1", .{ UserDbInitInfo.create() }).*;
        this.initFields();
        _ = Inheritance.call(this, "setTableName", .{ this.tableName });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn remove(self: *Self, userName: ?*String, orderNumber: ?*String) void {
        { // try
            const whereHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            _ = Inheritance.call(whereHashMap.?, "put", .{ OrderData.ID, Inheritance.cast(?*String, orderNumber) });
            _ = Inheritance.call(whereHashMap.?, "put", .{ UserData.USERNAME, userName });
            _ = Inheritance.call(&self.base, "deleteWhere", .{ whereHashMap });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.SUCCESS, self, String.literal("remove") });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, String.literal("remove"), e });
//             }
    }
    

    pub fn add(self: *Self, userName: ?*String, orderNumber: ?*String, transactionResultInterface: ?*TransactionResultInterface) void {
        { // try
            const values: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            _ = Inheritance.call(values.?, "add", .{ orderNumber });
            _ = Inheritance.call(values.?, "add", .{ userName });
            _ = Inheritance.call(values.?, "addAllList", .{ transactionResultInterface.?.getValues() });
            const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
            const time: ?*String = Inheritance.upcast(?*String, String.valueOf(Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() }).?));
            _ = Inheritance.call(values.?, "add", .{ time });
            _ = Inheritance.call(values.?, "add", .{ time });
            _ = Inheritance.call(&self.base, "insert", .{ values });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.SUCCESS, self, String.literal("add") });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, String.literal("add"), e });
//             }
    }
    

    pub fn getTransactionResultInterface(self: *Self, orderNumber: ?*String) ?*TransactionResultInterface {
        { // try
            var resultHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            const updateKeyAndValue: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            _ = Inheritance.call(updateKeyAndValue.?, "put", .{ OrderData.ID, orderNumber });
            resultHashMap = Inheritance.upcast(@TypeOf(resultHashMap), Inheritance.call(&self.base, "getRow", .{ updateKeyAndValue }));
            if (resultHashMap != null) {
                const transactionResult: ?*TransactionResult = Inheritance.callStatic(TransactionResult, "create1", .{ resultHashMap });
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.SUCCESS, self, String.literal("getTransactionResultInterface") });
                }
                return Inheritance.cast(?*TransactionResultInterface, transactionResult);
            } else {
                return null;
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, String.literal("getTransactionResultInterface"), e });
//             }
//             return null;
    }
    

    pub fn createTableStatement(self: *Self) ?*String {
        const paymentTransactionKeysFactory: ?*PaymentTransactionKeysFactory = Inheritance.upcast(?*PaymentTransactionKeysFactory, PaymentTransactionKeysFactory.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CREATE_TABLE }).?, "append", .{ self.tableName }).?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.START }).?, "append", .{ OrderData.ID }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ UserData.USERNAME }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.RESULT)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_INT_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.PNREF)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.TWELVE_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.RESPMSG)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.BLOB_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.AUTHCODE)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.SIX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.AVSADDR)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.ONE_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.AVSZIP)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.ONE_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.ORIGRESULT)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.STATUS)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.FRAUDCODE)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.TWO_INT_NOT_NULL });
        _ = Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.FRAUDMSG)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_INT_NOT_NULL });
        _ = Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.ERRCODE)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_INT_NOT_NULL });
        _ = Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.SCORE)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.THREE_INT_NOT_NULL });
        _ = Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.REASON1)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.FOUR_INT_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.REASON2)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.FOUR_INT_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.REASON3)) });
        _ = Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.FOUR_INT_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.EXCEPTION1)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.FOUR_INT_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.EXCEPTION2)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.FOUR_INT_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.EXCEPTION3)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.FOUR_INT_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.EXCEPTION4)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.FOUR_INT_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.EXCEPTION5)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.FOUR_INT_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.EXCEPTION6)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.FOUR_INT_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.EXCEPTION7)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.FOUR_INT_NOT_NULL }).?, "append", .{ EntryData.getInstance().?.LASTMODIFIED }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL }).?, "append", .{ EntryData.getInstance().?.TIMECREATED }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL }).?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.PRIMARY_KEY }).?, "append", .{ OrderData.ID }).?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.END });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn createTable(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(&self.base, "createTable", .{ self.createTableStatement() }));
    }
    

    pub fn dropTable(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.base.dropTable());
    }
};

