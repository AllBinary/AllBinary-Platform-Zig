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
// package org.allbinary.logic.communication.smtp.configuration.user.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const UserEmailEventConfiguration = @import("org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfiguration.zig").UserEmailEventConfiguration;
const UserEmailEventConfigurationData = @import("org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationData.zig").UserEmailEventConfigurationData;
const UserEmailEventConfigurationInterface = @import("org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationInterface.zig").UserEmailEventConfigurationInterface;
const UserEmailEventConfigurationMapping = @import("org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationMapping.zig").UserEmailEventConfigurationMapping;

pub const UserEmailEventConfigurationView = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationView";
    userEmailEventConfigurationInterface: ?*UserEmailEventConfigurationInterface = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.userEmailEventConfigurationInterface = null;
    }
    

    pub fn create1(node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const childNodeList: ?*NodeList = Inheritance.upcast(?*NodeList, node.?.getChildNodes());
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        const name: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ UserEmailEventConfigurationData.NAME, childNodeList }));
        _ = Inheritance.call(hashMap.?, "put", .{ UserEmailEventConfigurationData.NAME, name });
        const eventListenerClassPath: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ UserEmailEventConfigurationData.LISTENER_CLASSPATH, childNodeList }));
        _ = Inheritance.call(hashMap.?, "put", .{ UserEmailEventConfigurationData.LISTENER_CLASSPATH, eventListenerClassPath });
        _ = Inheritance.call(this, "setUserEmailEventConfigurationInterface", .{ Inheritance.cast(?*UserEmailEventConfigurationInterface, Inheritance.callStatic(UserEmailEventConfiguration, "create1", .{ hashMap })) });
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(userEmailEventConfigurationInterface: ?*UserEmailEventConfigurationInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setUserEmailEventConfigurationInterface", .{ userEmailEventConfigurationInterface });
        return this;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const userEmailEventConfigurationMapping: ?*UserEmailEventConfigurationMapping = Inheritance.callStatic(UserEmailEventConfigurationMapping, "create1", .{ self.getUserEmailEventConfigurationInterface() });
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, userEmailEventConfigurationMapping.?.toHashMap());
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, UserEmailEventConfigurationData.NAME, hashMap }));
        return node;
    }
    

    pub fn getUserEmailEventConfigurationInterface(self: *Self) ?*UserEmailEventConfigurationInterface {
        return self.userEmailEventConfigurationInterface;
    }
    

    pub fn setUserEmailEventConfigurationInterface(self: *Self, userEmailEventConfigurationInterface: ?*UserEmailEventConfigurationInterface) void {
        self.userEmailEventConfigurationInterface = userEmailEventConfigurationInterface;
    }
};

