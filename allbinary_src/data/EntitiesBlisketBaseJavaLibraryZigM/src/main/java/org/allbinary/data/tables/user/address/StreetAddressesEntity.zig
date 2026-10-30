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
// package org.allbinary.data.tables.user.address

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
const StreetAddress = @import("org/allbinary/business/user/address/StreetAddress.zig").StreetAddress;
const StreetAddressData = @import("org/allbinary/business/user/address/StreetAddressData.zig").StreetAddressData;
const TableDataFactory = @import("org/allbinary/data/tables/TableDataFactory.zig").TableDataFactory;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbSqlBean = @import("org/allbinary/logic/communication/sql/AbSqlBean.zig").AbSqlBean;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StreetAddressesEntityInterface = @import("org/allbinary/data/tables/user/address/StreetAddressesEntityInterface.zig").StreetAddressesEntityInterface;
const Integer = @import("java/lang/Integer.zig").Integer;
const Long = @import("java/lang/Long.zig").Long;

pub const StreetAddressesEntity = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.user.address.StreetAddressesEntity";
    pub const java_interfaces = .{ StreetAddressesEntityInterface };
    base: AbSqlBean = undefined,
    logUtil: ?*LogUtil = null,
    userName: ?*String = null,
    // Implements StreetAddressesEntityInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbSqlBean, "create1", .{ UserDbInitInfo.create() }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create1(userName: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbSqlBean, "create1", .{ UserDbInitInfo.create() }).*;
        this.initFields();
        this.userName = userName;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn remove(self: *Self, index: ?*Integer) void {
        { // try
            const whereHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            _ = Inheritance.call(whereHashMap.?, "put", .{ UserData.USERNAME, self.userName });
            _ = Inheritance.call(whereHashMap.?, "put", .{ StreetAddressData.ID, Inheritance.cast(?*String, String.valueOf(index.?)) });
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
    

    pub fn add(self: *Self, address: ?*StreetAddress) void {
        _ = Inheritance.call(self, "add", .{ address, TableDataFactory.getInstance().?.INTEGER_MAX_VALUE_STRING });
    }
    

    pub fn add2(self: *Self, address: ?*StreetAddress, index: ?*String) void {
        { // try
            const values: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            _ = Inheritance.call(values.?, "add", .{ index });
            _ = Inheritance.call(values.?, "add", .{ self.userName });
            _ = Inheritance.call(values.?, "add", .{ StringUtil.getInstance().?.EMPTY_STRING });
            _ = Inheritance.call(values.?, "add", .{ address.?.getName() });
            _ = Inheritance.call(values.?, "add", .{ address.?.getStreet() });
            _ = Inheritance.call(values.?, "add", .{ address.?.getCity() });
            _ = Inheritance.call(values.?, "add", .{ address.?.getState() });
            _ = Inheritance.call(values.?, "add", .{ address.?.getCode() });
            _ = Inheritance.call(values.?, "add", .{ address.?.getCountry() });
            const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
            const time: ?*String = Inheritance.callStatic(String, "create1", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() }).?) });
            _ = Inheritance.call(values.?, "add", .{ time });
            _ = Inheritance.call(&self.base, "insert", .{ values });
            _ = Inheritance.call(self, "setDefault", .{ self.getLastId() });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.SUCCESS, self, String.literal("add") });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, String.literal("add"), e });
//             }
    }
    

    pub fn update(self: *Self, address: ?*StreetAddress) void {
        { // try
            const addressHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, address.?.toHashMap());
            const whereKeyValuePairs: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            _ = Inheritance.call(whereKeyValuePairs.?, "put", .{ StreetAddressData.ID, address.?.getId() });
            _ = Inheritance.call(whereKeyValuePairs.?, "put", .{ UserData.USERNAME, self.userName });
            _ = Inheritance.call(&self.base, "updateWhere", .{ whereKeyValuePairs, addressHashMap });
            _ = Inheritance.call(self, "setDefault", .{ address.?.getId() });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.SUCCESS, self, String.literal("update") });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, String.literal("add"), e });
//             }
    }
    

    pub fn getLastId(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(&self.base, "getLargestIntegerInColumnWhere", .{ StreetAddressData.ID, UserData.USERNAME, self.userName }));
    }
    

    pub fn get(self: *Self) ?*BasicArrayList {
        { // try
            const streetAddressVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            const keyAndValue: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            _ = Inheritance.call(keyAndValue.?, "put", .{ UserData.USERNAME, self.userName });
            const addressList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(&self.base, "getRows", .{ keyAndValue }));
            const size: i32 = addressList.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const addressHashMap: ?*HashMap = Inheritance.cast(?*HashMap, Inheritance.call(addressList.?, "get", .{ index }));
                const streetAddress: ?*StreetAddress = Inheritance.callStatic(StreetAddress, "create1", .{ addressHashMap });
                if (streetAddress != null) {
                    _ = Inheritance.call(streetAddressVector.?, "add", .{ streetAddress });
                }
                }
            }
            return streetAddressVector;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, Inheritance.fieldPointer(self, "commonStrings").*.?.GET, e });
//             }
//             return null;
    }
    

    pub fn get1(self: *Self, index: ?*Integer) ?*StreetAddress {
        { // try
            const keyAndValue: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            _ = Inheritance.call(keyAndValue.?, "put", .{ UserData.USERNAME, self.userName });
            _ = Inheritance.call(keyAndValue.?, "put", .{ StreetAddressData.ID, String.valueOf(index.?) });
            const addressHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.call(&self.base, "getRow", .{ keyAndValue }));
            if (addressHashMap != null) {
                return Inheritance.callStatic(StreetAddress, "create1", .{ addressHashMap });
            } else {
                return null;
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, Inheritance.fieldPointer(self, "commonStrings").*.?.GET, e });
//             }
//             return null;
    }
    

    pub fn getDefault(self: *Self) ?*StreetAddress {
        { // try
            var addressHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            const updateKeyAndValue: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            _ = Inheritance.call(updateKeyAndValue.?, "put", .{ StreetAddressData.DEFAULT, StreetAddressData.DEFAULT });
            _ = Inheritance.call(updateKeyAndValue.?, "put", .{ UserData.USERNAME, self.userName });
            addressHashMap = Inheritance.upcast(@TypeOf(addressHashMap), Inheritance.call(&self.base, "getRow", .{ updateKeyAndValue }));
            if (addressHashMap != null) {
                const streetAddress: ?*StreetAddress = Inheritance.callStatic(StreetAddress, "create1", .{ addressHashMap });
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.SUCCESS, self, String.literal("getDefault") });
                }
                return streetAddress;
            } else {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("No Default Address Found"), self, String.literal("getDefault") });
                }
                return null;
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, String.literal("getDefault"), e });
//             }
//             return null;
    }
    

    pub fn setDefault(self: *Self, value: ?*String) void {
        { // try
            const updateKeyAndValue: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            const whereKeyAndValue: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            _ = Inheritance.call(whereKeyAndValue.?, "put", .{ UserData.USERNAME, self.userName });
            const streetAddress: ?*StreetAddress = Inheritance.upcast(?*StreetAddress, self.getDefault());
            if (streetAddress != null) {
                _ = Inheritance.call(updateKeyAndValue.?, "put", .{ StreetAddressData.DEFAULT, StringUtil.getInstance().?.EMPTY_STRING });
                _ = Inheritance.call(whereKeyAndValue.?, "put", .{ StreetAddressData.ID, streetAddress.?.getId() });
                _ = Inheritance.call(&self.base, "updateWhere", .{ whereKeyAndValue, updateKeyAndValue });
            }
            _ = Inheritance.call(whereKeyAndValue.?, "put", .{ StreetAddressData.ID, value });
            _ = Inheritance.call(updateKeyAndValue.?, "put", .{ StreetAddressData.DEFAULT, StreetAddressData.DEFAULT });
            _ = Inheritance.call(&self.base, "updateWhere", .{ whereKeyAndValue, updateKeyAndValue });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.SUCCESS, self, String.literal("setDefault") });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, String.literal("setShippingAddress"), e });
//             }
    }
    

    pub fn getUserName(self: *Self) ?*String {
        return self.userName;
    }
    

    pub fn createTableStatement(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CREATE_TABLE }).?, "append", .{ Inheritance.receiver(self, "getTableName").getTableName() }).?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.START }).?, "append", .{ StreetAddressData.ID }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL }).?, "append", .{ UserData.USERNAME }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ StreetAddressData.DEFAULT }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ StreetAddressData.NAME }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ StreetAddressData.STREET }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN }).?, "append", .{ StreetAddressData.CITY }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN }).?, "append", .{ StreetAddressData.STATE }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN }).?, "append", .{ StreetAddressData.CODE }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN }).?, "append", .{ StreetAddressData.COUNTRY }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN }).?, "append", .{ EntryData.getInstance().?.TIMECREATED }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL }).?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.PRIMARY_KEY }).?, "append", .{ StreetAddressData.ID }).?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.END });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn createTable(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(&self.base, "createTable", .{ self.createTableStatement() }));
    }
    

    pub fn drop(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.base.dropTable());
    }
};

