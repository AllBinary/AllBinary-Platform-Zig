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
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const InventoryData = @import("org/allbinary/business/user/commerce/inventory/InventoryData.zig").InventoryData;
const BasketData = @import("org/allbinary/business/user/commerce/inventory/basket/BasketData.zig").BasketData;
const BasicItemData = @import("org/allbinary/business/user/commerce/inventory/item/BasicItemData.zig").BasicItemData;
const BasicItemView = @import("org/allbinary/business/user/commerce/inventory/item/BasicItemView.zig").BasicItemView;
const ItemInterface = @import("org/allbinary/business/user/commerce/inventory/item/ItemInterface.zig").ItemInterface;
const InventoryEntity = @import("org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntity.zig").InventoryEntity;
const InventoryEntityFactory = @import("org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory.zig").InventoryEntityFactory;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const XmlDocumentHelper = @import("org/allbinary/data/tree/dom/document/XmlDocumentHelper.zig").XmlDocumentHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const SearchData = @import("org/allbinary/logic/control/search/SearchData.zig").SearchData;
const SearchParams = @import("org/allbinary/logic/control/search/SearchParams.zig").SearchParams;
const SearchRequest = @import("org/allbinary/logic/control/search/SearchRequest.zig").SearchRequest;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const Replace = @import("org/allbinary/logic/string/regex/replace/Replace.zig").Replace;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const StoreTransformer = @import("org/allbinary/logic/visual/transform/StoreTransformer.zig").StoreTransformer;
const TransformDocumentInterface = @import("org/allbinary/logic/visual/transform/data/TransformDocumentInterface.zig").TransformDocumentInterface;
const TransformStoreDocumentFactory = @import("org/allbinary/logic/visual/transform/data/TransformStoreDocumentFactory.zig").TransformStoreDocumentFactory;
const TransformInfoHttpSearch = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpSearch.zig").TransformInfoHttpSearch;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const CommonPhoneStrings = @import("org/allbinary/string/CommonPhoneStrings.zig").CommonPhoneStrings;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const InventoryColumnUtil = @import("views/generic/inventory/InventoryColumnUtil.zig").InventoryColumnUtil;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const InventorySearchUtil = struct {
    const Self = @This();
    pub const java_name = "views.generic.inventory.InventorySearchUtil";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    commonPhoneStrings: ?*CommonPhoneStrings = null,
    basicItemData: ?*BasicItemData = null,
    var instance: ?*InventorySearchUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = InventorySearchUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.commonPhoneStrings = Inheritance.upcast(?*CommonPhoneStrings, CommonPhoneStrings.getInstance());
        this.basicItemData = Inheritance.upcast(?*BasicItemData, BasicItemData.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*InventorySearchUtil {
        return Inheritance.upcast(?*InventorySearchUtil, InventorySearchUtil.instance);
    }
    

    // throws Exception
    pub fn getBasicItemIdColumn(self: *Self, searchRequest: ?*SearchRequest) ?*BasicArrayList {
        const inventoryEntityInterface: ?*InventoryEntity = Inheritance.upcast(?*InventoryEntity, Inheritance.receiverOf(InventoryEntityFactory.getInstance().?, "getInventoryEntityInstance").getInventoryEntityInstance());
        const storeFrontInterface: ?*StoreFrontInterface = Inheritance.upcast(?*StoreFrontInterface, Inheritance.receiver(searchRequest.?, "getStoreFront").getStoreFront());
        const inventorySearchUtil: ?*InventoryColumnUtil = Inheritance.upcast(?*InventoryColumnUtil, InventoryColumnUtil.getInstance());
        const column: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(inventorySearchUtil.?, "getColumnWhereLike", .{ inventoryEntityInterface, Inheritance.receiver(storeFrontInterface.?, "getCategoryPath").getCategoryPath(), self.basicItemData.?.ID }));
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PRODUCTSEARCHLOGGING })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Number Of Items Found: "), column.?.size()), self, String.literal("search") });
        }
        const subStoreVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(storeFrontInterface.?, "getSubStores").getSubStores());
        const size: i32 = subStoreVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const subStore: ?*String = Inheritance.cast(?*String, Inheritance.call(subStoreVector.?, "get", .{ index }));
            const substoreIdColumn: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(inventorySearchUtil.?, "getColumnWhereLike", .{ inventoryEntityInterface, subStore, self.basicItemData.?.ID }));
            _ = Inheritance.call(column.?, "addAllList", .{ substoreIdColumn });
            }
        }
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PRODUCTSEARCHLOGGING })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Number Of Items Found Including SubStores: "), column.?.size()), self, String.literal("search") });
        }
        return column;
    }
    

    // throws Exception
    pub fn getNoResults(self: *Self, viewDocumentInterface: ?*TransformDocumentInterface, inventoryNode: ?*Node) ?*String {
        _ = Inheritance.call(inventoryNode.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ viewDocumentInterface.?.getDoc(), SearchData.TOTAL_NUMBER_PAGES, self.commonPhoneStrings.?.ZERO }) });
        _ = Inheritance.call(inventoryNode.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ viewDocumentInterface.?.getDoc(), SearchData.TOTAL_NUMBER_ITEMS, self.commonPhoneStrings.?.ZERO }) });
        const success: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(XmlDocumentHelper, "toString", .{ viewDocumentInterface.?.getDoc() }));
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PRODUCTSEARCHLOGGING })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("No Results Xml: "), success), self, String.literal("search") });
        }
        return success;
    }
    

    pub fn search(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, searchRequest: ?*SearchRequest, column: ?*BasicArrayList) []?*String {
        { // try
            const inventoryEntityInterface: ?*InventoryEntity = Inheritance.upcast(?*InventoryEntity, Inheritance.receiverOf(InventoryEntityFactory.getInstance().?, "getInventoryEntityInstance").getInventoryEntityInstance());
            const searchParams: ?*SearchParams = Inheritance.upcast(?*SearchParams, Inheritance.receiver(searchRequest.?, "getParams").getParams());
            const startPage: i32 = Inheritance.receiverOf(searchParams.?.getStartPageInt().?, "intValue").intValue();
            var endPage: i32 = Inheritance.receiverOf(searchParams.?.getEndPageInt().?, "intValue").intValue();
            var pageLength: i32 = Inheritance.receiverOf(searchParams.?.getLengthInt().?, "intValue").intValue();
            var savedPagesInRange: i32 = 0;
            const columnValueHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, searchParams.?.get());
            var keyword: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.callStatic(Replace, "create2", .{ String.literal("-"), CommonSeps.getInstance().?.SPACE }), "all", .{ Inheritance.cast(?*String, Inheritance.call(columnValueHashMap.?, "get", .{ self.basicItemData.?.KEYWORDS })) }));
            if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ keyword })) {
                return null;
            }
            const stringBuffer: ?*StringMaker = StringMaker.create();
            if (startPage >= 0) {
                if (pageLength == 0) {
                    pageLength = SearchData.DEFAULT_PAGE_LENGTH;
                }
                const MAXPAGES: i32 = 100;
                const productListingPages: []?*String = array_N69349: { const array_N69349_array = allocator.alloc(?*String, @intCast(MAXPAGES)) catch unreachable; @memset(array_N69349_array, null); break :array_N69349 array_N69349_array; };
                const documents: []?*Document = array_N69415: { const array_N69415_array = allocator.alloc(?*Document, @intCast(MAXPAGES)) catch unreachable; @memset(array_N69415_array, null); break :array_N69415 array_N69415_array; };
                const inventoryNodes: []?*Node = array_N69481: { const array_N69481_array = allocator.alloc(?*Node, @intCast(MAXPAGES)) catch unreachable; @memset(array_N69481_array, null); break :array_N69481 array_N69481_array; };
                keyword = Inheritance.upcast(@TypeOf(keyword), keyword.?.toUpperCase());
                var lastPage: i32 = -1;
                var numberOfResultsOnCurrentPage: i32 = 0;
                var numberOfResults: i32 = 0;
                var viewDocumentInterface: ?*TransformDocumentInterface = Inheritance.upcast(?*TransformDocumentInterface, Inheritance.callStatic(TransformStoreDocumentFactory, "getInstance", .{ searchRequest }));
                var inventoryNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(viewDocumentInterface.?.getDoc().?, "createElement", .{ InventoryData.INVENTORY }));
                _ = Inheritance.call(viewDocumentInterface.?.getBaseNode().?, "appendChild", .{ inventoryNode });
                _ = Inheritance.call(inventoryNode.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ viewDocumentInterface.?.getDoc(), SearchData.PAGE, String.valueOf(Inheritance.callStatic(Integer, "create1", .{ startPage }).?) }) });
                if (Inheritance.receiver(searchRequest.?, "getFileBaseName").getFileBaseName() != null) {
                    _ = Inheritance.call(inventoryNode.?, "appendChild", .{ Inheritance.call(searchRequest.?, "getFileBaseNameNode", .{ viewDocumentInterface.?.getDoc() }) });
                }
                var currentPage: i32 = -1;
                const size: i32 = column.?.size();
                {
                    var index: i32 = 0;
                    while (index < size) : (index += 1) {
                    const product: ?*String = Inheritance.callStatic(String, "create1", .{ Inheritance.cast(?*String, Inheritance.call(column.?, "get", .{ index })) });
                    const itemInterface: ?*ItemInterface = Inheritance.upcast(?*ItemInterface, Inheritance.call(inventoryEntityInterface.?, "getItem", .{ product }));
                    var keywords: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(itemInterface.?, "getKeywords").getKeywords());
                    keywords = Inheritance.upcast(@TypeOf(keywords), keywords.?.toUpperCase());
                    if (Inheritance.call(keywords.?, "indexOf", .{ keyword }) != -1) {
                        if (currentPage + 1 >= startPage and currentPage + 1 <= endPage) {
                            const itemNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(Inheritance.callStatic(BasicItemView, "create2", .{ itemInterface, BasicArrayListD.create() }), "toXmlNode", .{ viewDocumentInterface.?.getDoc() }));
                            _ = Inheritance.call(itemNode.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ viewDocumentInterface.?.getDoc(), BasketData.ITEMTOTALINBASKET, self.commonPhoneStrings.?.ONE }) });
                            _ = Inheritance.call(inventoryNode.?, "appendChild", .{ Inheritance.call(itemNode.?, "cloneNode", .{ true }) });
                        }
                        currentPage = (@divTrunc((numberOfResults + 1), pageLength)) - 1;
                        numberOfResultsOnCurrentPage += 1;
                        if (lastPage < currentPage) {
                            if (currentPage >= startPage and currentPage <= endPage) {
                                _ = Inheritance.call(inventoryNode.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ viewDocumentInterface.?.getDoc(), SearchData.TOTAL_NUMBER_ITEMS_ON_THIS_PAGE, String.valueOf(Inheritance.callStatic(Integer, "create1", .{ numberOfResultsOnCurrentPage }).?) }) });
                                documents[@intCast(currentPage)] = Inheritance.upcast(@TypeOf(documents[@intCast(currentPage)]), viewDocumentInterface.?.getDoc());
                                inventoryNodes[@intCast(currentPage)] = Inheritance.upcast(@TypeOf(inventoryNodes[@intCast(currentPage)]), inventoryNode);
                                savedPagesInRange += 1;
                                viewDocumentInterface = Inheritance.upcast(@TypeOf(viewDocumentInterface), Inheritance.callStatic(TransformStoreDocumentFactory, "getInstance", .{ searchRequest }));
                                inventoryNode = Inheritance.upcast(@TypeOf(inventoryNode), Inheritance.call(viewDocumentInterface.?.getDoc().?, "createElement", .{ InventoryData.INVENTORY }));
                                _ = Inheritance.call(viewDocumentInterface.?.getBaseNode().?, "appendChild", .{ inventoryNode });
                                _ = Inheritance.call(inventoryNode.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ viewDocumentInterface.?.getDoc(), SearchData.PAGE, String.valueOf(Inheritance.callStatic(Integer, "create1", .{ currentPage + 1 }).?) }) });
                                if (Inheritance.receiver(searchRequest.?, "getFileBaseName").getFileBaseName() != null) {
                                    _ = Inheritance.call(inventoryNode.?, "appendChild", .{ Inheritance.call(searchRequest.?, "getFileBaseNameNode", .{ viewDocumentInterface.?.getDoc() }) });
                                }
                            }
                            lastPage = currentPage;
                            numberOfResultsOnCurrentPage = 0;
                        }
                        numberOfResults += 1;
                        if (lastPage >= MAXPAGES - 1) {
                            break;
                        }
                    }
                    }
                }
                if (numberOfResultsOnCurrentPage > 0 and (currentPage + 1 >= startPage and currentPage + 1 <= endPage)) {
                    _ = Inheritance.call(inventoryNode.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ viewDocumentInterface.?.getDoc(), SearchData.TOTAL_NUMBER_ITEMS_ON_THIS_PAGE, String.valueOf(Inheritance.callStatic(Integer, "create1", .{ numberOfResultsOnCurrentPage - 1 }).?) }) });
                    documents[@intCast(lastPage + 1)] = Inheritance.upcast(@TypeOf(documents[@intCast(lastPage + 1)]), viewDocumentInterface.?.getDoc());
                    inventoryNodes[@intCast(lastPage + 1)] = Inheritance.upcast(@TypeOf(inventoryNodes[@intCast(lastPage + 1)]), inventoryNode);
                    savedPagesInRange += 1;
                }
                if (numberOfResultsOnCurrentPage > 0) {
                    lastPage += 1;
                }
                if (endPage > MAXPAGES - 1) {
                    endPage = MAXPAGES - 1;
                }
                {
                    var index: i32 = startPage;
                    while (index <= endPage) : (index += 1) {
                    if (index <= lastPage) {
                        const tempDocument: ?*Document = Inheritance.upcast(?*Document, documents[@intCast(index)]);
                        _ = Inheritance.call(inventoryNodes[@intCast(index)].?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ tempDocument, SearchData.TOTAL_NUMBER_PAGES, String.valueOf(Inheritance.callStatic(Integer, "create1", .{ lastPage + 1 }).?) }) });
                        _ = Inheritance.call(inventoryNodes[@intCast(index)].?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ tempDocument, SearchData.TOTAL_NUMBER_ITEMS, String.valueOf(Inheritance.callStatic(Integer, "create1", .{ numberOfResults }).?) }) });
                        {
                            var pageIndex: i32 = 0;
                            while (pageIndex <= lastPage) : (pageIndex += 1) {
                            _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(searchRequest.?, "getFileBaseName").getFileBaseName() });
                            if (stringBuffer.?.length() > 0) {
                                if (pageIndex != 0) {
                                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.valueOf(pageIndex) });
                                }
                                _ = Inheritance.call(inventoryNodes[@intCast(index)].?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ tempDocument, SearchData.PAGE_INFO, String.valueOf(pageIndex), Object.toString(Object.of(stringBuffer)) }) });
                            } else {
                                _ = Inheritance.call(inventoryNodes[@intCast(index)].?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ tempDocument, SearchData.PAGE_INFO, String.valueOf(pageIndex), SearchData.SEARCH }) });
                            }
                            }
                        }
                        const success: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(XmlDocumentHelper, "toString", .{ tempDocument }));
                        productListingPages[@intCast(index)] = Inheritance.upcast(@TypeOf(productListingPages[@intCast(index)]), Inheritance.call(Inheritance.callStatic(StoreTransformer, "create2", .{ abeClientInformation, Inheritance.cast(?*TransformInfoInterface, Inheritance.callStatic(TransformInfoHttpSearch, "create1", .{ searchRequest })) }), "translate", .{ success }));
                    }
                    }
                }
                if (savedPagesInRange == 0) {
                    const result: ?*String = Inheritance.upcast(?*String, Inheritance.call(self, "getNoResults", .{ viewDocumentInterface, inventoryNode }));
                    productListingPages[@intCast(0)] = Inheritance.upcast(@TypeOf(productListingPages[@intCast(0)]), Inheritance.call(Inheritance.callStatic(StoreTransformer, "create2", .{ abeClientInformation, Inheritance.callStatic(TransformInfoHttpSearch, "create1", .{ searchRequest }) }), "translate", .{ result }));
                }
                return productListingPages;
            } else {
                return null;
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PRODUCTSEARCHLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.FAILURE, self, String.literal("search"), e });
//             }
//             return null;
    }
};

