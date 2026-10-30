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
// package org.allbinary.data.tables.context.module.storefronts

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StoreFront = @import("org/allbinary/business/context/modules/storefront/StoreFront.zig").StoreFront;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const UserDbInitInfo = @import("org/allbinary/business/init/db/UserDbInitInfo.zig").UserDbInitInfo;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbSqlBean = @import("org/allbinary/logic/communication/sql/AbSqlBean.zig").AbSqlBean;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StoreFrontsEntityInterface = @import("org/allbinary/data/tables/context/module/storefronts/StoreFrontsEntityInterface.zig").StoreFrontsEntityInterface;

pub const StoreFrontsEntity = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity";
    pub const java_interfaces = .{ StoreFrontsEntityInterface };
    base: AbSqlBean = undefined,
    logUtil: ?*LogUtil = null,
    tableName: ?*String = null,
    // Implements StoreFrontsEntityInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.tableName = String.literal("storefronts");
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
    

    pub fn insert(self: *Self, values: ?*BasicArrayList) void {
        { // try
            _ = Inheritance.call(&self.base, "insert", .{ values });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.SUCCESS, self, INSERT });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, INSERT, e });
//             }
    }
    

    pub fn delete(self: *Self, value: ?*String) void {
        { // try
            _ = Inheritance.call(&self.base, "deleteWhere", .{ StoreFrontData.getInstance().?.NAME, value });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.SUCCESS, self, Inheritance.fieldPointer(self, "commonStrings").*.?.delete });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, Inheritance.fieldPointer(self, "commonStrings").*.?.delete, e });
//             }
    }
    

    // throws Exception
    pub fn getStoreFrontInterface(self: *Self, name: ?*String) ?*StoreFront {
        const keysAndValues: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(keysAndValues.?, "put", .{ StoreFrontData.getInstance().?.NAME, name });
        const storeHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.call(&self.base, "getRow", .{ keysAndValues }));
        if (storeHashMap != null) {
            return Inheritance.callStatic(StoreFront, "create1", .{ storeHashMap });
        } else {
            return StoreFront.create();
        }
    }
    

    pub fn getStoreFrontNames(self: *Self) ?*BasicArrayList {
        const storeFrontNames: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(&self.base, "getColumn", .{ StoreFrontData.getInstance().?.NAME }));
        return storeFrontNames;
    }
    

    pub fn update(self: *Self, updatedValues: ?*HashMap) void {
        _ = Inheritance.call(&self.base, "updateWhere", .{ StoreFrontData.getInstance().?.NAME, Inheritance.cast(?*String, Inheritance.call(updatedValues.?, "get", .{ StoreFrontData.getInstance().?.NAME })), updatedValues });
    }
    

    pub fn createTableStatement(self: *Self) ?*String {
        const storeFrontData: ?*StoreFrontData = Inheritance.upcast(?*StoreFrontData, StoreFrontData.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CREATE_TABLE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.tableName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.START });
        _ = Inheritance.call(stringBuffer.?, "append", .{ storeFrontData.?.NAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.SIXTY_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ storeFrontData.?.HOMEHOSTNAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ storeFrontData.?.HOMEHOSTNAMEPATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ storeFrontData.?.HOSTNAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ storeFrontData.?.HOSTNAMEPATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ storeFrontData.?.TESTHOMEHOSTNAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ storeFrontData.?.TESTHOMEHOSTNAMEPATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ storeFrontData.?.TESTHOSTNAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ storeFrontData.?.TESTHOSTNAMEPATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ storeFrontData.?.IMAGEPATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ storeFrontData.?.STATICPATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ storeFrontData.?.CATEGORYPATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ storeFrontData.?.INVENTORYCONTROL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ storeFrontData.?.CONFIGURATION });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.BLOB_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ storeFrontData.?.SUBSTORES });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ storeFrontData.?.TAGLOCATION });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ storeFrontData.?.PACKAGELOCATION });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ storeFrontData.?.FTP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ storeFrontData.?.FTPPATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ storeFrontData.?.FTPUSERNAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ storeFrontData.?.FTPPASSWORD });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ storeFrontData.?.TESTFTP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ storeFrontData.?.TESTFTPPATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ storeFrontData.?.TESTFTPUSERNAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ storeFrontData.?.TESTFTPPASSWORD });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ EntryData.getInstance().?.TIMECREATED });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(EntryData.getInstance().?, "getInstance").getInstance().?.LASTMODIFIED });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.PRIMARY_KEY });
        _ = Inheritance.call(stringBuffer.?, "append", .{ storeFrontData.?.NAME });
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

