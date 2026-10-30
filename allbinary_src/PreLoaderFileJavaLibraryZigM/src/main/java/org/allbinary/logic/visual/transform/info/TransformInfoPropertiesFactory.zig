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
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const Attr = @import("org/w3c/dom/Attr.zig").Attr;
const NamedNodeMap = @import("org/w3c/dom/NamedNodeMap.zig").NamedNodeMap;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const TransformInfoData = @import("org/allbinary/logic/visual/transform/info/TransformInfoData.zig").TransformInfoData;
const TransformInfoProperties = @import("org/allbinary/logic/visual/transform/info/TransformInfoProperties.zig").TransformInfoProperties;

pub const TransformInfoPropertiesFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory";
    logUtil: ?*LogUtil = null,
    var instance: ?*TransformInfoPropertiesFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TransformInfoPropertiesFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*TransformInfoPropertiesFactory {
        return Inheritance.upcast(?*TransformInfoPropertiesFactory, TransformInfoPropertiesFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getInstance1(self: *Self, node: ?*Node) ?*TransformInfoProperties {
        const transformInfoChildNodeList: ?*NodeList = Inheritance.upcast(?*NodeList, node.?.getChildNodes());
        const transformInfoData: ?*TransformInfoData = Inheritance.upcast(?*TransformInfoData, TransformInfoData.getInstance());
        const attributes: ?*NamedNodeMap = Inheritance.upcast(?*NamedNodeMap, node.?.getAttributes());
        const attrNode: ?*Attr = Inheritance.cast(?*Attr, Inheritance.call(attributes.?, "getNamedItem", .{ transformInfoData.?.NAME }));
        const name: ?*String = Inheritance.upcast(?*String, attrNode.?.getValue());
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(CommonLabels.getInstance().?.NEXT, String.literal(" View Name: ")), name), self, String.literal("toTransformInfoPropertiesHashMap()") });
        }
        const labelNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNodeNoThrow", .{ transformInfoData.?.LABEL, transformInfoChildNodeList }));
        var label: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodesValue", .{ labelNode }));
        if (label == null) {
            label = name;
        }
        const descriptionNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ transformInfoData.?.DESCRIPTION, transformInfoChildNodeList }));
        const description: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodesValue", .{ descriptionNode }));
        const objectFileNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ transformInfoData.?.OBJECTFILENAME, transformInfoChildNodeList }));
        const objectFileName: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ objectFileNode }));
        const objectConfigFileNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ transformInfoData.?.OBJECTCONFIGFILENAME, transformInfoChildNodeList }));
        const objectConfigFileName: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ objectConfigFileNode }));
        const templateFileNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ transformInfoData.?.TEMPLATEFILENAME, transformInfoChildNodeList }));
        const templateFileName: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ templateFileNode }));
        const transformInfoProperties: ?*TransformInfoProperties = Inheritance.callStatic(TransformInfoProperties, "create6", .{ name, label, description, objectFileName, objectConfigFileName, templateFileName });
        return transformInfoProperties;
    }
};

