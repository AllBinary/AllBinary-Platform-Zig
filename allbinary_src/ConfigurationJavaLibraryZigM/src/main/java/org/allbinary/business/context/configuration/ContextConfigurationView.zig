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
// package org.allbinary.business.context.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const EmailServerConfigurationData = @import("org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationData.zig").EmailServerConfigurationData;
const EmailServerConfigurationInterface = @import("org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationInterface.zig").EmailServerConfigurationInterface;
const EmailServerConfigurationView = @import("org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationView.zig").EmailServerConfigurationView;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const ContextConfiguration = @import("org/allbinary/business/context/configuration/ContextConfiguration.zig").ContextConfiguration;
const ContextConfigurationData = @import("org/allbinary/business/context/configuration/ContextConfigurationData.zig").ContextConfigurationData;
const ContextConfigurationInterface = @import("org/allbinary/business/context/configuration/ContextConfigurationInterface.zig").ContextConfigurationInterface;

pub const ContextConfigurationView = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.context.configuration.ContextConfigurationView";
    contextConfigurationInterface: ?*ContextConfigurationInterface = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const childNodeList: ?*NodeList = Inheritance.upcast(?*NodeList, node.?.getChildNodes());
        this.contextConfigurationInterface = Inheritance.upcast(@TypeOf(this.contextConfigurationInterface), ContextConfiguration.create());
        const emailConfigurationNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ EmailServerConfigurationData.NAME, childNodeList }));
        const emailServerConfigurationView: ?*EmailServerConfigurationView = Inheritance.callStatic(EmailServerConfigurationView, "create1", .{ emailConfigurationNode });
        _ = Inheritance.call(this.contextConfigurationInterface.?, "setEmailServerConfigurationInterface", .{ Inheritance.cast(?*EmailServerConfigurationInterface, emailServerConfigurationView.?.getEmailConfigurationInterface()) });
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(contextConfigurationInterface: ?*ContextConfigurationInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.contextConfigurationInterface = contextConfigurationInterface;
        return this;
    }
    

    pub fn getContextConfigurationInterface(self: *Self) ?*ContextConfigurationInterface {
        return self.contextConfigurationInterface;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ ContextConfigurationData.getInstance().?.NAME }));
        const emailServerConfigurationView: ?*EmailServerConfigurationView = Inheritance.callStatic(EmailServerConfigurationView, "create1", .{ Inheritance.receiverOf(self.getContextConfigurationInterface().?, "getEmailServerConfigurationInterface").getEmailServerConfigurationInterface() });
        _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(emailServerConfigurationView.?, "toXmlNode", .{ document }) });
        return node;
    }
};

