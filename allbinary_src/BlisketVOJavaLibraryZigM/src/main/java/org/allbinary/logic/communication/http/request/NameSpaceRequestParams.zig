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
// package org.allbinary.logic.communication.http.request

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Set = @import("java/util/Set.zig").Set;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const DomData = @import("org/allbinary/data/tree/dom/DomData.zig").DomData;
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const XmlDocumentHelper = @import("org/allbinary/data/tree/dom/document/XmlDocumentHelper.zig").XmlDocumentHelper;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NameSpaceRequestParam = @import("org/allbinary/logic/communication/http/request/NameSpaceRequestParam.zig").NameSpaceRequestParam;
const NameSpaceRequestParamData = @import("org/allbinary/logic/communication/http/request/NameSpaceRequestParamData.zig").NameSpaceRequestParamData;
const RequestParams = @import("org/allbinary/logic/communication/http/request/RequestParams.zig").RequestParams;

//containing string values and other hashmaps of the like
pub const NameSpaceRequestParams = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.http.request.NameSpaceRequestParams";
    base: RequestParams = undefined,
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RequestParams, "create", .{  }).*;
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.literal("Constructing empty"), this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create1(httpServletRequest: ?*HttpServletRequest) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RequestParams, "create1", .{ httpServletRequest }).*;
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.literal("Constructing from HttpServletRequest"), this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RequestParams, "create1", .{ pageContext }).*;
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.literal("Constructing from PageContext"), this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn createPackageNode(self: *Self, document: ?*Document, packageName: ?*String, packagePropertiesHashMap: ?*HashMap) ?*Node {
        _ = self;
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ packageName }));
        const propertyKeySet: ?*Set = Inheritance.upcast(?*Set, packagePropertiesHashMap.?.keySet());
        const propertyKeySetArray: []?Object = propertyKeySet.?.toArray();
        const size: i32 = @as(i32, @intCast(propertyKeySetArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const propertyName: ?*String = Inheritance.cast(?*String, propertyKeySetArray[@intCast(index)]);
            const propertyValue: ?*String = Inheritance.cast(?*String, Inheritance.call(packagePropertiesHashMap.?, "get", .{ propertyName }));
            const propertyNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createTextNode", .{ document, propertyName, propertyValue }));
            _ = Inheritance.call(node.?, "appendChild", .{ propertyNode });
            }
        }
        return node;
    }
    

    // throws Exception
    pub fn createPackageMultiNode(self: *Self, document: ?*Document, nameSpaceRequestParam: ?*NameSpaceRequestParam, packageName: ?*String, packagePropertiesHashMap: ?*HashMap) ?*Node {
        const beginIndex: i32 = Inheritance.call(packageName.?, "indexOf", .{ '[' });
        const indexValue: ?*String = Inheritance.upcast(?*String, packageName.?.substring2(beginIndex + 1, packageName.?.length() - 1));
        const multiElementPackage: ?*String = Inheritance.upcast(?*String, packageName.?.substring2(0, beginIndex));
        var selectedValue: ?*String = Inheritance.upcast(?*String, nameSpaceRequestParam.?.getValue());
        const propertyValue: ?*String = Inheritance.cast(?*String, Inheritance.call(packagePropertiesHashMap.?, "get", .{ DomData.VALUE }));
        if (Inheritance.call(propertyValue.?, "compareTo", .{ NameSpaceRequestParamData.VALUE }) != 0) {
            selectedValue = propertyValue;
        }
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.plus(String.plus(String.literal("\nAppending Multinode Element: "), multiElementPackage), String.literal("[")), indexValue), String.literal("] ")), selectedValue), self, String.literal("createPackageMultiNode") });
        }
        const nextNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, multiElementPackage, selectedValue }));
        const indexNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createTextNode", .{ document, DomData.INDEX, indexValue }));
        _ = Inheritance.call(nextNode.?, "appendChild", .{ indexNode });
        return nextNode;
    }
    

    // throws Exception
    pub fn getRootNode(self: *Self, rootElementPackage: ?*String, packagePropertiesHashMap: ?*HashMap, document: ?*Document) ?*Node {
        const rootNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNodeNoThrow", .{ rootElementPackage, document.?.getChildNodes() }));
        if (rootNode == null) {
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.plus(String.literal("\nAppending Document Root: "), String.literal("\nElementName: ")), rootElementPackage), String.literal("\nProperties: ")), Object.toString(Object.of(packagePropertiesHashMap))), self, String.literal("getRootNode") });
            }
            const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(self, "createPackageNode", .{ document, rootElementPackage, packagePropertiesHashMap }));
            _ = Inheritance.call(document.?, "appendChild", .{ node });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("\nAppended Document Created: "), Inheritance.callStatic(XmlDocumentHelper, "toString", .{ document })), self, String.literal("getRootNode") });
            }
            return node;
        } else {
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("\nUsing Existing Root Node"), self, String.literal("getRootNode") });
            }
            return rootNode;
        }
    }
    

    // throws Exception
    pub fn addNewProperties(self: *Self, document: ?*Document, node: ?*Node, nextPackagePropertiesHashMap: ?*HashMap) ?*Node {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("\nAdding Any New Properties: ") }).?, "append", .{ Object.toString(Object.of(nextPackagePropertiesHashMap)) }).?, "append", .{ String.literal("\nto node: ") }).?, "append", .{ node.?.getNodeName() }))), self, String.literal("addNewProperties") });
        }
        const propertyNameSet: ?*Set = Inheritance.upcast(?*Set, nextPackagePropertiesHashMap.?.keySet());
        const propertyNameSetArray: []?Object = propertyNameSet.?.toArray();
        const size: i32 = @as(i32, @intCast(propertyNameSetArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const nextPropertyName: ?*String = Inheritance.cast(?*String, propertyNameSetArray[@intCast(index)]);
            const propertyValue: ?*String = Inheritance.upcast(?*String, Inheritance.call(StringUtil.getInstance().?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(nextPackagePropertiesHashMap.?, "get", .{ nextPropertyName })) }));
            const valueNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNodeNoThrow", .{ nextPropertyName, node.?.getChildNodes() }));
            if (valueNode != null) {
                const existingElementNodeTextNodeValue: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ valueNode }));
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.plus(String.plus(String.plus(String.plus(String.plus(String.literal("\nIf property: \""), nextPropertyName), String.literal(" is the same as:\n")), String.literal("Node: ")), node.?.getNodeName()), String.literal(" then: ")), propertyValue), String.literal("==")), existingElementNodeTextNodeValue), self, String.literal("addNewProperties") });
                }
                if (Inheritance.call(propertyValue.?, "compareTo", .{ existingElementNodeTextNodeValue }) != 0) {
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("At least one Property from NameSpaceRequest Package was different from Node"), self, String.literal("addNewProperties") });
                    }
                    std.debug.panic("{any}", .{exception: { _ = String.literal("Property Modifications Should Not Occur"); break :exception error.Exception; }});
                }
            } else {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.literal("Adding a new Property: "), nextPropertyName), String.literal("=")), propertyValue), self, String.literal("addNewProperties") });
                }
                const newPropertyNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createTextNode", .{ document, nextPropertyName, propertyValue }));
                _ = Inheritance.call(node.?, "appendChild", .{ newPropertyNode });
            }
            }
        }
        return node;
    }
    

    // throws Exception
    pub fn isElementValueTextNodeEqual(self: *Self, nextPackagePropertiesHashMap: ?*HashMap, node: ?*Node) bool {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.literal("\nComparing the value property in: "), Object.toString(Object.of(nextPackagePropertiesHashMap))), String.literal("\nto node child leaves of node: ")), node.?.getNodeName()), self, String.literal("isElementValueTextNodeEqual") });
        }
        const propertyValue: ?*String = Inheritance.cast(?*String, Inheritance.call(nextPackagePropertiesHashMap.?, "get", .{ DomData.VALUE }));
        const valueNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNodeNoThrow", .{ DomData.VALUE, node.?.getChildNodes() }));
        if (valueNode != null) {
            const existingElementNodeTextNodeValue: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ valueNode }));
            if (Inheritance.call(propertyValue.?, "compareTo", .{ existingElementNodeTextNodeValue }) == 0) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Value Node is the same"), self, String.literal("isElementValueTextNodeEqual") });
                }
                return true;
            }
        } else {
            return true;
        }
        return false;
    }
    

    // throws Exception
    pub fn isElementValueTextNodeUnique(self: *Self, nextPackagePropertiesHashMap: ?*HashMap, elementNodeVector: ?*BasicArrayList) i32 {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.literal("\nComparing Properties of: "), elementNodeVector.?.size()), String.literal(" Nodes")), self, String.literal("isElementValueTextNodeUnique") });
        }
        const size: i32 = elementNodeVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const existingElementNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(elementNodeVector.?, "get", .{ index }));
            if (Inheritance.call(self, "isElementValueTextNodeEqual", .{ nextPackagePropertiesHashMap, existingElementNode })) {
                return index;
            }
            }
        }
        return -1;
    }
    

    // throws Exception
    pub fn addChildren(self: *Self, document: ?*Document, rootNode: ?*Node, nameSpaceRequestParam: ?*NameSpaceRequestParam) ?*Document {
        var node: ?*Node = rootNode;
        const packageVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, nameSpaceRequestParam.?.getPackages());
        const size: i32 = packageVector.?.size();
        {
            var index: i32 = 1;
            while (index < size) : (index += 1) {
            const nextPackageName: ?*String = Inheritance.cast(?*String, Inheritance.call(packageVector.?, "get", .{ index }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("\nTrying to Add Child to Node: ") }).?, "append", .{ node.?.getNodeName() }).?, "append", .{ String.literal("\nwith new PackageName: ") }).?, "append", .{ nextPackageName }))), self, String.literal("addChildren") });
            }
            const nextPackagePropertiesHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.call(nameSpaceRequestParam.?, "getPackageProperties", .{ index }));
            const elementNodeVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(DomSearchHelper, "getAllNodesNoThrow", .{ nextPackageName, node.?.getChildNodes() }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.literal("\nDocument Contains "), elementNodeVector.?.size()), String.literal(" Node(s) With Same Name")), self, String.literal("addChildren") });
            }
            const isElementValueTextNodeUniqueIndex: i32 = Inheritance.call(self, "isElementValueTextNodeUnique", .{ nextPackagePropertiesHashMap, elementNodeVector });
            if ((elementNodeVector.?.size() == 0 or isElementValueTextNodeUniqueIndex == -1) and !Inheritance.call(nextPackageName.?, "endsWith", .{ CommonSeps.getInstance().?.BRACKET_CLOSE })) {
                const nextNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(self, "createPackageNode", .{ document, nextPackageName, nextPackagePropertiesHashMap }));
                _ = Inheritance.call(node.?, "appendChild", .{ nextNode });
                node = nextNode;
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("\nAppended Package: "), node.?.getNodeName()), self, String.literal("addChildren") });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("\nAppended Document Created: "), Inheritance.callStatic(XmlDocumentHelper, "toString", .{ document })), self, String.literal("addChildren") });
                }
            } else if (Inheritance.call(nextPackageName.?, "endsWith", .{ CommonSeps.getInstance().?.BRACKET_CLOSE })) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Package is MultiNode: just append"), self, String.literal("addChildren") });
                }
                const nextNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(self, "createPackageMultiNode", .{ document, nameSpaceRequestParam, nextPackageName, nextPackagePropertiesHashMap }));
                _ = Inheritance.call(node.?, "appendChild", .{ nextNode });
                node = nextNode;
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("\nAppended Multinode Element: "), Inheritance.callStatic(XmlDocumentHelper, "toString", .{ document })), self, String.literal("addChildren") });
                }
            } else {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Value Node already exists: Now compare (properties to leaf nodes)"), self, String.literal("addChildren") });
                }
                const nodeNameDuplicateNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(elementNodeVector.?, "get", .{ isElementValueTextNodeUniqueIndex }));
                node = Inheritance.upcast(@TypeOf(node), Inheritance.call(self, "addNewProperties", .{ document, nodeNameDuplicateNode, nextPackagePropertiesHashMap }));
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("\nDuplicate Node Found: Moving to next child ^"), self, String.literal("addChildre") });
                }
            }
            }
        }
        return document;
    }
    

    // throws Exception
    pub fn addNameSpace(self: *Self, key: ?*String, value: ?*String, document: ?*Document) ?*Document {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("NameSpace key: ") }).?, "append", .{ key }).?, "append", .{ String.literal(" Value: ") }).?, "append", .{ value }))), self, String.literal("addNameSpace") });
        }
        const nameSpaceRequestParam: ?*NameSpaceRequestParam = Inheritance.callStatic(NameSpaceRequestParam, "create2", .{ key, value });
        const packageVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, nameSpaceRequestParam.?.getPackages());
        const size: i32 = packageVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const packageName: ?*String = Inheritance.cast(?*String, Inheritance.call(packageVector.?, "get", .{ index }));
            const packagePropertiesHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.call(nameSpaceRequestParam.?, "getPackageProperties", .{ Inheritance.call(packageVector.?, "indexOf", .{ packageName }) }));
            const rootNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(self, "getRootNode", .{ packageName, packagePropertiesHashMap, document }));
            if (index < size - 1) {
                return Inheritance.upcast(?*Document, Inheritance.call(self, "addChildren", .{ document, Inheritance.cast(?*Node, rootNode), nameSpaceRequestParam }));
            }
            }
        }
        return document;
    }
    

    // throws Exception
    pub fn toHashMap(self: *Self) ?*HashMap {
        var document: ?*Document = Inheritance.upcast(?*Document, DomDocumentHelper.create());
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        const keys: ?*Set = Inheritance.upcast(?*Set, Inheritance.receiverOf(Inheritance.receiver(self, "getMap").getMap().?, "keySet").keySet());
        const keyArray: []?Object = keys.?.toArray();
        const keySize: i32 = @as(i32, @intCast(keyArray.len));
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("NameSpace Request Size: "), keys.?.size()), self, String.literal("toHashMap") });
        }
        {
            var i: i32 = 0;
            while (i < keySize) : (i += 1) {
            const key: ?*String = Inheritance.cast(?*String, keyArray[@intCast(i)]);
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(Inheritance.receiver(self, "getMap").getMap().?, "get", .{ key }));
            const className: ?*String = Inheritance.cast(?*String, String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?))).name));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Request Param Class: "), className), self, String.literal("toHashMap") });
            }
            if (Object.instanceOf(Object.of(Inheritance.call(Inheritance.receiver(self, "getMap").getMap().?, "get", .{ key })), String)) {
                const value: ?*String = Inheritance.cast(?*String, Inheritance.call(Inheritance.receiver(self, "getMap").getMap().?, "get", .{ key }));
                if (Inheritance.call(key.?, "indexOf", .{ NameSpaceRequestParamData.NAME }) < 0) {
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.literal("Not NameSpace key: "), key), String.literal(" Value: ")), value), self, String.literal("toHashMap()") });
                    }
                    _ = Inheritance.call(hashMap.?, "put", .{ Inheritance.callStatic(String, "create1", .{ key }), Inheritance.callStatic(String, "create1", .{ value }) });
                } else {
                    document = Inheritance.upcast(@TypeOf(document), Inheritance.call(self, "addNameSpace", .{ Inheritance.callStatic(String, "create1", .{ key }), Inheritance.callStatic(String, "create1", .{ value }), document }));
                }
            } else if (Object.instanceOf(Object.of(Inheritance.call(Inheritance.receiver(self, "getMap").getMap().?, "get", .{ key })), )) {
                const values: []?*String = Inheritance.cast([]?*String, Inheritance.call(Inheritance.receiver(self, "getMap").getMap().?, "get", .{ key }));
                if (Inheritance.call(key.?, "indexOf", .{ NameSpaceRequestParamData.NAME }) < 0) {
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.literal("Not NameSpace key: "), key), String.literal(" Value: ")), values[@intCast(0)]), self, String.literal("toHashMap()") });
                    }
                    _ = Inheritance.call(hashMap.?, "put", .{ Inheritance.callStatic(String, "create1", .{ key }), Inheritance.callStatic(String, "create1", .{ values[@intCast(0)] }) });
                } else {
                    document = Inheritance.upcast(@TypeOf(document), Inheritance.call(self, "addNameSpace", .{ Inheritance.callStatic(String, "create1", .{ key }), Inheritance.callStatic(String, "create1", .{ values[@intCast(0)] }), document }));
                }
            }
            }
        }
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.plus(String.plus(String.literal("NameSpaceRequestParams: "), Object.toString(Object.of(Inheritance.receiver(self, "getMap").getMap()))), String.literal("\ntoHashMap(): ")), Object.toString(Object.of(hashMap))), String.literal("\nDocument Created: ")), Inheritance.callStatic(XmlDocumentHelper, "toString", .{ document })), self, String.literal("toHashMap()") });
        }
        _ = Inheritance.call(hashMap.?, "put", .{ NameSpaceRequestParamData.DOCUMENT, document });
        return hashMap;
    }
};

