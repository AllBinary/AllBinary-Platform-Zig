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
// package org.allbinary.business.user.commerce.inventory.item

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
const Money = @import("org/allbinary/business/user/commerce/money/Money.zig").Money;
const MoneyException = @import("org/allbinary/business/user/commerce/money/MoneyException.zig").MoneyException;
const ProductIdGenerator = @import("org/allbinary/data/generator/ProductIdGenerator.zig").ProductIdGenerator;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const CommonPhoneStrings = @import("org/allbinary/string/CommonPhoneStrings.zig").CommonPhoneStrings;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicItemData = @import("org/allbinary/business/user/commerce/inventory/item/BasicItemData.zig").BasicItemData;
const ItemInterface = @import("org/allbinary/business/user/commerce/inventory/item/ItemInterface.zig").ItemInterface;
const Integer = @import("java/lang/Integer.zig").Integer;
const Long = @import("java/lang/Long.zig").Long;

pub const BasicItem = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.item.BasicItem";
    pub const java_interfaces = .{ ItemInterface };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    basicItemData: ?*BasicItemData = null,
    itemId: ?*String = null,
    number: ?*String = null,
    inBaskets: ?*String = null,
    weight: ?*String = null,
    enabled: ?*String = null,
    newOrUsed: ?*String = null,
    summary: ?*String = null,
    distributor: ?*String = null,
    idUsedByDistributor: ?*String = null,
    producedBy: ?*String = null,
    productionDate: ?*String = null,
    startProductionDate: ?*String = null,
    description: ?*String = null,
    keywords: ?*String = null,
    category: ?*String = null,
    @"type": ?*String = null,
    smallImage: ?*String = null,
    mediumImage: ?*String = null,
    largeImage: ?*String = null,
    price: ?*Money = null,
    comment: ?*String = null,
    customs: ?*String = null,
    downloads: ?*String = null,
    groups: ?*String = null,
    options: ?*String = null,
    permissions: ?*String = null,
    specials: ?*String = null,
    downloadable: bool = false,
    timeEntered: ?*String = null,
    lastModified: ?*String = null,
    // Implements ItemInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.basicItemData = Inheritance.upcast(?*BasicItemData, BasicItemData.getInstance());
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        this.downloads = null;
        
        
        
        
        this.downloadable = false;
        
        
    }
    

    pub fn create1(itemHashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PRODUCTSEARCHLOGGING })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.START, this, String.literal("Constructor(HashMap)") });
        }
        this.itemId = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ this.basicItemData.?.ID }));
        this.number = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ this.basicItemData.?.NUMBER }));
        this.inBaskets = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ this.basicItemData.?.INBASKETS }));
        this.weight = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ this.basicItemData.?.WEIGHT }));
        this.enabled = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ EntryData.getInstance().?.ENABLE }));
        this.newOrUsed = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ this.basicItemData.?.NEWORUSED }));
        this.summary = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ this.basicItemData.?.SUMMARY }));
        this.distributor = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ this.basicItemData.?.DISTRIBUTOR }));
        this.idUsedByDistributor = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ this.basicItemData.?.IDUSEDBYDISTRIBUTOR }));
        this.producedBy = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ this.basicItemData.?.PRODUCEDBY }));
        this.productionDate = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ this.basicItemData.?.PRODUCTIONDATE }));
        this.startProductionDate = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ this.basicItemData.?.STARTPRODUCTIONDATE }));
        this.description = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ this.basicItemData.?.DESCRIPTION }));
        this.keywords = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ this.basicItemData.?.KEYWORDS }));
        this.category = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ this.basicItemData.?.CATEGORY }));
        this.@"type" = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ this.basicItemData.?.TYPE }));
        this.smallImage = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ this.basicItemData.?.SMALLIMAGE }));
        this.mediumImage = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ this.basicItemData.?.MEDIUMIMAGE }));
        this.largeImage = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ this.basicItemData.?.LARGEIMAGE }));
        this.timeEntered = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ EntryData.getInstance().?.TIMECREATED }));
        this.lastModified = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ EntryData.getInstance().?.LASTMODIFIED }));
        this.price = Inheritance.callStatic(Money, "create1", .{ Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ this.basicItemData.?.PRICE })) });
        this.comment = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ this.basicItemData.?.COMMENT }));
        this.customs = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ this.basicItemData.?.CUSTOMS }));
        _ = Inheritance.call(this, "setDownloads", .{ Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ this.basicItemData.?.DOWNLOADS })) });
        this.groups = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ this.basicItemData.?.GROUPS }));
        this.options = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ this.basicItemData.?.OPTIONS }));
        this.permissions = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ this.basicItemData.?.PERMISSIONS }));
        this.specials = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ this.basicItemData.?.SPECIALS }));
        return this;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PRODUCTSEARCHLOGGING })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.START, this, this.commonStrings.?.CONSTRUCTOR });
        }
        const EMPTY: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.itemId = Inheritance.upcast(@TypeOf(this.itemId), Inheritance.receiver(ProductIdGenerator.create(), "getNext").getNext());
        this.number = Inheritance.upcast(@TypeOf(this.number), CommonPhoneStrings.getInstance().?.ZERO);
        this.inBaskets = EMPTY;
        this.weight = EMPTY;
        this.enabled = EMPTY;
        this.newOrUsed = EMPTY;
        this.summary = EMPTY;
        this.distributor = EMPTY;
        this.idUsedByDistributor = EMPTY;
        this.producedBy = EMPTY;
        this.productionDate = EMPTY;
        this.startProductionDate = EMPTY;
        this.description = EMPTY;
        this.keywords = EMPTY;
        this.category = EMPTY;
        this.@"type" = EMPTY;
        this.smallImage = EMPTY;
        this.mediumImage = EMPTY;
        this.largeImage = EMPTY;
        this.timeEntered = EMPTY;
        this.lastModified = EMPTY;
        this.price = Money.create();
        this.comment = EMPTY;
        this.customs = EMPTY;
        _ = Inheritance.call(this, "setDownloads", .{ EMPTY });
        this.groups = EMPTY;
        this.options = EMPTY;
        this.permissions = EMPTY;
        this.specials = EMPTY;
        return this;
    }
    

    pub fn setId(self: *Self, itemId: ?*String) void {
        self.itemId = itemId;
    }
    

    pub fn setNumber(self: *Self, number: ?*String) void {
        self.number = number;
    }
    

    pub fn setInBaskets(self: *Self, value: ?*String) void {
        self.inBaskets = value;
    }
    

    pub fn setWeight(self: *Self, value: ?*String) void {
        self.weight = value;
    }
    

    pub fn setNewOrUsed(self: *Self, value: ?*String) void {
        self.newOrUsed = value;
    }
    

    pub fn setSummary(self: *Self, value: ?*String) void {
        self.summary = value;
    }
    

    pub fn setDistributor(self: *Self, value: ?*String) void {
        self.distributor = value;
    }
    

    pub fn setIdUsedByDistributor(self: *Self, value: ?*String) void {
        self.idUsedByDistributor = value;
    }
    

    pub fn setProducedBy(self: *Self, value: ?*String) void {
        self.producedBy = value;
    }
    

    pub fn setProductionDate(self: *Self, value: ?*String) void {
        self.productionDate = value;
    }
    

    pub fn setStartProductionDate(self: *Self, value: ?*String) void {
        self.startProductionDate = value;
    }
    

    pub fn setDescription(self: *Self, value: ?*String) void {
        self.description = value;
    }
    

    pub fn setKeywords(self: *Self, value: ?*String) void {
        self.keywords = value;
    }
    

    pub fn setCategory(self: *Self, value: ?*String) void {
        self.category = value;
    }
    

    pub fn setType(self: *Self, value: ?*String) void {
        self.@"type" = value;
    }
    

    pub fn setSmallImage(self: *Self, value: ?*String) void {
        self.smallImage = value;
    }
    

    pub fn setMediumImage(self: *Self, value: ?*String) void {
        self.mediumImage = value;
    }
    

    pub fn setLargeImage(self: *Self, value: ?*String) void {
        self.largeImage = value;
    }
    

    pub fn setTimeEntered(self: *Self, value: ?*String) void {
        self.timeEntered = value;
    }
    

    pub fn setLastModified(self: *Self, value: ?*String) void {
        self.lastModified = value;
    }
    

    pub fn setPrice(self: *Self, value: ?*Money) void {
        self.price = Inheritance.upcast(@TypeOf(self.price), value);
    }
    

    pub fn setComment(self: *Self, value: ?*String) void {
        self.comment = value;
    }
    

    pub fn setCustoms(self: *Self, value: ?*String) void {
        self.customs = value;
    }
    

    pub fn setDownloads(self: *Self, value: ?*String) void {
        self.downloads = value;
        if (!Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ self.downloads })) {
            const downloadInteger: ?*Integer = Inheritance.upcast(?*Integer, Inheritance.callStatic(Integer, "valueOf", .{ self.downloads }));
            if (downloadInteger.?.intValue() != 0) {
                _ = Inheritance.call(self, "setDownloadable", .{ true });
            }
        }
    }
    

    pub fn setGroups(self: *Self, value: ?*String) void {
        self.groups = value;
    }
    

    pub fn setOptions(self: *Self, value: ?*String) void {
        self.options = value;
    }
    

    pub fn setPermissions(self: *Self, value: ?*String) void {
        self.permissions = value;
    }
    

    pub fn setSpecials(self: *Self, value: ?*String) void {
        self.specials = value;
    }
    

    pub fn setEnabled(self: *Self, value: ?*String) void {
        self.enabled = value;
    }
    

    pub fn getId(self: *Self) ?*String {
        return self.itemId;
    }
    

    pub fn getNumber(self: *Self) ?*String {
        return self.number;
    }
    

    pub fn getInBaskets(self: *Self) ?*String {
        return self.inBaskets;
    }
    

    pub fn getWeight(self: *Self) ?*String {
        return self.weight;
    }
    

    pub fn getNewOrUsed(self: *Self) ?*String {
        return self.newOrUsed;
    }
    

    pub fn getSummary(self: *Self) ?*String {
        return self.summary;
    }
    

    pub fn getDistributor(self: *Self) ?*String {
        return self.distributor;
    }
    

    pub fn getIdUsedByDistributor(self: *Self) ?*String {
        return self.idUsedByDistributor;
    }
    

    pub fn getProducedBy(self: *Self) ?*String {
        return self.producedBy;
    }
    

    pub fn getProductionDate(self: *Self) ?*String {
        return self.productionDate;
    }
    

    pub fn getStartProductionDate(self: *Self) ?*String {
        return self.startProductionDate;
    }
    

    pub fn getDescription(self: *Self) ?*String {
        return self.description;
    }
    

    pub fn getKeywords(self: *Self) ?*String {
        return self.keywords;
    }
    

    pub fn getCategory(self: *Self) ?*String {
        return self.category;
    }
    

    pub fn getType(self: *Self) ?*String {
        return self.@"type";
    }
    

    pub fn getSmallImage(self: *Self) ?*String {
        return self.smallImage;
    }
    

    pub fn getMediumImage(self: *Self) ?*String {
        return self.mediumImage;
    }
    

    pub fn getLargeImage(self: *Self) ?*String {
        return self.largeImage;
    }
    

    pub fn getTimeEntered(self: *Self) ?*String {
        return self.timeEntered;
    }
    

    pub fn getLastModified(self: *Self) ?*String {
        return self.lastModified;
    }
    

    pub fn getPrice(self: *Self) ?*Money {
        return self.price;
    }
    

    pub fn getComment(self: *Self) ?*String {
        return self.comment;
    }
    

    pub fn getCustoms(self: *Self) ?*String {
        return self.customs;
    }
    

    pub fn getDownloads(self: *Self) ?*String {
        return self.downloads;
    }
    

    pub fn getGroups(self: *Self) ?*String {
        return self.groups;
    }
    

    pub fn getOptions(self: *Self) ?*String {
        return self.options;
    }
    

    pub fn getPermissions(self: *Self) ?*String {
        return self.permissions;
    }
    

    pub fn getSpecials(self: *Self) ?*String {
        return self.specials;
    }
    

    pub fn setDownloadable(self: *Self, downloadable: bool) void {
        self.downloadable = downloadable;
    }
    

    pub fn isDownloadable(self: *Self) bool {
        return self.downloadable;
    }
    

    pub fn getEnabled(self: *Self) ?*String {
        return self.enabled;
    }
    

    pub fn getTotal(self: *Self) ?*Money {
        const itemTotal: ?*Money = Inheritance.callStatic(Money, "create1", .{ self.price });
        _ = Inheritance.call(itemTotal.?, "multiply", .{ Inheritance.callStatic(Integer, "create1", .{ self.number }).intValue() });
        return itemTotal;
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PRODUCTSEARCHLOGGING })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("toHashMap") });
        }
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ self.basicItemData.?.ID, self.itemId });
        _ = Inheritance.call(hashMap.?, "put", .{ self.basicItemData.?.NUMBER, self.number });
        _ = Inheritance.call(hashMap.?, "put", .{ self.basicItemData.?.INBASKETS, self.inBaskets });
        _ = Inheritance.call(hashMap.?, "put", .{ self.basicItemData.?.WEIGHT, self.weight });
        _ = Inheritance.call(hashMap.?, "put", .{ EntryData.getInstance().?.ENABLE, self.enabled });
        _ = Inheritance.call(hashMap.?, "put", .{ self.basicItemData.?.NEWORUSED, self.newOrUsed });
        _ = Inheritance.call(hashMap.?, "put", .{ self.basicItemData.?.SUMMARY, self.summary });
        _ = Inheritance.call(hashMap.?, "put", .{ self.basicItemData.?.DISTRIBUTOR, self.distributor });
        _ = Inheritance.call(hashMap.?, "put", .{ self.basicItemData.?.IDUSEDBYDISTRIBUTOR, self.idUsedByDistributor });
        _ = Inheritance.call(hashMap.?, "put", .{ self.basicItemData.?.PRODUCEDBY, self.producedBy });
        _ = Inheritance.call(hashMap.?, "put", .{ self.basicItemData.?.PRODUCTIONDATE, self.productionDate });
        _ = Inheritance.call(hashMap.?, "put", .{ self.basicItemData.?.STARTPRODUCTIONDATE, self.startProductionDate });
        _ = Inheritance.call(hashMap.?, "put", .{ self.basicItemData.?.DESCRIPTION, self.description });
        _ = Inheritance.call(hashMap.?, "put", .{ self.basicItemData.?.KEYWORDS, self.keywords });
        _ = Inheritance.call(hashMap.?, "put", .{ self.basicItemData.?.CATEGORY, self.category });
        _ = Inheritance.call(hashMap.?, "put", .{ self.basicItemData.?.TYPE, self.@"type" });
        _ = Inheritance.call(hashMap.?, "put", .{ self.basicItemData.?.SMALLIMAGE, self.smallImage });
        _ = Inheritance.call(hashMap.?, "put", .{ self.basicItemData.?.MEDIUMIMAGE, self.mediumImage });
        _ = Inheritance.call(hashMap.?, "put", .{ self.basicItemData.?.LARGEIMAGE, self.largeImage });
        const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
        const time: ?*String = Inheritance.upcast(?*String, String.valueOf(Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() }).?));
        _ = Inheritance.call(hashMap.?, "put", .{ EntryData.getInstance().?.LASTMODIFIED, time });
        _ = Inheritance.call(hashMap.?, "put", .{ self.basicItemData.?.PRICE, Object.toString(Object.of(self.price)) });
        _ = Inheritance.call(hashMap.?, "put", .{ self.basicItemData.?.COMMENT, self.comment });
        _ = Inheritance.call(hashMap.?, "put", .{ self.basicItemData.?.CUSTOMS, self.customs });
        _ = Inheritance.call(hashMap.?, "put", .{ self.basicItemData.?.DOWNLOADS, self.getDownloads() });
        _ = Inheritance.call(hashMap.?, "put", .{ self.basicItemData.?.GROUPS, self.groups });
        _ = Inheritance.call(hashMap.?, "put", .{ self.basicItemData.?.OPTIONS, self.options });
        _ = Inheritance.call(hashMap.?, "put", .{ self.basicItemData.?.PERMISSIONS, self.permissions });
        _ = Inheritance.call(hashMap.?, "put", .{ self.basicItemData.?.SPECIALS, self.specials });
        return hashMap;
    }
    

    pub fn toVector(self: *Self) ?*BasicArrayList {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PRODUCTSEARCHLOGGING })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("toVector") });
        }
        const values: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(values.?, "add", .{ self.itemId });
        _ = Inheritance.call(values.?, "add", .{ self.number });
        _ = Inheritance.call(values.?, "add", .{ self.inBaskets });
        _ = Inheritance.call(values.?, "add", .{ self.weight });
        _ = Inheritance.call(values.?, "add", .{ self.enabled });
        _ = Inheritance.call(values.?, "add", .{ self.newOrUsed });
        _ = Inheritance.call(values.?, "add", .{ self.summary });
        _ = Inheritance.call(values.?, "add", .{ self.distributor });
        _ = Inheritance.call(values.?, "add", .{ self.idUsedByDistributor });
        _ = Inheritance.call(values.?, "add", .{ self.producedBy });
        _ = Inheritance.call(values.?, "add", .{ self.productionDate });
        _ = Inheritance.call(values.?, "add", .{ self.startProductionDate });
        _ = Inheritance.call(values.?, "add", .{ self.description });
        _ = Inheritance.call(values.?, "add", .{ self.keywords });
        _ = Inheritance.call(values.?, "add", .{ self.category });
        _ = Inheritance.call(values.?, "add", .{ self.@"type" });
        _ = Inheritance.call(values.?, "add", .{ self.getSmallImage() });
        _ = Inheritance.call(values.?, "add", .{ self.getMediumImage() });
        _ = Inheritance.call(values.?, "add", .{ self.getLargeImage() });
        const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
        const time: ?*String = Inheritance.upcast(?*String, String.valueOf(Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() }).?));
        _ = Inheritance.call(values.?, "add", .{ time });
        _ = Inheritance.call(values.?, "add", .{ time });
        _ = Inheritance.call(values.?, "add", .{ Object.toString(Object.of(self.price)) });
        _ = Inheritance.call(values.?, "add", .{ self.comment });
        _ = Inheritance.call(values.?, "add", .{ self.customs });
        _ = Inheritance.call(values.?, "add", .{ self.getDownloads() });
        _ = Inheritance.call(values.?, "add", .{ self.groups });
        _ = Inheritance.call(values.?, "add", .{ self.options });
        _ = Inheritance.call(values.?, "add", .{ self.permissions });
        _ = Inheritance.call(values.?, "add", .{ self.specials });
        return values;
    }
    

    // throws Exception
    pub fn getKey(self: *Self) ?Object {
        return Inheritance.cast(?Object, self.getId());
    }
};

