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
// package org.allbinary.logic.visual.dhtml.style.css

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const DomData = @import("org/allbinary/data/tree/dom/DomData.zig").DomData;
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CssPropertiesValidationFactory = @import("org/allbinary/logic/visual/dhtml/style/css/property/CssPropertiesValidationFactory.zig").CssPropertiesValidationFactory;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const CssElementData = @import("org/allbinary/logic/visual/dhtml/style/css/CssElementData.zig").CssElementData;
const CssElementsValidationFactory = @import("org/allbinary/logic/visual/dhtml/style/css/CssElementsValidationFactory.zig").CssElementsValidationFactory;

pub const CssElementView = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.dhtml.style.css.CssElementView";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    TITLE: ?*String = null,
    DESCRIPTION: ?*String = null,
    value: ?*String = null,
    title: ?*String = null,
    description: ?*String = null,
    cssElementVector: ?*BasicArrayList = null,
    cssPropertyVector: ?*BasicArrayList = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.TITLE = String.literal("title");
        this.DESCRIPTION = String.literal("description");
        
        
        
        this.cssElementVector = null;
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.cssPropertyVector = Inheritance.upcast(@TypeOf(this.cssPropertyVector), BasicArrayListD.create());
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        this.title = Inheritance.upcast(@TypeOf(this.title), stringUtil.?.EMPTY_STRING);
        this.description = Inheritance.upcast(@TypeOf(this.description), stringUtil.?.EMPTY_STRING);
        this.value = Inheritance.upcast(@TypeOf(this.value), stringUtil.?.EMPTY_STRING);
        return this;
    }
    

    pub fn create1(node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        { // try
            const valueNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ DomData.VALUE, node.?.getChildNodes() }));
            this.value = Inheritance.upcast(@TypeOf(this.value), Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ valueNode }));
            const titleValueNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNodeNoThrow", .{ this.TITLE, node.?.getChildNodes() }));
            if (titleValueNode != null) {
                this.title = Inheritance.upcast(@TypeOf(this.title), Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ titleValueNode }));
            } else {
                const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
                this.title = Inheritance.upcast(@TypeOf(this.title), stringUtil.?.EMPTY_STRING);
            }
            const descriptionValueNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNodeNoThrow", .{ this.DESCRIPTION, node.?.getChildNodes() }));
            if (descriptionValueNode != null) {
                this.description = Inheritance.upcast(@TypeOf(this.description), Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ descriptionValueNode }));
            } else {
                this.description = Inheritance.upcast(@TypeOf(this.description), StringUtil.getInstance().?.EMPTY_STRING);
            }
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(this.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Value: ") }).?, "append", .{ this.value }).?, "append", .{ String.literal("\nTitle: ") }).?, "append", .{ this.title }).?, "append", .{ String.literal("\nDescription: ") }).?, "append", .{ this.description }))), this, this.commonStrings.?.CONSTRUCTOR });
            }
            const cssElementStyleNodeVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(DomSearchHelper, "getAllNodes", .{ CssElementData.getInstance().?.NAME, node.?.getChildNodes() }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Child Css Elements: "), cssElementStyleNodeVector.?.size()), this, String.literal("CssElementView()") });
            }
            this.cssElementVector = Inheritance.upcast(@TypeOf(this.cssElementVector), Inheritance.callStatic(CssElementsValidationFactory, "getInstance", .{ cssElementStyleNodeVector }));
            const nodeList: ?*NodeList = Inheritance.upcast(?*NodeList, node.?.getChildNodes());
            this.cssPropertyVector = Inheritance.upcast(@TypeOf(this.cssPropertyVector), Inheritance.callStatic(CssPropertiesValidationFactory, "getInstance", .{ nodeList }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(this.logUtil.?, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Value: ") }).?, "append", .{ this.value }).?, "append", .{ String.literal("\nTitle: ") }).?, "append", .{ this.title }).?, "append", .{ String.literal("\nDescription: ") }).?, "append", .{ this.description }))), this, this.commonStrings.?.CONSTRUCTOR, e });
//             }
//             std.debug.panic("{any}", .{exception: { _ = String.literal("CssElementView"); break :exception error.Exception; }});
        return this;
    }
    

    pub fn getValue(self: *Self) ?*String {
        return self.value;
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ DomData.VALUE, self.value });
        _ = Inheritance.call(hashMap.?, "put", .{ self.TITLE, self.title });
        _ = Inheritance.call(hashMap.?, "put", .{ self.DESCRIPTION, self.description });
        return hashMap;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, self.toHashMap());
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("CssView HashMap: "), Object.toString(Object.of(hashMap))), self, String.literal("toXmlNode") });
        }
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNodeWithValueNodes", .{ document, CssElementData.getInstance().?.NAME, hashMap }));
        const size: i32 = self.cssPropertyVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const cssPropertyDomNodeInterface: ?*DomNodeInterface = Inheritance.cast(?*DomNodeInterface, Inheritance.call(self.cssPropertyVector.?, "get", .{ index }));
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(cssPropertyDomNodeInterface.?, "toXmlNode", .{ document }) });
            }
        }
        const size2: i32 = self.cssElementVector.?.size();
        {
            var index: i32 = 0;
            while (index < size2) : (index += 1) {
            const cssElementDomNodeInterface: ?*DomNodeInterface = Inheritance.cast(?*DomNodeInterface, Inheritance.call(self.cssElementVector.?, "get", .{ index }));
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(cssElementDomNodeInterface.?, "toXmlNode", .{ document }) });
            }
        }
        return node;
    }
};

