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
// package org.allbinary.business.user.modules.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const XmlDocumentHelper = @import("org/allbinary/data/tree/dom/document/XmlDocumentHelper.zig").XmlDocumentHelper;
const DomDocumentMappingInterface = @import("org/allbinary/data/tree/dom/document/mapping/DomDocumentMappingInterface.zig").DomDocumentMappingInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const UserConfigurationInterface = @import("org/allbinary/business/user/modules/configuration/UserConfigurationInterface.zig").UserConfigurationInterface;
const UserConfigurationView = @import("org/allbinary/business/user/modules/configuration/UserConfigurationView.zig").UserConfigurationView;

pub const UserConfigurationDomDocumentMapping = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping";
    userConfigurationInterface: ?*UserConfigurationInterface = null,
    // Implements DomDocumentMappingInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(userConfigurationInterface: ?*UserConfigurationInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.userConfigurationInterface = userConfigurationInterface;
        return this;
    }
    

    // throws Exception
    pub fn toXmlDoc(self: *Self) ?*Document {
        const document: ?*Document = Inheritance.upcast(?*Document, DomDocumentHelper.create());
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(Inheritance.callStatic(UserConfigurationView, "create1", .{ self.userConfigurationInterface }), "toXmlNode", .{ document }));
        _ = Inheritance.call(document.?, "appendChild", .{ node });
        return document;
    }
    

    // throws Exception
    pub fn toDomDocumentString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Inheritance.callStatic(XmlDocumentHelper, "toString", .{ self.toXmlDoc() }));
    }
};

