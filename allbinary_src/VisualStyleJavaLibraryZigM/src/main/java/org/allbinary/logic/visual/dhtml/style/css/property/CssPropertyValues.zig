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
// package org.allbinary.logic.visual.dhtml.style.css.property

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
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const CssPropertyData = @import("org/allbinary/logic/visual/dhtml/style/css/property/CssPropertyData.zig").CssPropertyData;
const CssPropertyValueData = @import("org/allbinary/logic/visual/dhtml/style/css/property/CssPropertyValueData.zig").CssPropertyValueData;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const CssPropertyValues = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValues";
    logUtil: ?*LogUtil = null,
    propertyValueVector: ?*BasicArrayList = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.propertyValueVector = Inheritance.upcast(@TypeOf(this.propertyValueVector), BasicArrayListD.create());
        return this;
    }
    

    pub fn create1(node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const indexPropertyValueHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        this.propertyValueVector = Inheritance.upcast(@TypeOf(this.propertyValueVector), BasicArrayListD.create());
        const cssPropertyNodeVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(DomSearchHelper, "getAllNodes", .{ CssPropertyValueData.getInstance().?.NAME, node.?.getChildNodes() }));
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.STYLE })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Number Of Properties: "), cssPropertyNodeVector.?.size()), this, String.literal("CssProperties()") });
        }
        const size: i32 = cssPropertyNodeVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const cssPropertyValueNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(cssPropertyNodeVector.?, "get", .{ index }));
            const valueNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ DomData.VALUE, cssPropertyValueNode.?.getChildNodes() }));
            const propertyValue: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ valueNode }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.STYLE })) {
                _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Property Value: "), propertyValue), this, String.literal("CssProperties()") });
            }
            const indexNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ DomData.INDEX, cssPropertyValueNode.?.getChildNodes() }));
            const indexValue: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ indexNode }));
            _ = Inheritance.call(indexPropertyValueHashMap.?, "put", .{ indexValue, propertyValue });
            }
        }
        const size2: i32 = Inheritance.receiverOf(indexPropertyValueHashMap.?.keySet().?, "size").size();
        {
            var index: i32 = 0;
            while (index < size2) : (index += 1) {
            const indexInt: ?*Integer = Inheritance.callStatic(Integer, "create1", .{ index });
            const propertyValue: ?*String = Inheritance.cast(?*String, Inheritance.call(indexPropertyValueHashMap.?, "get", .{ String.valueOf(indexInt.?) }));
            _ = Inheritance.call(this.propertyValueVector.?, "add", .{ propertyValue });
            }
        }
        return this;
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        const cssPropertyValueData: ?*CssPropertyValueData = Inheritance.upcast(?*CssPropertyValueData, CssPropertyValueData.getInstance());
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const size: i32 = self.propertyValueVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const value: ?*String = Inheritance.cast(?*String, Inheritance.call(self.propertyValueVector.?, "get", .{ index }));
            _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ cssPropertyValueData.?.NAME });
            _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.BRACKET_OPEN });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ index });
            _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.BRACKET_CLOSE });
            _ = Inheritance.call(hashMap.?, "put", .{ Object.toString(Object.of(stringBuffer)), value });
            index += 1;
            }
        }
        return hashMap;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, self.toHashMap());
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("CssPropertyValues HashMap: "), Object.toString(Object.of(hashMap))), self, String.literal("toXmlNode()") });
        }
        return Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueIndexNodes", .{ document, CssPropertyData.getInstance().?.VALUES, CssPropertyValueData.getInstance().?.NAME, self.propertyValueVector }));
    }
};

