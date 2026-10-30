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
// package org.allbinary.data.tables.user.quoterequest

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const UserDbInitInfo = @import("org/allbinary/business/init/db/UserDbInitInfo.zig").UserDbInitInfo;
const QuoteRequestData = @import("org/allbinary/business/quoterequest/QuoteRequestData.zig").QuoteRequestData;
const UserData = @import("org/allbinary/business/user/UserData.zig").UserData;
const QuoteRequest = @import("org/allbinary/business/user/quoterequest/QuoteRequest.zig").QuoteRequest;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbSqlBean = @import("org/allbinary/logic/communication/sql/AbSqlBean.zig").AbSqlBean;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const QuoteRequestEntityInterface = @import("org/allbinary/data/tables/user/quoterequest/QuoteRequestEntityInterface.zig").QuoteRequestEntityInterface;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const QuoteRequestEntity = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity";
    pub const java_interfaces = .{ QuoteRequestEntityInterface };
    base: AbSqlBean = undefined,
    logUtil: ?*LogUtil = null,
    tableName: ?*String = null,
    // Implements QuoteRequestEntityInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.tableName = String.literal("quoterequest");
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
    

    // throws Exception
    pub fn get(self: *Self, userName: ?*String, id: i32) ?*QuoteRequest {
        const row: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(row.?, "put", .{ UserData.USERNAME, userName });
        _ = Inheritance.call(row.?, "put", .{ QuoteRequestData.getInstance().?.ID, String.valueOf(id) });
        const quoteRequestHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.call(&self.base, "getRow", .{ row }));
        if (quoteRequestHashMap != null) {
            return Inheritance.callStatic(QuoteRequest, "create1", .{ quoteRequestHashMap });
        } else {
            return null;
        }
    }
    

    pub fn getIds(self: *Self, userName: ?*String) ?*BasicArrayList {
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(&self.base, "getColumnWhere", .{ QuoteRequestData.getInstance().?.ID, UserData.USERNAME, userName }));
    }
    

    pub fn deleteWhere(self: *Self, key: ?*String, value: ?*String) void {
        { // try
            _ = Inheritance.call(&self.base, "deleteWhere", .{ key, value });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.SUCCESS, self, String.literal("deleteWhere") });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, String.literal("deleteWhere"), e });
//             }
    }
    

    pub fn createTableStatement(self: *Self) ?*String {
        const quoteRequestData: ?*QuoteRequestData = Inheritance.upcast(?*QuoteRequestData, QuoteRequestData.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CREATE_TABLE }).?, "append", .{ self.tableName }).?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.START });
        _ = Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ quoteRequestData.?.ID }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ UserData.USERNAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ quoteRequestData.?.PROJECT_INFO });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.BLOB_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ quoteRequestData.?.CUSTOMER_COMMENTS });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.BLOB_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ quoteRequestData.?.BUDGET });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.BLOB_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ quoteRequestData.?.TIMEFRAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.BLOB_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ quoteRequestData.?.COMMENTS });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.BLOB_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ EntryData.getInstance().?.TIMECREATED });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ EntryData.getInstance().?.LASTMODIFIED });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.PRIMARY_KEY });
        _ = Inheritance.call(stringBuffer.?, "append", .{ quoteRequestData.?.ID });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.END });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn createTable(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(&self.base, "createTable", .{ self.createTableStatement() }));
    }
    

    pub fn dropTable(self: *Self) ?*String {
        const result: ?*String = Inheritance.callStatic(String, "create1", .{ self.base.dropTable() });
        return result;
    }
    

    pub fn update(self: *Self, userName: ?*String, updatedValues: ?*HashMap) void {
        _ = Inheritance.call(&self.base, "updateWhere", .{ UserData.USERNAME, userName, updatedValues });
    }
};

