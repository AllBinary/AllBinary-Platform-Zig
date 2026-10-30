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
const XmlDocumentHelper = @import("org/allbinary/data/tree/dom/document/XmlDocumentHelper.zig").XmlDocumentHelper;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const Directory = @import("org/allbinary/logic/io/file/directory/Directory.zig").Directory;
const TransformInterface = @import("org/allbinary/logic/visual/transform/TransformInterface.zig").TransformInterface;
const TransformDocumentFactory = @import("org/allbinary/logic/visual/transform/data/TransformDocumentFactory.zig").TransformDocumentFactory;
const TransformDocumentInterface = @import("org/allbinary/logic/visual/transform/data/TransformDocumentInterface.zig").TransformDocumentInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const FileDomDataModel = @import("org/allbinary/data/tree/dom/FileDomDataModel.zig").FileDomDataModel;

pub const DirectoryDataModel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tree.dom.DirectoryDataModel";
    pub const java_interfaces = .{ DomNodeInterface };
    fileBasicArrayList: ?*BasicArrayList = null,
    transformDocumentInterface: ?*TransformDocumentInterface = null,
    NO_TYPE: i32 = 0,
    // Implements DomNodeInterface
    // Implements TransformInterface

    fn initFields(this: *Self) void {
        
        
        this.NO_TYPE = 0;
    }
    

    pub fn create1(file: ?*AbFile) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.fileBasicArrayList = Inheritance.upcast(@TypeOf(this.fileBasicArrayList), Inheritance.call(Directory.getInstance().?, "search", .{ file }));
        this.transformDocumentInterface = Inheritance.cast(?*TransformDocumentInterface, TransformDocumentFactory.getInstance());
        return this;
    }
    

    pub fn getTypeId(self: *Self) i32 {
        return self.NO_TYPE;
    }
    

    // throws Exception
    pub fn getTransformInfoInterface(self: *Self) ?*TransformInfoInterface {
        _ = self;
        return null;
    }
    

    pub fn setTransformDocumentInterface(self: *Self, transformDocumentInterface: ?*TransformDocumentInterface) void {
        self.transformDocumentInterface = transformDocumentInterface;
    }
    

    pub fn getTransformDocumentInterface(self: *Self) ?*TransformDocumentInterface {
        return self.transformDocumentInterface;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const dirNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ String.literal("dir") }));
        const size: i32 = self.fileBasicArrayList.?.size();
        var nextFile: ?*AbFile = null;
        var fileNode: ?*Node = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            nextFile = Inheritance.cast(?*AbFile, Inheritance.call(self.fileBasicArrayList.?, "get", .{ index }));
            fileNode = Inheritance.upcast(@TypeOf(fileNode), Inheritance.call(Inheritance.callStatic(FileDomDataModel, "create1", .{ nextFile }), "toXmlNode", .{ document }));
            _ = Inheritance.call(dirNode.?, "appendChild", .{ fileNode });
            }
        }
        return dirNode;
    }
    

    // throws Exception
    pub fn toXmlDoc(self: *Self) ?*Document {
        return Inheritance.upcast(?*Document, Inheritance.receiverOf(self.getTransformDocumentInterface().?, "getDoc").getDoc());
    }
    

    // throws Exception
    pub fn view(self: *Self) ?*String {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(self, "toXmlNode", .{ Inheritance.receiverOf(self.getTransformDocumentInterface().?, "getDoc").getDoc() }));
        _ = Inheritance.call(Inheritance.receiverOf(self.getTransformDocumentInterface().?, "getBaseNode").getBaseNode().?, "appendChild", .{ node });
        return Inheritance.upcast(?*String, Inheritance.callStatic(XmlDocumentHelper, "toString", .{ Inheritance.receiverOf(self.getTransformDocumentInterface().?, "getDoc").getDoc() }));
    }
};

