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
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const TimeCreatedView = @import("org/allbinary/business/time/created/TimeCreatedView.zig").TimeCreatedView;
const TimeLastModifiedView = @import("org/allbinary/business/time/modified/TimeLastModifiedView.zig").TimeLastModifiedView;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const UserEmailConfigurationData = @import("org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationData.zig").UserEmailConfigurationData;
const UserEmailConfigurationInterface = @import("org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationInterface.zig").UserEmailConfigurationInterface;
const UserEmailConfigurationView = @import("org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationView.zig").UserEmailConfigurationView;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const UserConfiguration = @import("org/allbinary/business/user/modules/configuration/UserConfiguration.zig").UserConfiguration;
const UserConfigurationData = @import("org/allbinary/business/user/modules/configuration/UserConfigurationData.zig").UserConfigurationData;
const UserConfigurationInterface = @import("org/allbinary/business/user/modules/configuration/UserConfigurationInterface.zig").UserConfigurationInterface;

pub const UserConfigurationView = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.modules.configuration.UserConfigurationView";
    userConfigurationInterface: ?*UserConfigurationInterface = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.userConfigurationInterface = Inheritance.cast(?*UserConfigurationInterface, UserConfiguration.create());
        const childNodeList: ?*NodeList = Inheritance.upcast(?*NodeList, node.?.getChildNodes());
        const emailConfigurationNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ UserEmailConfigurationData.NAME, childNodeList }));
        const userEmailConfigurationView: ?*UserEmailConfigurationView = Inheritance.callStatic(UserEmailConfigurationView, "create1", .{ emailConfigurationNode });
        const userEmailConfigurationInterface: ?*UserEmailConfigurationInterface = Inheritance.cast(?*UserEmailConfigurationInterface, userEmailConfigurationView.?.getEmailConfigurationInterface());
        _ = Inheritance.call(this.userConfigurationInterface.?, "setUserEmailConfigurationInterface", .{ userEmailConfigurationInterface });
        const timeCreatedNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ EntryData.getInstance().?.TIMECREATED, childNodeList }));
        const timeCreatedView: ?*TimeCreatedView = Inheritance.callStatic(TimeCreatedView, "create1", .{ timeCreatedNode });
        _ = Inheritance.call(this.userConfigurationInterface.?, "setTimeCreated", .{ timeCreatedView.?.getTimeCreated() });
        const timeLastModifiedNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ EntryData.getInstance().?.LASTMODIFIED, childNodeList }));
        const timeLastModifiedView: ?*TimeLastModifiedView = Inheritance.callStatic(TimeLastModifiedView, "create1", .{ timeLastModifiedNode });
        _ = Inheritance.call(this.userConfigurationInterface.?, "setTimeLastModified", .{ timeLastModifiedView.?.getTimeLastModified() });
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(userConfigurationInterface: ?*UserConfigurationInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.userConfigurationInterface = userConfigurationInterface;
        return this;
    }
    

    pub fn getUserConfigurationInterface(self: *Self) ?*UserConfigurationInterface {
        return self.userConfigurationInterface;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ UserConfigurationData.NAME }));
        const userEmailConfigurationView: ?*UserEmailConfigurationView = Inheritance.callStatic(UserEmailConfigurationView, "create1", .{ self.userConfigurationInterface.?.getUserEmailConfigurationInterface() });
        _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(userEmailConfigurationView.?, "toXmlNode", .{ document }) });
        const timeCreatedView: ?*TimeCreatedView = Inheritance.callStatic(TimeCreatedView, "create1", .{ self.userConfigurationInterface.?.getTimeCreated() });
        _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(timeCreatedView.?, "toXmlNode", .{ document }) });
        const timeLastModifiedView: ?*TimeLastModifiedView = Inheritance.callStatic(TimeLastModifiedView, "create1", .{ self.userConfigurationInterface.?.getTimeLastModified() });
        _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(timeLastModifiedView.?, "toXmlNode", .{ document }) });
        return node;
    }
};

