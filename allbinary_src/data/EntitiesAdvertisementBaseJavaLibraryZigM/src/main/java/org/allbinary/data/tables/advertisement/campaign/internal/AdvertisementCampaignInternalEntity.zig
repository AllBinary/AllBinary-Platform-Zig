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
// package org.allbinary.data.tables.advertisement.campaign.internal

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const AdvertisementCampaign = @import("org/allbinary/business/advertisement/campaign/AdvertisementCampaign.zig").AdvertisementCampaign;
const AdvertisementCampaignData = @import("org/allbinary/business/advertisement/campaign/AdvertisementCampaignData.zig").AdvertisementCampaignData;
const AdvertisementCampaignInterface = @import("org/allbinary/business/advertisement/campaign/AdvertisementCampaignInterface.zig").AdvertisementCampaignInterface;
const AdvertisementCampaigns = @import("org/allbinary/business/advertisement/campaign/AdvertisementCampaigns.zig").AdvertisementCampaigns;
const AdvertisementCampaignsInterface = @import("org/allbinary/business/advertisement/campaign/AdvertisementCampaignsInterface.zig").AdvertisementCampaignsInterface;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const UserDbInitInfo = @import("org/allbinary/business/init/db/UserDbInitInfo.zig").UserDbInitInfo;
const TimeData = @import("org/allbinary/business/time/TimeData.zig").TimeData;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbSqlBean = @import("org/allbinary/logic/communication/sql/AbSqlBean.zig").AbSqlBean;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AdvertisementCampaignInternalEntityInterface = @import("org/allbinary/data/tables/advertisement/campaign/internal/AdvertisementCampaignInternalEntityInterface.zig").AdvertisementCampaignInternalEntityInterface;

pub const AdvertisementCampaignInternalEntity = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity";
    pub const java_interfaces = .{ AdvertisementCampaignInternalEntityInterface };
    base: AbSqlBean = undefined,
    logUtil: ?*LogUtil = null,
    tableName: ?*String = null,
    // Implements AdvertisementCampaignInternalEntityInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.tableName = String.literal("adCampaignInternal");
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
    

    pub fn getCampaignsInStore(self: *Self, storeName: ?*String) ?*AdvertisementCampaignsInterface {
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
                _ = Inheritance.call(vector.?, "add", .{ Inheritance.cast(?*AdvertisementCampaignInterface, Inheritance.callStatic(AdvertisementCampaign, "create1", .{ hashMap })) });
            }
            }
        }
        return Inheritance.cast(?*AdvertisementCampaignsInterface, Inheritance.callStatic(AdvertisementCampaigns, "create1", .{ vector }));
    }
    

    pub fn get(self: *Self, storeName: ?*String, name: ?*String) ?*AdvertisementCampaignInterface {
        const keysAndValues: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(keysAndValues.?, "put", .{ StoreFrontData.getInstance().?.NAME, storeName });
        _ = Inheritance.call(keysAndValues.?, "put", .{ AdvertisementCampaignData.getInstance().?.NAME, name });
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.call(&self.base, "getRow", .{ keysAndValues }));
        if (hashMap != null) {
            return Inheritance.cast(?*AdvertisementCampaignInterface, Inheritance.callStatic(AdvertisementCampaign, "create1", .{ hashMap }));
        } else {
            return null;
        }
    }
    

    pub fn update(self: *Self, updatedValues: ?*HashMap) void {
        _ = Inheritance.call(&self.base, "updateWhere", .{ Inheritance.receiverOf(EntryData.getInstance().?, "getInstance").getInstance().?.ID, Inheritance.cast(?*String, Inheritance.call(updatedValues.?, "get", .{ Inheritance.receiverOf(EntryData.getInstance().?, "getInstance").getInstance().?.ID })), updatedValues });
    }
    

    pub fn createTableStatement(self: *Self) ?*String {
        const entryData: ?*EntryData = Inheritance.upcast(?*EntryData, Inheritance.receiverOf(EntryData.getInstance().?, "getInstance").getInstance());
        const advertisementCampaignData: ?*AdvertisementCampaignData = Inheritance.upcast(?*AdvertisementCampaignData, AdvertisementCampaignData.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CREATE_TABLE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self, "getTableName").getTableName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.START });
        _ = Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ entryData.?.ID }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL }).?, "append", .{ StoreFrontData.getInstance().?.NAME }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ advertisementCampaignData.?.NAME }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ advertisementCampaignData.?.DESCRIPTION }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ advertisementCampaignData.?.CONFIG }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.BLOB_NOT_NULL }).?, "append", .{ TimeData.getInstance().?.START }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL }).?, "append", .{ TimeData.getInstance().?.END }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL }).?, "append", .{ entryData.?.TIMECREATED }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL }).?, "append", .{ entryData.?.LASTMODIFIED }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL }).?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.PRIMARY_KEY }).?, "append", .{ entryData.?.ID }).?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.END });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn createTable(self: *Self) ?*String {
        const returnStr: ?*String = Inheritance.upcast(?*String, Inheritance.call(&self.base, "createTable", .{ self.createTableStatement() }));
        return returnStr;
    }
    

    pub fn dropTable(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.base.dropTable());
    }
};

