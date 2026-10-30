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
// package org.allbinary.dom

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ByteArrayOutputStream = @import("java/io/ByteArrayOutputStream.zig").ByteArrayOutputStream;
const File = @import("java/io/File.zig").File;
// const DocumentBuilder = @import("javax/xml/parsers/DocumentBuilder.zig").DocumentBuilder;
// const DocumentBuilderFactory = @import("javax/xml/parsers/DocumentBuilderFactory.zig").DocumentBuilderFactory;
// const Transformer = @import("javax/xml/transform/Transformer.zig").Transformer;
// const TransformerFactory = @import("javax/xml/transform/TransformerFactory.zig").TransformerFactory;
// const DOMSource = @import("javax/xml/transform/dom/DOMSource.zig").DOMSource;
// const StreamResult = @import("javax/xml/transform/stream/StreamResult.zig").StreamResult;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;

pub const DomHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.dom.DomHelper";
    logUtil: ?*LogUtil = null,
    var instance: ?*DomHelper = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = DomHelper.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*DomHelper {
        return Inheritance.upcast(?*DomHelper, DomHelper.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn createDocument(self: *Self) ?*Document {
        _ = self;
        { // try
            const factory: ?*DocumentBuilderFactory = Inheritance.upcast(?*DocumentBuilderFactory, DocumentBuilderFactory.newInstance());
            const builder: ?*DocumentBuilder = Inheritance.upcast(?*DocumentBuilder, factory.?.newDocumentBuilder());
            const document: ?*Document = Inheritance.upcast(?*Document, builder.?.newDocument());
            return document;
        }
        // catch (Exception e):
//             return null;
    }
    

    // throws Exception
    pub fn createDocument1(self: *Self, xmlFile: ?*File) ?*Document {
        _ = self;
        { // try
            const factory: ?*DocumentBuilderFactory = Inheritance.upcast(?*DocumentBuilderFactory, DocumentBuilderFactory.newInstance());
            const builder: ?*DocumentBuilder = Inheritance.upcast(?*DocumentBuilder, factory.?.newDocumentBuilder());
            const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.call(builder.?, "parse", .{ xmlFile }));
            return document;
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn toString(self: *Self, document: ?*Document) ?*String {
        _ = self;
        { // try
            const domSource: ?*DOMSource = Inheritance.callStatic(DOMSource, "create1", .{ document });
            const byteArrayOutputStream: ?*ByteArrayOutputStream = ByteArrayOutputStream.create();
            const streamResult: ?*StreamResult = Inheritance.callStatic(StreamResult, "create1", .{ byteArrayOutputStream });
            const copyTransformerFactory: ?*TransformerFactory = Inheritance.upcast(?*TransformerFactory, TransformerFactory.newInstance());
            const copyTransformer: ?*Transformer = Inheritance.upcast(?*Transformer, copyTransformerFactory.?.newTransformer());
            _ = Inheritance.call(copyTransformer.?, "transform", .{ domSource, streamResult });
            return Inheritance.upcast(?*String, Object.toString(Object.of(byteArrayOutputStream)));
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn save(self: *Self, file: ?*File, document: ?*Document) void {
        _ = self;
        { // try
            const copyTransformerFactory: ?*TransformerFactory = Inheritance.upcast(?*TransformerFactory, TransformerFactory.newInstance());
            const copyTransformer: ?*Transformer = Inheritance.upcast(?*Transformer, copyTransformerFactory.?.newTransformer());
            const domSource: ?*DOMSource = Inheritance.callStatic(DOMSource, "create1", .{ document });
            _ = file.?.createNewFile();
            const streamResult: ?*StreamResult = Inheritance.callStatic(StreamResult, "create1", .{ file });
            _ = Inheritance.call(copyTransformer.?, "transform", .{ domSource, streamResult });
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn getChildNodeList(self: *Self, nodeName: ?*String, nodeList: ?*NodeList) ?*NodeList {
        _ = self;
        const numberOfNodes: i32 = nodeList.?.getLength();
        {
            var index: i32 = 0;
            while (index < numberOfNodes) : (index += 1) {
            const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nodeList.?, "item", .{ index }));
            if (Inheritance.call(node.?.getNodeName().?, "compareTo", .{ nodeName }) == 0) {
                return Inheritance.upcast(?*NodeList, node.?.getChildNodes());
            }
            }
        }
        std.debug.panic("{any}", .{exception: { _ = String.plus(nodeName, String.literal(" Node Not Found")); break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn getChildrenWithoutTextNodes(self: *Self, nodeName: ?*String, nodeList: ?*NodeList) ?*BasicArrayList {
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const childNodeList: ?*NodeList = Inheritance.upcast(?*NodeList, Inheritance.call(self, "getChildNodeList", .{ nodeName, nodeList }));
        const numberOfChildren: i32 = childNodeList.?.getLength();
        {
            var index: i32 = 0;
            while (index < numberOfChildren) : (index += 1) {
            const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(childNodeList.?, "item", .{ index }));
            if (!Object.same(node.?.getNodeType(), Node.TEXT_NODE)) {
                _ = Inheritance.call(list.?, "add", .{ node });
            }
            }
        }
        return list;
    }
    

    // throws Exception
    pub fn getWithoutTextNodes(self: *Self, nodeList: ?*NodeList) ?*BasicArrayList {
        _ = self;
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const numberOfChildren: i32 = nodeList.?.getLength();
        {
            var index: i32 = 0;
            while (index < numberOfChildren) : (index += 1) {
            const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nodeList.?, "item", .{ index }));
            if (!Object.same(node.?.getNodeType(), Node.TEXT_NODE)) {
                _ = Inheritance.call(list.?, "add", .{ node });
            }
            }
        }
        return list;
    }
    

    // throws Exception
    pub fn searchNodeList(self: *Self, nodeName: ?*String, nodeList: ?*NodeList) ?*Node {
        const numberOfNodes: i32 = nodeList.?.getLength();
        {
            var index: i32 = 0;
            while (index < numberOfNodes) : (index += 1) {
            const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nodeList.?, "item", .{ index }));
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("NodeName: "), node.?.getNodeName()), self, String.literal("searchNodeList") });
            if (Inheritance.call(node.?.getNodeName().?, "compareTo", .{ nodeName }) == 0) {
                return node;
            }
            }
        }
        std.debug.panic("{any}", .{exception: { _ = String.plus(nodeName, String.literal(" Node Not Found in search")); break :exception error.Exception; }});
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn searchNodeList(self: *Self, nodeName: ?*String, nodeList: ?*BasicArrayList) ?*Node {
        const numberOfNodes: i32 = nodeList.?.size();
        {
            var index: i32 = 0;
            while (index < numberOfNodes) : (index += 1) {
            const node: ?*Node = Inheritance.cast(?*Node, Inheritance.call(nodeList.?, "get", .{ index }));
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("NodeName: "), node.?.getNodeName()), self, String.literal("searchNodeList") });
            if (Inheritance.call(node.?.getNodeName().?, "compareTo", .{ nodeName }) == 0) {
                return node;
            }
            }
        }
        std.debug.panic("{any}", .{exception: { _ = String.plus(nodeName, String.literal(" Node Not Found in search")); break :exception error.Exception; }});
    }
};

