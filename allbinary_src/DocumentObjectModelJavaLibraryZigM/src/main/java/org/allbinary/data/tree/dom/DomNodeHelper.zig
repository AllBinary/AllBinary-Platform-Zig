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
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;

pub const DomNodeHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tree.dom.DomNodeHelper";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getFirstChildElement(parentNode: ?*Node) ?*Node {
        var node: ?*Node = Inheritance.upcast(?*Node, parentNode.?.getFirstChild());
        if (node != null and !Object.same(node.?.getNodeType(), Node.ELEMENT_NODE)) {
            const nodeList: ?*NodeList = Inheritance.upcast(?*NodeList, parentNode.?.getChildNodes());
            {
                var index: i32 = 0;
                while (index < nodeList.?.getLength()) : (index += 1) {
                node = Inheritance.upcast(@TypeOf(node), Inheritance.call(nodeList.?, "item", .{ index }));
                if (node.?.getNodeType() == 1) {
                    break;
                }
                }
            }
        }
        return node;
    }
    

    pub fn getTextNodeValue(node: ?*Node) ?*String {
        const nodeTextNode: ?*Node = Inheritance.upcast(?*Node, node.?.getFirstChild());
        if (nodeTextNode != null) {
            return Inheritance.upcast(?*String, nodeTextNode.?.getNodeValue());
        } else {
            return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        }
    }
    

    // throws Exception
    pub fn getTextNodeValue2(nodeName: ?*String, nodeList: ?*NodeList) ?*String {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ nodeName, nodeList }));
        return Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ node }));
    }
    

    pub fn getTextNodesValue(node: ?*Node) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const nodeList: ?*NodeList = Inheritance.upcast(?*NodeList, node.?.getChildNodes());
        {
            var index: i32 = 0;
            while (index < nodeList.?.getLength()) : (index += 1) {
            const nodeTextNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nodeList.?, "item", .{ index }));
            if (Object.same(nodeTextNode.?.getNodeType(), Node.TEXT_NODE)) {
                if (nodeTextNode != null) {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ nodeTextNode.?.getNodeValue() });
                }
            }
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

