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
// package org.allbinary.data.tables.user.commerce.money.payment.gateway

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Calendar = @import("java/util/Calendar.zig").Calendar;
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const UserDbInitInfo = @import("org/allbinary/business/init/db/UserDbInitInfo.zig").UserDbInitInfo;
const UserData = @import("org/allbinary/business/user/UserData.zig").UserData;
const PaymentData = @import("org/allbinary/business/user/commerce/money/payment/PaymentData.zig").PaymentData;
const PaymentGatewayData = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData.zig").PaymentGatewayData;
const PaymentGatewayEncryptedMapping = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayEncryptedMapping.zig").PaymentGatewayEncryptedMapping;
const PaymentGatewayInterface = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterface.zig").PaymentGatewayInterface;
const PaymentGatewayInterfaceFactory = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterfaceFactory.zig").PaymentGatewayInterfaceFactory;
const BasicPaymentType = @import("org/allbinary/business/user/commerce/money/payment/types/BasicPaymentType.zig").BasicPaymentType;
const BasicPaymentTypeUtil = @import("org/allbinary/business/user/commerce/money/payment/types/BasicPaymentTypeUtil.zig").BasicPaymentTypeUtil;
const PaymentGatewayIdGenerator = @import("org/allbinary/data/generator/PaymentGatewayIdGenerator.zig").PaymentGatewayIdGenerator;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbSqlBean = @import("org/allbinary/logic/communication/sql/AbSqlBean.zig").AbSqlBean;
const SuperCrypt = @import("org/allbinary/logic/control/crypt/SuperCrypt.zig").SuperCrypt;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const PaymentGatewayEntityInterface = @import("org/allbinary/data/tables/user/commerce/money/payment/gateway/PaymentGatewayEntityInterface.zig").PaymentGatewayEntityInterface;
const Long = @import("java/lang/Long.zig").Long;

pub const PaymentGatewayEntity = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity";
    pub const java_interfaces = .{ PaymentGatewayEntityInterface };
    base: AbSqlBean = undefined,
    logUtil: ?*LogUtil = null,
    tableName: ?*String = null,
    // Implements PaymentGatewayEntityInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.tableName = String.literal("paymentgateways");
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbSqlBean, "create1", .{ UserDbInitInfo.create() }).*;
        this.initFields();
        _ = Inheritance.call(this, "setTableName", .{ this.tableName });
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR, this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn add(self: *Self, paymentGatewayInterface: ?*PaymentGatewayInterface) void {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, String.literal("add") });
            }
            const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(PaymentGatewayIdGenerator.create(), "getNext").getNext() });
            _ = Inheritance.call(vector.?, "addAllList", .{ Inheritance.callStatic(PaymentGatewayEncryptedMapping, "create1", .{ paymentGatewayInterface }).toVector() });
            const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
            const time: ?*String = Inheritance.callStatic(String, "create1", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() }).?) });
            _ = Inheritance.call(vector.?, "add", .{ time });
            _ = Inheritance.call(vector.?, "add", .{ time });
            _ = Inheritance.call(&self.base, "insert", .{ vector });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.END, self, String.literal("add") });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, String.literal("add"), e });
//             }
    }
    

    pub fn update(self: *Self, paymentGatewayInterface: ?*PaymentGatewayInterface) void {
        { // try
            const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
            const time: ?*String = Inheritance.callStatic(String, "create1", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() }).?) });
            _ = Inheritance.call(paymentGatewayInterface.?, "setLastModified", .{ time });
            const whereKeyValuePairs: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            _ = Inheritance.call(whereKeyValuePairs.?, "put", .{ Object.toString(Object.of(StoreFrontData.getInstance().?.NAME)), Inheritance.receiver(paymentGatewayInterface.?, "getStoreName").getStoreName() });
            _ = Inheritance.call(whereKeyValuePairs.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.NAME)), Inheritance.receiver(paymentGatewayInterface.?, "getName").getName() });
            if (Inheritance.call(whereKeyValuePairs.?, "get", .{ EntryData.getInstance().?.TIMECREATED }) != null) {
                std.debug.panic("{any}", .{exception: { _ = String.literal("Don't update TimeCreated for update"); break :exception error.Exception; }});
            }
            const updateHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.callStatic(PaymentGatewayEncryptedMapping, "create1", .{ paymentGatewayInterface }).toHashMap());
            _ = Inheritance.call(&self.base, "updateWhere", .{ whereKeyValuePairs, updateHashMap });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.SUCCESS, self, String.literal("update") });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, String.literal("update"), e });
//             }
    }
    

    pub fn getPaymentGatewayInterface(self: *Self, storeName: ?*String, paymentType: ?*BasicPaymentType) ?*PaymentGatewayInterface {
        { // try
            var paymentGatewayHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            const whereKeyAndValue: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            _ = Inheritance.call(whereKeyAndValue.?, "put", .{ Object.toString(Object.of(StoreFrontData.getInstance().?.NAME)), storeName });
            _ = Inheritance.call(whereKeyAndValue.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.NAME)), paymentType.?.getName() });
            paymentGatewayHashMap = Inheritance.upcast(@TypeOf(paymentGatewayHashMap), Inheritance.call(&self.base, "getRow", .{ whereKeyAndValue }));
            if (paymentGatewayHashMap != null) {
                const userName: ?*String = Inheritance.cast(?*String, Inheritance.call(paymentGatewayHashMap.?, "get", .{ Object.toString(Object.of(UserData.USERNAME)) }));
                const password: ?*String = Inheritance.cast(?*String, Inheritance.call(paymentGatewayHashMap.?, "get", .{ Object.toString(Object.of(UserData.PASSWORD)) }));
                const special1: ?*String = Inheritance.cast(?*String, Inheritance.call(paymentGatewayHashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL1)) }));
                const special2: ?*String = Inheritance.cast(?*String, Inheritance.call(paymentGatewayHashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL2)) }));
                const special3: ?*String = Inheritance.cast(?*String, Inheritance.call(paymentGatewayHashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL3)) }));
                const special4: ?*String = Inheritance.cast(?*String, Inheritance.call(paymentGatewayHashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL4)) }));
                const special5: ?*String = Inheritance.cast(?*String, Inheritance.call(paymentGatewayHashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL5)) }));
                const special6: ?*String = Inheritance.cast(?*String, Inheritance.call(paymentGatewayHashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL6)) }));
                const special7: ?*String = Inheritance.cast(?*String, Inheritance.call(paymentGatewayHashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL7)) }));
                const special8: ?*String = Inheritance.cast(?*String, Inheritance.call(paymentGatewayHashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL8)) }));
                const special9: ?*String = Inheritance.cast(?*String, Inheritance.call(paymentGatewayHashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL9)) }));
                const superCrypt: ?*SuperCrypt = Inheritance.callStatic(SuperCrypt, "create1", .{ PaymentGatewayData.CRYPTNUM });
                _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(UserData.USERNAME)), Inheritance.call(superCrypt.?, "decrypt", .{ userName }) });
                _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(UserData.PASSWORD)), Inheritance.call(superCrypt.?, "decrypt", .{ password }) });
                _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL1)), Inheritance.call(superCrypt.?, "decrypt", .{ special1 }) });
                _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL2)), Inheritance.call(superCrypt.?, "decrypt", .{ special2 }) });
                _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL3)), Inheritance.call(superCrypt.?, "decrypt", .{ special3 }) });
                _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL4)), Inheritance.call(superCrypt.?, "decrypt", .{ special4 }) });
                _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL5)), Inheritance.call(superCrypt.?, "decrypt", .{ special5 }) });
                _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL6)), Inheritance.call(superCrypt.?, "decrypt", .{ special6 }) });
                _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL7)), Inheritance.call(superCrypt.?, "decrypt", .{ special7 }) });
                _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL8)), Inheritance.call(superCrypt.?, "decrypt", .{ special8 }) });
                _ = Inheritance.call(paymentGatewayHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL9)), Inheritance.call(superCrypt.?, "decrypt", .{ special9 }) });
                const paymentGatewayInterface: ?*PaymentGatewayInterface = Inheritance.upcast(?*PaymentGatewayInterface, Inheritance.call(PaymentGatewayInterfaceFactory.create(), "getInstance", .{ paymentGatewayHashMap }));
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.SUCCESS, self, String.literal("getPaymentGatewayInterface()") });
                }
                return paymentGatewayInterface;
            } else {
                return Inheritance.upcast(?*PaymentGatewayInterface, Inheritance.call(PaymentGatewayInterfaceFactory.create(), "getInstance", .{ paymentType }));
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(String.literal("Command Failed for paymentType: "), paymentType.?.getName()), self, String.literal("getPaymentGatewayInterface"), e });
//             }
//             return null;
    }
    

    pub fn findPaymentTypeVectorByStore(self: *Self, storeName: ?*String) ?*BasicArrayList {
        { // try
            var paymentGatewayNameVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            paymentGatewayNameVector = Inheritance.upcast(@TypeOf(paymentGatewayNameVector), Inheritance.call(&self.base, "getColumnWhere", .{ Object.toString(Object.of(PaymentGatewayData.NAME)), Object.toString(Object.of(StoreFrontData.getInstance().?.NAME)), storeName }));
            if (paymentGatewayNameVector != null) {
                const paymentGatewayVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
                const size: i32 = paymentGatewayNameVector.?.size();
                {
                    var i: i32 = 0;
                    while (i < size) : (i += 1) {
                    const paymentTypeString: ?*String = Inheritance.cast(?*String, Inheritance.call(paymentGatewayNameVector.?, "get", .{ i }));
                    const paymentType: ?*BasicPaymentType = Inheritance.upcast(?*BasicPaymentType, Inheritance.call(BasicPaymentTypeUtil.getInstance().?, "get", .{ paymentTypeString }));
                    _ = Inheritance.call(paymentGatewayVector.?, "add", .{ paymentType });
                    }
                }
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.SUCCESS, self, String.literal("findPaymentTypeVectorByStore()") });
                }
                return paymentGatewayVector;
            } else {
                return Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, String.literal("findPaymentTypeVectorByStore"), e });
//             }
//             return null;
    }
    

    pub fn remove(self: *Self, storeName: ?*String, paymentType: ?*BasicPaymentType) void {
        { // try
            const whereHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            _ = Inheritance.call(whereHashMap.?, "put", .{ Object.toString(Object.of(StoreFrontData.getInstance().?.NAME)), storeName });
            _ = Inheritance.call(whereHashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.NAME)), paymentType.?.getName() });
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
    

    pub fn createTableStatement(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CREATE_TABLE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.tableName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.START });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.ID)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ EntryData.getInstance().?.ENABLE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ StoreFrontData.getInstance().?.NAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.NAME)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ PaymentData.METHOD });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.MODE)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.TESTPROTOCOL)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.TESTSERVER)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.TESTPORT)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.TESTPATH)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.SERVERPROTOCOL)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.SERVER)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.SERVERPORT)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.SERVERPATH)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ UserData.USERNAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ UserData.PASSWORD });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.TIMEOUT)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.PROXYPROTOCOL)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.PROXYSERVER)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.PROXYPORT)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.PROXYPATH)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.PROXYUSERNAME)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.PROXYPASSWORD)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.PROXYTIMEOUT)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL1)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL2)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL3)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL4)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL5)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL6)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL7)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL8)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.SPECIAL9)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ EntryData.getInstance().?.LASTMODIFIED });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ EntryData.getInstance().?.TIMECREATED });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.PRIMARY_KEY });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(PaymentGatewayData.ID)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.END });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn createTable(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(&self.base, "createTable", .{ self.createTableStatement() }));
    }
    

    pub fn dropTable(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.base.dropTable());
    }
};

