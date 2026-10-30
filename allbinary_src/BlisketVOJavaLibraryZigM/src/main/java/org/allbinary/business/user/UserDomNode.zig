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
// package org.allbinary.business.user

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const TableMappingInterface = @import("org/allbinary/data/tables/TableMappingInterface.zig").TableMappingInterface;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const UserData = @import("org/allbinary/business/user/UserData.zig").UserData;

pub const UserDomNode = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.UserDomNode";
    dataMappingInterface: ?*TableMappingInterface = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(dataMappingInterface: ?*TableMappingInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.dataMappingInterface = dataMappingInterface;
        return this;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const EMPTY_STRING: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, self.dataMappingInterface.?.toHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ EntryData.getInstance().?.LASTMODIFIED, EMPTY_STRING });
        _ = Inheritance.call(hashMap.?, "put", .{ EntryData.getInstance().?.ENCRYPTION, EMPTY_STRING });
        _ = Inheritance.call(hashMap.?, "put", .{ UserData.PASSWORD, EMPTY_STRING });
        return Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, UserData.NAME, hashMap }));
    }
    

    // throws Exception
    pub fn toXmlDoc(self: *Self) ?*Document {
        _ = self;
        return null;
    }
    

    // throws Exception
    pub fn view(self: *Self) ?*String {
        _ = self;
        return null;
    }
};

