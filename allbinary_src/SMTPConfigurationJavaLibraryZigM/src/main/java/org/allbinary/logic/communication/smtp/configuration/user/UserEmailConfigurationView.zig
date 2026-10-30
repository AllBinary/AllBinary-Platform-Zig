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
// package org.allbinary.logic.communication.smtp.configuration.user

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const UserEmailEventsConfigurationData = @import("org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationData.zig").UserEmailEventsConfigurationData;
const UserEmailEventsConfigurationInterface = @import("org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationInterface.zig").UserEmailEventsConfigurationInterface;
const UserEmailEventsConfigurationView = @import("org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationView.zig").UserEmailEventsConfigurationView;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const UserEmailConfiguration = @import("org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfiguration.zig").UserEmailConfiguration;
const UserEmailConfigurationData = @import("org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationData.zig").UserEmailConfigurationData;
const UserEmailConfigurationInterface = @import("org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationInterface.zig").UserEmailConfigurationInterface;
const UserEmailConfigurationMapping = @import("org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationMapping.zig").UserEmailConfigurationMapping;

pub const UserEmailConfigurationView = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    userEmailConfigurationInterface: ?*UserEmailConfigurationInterface = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
    }
    

    pub fn create1(node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.CONSTRUCTOR, this, this.commonStrings.?.CONSTRUCTOR });
        }
        this.userEmailConfigurationInterface = Inheritance.cast(?*UserEmailConfigurationInterface, UserEmailConfiguration.create());
        const childNodeList: ?*NodeList = Inheritance.upcast(?*NodeList, node.?.getChildNodes());
        const userEmailEventsConfigurationNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNodeNoThrow", .{ UserEmailEventsConfigurationData.NAME, childNodeList }));
        const userEmailEventsConfigurationView: ?*UserEmailEventsConfigurationView = Inheritance.callStatic(UserEmailEventsConfigurationView, "create1", .{ userEmailEventsConfigurationNode });
        _ = Inheritance.call(this.userEmailConfigurationInterface.?, "setUserEmailEventsConfigurationInterface", .{ userEmailEventsConfigurationView.?.getUserEmailEventsConfigurationInterface() });
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(userEmailConfigurationInterface: ?*UserEmailConfigurationInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.userEmailConfigurationInterface = userEmailConfigurationInterface;
        return this;
    }
    

    pub fn getEmailConfigurationInterface(self: *Self) ?*UserEmailConfigurationInterface {
        return self.userEmailConfigurationInterface;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const emailConfigurationMapping: ?*UserEmailConfigurationMapping = Inheritance.callStatic(UserEmailConfigurationMapping, "create1", .{ self.userEmailConfigurationInterface });
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, emailConfigurationMapping.?.toHashMap());
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, UserEmailConfigurationData.NAME, hashMap }));
        const userEmailConfigurationInterface: ?*UserEmailConfigurationInterface = Inheritance.upcast(?*UserEmailConfigurationInterface, self.getEmailConfigurationInterface());
        const userEmailEventsConfigurationInterface: ?*UserEmailEventsConfigurationInterface = Inheritance.upcast(?*UserEmailEventsConfigurationInterface, userEmailConfigurationInterface.?.getUserEmailEventsConfigurationInterface());
        const userEmailEventsConfigurationView: ?*UserEmailEventsConfigurationView = Inheritance.callStatic(UserEmailEventsConfigurationView, "create1", .{ userEmailEventsConfigurationInterface });
        _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(userEmailEventsConfigurationView.?, "toXmlNode", .{ document }) });
        return node;
    }
};

