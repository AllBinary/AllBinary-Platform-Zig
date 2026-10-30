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
// package org.allbinary.logic.visual.dhtml.style

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const XmlDocumentHelper = @import("org/allbinary/data/tree/dom/document/XmlDocumentHelper.zig").XmlDocumentHelper;
const NameSpaceRequestParamData = @import("org/allbinary/logic/communication/http/request/NameSpaceRequestParamData.zig").NameSpaceRequestParamData;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CssElementData = @import("org/allbinary/logic/visual/dhtml/style/css/CssElementData.zig").CssElementData;
const CssElementsValidationFactory = @import("org/allbinary/logic/visual/dhtml/style/css/CssElementsValidationFactory.zig").CssElementsValidationFactory;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const StyleData = @import("org/allbinary/logic/visual/dhtml/style/StyleData.zig").StyleData;
const StylesData = @import("org/allbinary/logic/visual/dhtml/style/StylesData.zig").StylesData;

pub const StylesValidationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.dhtml.style.StylesValidationFactory";
    logUtil: ?*LogUtil = null,
    var instance: ?*StylesValidationFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = StylesValidationFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*StylesValidationFactory {
        return Inheritance.upcast(?*StylesValidationFactory, StylesValidationFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getInstance1(self: *Self, document: ?*Document) ?*BasicArrayList {
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        const nodeList: ?*NodeList = Inheritance.upcast(?*NodeList, Inheritance.call(document.?, "getElementsByTagName", .{ StylesData.getInstance().?.NAME }));
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Style Present: "), Inheritance.callStatic(XmlDocumentHelper, "toString", .{ document })), self, commonStrings.?.GET_INSTANCE });
        }
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Styles Present: "), nodeList.?.getLength()), self, commonStrings.?.GET_INSTANCE });
        }
        {
            var index: i32 = 0;
            while (index < nodeList.?.getLength()) : (index += 1) {
            const stylesNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nodeList.?, "item", .{ index }));
            const styleNodeList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(DomSearchHelper, "getAllNodes", .{ StyleData.getInstance().?.NAME, stylesNode.?.getChildNodes() }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Number Of Style Nodes Present: "), styleNodeList.?.size()), self, commonStrings.?.GET_INSTANCE });
            }
            {
                var styleNodesIndex: i32 = 0;
                while (styleNodesIndex < styleNodeList.?.size()) : (styleNodesIndex += 1) {
                const styleNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(styleNodeList.?, "get", .{ styleNodesIndex }));
                const cssElementStyleNodeList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(DomSearchHelper, "getAllNodes", .{ CssElementData.getInstance().?.NAME, styleNode.?.getChildNodes() }));
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Number Of Element Nodes Present: "), cssElementStyleNodeList.?.size()), self, commonStrings.?.GET_INSTANCE });
                }
                return Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(CssElementsValidationFactory, "getInstance", .{ cssElementStyleNodeList }));
                }
            }
            }
        }
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("No Style Present"), self, commonStrings.?.GET_INSTANCE });
        }
        return Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getInstance1(hashMap: ?*HashMap) ?*BasicArrayList {
        const stylesDocument: ?*Document = Inheritance.cast(?*Document, Inheritance.call(hashMap.?, "get", .{ NameSpaceRequestParamData.DOCUMENT }));
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(StylesValidationFactory.getInstance().?, "getInstance", .{ stylesDocument }));
    }
};

