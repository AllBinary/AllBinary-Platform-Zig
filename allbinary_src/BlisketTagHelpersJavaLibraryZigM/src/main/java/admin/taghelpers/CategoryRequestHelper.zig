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
// package admin.taghelpers

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Map = @import("java/util/Map.zig").Map;
// const Set = @import("java/util/Set.zig").Set;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const CategoryComponent = @import("org/allbinary/business/category/CategoryComponent.zig").CategoryComponent;
const CategoryData = @import("org/allbinary/business/category/CategoryData.zig").CategoryData;
const CategoryInterface = @import("org/allbinary/business/category/CategoryInterface.zig").CategoryInterface;
const StoreCategoryFactory = @import("org/allbinary/business/category/store/StoreCategoryFactory.zig").StoreCategoryFactory;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const StoreFrontFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontFactory.zig").StoreFrontFactory;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const CategoryLoaderFactory = @import("org/allbinary/data/tree/category/CategoryLoaderFactory.zig").CategoryLoaderFactory;
const CategoryLoaderInterface = @import("org/allbinary/data/tree/category/CategoryLoaderInterface.zig").CategoryLoaderInterface;
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const XmlDocumentHelper = @import("org/allbinary/data/tree/dom/document/XmlDocumentHelper.zig").XmlDocumentHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const TransformInfoBasic = @import("org/allbinary/logic/visual/transform/info/TransformInfoBasic.zig").TransformInfoBasic;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const ModifyTable = @import("admin/taghelpers/ModifyTable.zig").ModifyTable;

pub const CategoryRequestHelper = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.CategoryRequestHelper";
    base: ModifyTable = undefined,
    logUtil: ?*LogUtil = null,
    pageContext: ?*PageContext = null,
    hashMap: ?*HashMap = null,
    request: ?*HttpServletRequest = null,
    categoryLoaderInterface: ?*CategoryLoaderInterface = null,
    categoryInterface: ?*CategoryInterface = null,
    childCategoryInterface: ?*CategoryInterface = null,
    transformInfoInterface: ?*TransformInfoInterface = null,
    var categoryRequest: ?*String = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        categoryRequest = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("<") }).?, "append", .{ CategoryData.getInstance().?.REQUEST }).?, "append", .{ String.literal(">") }))));
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.pageContext = null;
        this.hashMap = null;
        this.request = null;
        this.categoryLoaderInterface = null;
        this.categoryInterface = null;
        this.childCategoryInterface = null;
        this.transformInfoInterface = null;
    }
    

    pub fn create2(hashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ModifyTable.create().*;
        this.initFields();
        { // try
            this.request = Inheritance.cast(?*HttpServletRequest, pageContext.?.getRequest());
            this.pageContext = pageContext;
            this.hashMap = hashMap;
            _ = this.getXmlData();
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERERROR })) {
//                 _ = Inheritance.call(this.logUtil.?, "put", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.EXCEPTION, this, String.literal("CategoryRequestHelper()"), e });
//             }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getXmlData(self: *Self) void {
        { // try
            const map: ?*Map = Inheritance.upcast(?*Map, self.request.?.getParameterMap());
            const categoryData: ?*CategoryData = Inheritance.upcast(?*CategoryData, CategoryData.getInstance());
            const keys: ?*Set = Inheritance.upcast(?*Set, map.?.keySet());
            const keyArray: []?Object = keys.?.toArray();
            const size: i32 = @as(i32, @intCast(keyArray.len));
            if (size > 0) {
                var xmlRequest: ?*String = Inheritance.cast(?*String, keyArray[@intCast(0)]);
                const index: i32 = 1;
                while (index < size and !Inheritance.call(xmlRequest.?, "startsWith", .{ CategoryRequestHelper.categoryRequest })) {
                    xmlRequest = Inheritance.cast(?*String, keyArray[@intCast(index)]);
                    if (Inheritance.call(xmlRequest.?, "startsWith", .{ CategoryRequestHelper.categoryRequest })) {
                        break;
                    }
                }
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPER })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ xmlRequest, self, String.literal("getXmlData()") });
                }
                const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.callStatic(DomDocumentHelper, "create", .{ xmlRequest }));
                const requestNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ categoryData.?.REQUEST, document.?.getChildNodes() }));
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPER })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.callStatic(XmlDocumentHelper, "toString", .{ document }), self, String.literal("getXmlData()") });
                }
                _ = Inheritance.call(self, "setCategoryLoader", .{ requestNode });
                const parentCategoryNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ categoryData.?.PARENT, requestNode.?.getChildNodes() }));
                const categoryNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ categoryData.?.NAME, parentCategoryNode.?.getChildNodes() }));
                self.categoryInterface = Inheritance.cast(?*CategoryInterface, Inheritance.call(Inheritance.callStatic(StoreCategoryFactory, "create1", .{ self.transformInfoInterface }), "getRootInstanceFromNode", .{ categoryNode }));
                self.categoryInterface = Inheritance.upcast(@TypeOf(self.categoryInterface), Inheritance.call(self.categoryLoaderInterface.?, "get", .{ self.categoryInterface }));
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPER })) {
                    _ = Inheritance.receiver(self.categoryInterface.?, "log").log();
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Loaded Parent Category"), self, String.literal("getXmlData()") });
                }
                const childCategoryNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNodeNoThrow", .{ categoryData.?.NAME, requestNode.?.getChildNodes() }));
                if (childCategoryNode != null) {
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPER })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Loading Child Category"), self, String.literal("getXmlData()") });
                    }
                    self.childCategoryInterface = Inheritance.cast(?*CategoryInterface, Inheritance.call(Inheritance.callStatic(StoreCategoryFactory, "create1", .{ self.transformInfoInterface }), "getInstance", .{ childCategoryNode }));
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPER })) {
                        _ = Inheritance.receiver(self.childCategoryInterface.?, "log").log();
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Loaded Child Category"), self, String.literal("getXmlData()") });
                    }
                } else {
                    self.childCategoryInterface = self.categoryInterface;
                }
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("getXmlData()"), e });
//             }
    }
    

    // throws Exception
    pub fn setCategoryLoader(self: *Self, requestNode: ?*Node) void {
        const storeNameNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ StoreFrontData.getInstance().?.NAME, requestNode.?.getChildNodes() }));
        if (storeNameNode != null) {
            const storeName: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ storeNameNode }));
            if (storeName != null) {
                const storeFrontInterface: ?*StoreFrontInterface = Inheritance.upcast(?*StoreFrontInterface, Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ storeName }));
                self.transformInfoInterface = Inheritance.cast(?*TransformInfoInterface, Inheritance.callStatic(TransformInfoBasic, "create3", .{ storeFrontInterface, self.hashMap, self.pageContext }));
                if (self.transformInfoInterface == null) {
                    std.debug.panic("{any}", .{exception: { _ = String.literal("TransformInfo null"); break :exception error.Exception; }});
                }
                const storeCategoryFactory: ?*StoreCategoryFactory = Inheritance.callStatic(StoreCategoryFactory, "create1", .{ self.transformInfoInterface });
                self.categoryLoaderInterface = Inheritance.upcast(@TypeOf(self.categoryLoaderInterface), Inheritance.callStatic(CategoryLoaderFactory, "getInstance", .{ storeCategoryFactory }));
            } else {
                std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Store Name Error: "), storeName); break :exception error.Exception; }});
            }
        }
    }
    

    pub fn insert(self: *Self) ?*String {
        { // try
            const success: ?*String = String.literal("Successfully Added the following to the Category table");
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("inserting"), self, String.literal("insert()") });
            }
            _ = Inheritance.call(self.categoryLoaderInterface.?, "insert", .{ self.categoryInterface, self.childCategoryInterface });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("insert()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to add item to Category"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("insert()"), e });
//             }
//             return @"error";
    }
    

    pub fn delete(self: *Self) ?*String {
        { // try
            const success: ?*String = Inheritance.upcast(?*String, String.plus(String.plus(String.plus(String.literal("Successfully Removed "), CategoryData.getInstance().?.NAME), String.literal("=")), Inheritance.receiver(self.childCategoryInterface.?, "getPath").getPath()));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Deleting"), self, String.literal("delete()") });
            }
            _ = Inheritance.call(self.categoryLoaderInterface.?, "delete", .{ self.categoryInterface, self.childCategoryInterface });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("delete()") });
            }
            return success;
        }
        // catch (Exception e):
//             { // try
//                 const @"error": ?*String = Inheritance.upcast(?*String, String.plus(String.literal("Failed to remove category: "), Inheritance.receiver(self.childCategoryInterface.?, "getPath").getPath())); _ = @"error";
//                 if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                     _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("delete()"), e });
//                 }
//                 return @"error";
//             }
//             // catch (Exception e2):
// //                 const @"error": ?*String = String.literal("Failed to remove category and show the path of the failed category"); _ = @"error";
// //                 if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
// //                     _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("delete()"), e2 });
// //                 }
// //                 return @"error";
    }
    

    pub fn viewCategory(self: *Self) ?*String {
        { // try
            const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.receiver(Inheritance.callStatic(CategoryComponent, "create1", .{ self.childCategoryInterface }), "toXmlDoc").toXmlDoc());
            const xmlString: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(XmlDocumentHelper, "toString", .{ document }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ xmlString, self, String.literal("viewCategory()") });
            }
            return xmlString;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to get Category"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("viewCategory()"), e });
//             }
//             return @"error";
    }
    

    pub fn viewCategories(self: *Self) ?*String {
        { // try
            const success: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("viewCategories()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to view Categories table"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("viewCategories()"), e });
//             }
//             return @"error";
    }
    

    pub fn update(self: *Self) ?*String {
        { // try
            const success: ?*String = String.literal("New Item Successfully added");
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("update()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to add Item"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("update()"), e });
//             }
//             return @"error";
    }
};

