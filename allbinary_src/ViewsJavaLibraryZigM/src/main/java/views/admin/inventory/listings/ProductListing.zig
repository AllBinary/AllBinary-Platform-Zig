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
// package views.admin.inventory.listings

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const HashSet = @import("java/util/HashSet.zig").HashSet;
// const Set = @import("java/util/Set.zig").Set;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const BasicItemData = @import("org/allbinary/business/user/commerce/inventory/item/BasicItemData.zig").BasicItemData;
const StoreFrontsEntity = @import("org/allbinary/data/tables/context/module/storefronts/StoreFrontsEntity.zig").StoreFrontsEntity;
const StaticPagesEntity = @import("org/allbinary/data/tables/staticpages/StaticPagesEntity.zig").StaticPagesEntity;
const InventoryEntity = @import("org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntity.zig").InventoryEntity;
const GLOBALS2 = @import("org/allbinary/globals/GLOBALS2.zig").GLOBALS2;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const SearchParams = @import("org/allbinary/logic/control/search/SearchParams.zig").SearchParams;
const SearchRequest = @import("org/allbinary/logic/control/search/SearchRequest.zig").SearchRequest;
const AbDataOutputStream = @import("org/allbinary/logic/io/AbDataOutputStream.zig").AbDataOutputStream;
const DataOutputStreamFactory = @import("org/allbinary/logic/io/DataOutputStreamFactory.zig").DataOutputStreamFactory;
const InputOutputTypeData = @import("org/allbinary/logic/io/InputOutputTypeData.zig").InputOutputTypeData;
const StreamUtil = @import("org/allbinary/logic/io/StreamUtil.zig").StreamUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const Directory = @import("org/allbinary/logic/io/file/directory/Directory.zig").Directory;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const SpecialCharacterUtil = @import("org/allbinary/logic/string/SpecialCharacterUtil.zig").SpecialCharacterUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Replace = @import("org/allbinary/logic/string/regex/replace/Replace.zig").Replace;
const UniqueTokens = @import("org/allbinary/logic/string/tokens/UniqueTokens.zig").UniqueTokens;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const ServiceClientInformationInterfaceFactory = @import("org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory.zig").ServiceClientInformationInterfaceFactory;
const CommonPhoneStrings = @import("org/allbinary/string/CommonPhoneStrings.zig").CommonPhoneStrings;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const InventoryColumnUtil = @import("views/generic/inventory/InventoryColumnUtil.zig").InventoryColumnUtil;
const InventorySearchUtil = @import("views/generic/inventory/InventorySearchUtil.zig").InventorySearchUtil;
const ProductListingInterface = @import("views/admin/inventory/listings/ProductListingInterface.zig").ProductListingInterface;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const ProductListing = struct {
    const Self = @This();
    pub const java_name = "views.admin.inventory.listings.ProductListing";
    pub const java_interfaces = .{ ProductListingInterface };
    logUtil: ?*LogUtil = null,
    directory: ?*Directory = null,
    basicItemData: ?*BasicItemData = null,
    storeFronts: ?*StoreFrontsEntity = null,
    staticPages: ?*StaticPagesEntity = null,
    inventory: ?*InventoryEntity = null,
    searchRequest: ?*SearchRequest = null,
    INVENTORY: ?*String = null,
    // Implements ProductListingInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.directory = Inheritance.upcast(?*Directory, Directory.getInstance());
        this.basicItemData = Inheritance.upcast(?*BasicItemData, BasicItemData.getInstance());
        
        
        
        
        this.INVENTORY = String.literal(".InventoryView");
    }
    

    pub fn create1(searchRequest: ?*SearchRequest) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.searchRequest = searchRequest;
        this.storeFronts = StoreFrontsEntity.create();
        this.staticPages = StaticPagesEntity.create();
        this.inventory = InventoryEntity.create();
        return this;
    }
    

    // throws Exception
    pub fn getHashSet(self: *Self, storeFront: ?*StoreFrontInterface) ?*HashSet {
        const inventoryColumnUtil: ?*InventoryColumnUtil = Inheritance.upcast(?*InventoryColumnUtil, InventoryColumnUtil.getInstance());
        const keywords: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(inventoryColumnUtil.?, "getColumnWhereLike", .{ self.inventory, Inheritance.receiver(storeFront.?, "getCategoryPath").getCategoryPath(), self.basicItemData.?.KEYWORDS }));
        const subStoreVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(storeFront.?, "getSubStores").getSubStores());
        const size: i32 = subStoreVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const subStore: ?*String = Inheritance.cast(?*String, Inheritance.call(subStoreVector.?, "get", .{ index }));
            const substoreKeywords: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(inventoryColumnUtil.?, "getColumnWhereLike", .{ self.inventory, String.plus(AbPathData.getInstance().?.SEPARATOR, subStore), self.basicItemData.?.CATEGORY }));
            _ = Inheritance.call(keywords.?, "addAllList", .{ substoreKeywords });
            }
        }
        const uniqueTokens: ?*UniqueTokens = UniqueTokens.create();
        const keywordHashSet: ?*HashSet = Inheritance.upcast(?*HashSet, Inheritance.call(uniqueTokens.?, "getWhithoutDashesAndSkipNumberOnlyTokens", .{ keywords }));
        return keywordHashSet;
    }
    

    // throws Exception
    pub fn savePage(self: *Self, file: ?*String, data: ?*String) void {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.STATICPAGEGENERATIONLOGGING })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Creating File: "), file), self, String.literal("generateAll()") });
        }
        const newFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ file }));
        if (newFile.?.exists()) {
            _ = newFile.?.delete();
        }
        _ = newFile.?.createNewFile();
        if (newFile.?.exists()) {
            const idOutData: ?*AbDataOutputStream = Inheritance.upcast(?*AbDataOutputStream, Inheritance.call(DataOutputStreamFactory.getInstance().?, "getInstanceForAbFile", .{ newFile }));
            _ = Inheritance.call(idOutData.?, "writeBytes", .{ data });
            _ = Inheritance.receiver(idOutData.?, "flush").flush();
            _ = Inheritance.call(StreamUtil.getInstance().?, "close", .{ idOutData });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.STATICPAGEGENERATIONLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Wrote Total Bytes: "), newFile.?.length()), self, String.literal("generateAll()") });
            }
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Could Not Create: "), file); break :exception error.Exception; }});
        }
    }
    

    // throws Exception
    pub fn create(self: *Self, keywordData: ?*String, keywordFilenameHashMap: ?*HashMap, vector: ?*BasicArrayList, staticPath: ?*AbPath) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, SpecialCharacterUtil.getHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ CommonSeps.getInstance().?.SPACE, StringUtil.getInstance().?.EMPTY_STRING });
        const pageName: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.callStatic(Replace, "create1", .{ hashMap }), "all", .{ keywordData }));
        const searchParams: ?*SearchParams = Inheritance.upcast(?*SearchParams, Inheritance.receiver(self.searchRequest.?, "getParams").getParams());
        _ = Inheritance.call(searchParams.?, "add", .{ self.basicItemData.?.KEYWORDS, keywordData });
        _ = Inheritance.call(searchParams.?, "setStartPage", .{ CommonPhoneStrings.getInstance().?.ZERO });
        _ = Inheritance.call(self.searchRequest.?, "setParams", .{ searchParams });
        _ = Inheritance.call(self.searchRequest.?, "setFileBaseName", .{ pageName });
        const abeClientInformation: ?*AbeClientInformationInterface = Inheritance.upcast(?*AbeClientInformationInterface, ServiceClientInformationInterfaceFactory.getInstance());
        const inventorySearchUtil: ?*InventorySearchUtil = Inheritance.upcast(?*InventorySearchUtil, InventorySearchUtil.getInstance());
        const productListingPages: []?*String = Inheritance.call(inventorySearchUtil.?, "search", .{ abeClientInformation, self.searchRequest, vector });
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(productListingPages.len))) : (index += 1) {
            if (productListingPages[@intCast(index)] == null) {
                break;
            }
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.STATICPAGEGENERATIONLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Saving Listing: "), index), self, String.literal("generateAll()") });
            }
            var indexStr: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
            if (index > 0) {
                indexStr = Inheritance.upcast(@TypeOf(indexStr), String.valueOf(Inheritance.callStatic(Integer, "create1", .{ index }).?));
            }
            _ = Inheritance.call(keywordFilenameHashMap.?, "put", .{ keywordData, String.plus(pageName, indexStr) });
            _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(staticPath)) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ pageName });
            _ = Inheritance.call(stringBuffer.?, "append", .{ indexStr });
            _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.EXTENSION_SEP });
            _ = Inheritance.call(stringBuffer.?, "append", .{ InputOutputTypeData.getInstance().?.DEFAULT });
            const file: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            if (!Inheritance.call(self.directory.?, "create", .{ staticPath })) {
                std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Could Not Create Directory: "), staticPath); break :exception error.Exception; }});
            }
            _ = Inheritance.call(self, "savePage", .{ file, productListingPages[@intCast(index)] });
            }
        }
    }
    

    pub fn addStaticPageInfoToDatabase(self: *Self, storeFront: ?*StoreFrontInterface, keywordFilenameHashMap: ?*HashMap) void {
        const keywordHashSet: ?*Set = Inheritance.upcast(?*Set, keywordFilenameHashMap.?.keySet());
        const keywordArray: []?Object = keywordHashSet.?.toArray();
        const size: i32 = @as(i32, @intCast(keywordArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const insertVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            const keywordData: ?*String = Inheritance.cast(?*String, keywordArray[@intCast(index)]);
            const fileName: ?*String = Inheritance.cast(?*String, Inheritance.call(keywordFilenameHashMap.?, "get", .{ keywordData }));
            _ = Inheritance.call(insertVector.?, "add", .{ Inheritance.receiver(storeFront.?, "getName").getName() });
            _ = Inheritance.call(insertVector.?, "add", .{ keywordData });
            _ = Inheritance.call(insertVector.?, "add", .{ fileName });
            _ = Inheritance.call(self.staticPages.?, "insert", .{ insertVector });
            }
        }
    }
    

    // throws Exception
    pub fn generateAll(self: *Self) ?*String {
        { // try
            const storeFront: ?*StoreFrontInterface = Inheritance.upcast(?*StoreFrontInterface, Inheritance.receiver(self.searchRequest.?, "getStoreFront").getStoreFront());
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ URLGLOBALS.getWebappPath() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(storeFront.?, "getName").getName() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.SEPARATOR });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(storeFront.?, "getStaticPath").getStaticPath() });
            const staticPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ Object.toString(Object.of(stringBuffer)), StringUtil.getInstance().?.EMPTY_STRING });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.STATICPAGEGENERATIONLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Store Static Pages Path: "), staticPath), self, String.literal("generateAll()") });
            }
            const keywordHashSet: ?*HashSet = Inheritance.upcast(?*HashSet, Inheritance.call(self, "getHashSet", .{ storeFront }));
            const keywordArray: []?Object = keywordHashSet.?.toArray();
            const size: i32 = @as(i32, @intCast(keywordArray.len));
            const keywordFilenameHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            if (size == 0) {
                _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Products For ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(storeFront.?, "getName").getName() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Store Not Found") });
                return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            }
            const inventorySearchUtil: ?*InventorySearchUtil = Inheritance.upcast(?*InventorySearchUtil, InventorySearchUtil.getInstance());
            const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(inventorySearchUtil.?, "getBasicItemIdColumn", .{ self.searchRequest }));
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const keywordData: ?*String = Inheritance.cast(?*String, keywordArray[@intCast(index)]);
                if (keywordData.?.length() > 1) {
                    _ = Inheritance.call(self, "create", .{ keywordData, keywordFilenameHashMap, vector, staticPath });
                }
                }
            }
            _ = Inheritance.call(self, "addStaticPageInfoToDatabase", .{ storeFront, keywordFilenameHashMap });
            _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Static Files Generated Successfully For ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(storeFront.?, "getName").getName() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" it used packages ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(storeFront.?, "getPackageLocation").getPackageLocation() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.INVENTORY });
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn generateAll1(self: *Self, storeNameParameter: ?*String) ?*String {
        var storeName = storeNameParameter;
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            if (storeName != null) {
                if (Inheritance.call(storeName.?, "compareTo", .{ GLOBALS2.GENERATEALLSTORES }) != 0) {
                    _ = Inheritance.call(self.searchRequest.?, "setStoreFront", .{ Inheritance.call(self.storeFronts.?, "getStoreFrontInterface", .{ storeName }) });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ self.generateAll() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<br />") });
                } else {
                    const storeFrontVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(self.storeFronts.?, "getStoreFrontNames").getStoreFrontNames());
                    const size: i32 = storeFrontVector.?.size();
                    {
                        var index: i32 = 0;
                        while (index < size) : (index += 1) {
                        storeName = Inheritance.cast(?*String, Inheritance.call(storeFrontVector.?, "get", .{ index }));
                        _ = Inheritance.call(self.searchRequest.?, "setStoreFront", .{ Inheritance.call(self.storeFronts.?, "getStoreFrontInterface", .{ storeName }) });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ self.generateAll() });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<br />") });
                        }
                    }
                }
            } else {
                return String.literal("Generation Failed No Store Specified<br/>");
            }
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("All Static Pages Generated<br/>") });
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
};

