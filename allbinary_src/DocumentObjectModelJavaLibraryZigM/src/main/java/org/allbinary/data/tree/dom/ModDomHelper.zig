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
// package org.allbinary.data.tree.dom

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Set = @import("java/util/Set.zig").Set;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const ClassUtil = @import("org/allbinary/logic/java/anyType/clazz/ClassUtil.zig").ClassUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const DomData = @import("org/allbinary/data/tree/dom/DomData.zig").DomData;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const ModDomHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tree.dom.ModDomHelper";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn createTextNode(document: ?*Document, name: ?*String, text: ?*String) ?*Node {
        const newValueNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ name }));
        const newValueTextNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createTextNode", .{ text }));
        _ = Inheritance.call(newValueNode.?, "appendChild", .{ newValueTextNode });
        return newValueNode;
    }
    

    // throws Exception
    pub fn createValueNode(document: ?*Document, text: ?*String) ?*Node {
        return Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createTextNode", .{ document, DomData.VALUE, text }));
    }
    

    // throws Exception
    pub fn createNameNode(document: ?*Document, text: ?*String) ?*Node {
        return Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createTextNode", .{ document, DomData.NAME, text }));
    }
    

    // throws Exception
    pub fn createIndexNode(document: ?*Document, index: i32) ?*Node {
        return Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createTextNode", .{ document, DomData.INDEX, String.valueOf(Inheritance.callStatic(Integer, "create1", .{ index }).?) }));
    }
    

    // throws Exception
    pub fn createNameValueNodes4(document: ?*Document, elementName: ?*String, nameText: ?*String, valueText: ?*String) ?*Node {
        const newNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ elementName }));
        _ = Inheritance.call(newNode.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameNode", .{ document, nameText }) });
        _ = Inheritance.call(newNode.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createValueNode", .{ document, valueText }) });
        return newNode;
    }
    

    // throws Exception
    pub fn createNameValueNodes(document: ?*Document, elementNameAndNameText: ?*String, valueText: ?*String) ?*Node {
        const newNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, elementNameAndNameText, elementNameAndNameText, valueText }));
        return newNode;
    }
    

    // throws Exception
    pub fn createNameValueIndexNodes(document: ?*Document, elementNameAndNameText: ?*String, index: i32, valueText: ?*String) ?*Node {
        const newNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, elementNameAndNameText, valueText }));
        _ = Inheritance.call(newNode.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createIndexNode", .{ document, index }) });
        return newNode;
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn createNameValueNodes(document: ?*Document, rootNode: ?*String, hashMap: ?*HashMap) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ rootNode }));
        return Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, node, hashMap }));
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn createNameValueNodes(document: ?*Document, node: ?*Node, hashMap: ?*HashMap) ?*Node {
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        const keySet: ?*Set = Inheritance.upcast(?*Set, hashMap.?.keySet());
        const keyArray: []?Object = keySet.?.toArray();
        const size: i32 = @as(i32, @intCast(keyArray.len));
        {
            var i: i32 = 0;
            while (i < size) : (i += 1) {
            const objectKey: ?Object = Inheritance.upcast(?Object, keyArray[@intCast(i)]);
            const name: ?*String = Inheritance.cast(?*String, objectKey);
            const anyType: ?Object = Inheritance.cast(?Object, Inheritance.call(hashMap.?, "get", .{ objectKey }));
            if (anyType == null) {
                const value: ?*String = Inheritance.upcast(?*String, stringUtil.?.EMPTY_STRING);
                _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, name, value }) });
            } else if (Object.instanceOf(Object.of(anyType), String)) {
                const value: ?*String = Inheritance.upcast(?*String, Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, anyType) }));
                _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, name, value }) });
            } else if (Object.instanceOf(Object.of(anyType), HashMap)) {
                _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, name, hashMap }) });
            } else {
                std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("HashMap value is the wrong instance and is: "), Inheritance.callStatic(ClassUtil, "viewAll", .{ anyType, CommonSeps.getInstance().?.NEW_LINE })); break :exception error.Exception; }});
            }
            }
        }
        return node;
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn createNameValueNodes4(document: ?*Document, rootNodeName: ?*String, duplicateNodeName: ?*String, valueVector: ?*BasicArrayList) ?*Node {
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ rootNodeName }));
        const size: i32 = valueVector.?.size();
        {
            var i: i32 = 0;
            while (i < size) : (i += 1) {
            const value: ?*String = Inheritance.upcast(?*String, Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(valueVector.?, "get", .{ i })) }));
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, duplicateNodeName, value }) });
            }
        }
        return node;
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn createNameValueIndexNodes(document: ?*Document, rootNodeName: ?*String, duplicateNodeName: ?*String, valueVector: ?*BasicArrayList) ?*Node {
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ rootNodeName }));
        const size: i32 = valueVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const value: ?*String = Inheritance.upcast(?*String, Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(valueVector.?, "get", .{ index })) }));
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueIndexNodes", .{ document, duplicateNodeName, index, value }) });
            }
        }
        return node;
    }
    

    // throws Exception
    pub fn createNodeWithValueNodes(document: ?*Document, rootNode: ?*String, hashMap: ?*HashMap) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ rootNode }));
        return Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNodeWithValueNodes", .{ document, node, hashMap }));
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn createNodeWithValueNodes(document: ?*Document, node: ?*Node, hashMap: ?*HashMap) ?*Node {
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        const keySet: ?*Set = Inheritance.upcast(?*Set, hashMap.?.keySet());
        const keyArray: []?Object = keySet.?.toArray();
        const size: i32 = @as(i32, @intCast(keyArray.len));
        {
            var i: i32 = 0;
            while (i < size) : (i += 1) {
            const name: ?*String = Inheritance.cast(?*String, keyArray[@intCast(i)]);
            const anyType: ?Object = Inheritance.cast(?Object, Inheritance.call(hashMap.?, "get", .{ name }));
            const value: ?*String = Inheritance.upcast(?*String, Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, anyType) }));
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createTextNode", .{ document, name, value }) });
            }
        }
        return node;
    }
};

