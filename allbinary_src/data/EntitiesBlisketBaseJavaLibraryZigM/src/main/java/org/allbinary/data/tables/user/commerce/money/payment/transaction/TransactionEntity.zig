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
const PaymentTransactionInterface = @import("org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterface.zig").PaymentTransactionInterface;
const PaymentTransactionKeysFactory = @import("org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionKeysFactory.zig").PaymentTransactionKeysFactory;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbSqlBean = @import("org/allbinary/logic/communication/sql/AbSqlBean.zig").AbSqlBean;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const TransactionEntityInterface = @import("org/allbinary/data/tables/user/commerce/money/payment/transaction/TransactionEntityInterface.zig").TransactionEntityInterface;
const Long = @import("java/lang/Long.zig").Long;

pub const TransactionEntity = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntity";
    pub const java_interfaces = .{ TransactionEntityInterface };
    base: AbSqlBean = undefined,
    logUtil: ?*LogUtil = null,
    tableName: ?*String = null,
    // Implements TransactionEntityInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.tableName = String.literal("vtrans");
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
    

    pub fn add(self: *Self, userName: ?*String, orderNumber: ?*String, paymentTransactionInterface: ?*PaymentTransactionInterface) void {
        { // try
            const values: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            _ = Inheritance.call(values.?, "add", .{ orderNumber });
            _ = Inheritance.call(values.?, "add", .{ userName });
            _ = Inheritance.call(values.?, "addAllList", .{ Inheritance.receiver(paymentTransactionInterface.?, "toVector").toVector() });
            const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
            const time: ?*String = Inheritance.callStatic(String, "create1", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() }).?) });
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
    

    pub fn createTableStatement(self: *Self) ?*String {
        const paymentTransactionKeysFactory: ?*PaymentTransactionKeysFactory = Inheritance.upcast(?*PaymentTransactionKeysFactory, PaymentTransactionKeysFactory.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CREATE_TABLE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.tableName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.START });
        _ = Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ OrderData.ID }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ UserData.USERNAME }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.TRXTYPE)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.TENDER)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.ACCT)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.EXPDATE)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.AMT)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.AUTHCODE)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.MICR)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.CHECKNUM)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.NAME)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.STREET)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.CITY)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.STATE)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.ZIP)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.DL)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.EMAIL)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.COMMENT1)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.COMMENT2)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.ORIGID)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.PONUM)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.DESC)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.DESC1TO4)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.INVNUM)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.SHIPTOZIP)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.SWIPE)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.TAXAMT)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.COMMCARD)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.DUTYAMT)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.FREIGHTAMT)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.ORDERDATE)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.TAXEXEMPT)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.COUNTRYCODE)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.CUSTCODE)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.CVV2)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.ABA)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.ACCTTYPE)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.DISCOUNT)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.FIRSTNAME)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.LASTNAME)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.SHIPFROMZIP)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.PRENOTE)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.CHKTYPE)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.DOB)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.PHONENUM)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.SS)) }).?, "append", .{ String.literal(" VARCHAR(30) NOT NULL,") }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.COMPANYNAME)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.COUNTRY)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.SHIPTOCITY)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.SHIPTOFIRSTNAME)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.SHIPTOLASTNAME)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.SHIPTOSTATE)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.SHIPTOSTREET)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.SPECIAL1)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.SPECIAL2)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ Object.toString(Object.of(paymentTransactionKeysFactory.?.SPECIAL3)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ EntryData.getInstance().?.LASTMODIFIED }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL }).?, "append", .{ EntryData.getInstance().?.TIMECREATED }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL }).?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.PRIMARY_KEY }).?, "append", .{ OrderData.ID }).?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.END });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn createTable(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(&self.base, "createTable", .{ self.createTableStatement() }));
    }
    

    pub fn dropTable(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.base.dropTable());
    }
};

