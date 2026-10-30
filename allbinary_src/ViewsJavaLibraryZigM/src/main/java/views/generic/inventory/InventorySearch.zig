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
// package views.generic.inventory

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const BasicItemData = @import("org/allbinary/business/user/commerce/inventory/item/BasicItemData.zig").BasicItemData;
const StaticPagesEntity = @import("org/allbinary/data/tables/staticpages/StaticPagesEntity.zig").StaticPagesEntity;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const SearchParams = @import("org/allbinary/logic/control/search/SearchParams.zig").SearchParams;
const SearchRequest = @import("org/allbinary/logic/control/search/SearchRequest.zig").SearchRequest;
const InputOutputTypeData = @import("org/allbinary/logic/io/InputOutputTypeData.zig").InputOutputTypeData;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const Replace = @import("org/allbinary/logic/string/regex/replace/Replace.zig").Replace;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const ServiceClientInformationInterfaceFactory = @import("org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory.zig").ServiceClientInformationInterfaceFactory;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const InventoryViewSearchInterface = @import("views/admin/inventory/listings/InventoryViewSearchInterface.zig").InventoryViewSearchInterface;
const InventorySearchProductUtil = @import("views/generic/inventory/InventorySearchProductUtil.zig").InventorySearchProductUtil;
const InventorySearchUtil = @import("views/generic/inventory/InventorySearchUtil.zig").InventorySearchUtil;

pub const InventorySearch = struct {
    const Self = @This();
    pub const java_name = "views.generic.inventory.InventorySearch";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    basicItemData: ?*BasicItemData = null,
    searchRequest: ?*SearchRequest = null,
    // Implements InventoryViewSearchInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.basicItemData = Inheritance.upcast(?*BasicItemData, BasicItemData.getInstance());
        
    }
    

    pub fn create1(searchRequest: ?*SearchRequest) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        
        this.initFields();
        this.searchRequest = searchRequest;
        return this;
    }
    

    // throws Exception
    pub fn searchSingleStaticPage(self: *Self) ?*String {
        { // try
            const storeFront: ?*StoreFrontInterface = Inheritance.upcast(?*StoreFrontInterface, Inheritance.receiver(self.searchRequest.?, "getStoreFront").getStoreFront());
            const searchParams: ?*SearchParams = Inheritance.upcast(?*SearchParams, Inheritance.receiver(self.searchRequest.?, "getParams").getParams());
            const columnValueHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, searchParams.?.get());
            const file: ?*String = Inheritance.upcast(?*String, Inheritance.call(StaticPagesEntity.create(), "getFile", .{ Inheritance.receiver(storeFront.?, "getName").getName(), Inheritance.call(Inheritance.callStatic(Replace, "create2", .{ String.literal("-"), CommonSeps.getInstance().?.SPACE }), "all", .{ Inheritance.cast(?*String, Inheritance.call(columnValueHashMap.?, "get", .{ self.basicItemData.?.KEYWORDS })) }) }));
            if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ file })) {
                return null;
            } else {
                const stringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(storeFront.?, "getCurrentHostName").getCurrentHostName() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(storeFront.?, "getCurrentHostNamePath").getCurrentHostNamePath() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(storeFront.?, "getStaticPath").getStaticPath() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ file });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.receiver(self.searchRequest.?, "getParams").getParams().?, "getEndPage").getEndPage() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.EXTENSION_SEP });
                _ = Inheritance.call(stringBuffer.?, "append", .{ InputOutputTypeData.getInstance().?.DEFAULT });
                const filePath: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.callStatic(Replace, "create2", .{ CommonSeps.getInstance().?.SPACE, String.literal("%20") }), "all", .{ Object.toString(Object.of(stringBuffer)) }));
                return filePath;
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PRODUCTSEARCHLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.FAILURE, self, String.literal("searchSingleStaticPage"), e });
//             }
//             std.debug.panic("{any}", .{exception: { _ = String.literal("Failed retrieve Single Product Page Static"); break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn searchSingleDynamicPage(self: *Self) ?*String {
        { // try
            const str: []?*String = self.search();
            return Inheritance.upcast(?*String, str[@intCast(Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.receiver(self.searchRequest.?, "getParams").getParams().?, "getStartPageInt").getStartPageInt().?, "intValue").intValue())]);
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PRODUCTSEARCHLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.FAILURE, self, String.literal("searchSingleDynamicPage"), e });
//             }
//             std.debug.panic("{any}", .{exception: { _ = String.literal("Failed retrieve Single Product Page Dynamically"); break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn search(self: *Self) []?*String {
        const abeClientInformation: ?*AbeClientInformationInterface = Inheritance.upcast(?*AbeClientInformationInterface, ServiceClientInformationInterfaceFactory.getInstance());
        const inventorySearchUtil: ?*InventorySearchUtil = Inheritance.upcast(?*InventorySearchUtil, InventorySearchUtil.getInstance());
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(inventorySearchUtil.?, "getBasicItemIdColumn", .{ self.searchRequest }));
        return Inheritance.call(inventorySearchUtil.?, "search", .{ abeClientInformation, self.searchRequest, vector });
    }
    

    // throws Exception
    pub fn getProduct(self: *Self, product: ?*String) ?*String {
        const abeClientInformation: ?*AbeClientInformationInterface = Inheritance.upcast(?*AbeClientInformationInterface, ServiceClientInformationInterfaceFactory.getInstance());
        return Inheritance.upcast(?*String, Inheritance.call(InventorySearchProductUtil.getInstance().?, "getProduct", .{ abeClientInformation, self.searchRequest, product }));
    }
};

