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
// const Set = @import("java/util/Set.zig").Set;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const UserEmailEventConfigurationData = @import("org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationData.zig").UserEmailEventConfigurationData;
const UserEmailEventConfigurationInterface = @import("org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationInterface.zig").UserEmailEventConfigurationInterface;
const UserEmailEventConfigurationView = @import("org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationView.zig").UserEmailEventConfigurationView;
const UserEmailEventsConfiguration = @import("org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfiguration.zig").UserEmailEventsConfiguration;
const UserEmailEventsConfigurationData = @import("org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationData.zig").UserEmailEventsConfigurationData;
const UserEmailEventsConfigurationInterface = @import("org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationInterface.zig").UserEmailEventsConfigurationInterface;
const UserEmailEventsConfigurationMapping = @import("org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationMapping.zig").UserEmailEventsConfigurationMapping;

pub const UserEmailEventsConfigurationView = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationView";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    userEmailEventsConfigurationInterface: ?*UserEmailEventsConfigurationInterface = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
    }
    

    pub fn create1(node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.userEmailEventsConfigurationInterface = Inheritance.cast(?*UserEmailEventsConfigurationInterface, UserEmailEventsConfiguration.create());
        const childNodeList: ?*NodeList = Inheritance.upcast(?*NodeList, node.?.getChildNodes());
        const emailEventConfigurationNodeVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(DomSearchHelper, "getAllNodesNoThrow", .{ UserEmailEventConfigurationData.NAME, childNodeList }));
        const size: i32 = emailEventConfigurationNodeVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const userEmailConfigurationNode: ?*Node = Inheritance.cast(?*Node, Inheritance.call(emailEventConfigurationNodeVector.?, "get", .{ index }));
            const userEmailEventConfigurationView: ?*UserEmailEventConfigurationView = Inheritance.callStatic(UserEmailEventConfigurationView, "create1", .{ userEmailConfigurationNode });
            _ = Inheritance.call(this.userEmailEventsConfigurationInterface.?, "addUserEmailEventConfiguration", .{ userEmailEventConfigurationView.?.getUserEmailEventConfigurationInterface() });
            }
        }
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(userEmailEventsConfigurationInterface: ?*UserEmailEventsConfigurationInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.userEmailEventsConfigurationInterface = userEmailEventsConfigurationInterface;
        return this;
    }
    

    pub fn getUserEmailEventsConfigurationInterface(self: *Self) ?*UserEmailEventsConfigurationInterface {
        return self.userEmailEventsConfigurationInterface;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const userEmailConfigurationMapping: ?*UserEmailEventsConfigurationMapping = Inheritance.callStatic(UserEmailEventsConfigurationMapping, "create1", .{ self.userEmailEventsConfigurationInterface }); _ = userEmailConfigurationMapping;
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ UserEmailEventsConfigurationData.NAME }));
        const emailEventHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(self.getUserEmailEventsConfigurationInterface().?, "getEventConfigurationHashMap").getEventConfigurationHashMap());
        const set: ?*Set = Inheritance.upcast(?*Set, emailEventHashMap.?.keySet());
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Number Of Email Events Specified in file: "), set.?.size()), self, self.commonStrings.?.CONSTRUCTOR });
        }
        const eventNameArray: []?Object = set.?.toArray();
        const size: i32 = @as(i32, @intCast(eventNameArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const eventName: ?*String = Inheritance.cast(?*String, eventNameArray[@intCast(index)]);
            const userEmailEventsConfigurationInterface: ?*UserEmailEventConfigurationInterface = Inheritance.cast(?*UserEmailEventConfigurationInterface, Inheritance.call(emailEventHashMap.?, "get", .{ eventName }));
            const userEmailEventConfigurationView: ?*UserEmailEventConfigurationView = Inheritance.callStatic(UserEmailEventConfigurationView, "create1", .{ userEmailEventsConfigurationInterface });
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(userEmailEventConfigurationView.?, "toXmlNode", .{ document }) });
            }
        }
        return node;
    }
};

