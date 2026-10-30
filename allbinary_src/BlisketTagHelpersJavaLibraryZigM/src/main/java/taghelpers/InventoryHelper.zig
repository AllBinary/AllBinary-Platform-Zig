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
// package taghelpers

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const HttpServletResponse = @import("javax/servlet/http/HttpServletResponse.zig").HttpServletResponse;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const TagHelper = @import("admin/taghelpers/TagHelper.zig").TagHelper;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const StoreFrontFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontFactory.zig").StoreFrontFactory;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const StreetAddress = @import("org/allbinary/business/user/address/StreetAddress.zig").StreetAddress;
const BasicItemData = @import("org/allbinary/business/user/commerce/inventory/item/BasicItemData.zig").BasicItemData;
const AcceptableResponseGenerator = @import("org/allbinary/logic/communication/http/AcceptableResponseGenerator.zig").AcceptableResponseGenerator;
const WeblisketSession = @import("org/allbinary/logic/communication/http/request/session/WeblisketSession.zig").WeblisketSession;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const SearchParams = @import("org/allbinary/logic/control/search/SearchParams.zig").SearchParams;
const SearchRequest = @import("org/allbinary/logic/control/search/SearchRequest.zig").SearchRequest;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const TransformInfoData = @import("org/allbinary/logic/visual/transform/info/TransformInfoData.zig").TransformInfoData;
const InventoryViewFactory = @import("views/admin/inventory/listings/InventoryViewFactory.zig").InventoryViewFactory;
const InventoryViewSearchInterface = @import("views/admin/inventory/listings/InventoryViewSearchInterface.zig").InventoryViewSearchInterface;

pub const InventoryHelper = struct {
    const Self = @This();
    pub const java_name = "taghelpers.InventoryHelper";
    base: TagHelper = undefined,
    logUtil: ?*LogUtil = null,
    basicItemData: ?*BasicItemData = null,
    weblisketSession: ?*WeblisketSession = null,
    response: ?*HttpServletResponse = null,
    request: ?*HttpServletRequest = null,
    streetAddress: ?*StreetAddress = null,
    id: ?*String = null,
    searchRequest: ?*SearchRequest = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.basicItemData = Inheritance.upcast(?*BasicItemData, BasicItemData.getInstance());
        this.weblisketSession = null;
        
        
        this.streetAddress = null;
        this.id = null;
        this.searchRequest = null;
    }
    

    pub fn create2(propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TagHelper.create().*;
        this.initFields();
        this.response = Inheritance.cast(?*HttpServletResponse, pageContext.?.getResponse());
        this.request = Inheritance.cast(?*HttpServletRequest, pageContext.?.getRequest());
        const storeName: ?*String = Inheritance.cast(?*String, Inheritance.call(propertiesHashMap.?, "get", .{ StoreFrontData.getInstance().?.NAME }));
        const xslFile: ?*String = Inheritance.cast(?*String, Inheritance.call(propertiesHashMap.?, "get", .{ TransformInfoData.getInstance().?.TEMPLATEFILENAME }));
        if (storeName != null) {
            const storeFrontInterface: ?*StoreFrontInterface = Inheritance.upcast(?*StoreFrontInterface, Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ storeName }));
            const contentType: ?*String = Inheritance.upcast(?*String, Inheritance.call(AcceptableResponseGenerator.getInstance().?, "get", .{ this.request }));
            const searchParams: ?*SearchParams = Inheritance.callStatic(SearchParams, "create1", .{ this.request });
            this.searchRequest = Inheritance.callStatic(SearchRequest, "create6", .{ storeFrontInterface, searchParams, xslFile, contentType, propertiesHashMap, pageContext });
        }
        _ = this.getFormData();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getFormData(self: *Self) void {
        self.id = Inheritance.upcast(@TypeOf(self.id), Inheritance.call(self.request.?, "getParameter", .{ self.basicItemData.?.ID }));
    }
    

    pub fn viewSummary(self: *Self) ?*String {
        { // try
            const inventoryViewSearchInterface: ?*InventoryViewSearchInterface = Inheritance.upcast(?*InventoryViewSearchInterface, Inheritance.callStatic(InventoryViewFactory, "getInstance", .{ self.searchRequest }));
            const result: ?*String = Inheritance.upcast(?*String, Inheritance.call(inventoryViewSearchInterface.?, "getProduct", .{ self.id }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Successfull Inventory View Summary"), self, String.literal("viewSummary()") });
            }
            return result;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to View Summary"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("viewSummary()"), e });
//             }
//             return Inheritance.upcast(?*String, String.plus(String.plus(String.plus(String.plus(@"error", String.literal("<br>")), String.literal("Exception: ")), e), String.literal("<br>")));
    }
    

    pub fn search(self: *Self) ?*String {
        { // try
            const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
            const keywords: ?*String = Inheritance.cast(?*String, Inheritance.call(Inheritance.receiverOf(Inheritance.receiver(self.searchRequest.?, "getParams").getParams().?, "get").get().?, "get", .{ self.basicItemData.?.KEYWORDS }));
            if (keywords == null or Inheritance.call(keywords.?, "compareTo", .{ stringUtil.?.EMPTY_STRING }) == 0) {
                return String.literal("Please enter a keyword in the search field above the Search button.");
            }
            const inventoryViewSearchInterface: ?*InventoryViewSearchInterface = Inheritance.upcast(?*InventoryViewSearchInterface, Inheritance.callStatic(InventoryViewFactory, "getInstance", .{ self.searchRequest }));
            const result: ?*String = Inheritance.upcast(?*String, inventoryViewSearchInterface.?.searchSingleDynamicPage());
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Successful Inventory Dynamic Search"), self, String.literal("searchSingleDynamicPage()") });
            }
            return result;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to search Inventory by keyword"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("searchSingleDynamicPage()"), e });
//             }
//             return Inheritance.upcast(?*String, String.plus(String.plus(String.plus(String.plus(@"error", String.literal("<br>")), String.literal("Exception: ")), e), String.literal("<br>")));
    }
};

