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
// package org.allbinary.logic.visual.transform.info.objectConfig

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const XmlDocumentHelper = @import("org/allbinary/data/tree/dom/document/XmlDocumentHelper.zig").XmlDocumentHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const InputOutputTypeData = @import("org/allbinary/logic/io/InputOutputTypeData.zig").InputOutputTypeData;
const OutputTypeData = @import("org/allbinary/logic/io/OutputTypeData.zig").OutputTypeData;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const TransformInfoData = @import("org/allbinary/logic/visual/transform/info/TransformInfoData.zig").TransformInfoData;
const TransformInfoDomNode = @import("org/allbinary/logic/visual/transform/info/TransformInfoDomNode.zig").TransformInfoDomNode;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const TransformInfosData = @import("org/allbinary/logic/visual/transform/info/TransformInfosData.zig").TransformInfosData;
const XslData = @import("org/allbinary/logic/visual/transform/template/XslData.zig").XslData;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Attr = @import("org/w3c/dom/Attr.zig").Attr;
const Document = @import("org/w3c/dom/Document.zig").Document;
const NamedNodeMap = @import("org/w3c/dom/NamedNodeMap.zig").NamedNodeMap;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const TransformInfoObjectConfigData = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData.zig").TransformInfoObjectConfigData;
const TransformInfoObjectConfigInterface = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface.zig").TransformInfoObjectConfigInterface;

pub const TransformInfoObjectConfig = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig";
    pub const java_interfaces = .{ TransformInfoObjectConfigInterface };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    ownerTransformInfoInterface: ?*TransformInfoInterface = null,
    document: ?*Document = null,
    outputTypeName: ?*String = null,
    // Implements TransformInfoObjectConfigInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        
        this.outputTypeName = null;
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.ownerTransformInfoInterface = transformInfoInterface;
        _ = this.createDocument();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("TransformInfo: ") });
            if (this.ownerTransformInfoInterface != null) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(this.ownerTransformInfoInterface.?, "getName").getName() });
            } else {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("No Owner!?#@") });
            }
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nConstructed with document: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(this)) });
            _ = Inheritance.call(this.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), this, String.literal("Constructor(TransformInfoInterface)") });
        }
        return this;
    }
    

    pub fn create2(transformInfoInterface: ?*TransformInfoInterface, document: ?*Document) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.ownerTransformInfoInterface = transformInfoInterface;
        this.document = document;
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNodeNoThrow", .{ OutputTypeData.getInstance().?.NAME, Inheritance.receiverOf(this.getRootNode().?, "getChildNodes").getChildNodes() }));
        if (node != null) {
            _ = Inheritance.call(this, "setOutputTypeName", .{ Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ node }) });
        }
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("TransformInfo: ") });
            if (this.ownerTransformInfoInterface != null) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(this.ownerTransformInfoInterface.?, "getName").getName() });
            } else {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("No Owner!?#@") });
            }
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nConstructed with document: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(this)) });
            _ = Inheritance.call(this.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), this, String.literal("Constructor(TransformInfoInterface, Document)") });
        }
        return this;
    }
    

    pub fn create3(transformInfoInterface: ?*TransformInfoInterface, name: ?*String, @"type": ?*String) *Self {
        _ = @"type";
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.ownerTransformInfoInterface = transformInfoInterface;
        _ = this.createDocument();
        const configNameAttr: ?*Attr = Inheritance.upcast(?*Attr, Inheritance.call(this.document.?, "createAttribute", .{ TransformInfoObjectConfigData.getInstance().?.NAME }));
        _ = Inheritance.call(configNameAttr.?, "setValue", .{ name });
        const objectConfigNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(Inheritance.call(this.document.?, "getElementsByTagName", .{ TransformInfoObjectConfigData.getInstance().?.NAME }).?, "item", .{ 0 }));
        _ = Inheritance.call(objectConfigNode.?, "appendChild", .{ configNameAttr });
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("TransformInfo: ") });
            if (this.ownerTransformInfoInterface != null) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(this.ownerTransformInfoInterface.?, "getName").getName() });
            } else {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("No Owner!?#@") });
            }
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nConstructed with document: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(this)) });
            _ = Inheritance.call(this.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), this, String.literal("Constructor(TransformInfoInterface, name, type)") });
        }
        return this;
    }
    

    pub fn createDocument(self: *Self) void {
        self.document = Inheritance.upcast(@TypeOf(self.document), DomDocumentHelper.create());
        const objectConfigNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(self.document.?, "createElement", .{ TransformInfoObjectConfigData.getInstance().?.NAME }));
        _ = Inheritance.call(self.document.?, "appendChild", .{ objectConfigNode });
    }
    

    pub fn getTransformInfoInterface(self: *Self) ?*TransformInfoInterface {
        return self.ownerTransformInfoInterface;
    }
    

    // throws Exception
    pub fn toXmlDoc(self: *Self) ?*Document {
        return self.document;
    }
    

    pub fn setDocument(self: *Self, document: ?*Document) void {
        self.document = document;
    }
    

    pub fn containsView(self: *Self, transformInfoInterface: ?*TransformInfoInterface) bool {
        const objectConfigNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(Inheritance.call(self.document.?, "getElementsByTagName", .{ TransformInfoObjectConfigData.getInstance().?.NAME }).?, "item", .{ 0 }));
        const viewNodeList: ?*NodeList = Inheritance.upcast(?*NodeList, objectConfigNode.?.getChildNodes());
        const numberOfViews: i32 = viewNodeList.?.getLength();
        {
            var index: i32 = 0;
            while (index < numberOfViews) : (index += 1) {
            const viewNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(viewNodeList.?, "item", .{ index }));
            const viewAttributes: ?*NamedNodeMap = Inheritance.upcast(?*NamedNodeMap, viewNode.?.getAttributes());
            const attrNode: ?*Attr = Inheritance.cast(?*Attr, Inheritance.call(viewAttributes.?, "getNamedItem", .{ TransformInfoData.getInstance().?.NAME }));
            if (Inheritance.call(Inheritance.receiver(transformInfoInterface.?, "getName").getName().?, "compareTo", .{ attrNode.?.getValue() }) == 0) {
                return true;
            }
            }
        }
        return false;
    }
    

    // throws Exception
    pub fn getTemplateAttributes(self: *Self) ?*NamedNodeMap {
        const componentNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(Inheritance.call(self.document.?, "getElementsByTagName", .{ TransformInfoObjectConfigData.getInstance().?.NAME }).?, "item", .{ 0 }));
        return Inheritance.upcast(?*NamedNodeMap, componentNode.?.getAttributes());
    }
    

    // throws Exception
    pub fn getName(self: *Self) ?*String {
        const attrNode: ?*Attr = Inheritance.cast(?*Attr, Inheritance.call(self.getTemplateAttributes().?, "getNamedItem", .{ TransformInfoObjectConfigData.getInstance().?.NAME }));
        return Inheritance.upcast(?*String, attrNode.?.getValue());
    }
    

    // throws Exception
    pub fn setName(self: *Self, name: ?*String) void {
        const attrNode: ?*Attr = Inheritance.cast(?*Attr, Inheritance.call(self.getTemplateAttributes().?, "getNamedItem", .{ TransformInfoObjectConfigData.getInstance().?.NAME }));
        _ = Inheritance.call(attrNode.?, "setValue", .{ name });
    }
    

    // throws Exception
    pub fn getNodeVector(self: *Self, nodeName: ?*String) ?*BasicArrayList {
        const componentsNodeList: ?*NodeList = Inheritance.upcast(?*NodeList, Inheritance.call(self.document.?, "getElementsByTagName", .{ nodeName }));
        if (componentsNodeList != null and componentsNodeList.?.getLength() > 0) {
            const viewNodeVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(DomSearchHelper, "getAllNodes", .{ TransformInfoData.getInstance().?.NAME, Inheritance.receiverOf(Inheritance.call(componentsNodeList.?, "item", .{ 0 }).?, "getChildNodes").getChildNodes() }));
            const numberOfViews: i32 = viewNodeVector.?.size();
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                const stringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Number Of ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ nodeName });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Nodes: ") });
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ numberOfViews });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("getNodeVector(nodename)") });
            }
            return viewNodeVector;
        }
        return Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    // throws Exception
    pub fn getTransformDomNodes1(self: *Self, nodeName: ?*String) ?*BasicArrayList {
        const viewVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const viewNodeVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "getNodeVector", .{ nodeName }));
        const size: i32 = viewNodeVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const viewNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(viewNodeVector.?, "get", .{ index }));
            _ = Inheritance.call(viewVector.?, "add", .{ Inheritance.callStatic(TransformInfoDomNode, "create1", .{ viewNode }) });
            }
        }
        return viewVector;
    }
    

    // throws Exception
    pub fn getTransforms1(self: *Self, nodeName: ?*String) ?*BasicArrayList {
        const viewVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const viewNodeVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "getNodeVector", .{ nodeName }));
        const size: i32 = viewNodeVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const viewNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(viewNodeVector.?, "get", .{ index }));
            _ = Inheritance.call(viewVector.?, "add", .{ Inheritance.callStatic(TransformInfoDomNode, "create1", .{ viewNode }).getTransformInfoInterface() });
            }
        }
        return viewVector;
    }
    

    // throws Exception
    pub fn getTransformsGroup(self: *Self, group: ?*String) ?*BasicArrayList {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Started: "), group), self, String.literal("getTransformsGroup()") });
        }
        const viewVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const GROUP: ?*String = Inheritance.upcast(?*String, TransformInfosData.getInstance().?.GROUP);
        const componentsNodeList: ?*NodeList = Inheritance.upcast(?*NodeList, Inheritance.call(self.document.?, "getElementsByTagName", .{ GROUP }));
        if (componentsNodeList != null and componentsNodeList.?.getLength() > 0) {
            var componentsNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(componentsNodeList.?, "item", .{ 0 }));
            const length: i32 = componentsNodeList.?.getLength();
            {
                var index: i32 = 0;
                while (index < length) : (index += 1) {
                const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(componentsNodeList.?, "item", .{ index }));
                const attributes: ?*NamedNodeMap = Inheritance.upcast(?*NamedNodeMap, node.?.getAttributes());
                const attrNode: ?*Attr = Inheritance.cast(?*Attr, Inheritance.call(attributes.?, "getNamedItem", .{ GROUP }));
                const value: ?*String = Inheritance.upcast(?*String, attrNode.?.getValue());
                if (Inheritance.call(value.?, "compareTo", .{ group }) == 0) {
                    componentsNode = node;
                    break;
                }
                }
            }
            const viewNodeVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(DomSearchHelper, "getAllNodes", .{ TransformInfoData.getInstance().?.NAME, componentsNode.?.getChildNodes() }));
            const numberOfViews: i32 = viewNodeVector.?.size();
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Number Of Nodes: "), numberOfViews), self, String.literal("getTransformsGroup()") });
            }
            const size: i32 = viewNodeVector.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const viewNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(viewNodeVector.?, "get", .{ index }));
                _ = Inheritance.call(viewVector.?, "add", .{ Inheritance.callStatic(TransformInfoDomNode, "create1", .{ viewNode }) });
                }
            }
        } else {
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                if (componentsNodeList == null) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Number Of Nodes: NULL"), self, String.literal("getTransformsGroup()") });
                } else {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Number Of Nodes: 0"), self, String.literal("getTransformsGroup()") });
                }
            }
        }
        return viewVector;
    }
    

    // throws Exception
    pub fn getTransformDomNodes(self: *Self) ?*BasicArrayList {
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "getTransformDomNodes", .{ TransformInfosData.getInstance().?.GROUP }));
    }
    

    // throws Exception
    pub fn getTransforms(self: *Self) ?*BasicArrayList {
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "getTransforms", .{ TransformInfosData.getInstance().?.NAME }));
    }
    

    // throws Exception
    pub fn getGroupTransforms(self: *Self) ?*BasicArrayList {
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "getTransforms", .{ TransformInfosData.getInstance().?.GROUP }));
    }
    

    // throws Exception
    pub fn getParentTransforms(self: *Self) ?*BasicArrayList {
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "getTransforms", .{ TransformInfoData.getInstance().?.PARENT }));
    }
    

    pub fn getRootNode(self: *Self) ?*Node {
        return Inheritance.upcast(?*Node, Inheritance.call(Inheritance.call(self.document.?, "getElementsByTagName", .{ TransformInfoObjectConfigData.getInstance().?.NAME }).?, "item", .{ 0 }));
    }
    

    pub fn setOutputTypeName(self: *Self, outputTypeName: ?*String) void {
        self.outputTypeName = outputTypeName;
    }
    

    // throws Exception
    pub fn getOutputTypeName(self: *Self) ?*String {
        return self.outputTypeName;
    }
    

    // throws Exception
    pub fn getInputOutputTypeName(self: *Self) ?*String {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ InputOutputTypeData.getInstance().?.NAME, Inheritance.receiverOf(self.getRootNode().?, "getChildNodes").getChildNodes() }));
        return Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ node }));
    }
    

    // throws Exception
    pub fn getInputOutputTypeFile(self: *Self) ?*String {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ InputOutputTypeData.getInstance().?.FILE, Inheritance.receiverOf(self.getRootNode().?, "getChildNodes").getChildNodes() }));
        return Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ node }));
    }
    

    // throws Exception
    pub fn getImportUriPath(self: *Self) ?*String {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ XslData.getInstance().?.ROOT_IMPORT_URI, Inheritance.receiverOf(self.getRootNode().?, "getChildNodes").getChildNodes() }));
        return Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ node }));
    }
    

    pub fn toString(self: *Self) ?*String {
        { // try
            if (self.document != null) {
                return Inheritance.upcast(?*String, Inheritance.callStatic(XmlDocumentHelper, "toString", .{ self.document }));
            } else {
                return null;
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("DOM Document error"), self, self.commonStrings.?.TOSTRING });
//             }
//             return null;
    }
};

