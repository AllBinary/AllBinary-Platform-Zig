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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;

pub const DomSearchHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tree.dom.DomSearchHelper";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getNodeNoThrow(nodeName: ?*String, nodeList: ?*NodeList) ?*Node {
        const numberOfNodes: i32 = nodeList.?.getLength();
        {
            var index: i32 = 0;
            while (index < numberOfNodes) : (index += 1) {
            const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nodeList.?, "item", .{ index }));
            if (Inheritance.call(node.?.getNodeName().?, "compareTo", .{ nodeName }) == 0) {
                return node;
            }
            }
        }
        return null;
    }
    

    // throws Exception
    pub fn getNode(nodeName: ?*String, nodeList: ?*NodeList) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNodeNoThrow", .{ nodeName, nodeList }));
        if (node != null) {
            return node;
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.plus(nodeName, String.literal(" Node Not Found in search")); break :exception error.Exception; }});
        }
    }
    

    // throws Exception
    pub fn getChildNodeList(nodeName: ?*String, nodeList: ?*NodeList) ?*NodeList {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ nodeName, nodeList }));
        return Inheritance.upcast(?*NodeList, node.?.getChildNodes());
    }
    

    // throws Exception
    pub fn getAllNodes(nodeName: ?*String, nodeList: ?*NodeList) ?*BasicArrayList {
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(DomSearchHelper, "getAllNodesNoThrow", .{ nodeName, nodeList }));
        if (vector == null) {
            std.debug.panic("{any}", .{exception: { _ = String.plus(nodeName, String.literal(" Node Not Found in search")); break :exception error.Exception; }});
        } else {
            return vector;
        }
    }
    

    pub fn getAllNodesNoThrow(nodeName: ?*String, nodeList: ?*NodeList) ?*BasicArrayList {
        const nodeVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const numberOfNodes: i32 = nodeList.?.getLength();
        {
            var index: i32 = 0;
            while (index < numberOfNodes) : (index += 1) {
            const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nodeList.?, "item", .{ index }));
            if (Inheritance.call(node.?.getNodeName().?, "compareTo", .{ nodeName }) == 0) {
                _ = Inheritance.call(nodeVector.?, "add", .{ node });
            }
            }
        }
        return nodeVector;
    }
};

