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
// package org.allbinary.data.tables.user.commerce.money.payment

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Calendar = @import("java/util/Calendar.zig").Calendar;
const HashMap = @import("java/util/HashMap.zig").HashMap;
const Random = @import("java/util/Random.zig").Random;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const UserDbInitInfo = @import("org/allbinary/business/init/db/UserDbInitInfo.zig").UserDbInitInfo;
const UserData = @import("org/allbinary/business/user/UserData.zig").UserData;
const Payment = @import("org/allbinary/business/user/commerce/money/payment/Payment.zig").Payment;
const PaymentData = @import("org/allbinary/business/user/commerce/money/payment/PaymentData.zig").PaymentData;
const PaymentInterface = @import("org/allbinary/business/user/commerce/money/payment/PaymentInterface.zig").PaymentInterface;
const PaymentIdGenerator = @import("org/allbinary/data/generator/PaymentIdGenerator.zig").PaymentIdGenerator;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbSqlBean = @import("org/allbinary/logic/communication/sql/AbSqlBean.zig").AbSqlBean;
const SuperCrypt = @import("org/allbinary/logic/control/crypt/SuperCrypt.zig").SuperCrypt;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const PaymentEntityInterface = @import("org/allbinary/data/tables/user/commerce/money/payment/PaymentEntityInterface.zig").PaymentEntityInterface;
const Integer = @import("java/lang/Integer.zig").Integer;
const Long = @import("java/lang/Long.zig").Long;

pub const PaymentEntity = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity";
    pub const java_interfaces = .{ PaymentEntityInterface };
    base: AbSqlBean = undefined,
    logUtil: ?*LogUtil = null,
    tableName: ?*String = null,
    // Implements PaymentEntityInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.tableName = String.literal("payment");
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
    

    pub fn getLastId(self: *Self, userName: ?*String) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(&self.base, "getLargestIntegerInColumnWhere", .{ PaymentData.ID, UserData.USERNAME, userName }));
    }
    

    pub fn setDefault(self: *Self, userName: ?*String, index: ?*Integer) void {
        { // try
            const updateKeyAndValue: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            const whereKeyAndValue: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            _ = Inheritance.call(whereKeyAndValue.?, "put", .{ UserData.USERNAME, userName });
            const paymentInterface: ?*PaymentInterface = Inheritance.upcast(?*PaymentInterface, Inheritance.call(self, "getDefault", .{ userName }));
            if (paymentInterface != null) {
                _ = Inheritance.call(updateKeyAndValue.?, "put", .{ EntryData.getInstance().?.DEFAULT, StringUtil.getInstance().?.EMPTY_STRING });
                _ = Inheritance.call(whereKeyAndValue.?, "put", .{ PaymentData.ID, paymentInterface.?.getId() });
                _ = Inheritance.call(&self.base, "updateWhere", .{ whereKeyAndValue, updateKeyAndValue });
            }
            _ = Inheritance.call(updateKeyAndValue.?, "put", .{ EntryData.getInstance().?.DEFAULT, EntryData.getInstance().?.DEFAULT });
            _ = Inheritance.call(whereKeyAndValue.?, "put", .{ PaymentData.ID, String.valueOf(index.?) });
            _ = Inheritance.call(&self.base, "updateWhere", .{ whereKeyAndValue, updateKeyAndValue });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.SUCCESS, self, String.literal("setDefault") });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, String.literal("setDefault"), e });
//             }
    }
    

    pub fn get(self: *Self, userName: ?*String) ?*BasicArrayList {
        { // try
            const paymentVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            const keyAndValue: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            _ = Inheritance.call(keyAndValue.?, "put", .{ UserData.USERNAME, userName });
            const paymentList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(&self.base, "getRows", .{ keyAndValue }));
            const size: i32 = paymentList.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const paymentHashMap: ?*HashMap = Inheritance.cast(?*HashMap, Inheritance.call(paymentList.?, "get", .{ index }));
                const payment: ?*Payment = Inheritance.callStatic(Payment, "create1", .{ paymentHashMap });
                if (payment != null) {
                    _ = Inheritance.call(paymentVector.?, "add", .{ payment });
                }
                }
            }
            return paymentVector;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, Inheritance.fieldPointer(self, "commonStrings").*.?.GET, e });
//             }
//             return null;
    }
    

    pub fn getDefault(self: *Self, userName: ?*String) ?*PaymentInterface {
        { // try
            var paymentHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            const updateKeyAndValue: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            _ = Inheritance.call(updateKeyAndValue.?, "put", .{ EntryData.getInstance().?.DEFAULT, EntryData.getInstance().?.DEFAULT });
            _ = Inheritance.call(updateKeyAndValue.?, "put", .{ UserData.USERNAME, userName });
            paymentHashMap = Inheritance.upcast(@TypeOf(paymentHashMap), Inheritance.call(&self.base, "getRow", .{ updateKeyAndValue }));
            if (paymentHashMap != null) {
                const payment: ?*Payment = Inheritance.callStatic(Payment, "create1", .{ paymentHashMap });
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.SUCCESS, self, String.literal("getDefault") });
                }
                return Inheritance.cast(?*PaymentInterface, payment);
            } else {
                return null;
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, String.literal("getDefault"), e });
//             }
//             return null;
    }
    

    pub fn remove(self: *Self, userName: ?*String, index: ?*Integer) void {
        { // try
            const whereHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            _ = Inheritance.call(whereHashMap.?, "put", .{ UserData.USERNAME, userName });
            _ = Inheritance.call(whereHashMap.?, "put", .{ PaymentData.ID, Inheritance.cast(?*String, String.valueOf(index.?)) });
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
    

    pub fn add(self: *Self, userName: ?*String, paymentInterface: ?*PaymentInterface) void {
        { // try
            const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(PaymentIdGenerator.create(), "getNext").getNext() });
            _ = Inheritance.call(vector.?, "add", .{ userName });
            _ = Inheritance.call(vector.?, "add", .{ StringUtil.getInstance().?.EMPTY_STRING });
            _ = Inheritance.call(vector.?, "add", .{ paymentInterface.?.getName() });
            _ = Inheritance.call(vector.?, "add", .{ paymentInterface.?.getType() });
            _ = Inheritance.call(vector.?, "add", .{ paymentInterface.?.getExpiration() });
            const random: i32 = Random.create().nextIntBound(SuperCrypt.KEYMAX);
            _ = Inheritance.call(vector.?, "add", .{ Inheritance.call(Inheritance.callStatic(SuperCrypt, "create1", .{ random }), "encrypt", .{ paymentInterface.?.getNumber() }) });
            _ = Inheritance.call(vector.?, "add", .{ String.valueOf(Inheritance.callStatic(Integer, "create1", .{ random }).?) });
            const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
            const time: ?*String = Inheritance.callStatic(String, "create1", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() }).?) });
            _ = Inheritance.call(vector.?, "add", .{ time });
            _ = Inheritance.call(&self.base, "insert", .{ vector });
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
        const entryData: ?*EntryData = Inheritance.upcast(?*EntryData, EntryData.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CREATE_TABLE }).?, "append", .{ self.tableName }).?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.START }).?, "append", .{ PaymentData.ID }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL }).?, "append", .{ UserData.USERNAME }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ entryData.?.DEFAULT }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ PaymentData.NAME }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ PaymentData.TYPE }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ PaymentData.EXPIRATION }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ PaymentData.NUMBER }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ entryData.?.ENCRYPTION }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL }).?, "append", .{ entryData.?.TIMECREATED }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL }).?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.PRIMARY_KEY }).?, "append", .{ PaymentData.ID }).?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.END });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn createTable(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(&self.base, "createTable", .{ self.createTableStatement() }));
    }
    

    pub fn drop(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.base.dropTable());
    }
};

