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
// package org.allbinary.data.tables.user.commerce.inventory.order

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const ListIterator = @import("java/util/ListIterator.zig").ListIterator;
// const Set = @import("java/util/Set.zig").Set;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const HistoryDbInitInfo = @import("org/allbinary/business/init/db/HistoryDbInitInfo.zig").HistoryDbInitInfo;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const UserData = @import("org/allbinary/business/user/UserData.zig").UserData;
const ShippingAddressData = @import("org/allbinary/business/user/address/ShippingAddressData.zig").ShippingAddressData;
const BasketInterface = @import("org/allbinary/business/user/commerce/inventory/basket/BasketInterface.zig").BasketInterface;
const BasketReview = @import("org/allbinary/business/user/commerce/inventory/basket/BasketReview.zig").BasketReview;
const BasicItemData = @import("org/allbinary/business/user/commerce/inventory/item/BasicItemData.zig").BasicItemData;
const Item = @import("org/allbinary/business/user/commerce/inventory/item/Item.zig").Item;
const ItemInterface = @import("org/allbinary/business/user/commerce/inventory/item/ItemInterface.zig").ItemInterface;
const OrderData = @import("org/allbinary/business/user/commerce/inventory/order/OrderData.zig").OrderData;
const OrderHistoryData = @import("org/allbinary/business/user/commerce/inventory/order/OrderHistoryData.zig").OrderHistoryData;
const OrderInterface = @import("org/allbinary/business/user/commerce/inventory/order/OrderInterface.zig").OrderInterface;
const ShippingMethodData = @import("org/allbinary/business/user/commerce/shipping/ShippingMethodData.zig").ShippingMethodData;
const OrderItemIdGenerator = @import("org/allbinary/data/generator/OrderItemIdGenerator.zig").OrderItemIdGenerator;
const TableDataFactory = @import("org/allbinary/data/tables/TableDataFactory.zig").TableDataFactory;
const InventoryEntity = @import("org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntity.zig").InventoryEntity;
const InventoryEntityFactory = @import("org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory.zig").InventoryEntityFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbSqlBean = @import("org/allbinary/logic/communication/sql/AbSqlBean.zig").AbSqlBean;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const OrderItemsEntityInterface = @import("org/allbinary/data/tables/user/commerce/inventory/order/OrderItemsEntityInterface.zig").OrderItemsEntityInterface;

pub const OrderItemsEntity = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity";
    pub const java_interfaces = .{ OrderItemsEntityInterface };
    base: AbSqlBean = undefined,
    logUtil: ?*LogUtil = null,
    basicItemData: ?*BasicItemData = null,
    tableName: ?*String = null,
    // Implements OrderItemsEntityInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.basicItemData = Inheritance.upcast(?*BasicItemData, BasicItemData.getInstance());
        this.tableName = String.literal("orderitems");
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbSqlBean, "create1", .{ HistoryDbInitInfo.create() }).*;
        this.initFields();
        _ = Inheritance.call(this, "setTableName", .{ this.tableName });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn insert(self: *Self, userName: ?*String, order: ?*OrderInterface) void {
        var vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        { // try
            const basket: ?*BasketInterface = Inheritance.upcast(?*BasketInterface, order.?.getBasket());
            const items: ?*Set = Inheritance.upcast(?*Set, basket.?.getIds());
            const ZERO_STRING: ?*String = Inheritance.upcast(?*String, TableDataFactory.getInstance().?.ZERO_STRING);
            const EMPTY_STRING: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
            const inventoryEntity: ?*InventoryEntity = Inheritance.upcast(?*InventoryEntity, Inheritance.receiverOf(InventoryEntityFactory.getInstance().?, "getInventoryEntityInstance").getInventoryEntityInstance());
            const itemsArray: []?Object = items.?.toArray();
            const itemsSize: i32 = @as(i32, @intCast(itemsArray.len));
            {
                var i: i32 = 0;
                while (i < itemsSize) : (i += 1) {
                const item: ?*String = Inheritance.cast(?*String, itemsArray[@intCast(i)]);
                const itemInterface: ?*ItemInterface = Inheritance.upcast(?*ItemInterface, Inheritance.call(inventoryEntity.?, "getItem", .{ item }));
                vector = Inheritance.upcast(@TypeOf(vector), BasicArrayListD.create());
                _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(OrderItemIdGenerator.create(), "getNext").getNext() });
                _ = Inheritance.call(vector.?, "add", .{ order.?.getId() });
                _ = Inheritance.call(vector.?, "add", .{ TableDataFactory.getInstance().?.INTEGER_MAX_VALUE_STRING });
                _ = Inheritance.call(vector.?, "add", .{ userName });
                _ = Inheritance.call(vector.?, "add", .{ order.?.getStoreName() });
                _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(itemInterface.?, "getId").getId() });
                _ = Inheritance.call(vector.?, "add", .{ Object.toString(Object.of(Inheritance.call(basket.?, "getNumberOf", .{ item }))) });
                _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(itemInterface.?, "getNewOrUsed").getNewOrUsed() });
                _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(itemInterface.?, "getSummary").getSummary() });
                _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(itemInterface.?, "getDistributor").getDistributor() });
                _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(itemInterface.?, "getIdUsedByDistributor").getIdUsedByDistributor() });
                _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(itemInterface.?, "getProducedBy").getProducedBy() });
                _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(itemInterface.?, "getProductionDate").getProductionDate() });
                _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(itemInterface.?, "getStartProductionDate").getStartProductionDate() });
                _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(itemInterface.?, "getDescription").getDescription() });
                _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(itemInterface.?, "getKeywords").getKeywords() });
                _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(itemInterface.?, "getCategory").getCategory() });
                _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(itemInterface.?, "getType").getType() });
                _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(itemInterface.?, "getSmallImage").getSmallImage() });
                _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(itemInterface.?, "getMediumImage").getMediumImage() });
                _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(itemInterface.?, "getLargeImage").getLargeImage() });
                _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(itemInterface.?, "getWeight").getWeight() });
                _ = Inheritance.call(vector.?, "add", .{ Object.toString(Object.of(Inheritance.receiver(itemInterface.?, "getPrice").getPrice())) });
                _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(itemInterface.?, "getComment").getComment() });
                _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(itemInterface.?, "getCustoms").getCustoms() });
                _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(itemInterface.?, "getDownloads").getDownloads() });
                _ = Inheritance.call(vector.?, "add", .{ EMPTY_STRING });
                _ = Inheritance.call(vector.?, "add", .{ EMPTY_STRING });
                _ = Inheritance.call(vector.?, "add", .{ EMPTY_STRING });
                _ = Inheritance.call(vector.?, "add", .{ EMPTY_STRING });
                _ = Inheritance.call(vector.?, "add", .{ EMPTY_STRING });
                _ = Inheritance.call(vector.?, "add", .{ EMPTY_STRING });
                _ = Inheritance.call(vector.?, "add", .{ EMPTY_STRING });
                _ = Inheritance.call(vector.?, "add", .{ EMPTY_STRING });
                _ = Inheritance.call(vector.?, "add", .{ EMPTY_STRING });
                _ = Inheritance.call(vector.?, "add", .{ EMPTY_STRING });
                _ = Inheritance.call(vector.?, "add", .{ EMPTY_STRING });
                _ = Inheritance.call(vector.?, "add", .{ EMPTY_STRING });
                _ = Inheritance.call(vector.?, "add", .{ EMPTY_STRING });
                _ = Inheritance.call(vector.?, "add", .{ ZERO_STRING });
                _ = Inheritance.call(vector.?, "add", .{ ZERO_STRING });
                _ = Inheritance.call(vector.?, "add", .{ ZERO_STRING });
                _ = Inheritance.call(vector.?, "add", .{ ZERO_STRING });
                _ = Inheritance.call(self, "insert", .{ vector });
                }
            }
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Command Success Added: "), items.?.size()), self, INSERT });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(String.literal("Command Failed: "), Object.toString(Object.of(vector))), self, INSERT, e });
//             }
    }
    

    pub fn setStatus(self: *Self, orderId: ?*String, groupId: ?*String, status: ?*String) void {
        { // try
            const whereHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            const updateHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            _ = Inheritance.call(whereHashMap.?, "put", .{ OrderData.ID, orderId });
            _ = Inheritance.call(whereHashMap.?, "put", .{ ShippingMethodData.GROUP, groupId });
            _ = Inheritance.call(updateHashMap.?, "put", .{ OrderHistoryData.STATUS, status });
            _ = Inheritance.call(&self.base, "updateWhere", .{ whereHashMap, updateHashMap });
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, String.literal("setStatus"), e });
//             }
    }
    

    pub fn isEverythingShipped(self: *Self, orderId: ?*String) bool {
        { // try
            const itemStatusVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(&self.base, "getColumnWhere", .{ OrderHistoryData.STATUS, OrderData.ID, orderId }));
            const size: i32 = itemStatusVector.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const status: ?*String = Inheritance.cast(?*String, Inheritance.call(itemStatusVector.?, "get", .{ index }));
                if (Inheritance.call(status.?, "compareTo", .{ OrderHistoryData.SHIPPED }) != 0) {
                    return false;
                }
                }
            }
            return true;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, String.literal("isEverythingShipped"), e });
//             }
//             return false;
    }
    

    pub fn getBasketReview(self: *Self, orderId: ?*String) ?*BasketReview {
        { // try
            const basketReview: ?*BasketReview = BasketReview.create();
            const keyValues: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            _ = Inheritance.call(keyValues.?, "put", .{ OrderData.ID, orderId });
            const items: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(&self.base, "getRows", .{ keyValues }));
            const entryData: ?*EntryData = Inheritance.upcast(?*EntryData, EntryData.getInstance());
            if (items != null and items.?.size() > 0) {
                const EMPTY_STRING: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
                const itemsArray: []?Object = items.?.toArray();
                const itemsSize: i32 = @as(i32, @intCast(itemsArray.len));
                {
                    var i: i32 = 0;
                    while (i < itemsSize) : (i += 1) {
                    const itemHashMap: ?*HashMap = Inheritance.cast(?*HashMap, itemsArray[@intCast(i)]);
                    _ = Inheritance.call(itemHashMap.?, "put", .{ self.basicItemData.?.INBASKETS, EMPTY_STRING });
                    _ = Inheritance.call(itemHashMap.?, "put", .{ entryData.?.ENABLE, EMPTY_STRING });
                    _ = Inheritance.call(itemHashMap.?, "put", .{ entryData.?.TIMECREATED, EMPTY_STRING });
                    _ = Inheritance.call(itemHashMap.?, "put", .{ entryData.?.LASTMODIFIED, EMPTY_STRING });
                    _ = Inheritance.call(itemHashMap.?, "put", .{ self.basicItemData.?.GROUPS, EMPTY_STRING });
                    _ = Inheritance.call(itemHashMap.?, "put", .{ self.basicItemData.?.OPTIONS, EMPTY_STRING });
                    _ = Inheritance.call(itemHashMap.?, "put", .{ self.basicItemData.?.PERMISSIONS, EMPTY_STRING });
                    _ = Inheritance.call(itemHashMap.?, "put", .{ self.basicItemData.?.SPECIALS, EMPTY_STRING });
                    const item: ?*Item = Inheritance.callStatic(Item, "create1", .{ itemHashMap });
                    _ = Inheritance.call(basketReview.?, "addItem", .{ item });
                    }
                }
                return basketReview;
            } else {
                return null;
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, String.literal("getBasketReview"), e });
//             }
//             return null;
    }
    

    pub fn createTableStatement(self: *Self) ?*String {
        const entryData: ?*EntryData = Inheritance.upcast(?*EntryData, EntryData.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("CREATE TABLE ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.tableName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" (") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ entryData.?.ID });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ OrderData.ID });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ ShippingMethodData.GROUP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ UserData.USERNAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ StoreFrontData.getInstance().?.NAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.basicItemData.?.ID });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.basicItemData.?.NUMBER });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.basicItemData.?.NEWORUSED });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.basicItemData.?.SUMMARY });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.basicItemData.?.DISTRIBUTOR });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.basicItemData.?.IDUSEDBYDISTRIBUTOR });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.basicItemData.?.PRODUCEDBY });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.basicItemData.?.PRODUCTIONDATE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.basicItemData.?.STARTPRODUCTIONDATE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.basicItemData.?.DESCRIPTION });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.BLOB_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.basicItemData.?.KEYWORDS });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.basicItemData.?.CATEGORY });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.basicItemData.?.TYPE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.basicItemData.?.SMALLIMAGE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.basicItemData.?.MEDIUMIMAGE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.basicItemData.?.LARGEIMAGE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.basicItemData.?.WEIGHT });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.basicItemData.?.PRICE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" VARCHAR(20) NOT NULL,") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.basicItemData.?.COMMENT });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.BLOB_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.basicItemData.?.CUSTOMS });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.basicItemData.?.DOWNLOADS });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ ShippingMethodData.COST });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ OrderHistoryData.TAX });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ ShippingAddressData.NAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ ShippingAddressData.STREET });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ ShippingAddressData.CITY });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ ShippingAddressData.STATE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ ShippingAddressData.CODE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ ShippingAddressData.COUNTRY });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ ShippingMethodData.NAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ entryData.?.SPECIAL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" VARCHAR(255) ,") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ OrderHistoryData.STATUS });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ OrderHistoryData.CANCELINFO });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ OrderHistoryData.CANCELTYPE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ OrderHistoryData.SHIPPEDDATE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" BIGINT(19) UNSIGNED ,") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ OrderHistoryData.ORDERDATE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ OrderHistoryData.TRANSDATE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" BIGINT(19) UNSIGNED ,") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ OrderHistoryData.CANCELDATE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" BIGINT(19) UNSIGNED ,") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("PRIMARY KEY(") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ entryData.?.ID });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(") )") });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn createTable(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(&self.base, "createTable", .{ self.createTableStatement() }));
    }
    

    pub fn dropTable(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.base.dropTable());
    }
};

