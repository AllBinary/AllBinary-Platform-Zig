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
// package org.allbinary.logic.communication.smtp.configuration.server

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const EmailServerConfiguration = @import("org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfiguration.zig").EmailServerConfiguration;
const EmailServerConfigurationData = @import("org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationData.zig").EmailServerConfigurationData;
const EmailServerConfigurationInterface = @import("org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationInterface.zig").EmailServerConfigurationInterface;
const EmailServerConfigurationMapping = @import("org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationMapping.zig").EmailServerConfigurationMapping;

pub const EmailServerConfigurationView = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationView";
    emailServerConfigurationInterface: ?*EmailServerConfigurationInterface = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const childNodeList: ?*NodeList = Inheritance.upcast(?*NodeList, node.?.getChildNodes());
        const server: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ EmailServerConfigurationData.SERVER, childNodeList }));
        const accountName: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ EmailServerConfigurationData.ACCOUNT, childNodeList }));
        const password: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ EmailServerConfigurationData.PASSWORD, childNodeList }));
        this.emailServerConfigurationInterface = Inheritance.cast(?*EmailServerConfigurationInterface, Inheritance.callStatic(EmailServerConfiguration, "create3", .{ accountName, password, server }));
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(emailServerConfigurationInterface: ?*EmailServerConfigurationInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.emailServerConfigurationInterface = emailServerConfigurationInterface;
        return this;
    }
    

    pub fn getEmailConfigurationInterface(self: *Self) ?*EmailServerConfigurationInterface {
        return self.emailServerConfigurationInterface;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const emailConfigurationMapping: ?*EmailServerConfigurationMapping = Inheritance.callStatic(EmailServerConfigurationMapping, "create1", .{ self.emailServerConfigurationInterface });
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, emailConfigurationMapping.?.toHashMap());
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNodeWithValueNodes", .{ document, EmailServerConfigurationData.NAME, hashMap }));
        return node;
    }
};

