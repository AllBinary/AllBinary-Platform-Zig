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
// package org.allbinary.data.tables.advertisement.areas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const AdvertisementArea = @import("org/allbinary/business/advertisement/area/AdvertisementArea.zig").AdvertisementArea;
const AdvertisementAreaData = @import("org/allbinary/business/advertisement/area/AdvertisementAreaData.zig").AdvertisementAreaData;
const AdvertisementAreaInterface = @import("org/allbinary/business/advertisement/area/AdvertisementAreaInterface.zig").AdvertisementAreaInterface;
const AdvertisementCampaignData = @import("org/allbinary/business/advertisement/campaign/AdvertisementCampaignData.zig").AdvertisementCampaignData;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const UserDbInitInfo = @import("org/allbinary/business/init/db/UserDbInitInfo.zig").UserDbInitInfo;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbSqlBean = @import("org/allbinary/logic/communication/sql/AbSqlBean.zig").AbSqlBean;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AdvertisementAreasEntityInterface = @import("org/allbinary/data/tables/advertisement/areas/AdvertisementAreasEntityInterface.zig").AdvertisementAreasEntityInterface;

pub const AdvertisementAreasEntity = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity";
    pub const java_interfaces = .{ AdvertisementAreasEntityInterface };
    base: AbSqlBean = undefined,
    logUtil: ?*LogUtil = null,
    tableName: ?*String = null,
    // Implements AdvertisementAreasEntityInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.tableName = String.literal("advertisements");
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
    

    pub fn delete(self: *Self, value: ?*String) void {
        { // try
            _ = Inheritance.call(&self.base, "deleteWhere", .{ EntryData.getInstance().?.ID, value });
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
    pub fn get(self: *Self, storeName: ?*String) ?*BasicArrayList {
        const keysAndValues: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(keysAndValues.?, "put", .{ StoreFrontData.getInstance().?.NAME, storeName });
        const hashMapVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(&self.base, "getRows", .{ keysAndValues }));
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const size: i32 = hashMapVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const hashMap: ?*HashMap = Inheritance.cast(?*HashMap, Inheritance.call(hashMapVector.?, "get", .{ index }));
            if (hashMap != null) {
                _ = Inheritance.call(vector.?, "add", .{ Inheritance.cast(?*AdvertisementAreaInterface, Inheritance.callStatic(AdvertisementArea, "create1", .{ hashMap })) });
            }
            }
        }
        return vector;
    }
    

    // throws Exception
    pub fn get2(self: *Self, storeName: ?*String, advertisementAreaName: ?*String) ?*AdvertisementAreaInterface {
        const keysAndValues: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(keysAndValues.?, "put", .{ StoreFrontData.getInstance().?.NAME, storeName });
        _ = Inheritance.call(keysAndValues.?, "put", .{ AdvertisementAreaData.getInstance().?.NAME, advertisementAreaName });
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.call(&self.base, "getRow", .{ keysAndValues }));
        if (hashMap != null) {
            return Inheritance.cast(?*AdvertisementAreaInterface, Inheritance.callStatic(AdvertisementArea, "create1", .{ hashMap }));
        } else {
            return null;
        }
    }
    

    pub fn createTableStatement(self: *Self) ?*String {
        const advertisementAreaData: ?*AdvertisementAreaData = Inheritance.upcast(?*AdvertisementAreaData, AdvertisementAreaData.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CREATE_TABLE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self, "getTableName").getTableName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.START });
        _ = Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ advertisementAreaData.?.NAME }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ StoreFrontData.getInstance().?.NAME }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ advertisementAreaData.?.DESCRIPTION }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ advertisementAreaData.?.CONSTRAINTS }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.BLOB_NOT_NULL }).?, "append", .{ AdvertisementCampaignData.getInstance().?.NAME }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ EntryData.getInstance().?.TIMECREATED }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL }).?, "append", .{ EntryData.getInstance().?.LASTMODIFIED }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL }).?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.PRIMARY_KEY }).?, "append", .{ advertisementAreaData.?.NAME }).?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.END });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn createTable(self: *Self) ?*String {
        const returnStr: ?*String = Inheritance.upcast(?*String, Inheritance.call(&self.base, "createTable", .{ self.createTableStatement() }));
        return returnStr;
    }
    

    pub fn update(self: *Self, updatedValues: ?*HashMap) void {
        _ = Inheritance.call(&self.base, "updateWhere", .{ AdvertisementAreaData.getInstance().?.NAME, Inheritance.cast(?*String, Inheritance.call(updatedValues.?, "get", .{ AdvertisementAreaData.getInstance().?.NAME })), updatedValues });
    }
    

    pub fn dropTable(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.base.dropTable());
    }
};

