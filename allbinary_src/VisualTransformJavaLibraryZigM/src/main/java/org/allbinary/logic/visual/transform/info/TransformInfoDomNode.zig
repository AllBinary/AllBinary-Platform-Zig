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
// package org.allbinary.logic.visual.transform.info

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const Attr = @import("org/w3c/dom/Attr.zig").Attr;
const NamedNodeMap = @import("org/w3c/dom/NamedNodeMap.zig").NamedNodeMap;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const TransformInfo = @import("org/allbinary/logic/visual/transform/info/TransformInfo.zig").TransformInfo;
const TransformInfoData = @import("org/allbinary/logic/visual/transform/info/TransformInfoData.zig").TransformInfoData;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;

pub const TransformInfoDomNode = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.TransformInfoDomNode";
    logUtil: ?*LogUtil = null,
    transformInfoInterface: ?*TransformInfoInterface = null,
    mappedName: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
    }
    

    pub fn create1(node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Constructing TransformInfo From TransformInfoDomNode: "), node.?.getNodeName()), this, String.literal("TransformInfoDomNode(Node node)") });
        }
        const transformInfoData: ?*TransformInfoData = Inheritance.upcast(?*TransformInfoData, TransformInfoData.getInstance());
        const attributes: ?*NamedNodeMap = Inheritance.upcast(?*NamedNodeMap, node.?.getAttributes());
        const attrNode: ?*Attr = Inheritance.cast(?*Attr, Inheritance.call(attributes.?, "getNamedItem", .{ transformInfoData.?.NAME }));
        const name: ?*String = Inheritance.upcast(?*String, attrNode.?.getValue());
        const nodeList: ?*NodeList = Inheritance.upcast(?*NodeList, node.?.getChildNodes());
        if (nodeList.?.getLength() > 1) {
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                const stringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Constructing Complete TransformInfo Node For: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ name });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" with ") });
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(nodeList.?.getLength())) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" children") });
                _ = Inheritance.call(this.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), this, String.literal("TransformInfoObjectConfigComponent(Node node)") });
            }
            const objectFileNameNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ transformInfoData.?.OBJECTFILENAME, nodeList }));
            const objectFileName: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ objectFileNameNode }));
            const objectConfigFileNameNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ transformInfoData.?.OBJECTCONFIGFILENAME, nodeList }));
            const objectConfigFileName: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ objectConfigFileNameNode }));
            const templateFileNameNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ transformInfoData.?.TEMPLATEFILENAME, nodeList }));
            const templateFileName: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ templateFileNameNode }));
            const dataFileNameNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ transformInfoData.?.DATAFILENAME, nodeList }));
            const dataFileName: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ dataFileNameNode }));
            this.transformInfoInterface = Inheritance.cast(?*TransformInfoInterface, Inheritance.callStatic(TransformInfo, "create5", .{ name, objectFileName, objectConfigFileName, templateFileName, dataFileName }));
        } else {
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                const stringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Constructing Partial TransformInfo Node For: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ name });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" with ") });
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(nodeList.?.getLength())) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" children") });
                _ = Inheritance.call(this.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), this, String.literal("TransformInfoObjectConfigComponent(Node node)") });
            }
            this.transformInfoInterface = Inheritance.cast(?*TransformInfoInterface, Inheritance.callStatic(TransformInfo, "create1", .{ name }));
        }
        const templateAttrNode: ?*Attr = Inheritance.cast(?*Attr, Inheritance.call(attributes.?, "getNamedItem", .{ transformInfoData.?.MAPPED }));
        if (templateAttrNode != null) {
            this.mappedName = Inheritance.upcast(@TypeOf(this.mappedName), templateAttrNode.?.getValue());
        } else {
            this.mappedName = Inheritance.upcast(@TypeOf(this.mappedName), Inheritance.receiverOf(this.getTransformInfoInterface().?, "getName").getName());
        }
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.transformInfoInterface = transformInfoInterface;
        this.mappedName = Inheritance.upcast(@TypeOf(this.mappedName), Inheritance.receiver(transformInfoInterface.?, "getName").getName());
        return this;
    }
    

    pub fn create2(transformInfoInterface: ?*TransformInfoInterface, mappedName: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.transformInfoInterface = transformInfoInterface;
        this.mappedName = mappedName;
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create2(name: ?*String, mappedName: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.transformInfoInterface = Inheritance.upcast(@TypeOf(this.transformInfoInterface), Inheritance.callStatic(TransformInfo, "create1", .{ name }));
        this.mappedName = mappedName;
        return this;
    }
    

    pub fn getTransformInfoInterface(self: *Self) ?*TransformInfoInterface {
        return self.transformInfoInterface;
    }
    

    pub fn getMappedName(self: *Self) ?*String {
        return self.mappedName;
    }
    

    pub fn getReplaceKey(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<transform:component name=\"") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("body") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\"/>") });
        const key: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Component Key: "), key), self, String.literal("getReplaceKey()") });
        }
        return key;
    }
};

