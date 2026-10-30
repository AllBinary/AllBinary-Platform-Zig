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
// package org.allbinary.business.installer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const InitInfoEntity = @import("org/allbinary/business/init/InitInfoEntity.zig").InitInfoEntity;
const DatabaseConnectionInfoInterface = @import("org/allbinary/business/init/db/DatabaseConnectionInfoInterface.zig").DatabaseConnectionInfoInterface;
const DbConnectionInfo = @import("org/allbinary/business/init/db/DbConnectionInfo.zig").DbConnectionInfo;
const HistoryDbInitInfo = @import("org/allbinary/business/init/db/HistoryDbInitInfo.zig").HistoryDbInitInfo;
const InventoryDbInitInfo = @import("org/allbinary/business/init/db/InventoryDbInitInfo.zig").InventoryDbInitInfo;
const LogDbInitInfo = @import("org/allbinary/business/init/db/LogDbInitInfo.zig").LogDbInitInfo;
const StaticPagesDbInitInfo = @import("org/allbinary/business/init/db/StaticPagesDbInitInfo.zig").StaticPagesDbInitInfo;
const UserDbInitInfo = @import("org/allbinary/business/init/db/UserDbInitInfo.zig").UserDbInitInfo;
const StoreFrontsEntityFactory = @import("org/allbinary/data/tables/context/module/storefronts/StoreFrontsEntityFactory.zig").StoreFrontsEntityFactory;
const LogTableEntityFactory = @import("org/allbinary/data/tables/log/LogTableEntityFactory.zig").LogTableEntityFactory;
const StaticPagesEntityFactory = @import("org/allbinary/data/tables/staticpages/StaticPagesEntityFactory.zig").StaticPagesEntityFactory;
const TransformInfoEntityBuilder = @import("org/allbinary/data/tables/transform/info/TransformInfoEntityBuilder.zig").TransformInfoEntityBuilder;
const UserEntityFactory = @import("org/allbinary/data/tables/user/UserEntityFactory.zig").UserEntityFactory;
const BillingAddressesEntityFactory = @import("org/allbinary/data/tables/user/address/billing/BillingAddressesEntityFactory.zig").BillingAddressesEntityFactory;
const ShippingAddressesEntityFactory = @import("org/allbinary/data/tables/user/address/shipping/ShippingAddressesEntityFactory.zig").ShippingAddressesEntityFactory;
const InventoryEntityFactory = @import("org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory.zig").InventoryEntityFactory;
const OrderHistoryEntityFactory = @import("org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityFactory.zig").OrderHistoryEntityFactory;
const OrderItemsEntityFactory = @import("org/allbinary/data/tables/user/commerce/inventory/order/OrderItemsEntityFactory.zig").OrderItemsEntityFactory;
const PaymentEntityFactory = @import("org/allbinary/data/tables/user/commerce/money/payment/PaymentEntityFactory.zig").PaymentEntityFactory;
const PaymentGatewayEntityFactory = @import("org/allbinary/data/tables/user/commerce/money/payment/gateway/PaymentGatewayEntityFactory.zig").PaymentGatewayEntityFactory;
const TransactionEntityFactory = @import("org/allbinary/data/tables/user/commerce/money/payment/transaction/TransactionEntityFactory.zig").TransactionEntityFactory;
const TransactionResultEntityFactory = @import("org/allbinary/data/tables/user/commerce/money/payment/transaction/TransactionResultEntityFactory.zig").TransactionResultEntityFactory;
const QuoteRequestEntityFactory = @import("org/allbinary/data/tables/user/quoterequest/QuoteRequestEntityFactory.zig").QuoteRequestEntityFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbDatabaseManagement = @import("org/allbinary/logic/communication/sql/AbDatabaseManagement.zig").AbDatabaseManagement;
const AbDataOutputStream = @import("org/allbinary/logic/io/AbDataOutputStream.zig").AbDataOutputStream;
const DataOutputStreamFactory = @import("org/allbinary/logic/io/DataOutputStreamFactory.zig").DataOutputStreamFactory;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const FileFactory = @import("org/allbinary/logic/io/file/FileFactory.zig").FileFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

//Warning you must have sql root access
pub const InitDbCrypted = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.installer.InitDbCrypted";
    base: AbDatabaseManagement = undefined,
    logUtil: ?*LogUtil = null,
    userDbInitInfo: ?*UserDbInitInfo = null,
    inventoryDbInitInfo: ?*InventoryDbInitInfo = null,
    historyDbInitInfo: ?*HistoryDbInitInfo = null,
    staticpagesDbInitInfo: ?*StaticPagesDbInitInfo = null,
    logDbInitInfo: ?*LogDbInitInfo = null,
    SQL_FILE: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.userDbInitInfo = null;
        this.inventoryDbInitInfo = null;
        this.historyDbInitInfo = null;
        this.staticpagesDbInitInfo = null;
        this.logDbInitInfo = null;
        this.SQL_FILE = String.literal("initWeblisket.sql");
    }
    

    pub fn create1(databaseConnectionInfoInterface: ?*DatabaseConnectionInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbDatabaseManagement, "create1", .{ Inheritance.cast(?*DbConnectionInfo, databaseConnectionInfoInterface) }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn addUsers(self: *Self) ?*Boolean {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, Inheritance.fieldPointer(self, "METHOD_ADD_USERS").* });
            self.userDbInitInfo = UserDbInitInfo.create();
            self.inventoryDbInitInfo = InventoryDbInitInfo.create();
            self.historyDbInitInfo = HistoryDbInitInfo.create();
            self.staticpagesDbInitInfo = StaticPagesDbInitInfo.create();
            self.logDbInitInfo = LogDbInitInfo.create();
            const CUSTOMERDB: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.userDbInitInfo.?, "getName").getName());
            const CUSTOMERDBUSER: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.userDbInitInfo.?, "getUserName").getUserName());
            const CUSTOMERDBPASSWORD: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.userDbInitInfo.?, "getPassword").getPassword());
            if (!Inheritance.call(self, "addDbUser", .{ CUSTOMERDB, CUSTOMERDBUSER, CUSTOMERDBPASSWORD })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(Inheritance.fieldPointer(self, "UNABLE_TO_CREATE_USER").*, CUSTOMERDBUSER), self, Inheritance.fieldPointer(self, "METHOD_ADD_USERS").* });
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            const INVENTORYDB: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.inventoryDbInitInfo.?, "getName").getName());
            const INVENTORYDBUSER: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.inventoryDbInitInfo.?, "getUserName").getUserName());
            const INVENTORYDBPASSWORD: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.inventoryDbInitInfo.?, "getPassword").getPassword());
            if (!Inheritance.call(self, "addDbUser", .{ INVENTORYDB, INVENTORYDBUSER, INVENTORYDBPASSWORD })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(Inheritance.fieldPointer(self, "UNABLE_TO_CREATE_USER").*, INVENTORYDBUSER), self, Inheritance.fieldPointer(self, "METHOD_ADD_USERS").* });
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            const HISTORYDB: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.historyDbInitInfo.?, "getName").getName());
            const HISTORYDBUSER: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.historyDbInitInfo.?, "getUserName").getUserName());
            const HISTORYDBPASSWORD: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.historyDbInitInfo.?, "getPassword").getPassword());
            if (!Inheritance.call(self, "addDbUser", .{ HISTORYDB, HISTORYDBUSER, HISTORYDBPASSWORD })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(Inheritance.fieldPointer(self, "UNABLE_TO_CREATE_USER").*, HISTORYDBUSER), self, Inheritance.fieldPointer(self, "METHOD_ADD_USERS").* });
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            const STATICPAGESDB: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.staticpagesDbInitInfo.?, "getName").getName());
            const STATICPAGESDBUSER: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.staticpagesDbInitInfo.?, "getUserName").getUserName());
            const STATICPAGESDBPASSWORD: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.staticpagesDbInitInfo.?, "getPassword").getPassword());
            if (!Inheritance.call(self, "addDbUser", .{ STATICPAGESDB, STATICPAGESDBUSER, STATICPAGESDBPASSWORD })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(Inheritance.fieldPointer(self, "UNABLE_TO_CREATE_USER").*, STATICPAGESDBUSER), self, Inheritance.fieldPointer(self, "METHOD_ADD_USERS").* });
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            const LOGDB: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.logDbInitInfo.?, "getName").getName());
            const LOGDBUSER: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.logDbInitInfo.?, "getUserName").getUserName());
            const LOGDBPASSWORD: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.logDbInitInfo.?, "getPassword").getPassword());
            if (!Inheritance.call(self, "addDbUser", .{ LOGDB, LOGDBUSER, LOGDBPASSWORD })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(Inheritance.fieldPointer(self, "UNABLE_TO_CREATE_USER").*, LOGDBUSER), self, Inheritance.fieldPointer(self, "METHOD_ADD_USERS").* });
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.END, self, Inheritance.fieldPointer(self, "METHOD_ADD_USERS").* });
            return Inheritance.upcast(?*Boolean, Boolean.TRUE);
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "METHOD_ADD_USERS").*, e });
//             return Inheritance.upcast(?*Boolean, Boolean.TRUE);
    }
    

    pub fn addDatabases(self: *Self) ?*Boolean {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, Inheritance.fieldPointer(self, "METHOD_ADD_DATABASES").* });
            self.userDbInitInfo = UserDbInitInfo.create();
            self.inventoryDbInitInfo = InventoryDbInitInfo.create();
            self.historyDbInitInfo = HistoryDbInitInfo.create();
            self.staticpagesDbInitInfo = StaticPagesDbInitInfo.create();
            self.logDbInitInfo = LogDbInitInfo.create();
            const CUSTOMERDB: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.userDbInitInfo.?, "getName").getName());
            if (!Inheritance.call(self, "addDb", .{ CUSTOMERDB })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(Inheritance.fieldPointer(self, "UNABLE_TO_CREATE_DATABASE").*, CUSTOMERDB), self, Inheritance.fieldPointer(self, "METHOD_ADD_DATABASES").* });
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            const INVENTORYDB: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.inventoryDbInitInfo.?, "getName").getName());
            if (!Inheritance.call(self, "addDb", .{ INVENTORYDB })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(Inheritance.fieldPointer(self, "UNABLE_TO_CREATE_DATABASE").*, INVENTORYDB), self, Inheritance.fieldPointer(self, "METHOD_ADD_DATABASES").* });
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            const HISTORYDB: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.historyDbInitInfo.?, "getName").getName());
            if (!Inheritance.call(self, "addDb", .{ HISTORYDB })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(Inheritance.fieldPointer(self, "UNABLE_TO_CREATE_DATABASE").*, HISTORYDB), self, Inheritance.fieldPointer(self, "METHOD_ADD_DATABASES").* });
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            const STATICPAGESDB: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.staticpagesDbInitInfo.?, "getName").getName());
            if (!Inheritance.call(self, "addDb", .{ STATICPAGESDB })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(Inheritance.fieldPointer(self, "UNABLE_TO_CREATE_DATABASE").*, STATICPAGESDB), self, Inheritance.fieldPointer(self, "METHOD_ADD_DATABASES").* });
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            const LOGDB: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.logDbInitInfo.?, "getName").getName());
            if (!Inheritance.call(self, "addDb", .{ LOGDB })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(Inheritance.fieldPointer(self, "UNABLE_TO_CREATE_DATABASE").*, LOGDB), self, Inheritance.fieldPointer(self, "METHOD_ADD_DATABASES").* });
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            const file: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.call(FileFactory.getInstance().?, "getInstance", .{ self.SQL_FILE }));
            _ = file.?.createNewFile();
            const idOutData: ?*AbDataOutputStream = Inheritance.upcast(?*AbDataOutputStream, Inheritance.call(DataOutputStreamFactory.getInstance().?, "getInstanceForAbFile", .{ file }));
            _ = Inheritance.call(idOutData.?, "writeBytes", .{ Object.toString(Object.of(Inheritance.fieldPointer(self, "sqlCommandLog").*)) });
            return Inheritance.upcast(?*Boolean, Boolean.TRUE);
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "METHOD_ADD_DATABASES").*, e });
//             return Inheritance.upcast(?*Boolean, Boolean.TRUE);
    }
    

    pub fn addTables(self: *Self) ?*Boolean {
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, Inheritance.fieldPointer(self, "METHOD_ADD_TABLES").* });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(UserEntityFactory.getInstance().?, "createTable").createTable() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.receiverOf(StoreFrontsEntityFactory.getInstance().?, "getStoreFrontsEntityInstance").getStoreFrontsEntityInstance().?, "createTable").createTable() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.call(BillingAddressesEntityFactory.getInstance().?, "getInstance", .{ Inheritance.fieldPointer(self, "stringUtil").*.?.EMPTY_STRING }).?, "createTable").createTable() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.call(ShippingAddressesEntityFactory.getInstance().?, "getInstance", .{ Inheritance.fieldPointer(self, "stringUtil").*.?.EMPTY_STRING }).?, "createTable").createTable() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.receiverOf(PaymentEntityFactory.getInstance().?, "getPaymentEntityInstance").getPaymentEntityInstance().?, "createTable").createTable() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.receiverOf(QuoteRequestEntityFactory.getInstance().?, "getQuoteRequestEntityInstance").getQuoteRequestEntityInstance().?, "createTable").createTable() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(OrderHistoryEntityFactory.getInstance().?, "createTable").createTable() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(OrderItemsEntityFactory.getInstance().?, "createTable").createTable() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.receiverOf(TransactionEntityFactory.getInstance().?, "getTransactionEntityInstance").getTransactionEntityInstance().?, "createTable").createTable() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.receiverOf(TransactionResultEntityFactory.getInstance().?, "getTransactionResultEntityInstance").getTransactionResultEntityInstance().?, "createTable").createTable() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(PaymentGatewayEntityFactory.getInstance().?, "createTable").createTable() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.receiverOf(InventoryEntityFactory.getInstance().?, "getInventoryEntityInstance").getInventoryEntityInstance().?, "createTable").createTable() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(InitInfoEntity.create(), "createTable").createTable() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.receiverOf(LogTableEntityFactory.getInstance().?, "getLogTableEntityInstance").getLogTableEntityInstance().?, "createTable").createTable() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.receiverOf(StaticPagesEntityFactory.getInstance().?, "getStaticPagesEntityInstance").getStaticPagesEntityInstance().?, "createTable").createTable() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(TransformInfoEntityBuilder.getInstance().?, "createTable").createTable() });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(ADD_TABLES_RESULTS_LABEL, Object.toString(Object.of(stringBuffer))), self, Inheritance.fieldPointer(self, "METHOD_ADD_TABLES").* });
            return Inheritance.upcast(?*Boolean, Boolean.TRUE);
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "METHOD_ADD_TABLES").*, e });
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
};

