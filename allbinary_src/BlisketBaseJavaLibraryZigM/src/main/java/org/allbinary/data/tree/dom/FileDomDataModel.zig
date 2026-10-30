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
const TableMappingInterface = @import("org/allbinary/data/tables/TableMappingInterface.zig").TableMappingInterface;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const FileTableMapping = @import("org/allbinary/data/tree/dom/FileTableMapping.zig").FileTableMapping;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;

pub const FileDomDataModel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tree.dom.FileDomDataModel";
    pub const java_interfaces = .{ DomNodeInterface };
    file: ?*AbFile = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(file: ?*AbFile) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.file = file;
        return this;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const tableMappingInterface: ?*TableMappingInterface = Inheritance.cast(?*TableMappingInterface, Inheritance.callStatic(FileTableMapping, "create1", .{ self.file }));
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, tableMappingInterface.?.toHashMap());
        return Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNodeWithValueNodes", .{ document, String.literal("file"), hashMap }));
    }
};

