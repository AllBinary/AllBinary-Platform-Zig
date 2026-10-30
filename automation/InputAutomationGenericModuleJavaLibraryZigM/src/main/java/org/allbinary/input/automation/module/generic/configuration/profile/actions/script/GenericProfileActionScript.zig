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
// package org.allbinary.input.automation.module.generic.configuration.profile.actions.script

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const DefaultMutableTreeNode = @import("javax/swing/tree/DefaultMutableTreeNode.zig").DefaultMutableTreeNode;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const ProfileActionScriptNodeInterface = @import("org/allbinary/input/automation/actions/script/ProfileActionScriptNodeInterface.zig").ProfileActionScriptNodeInterface;
const ProfileActionScriptConditionFactory = @import("org/allbinary/input/automation/actions/script/condition/ProfileActionScriptConditionFactory.zig").ProfileActionScriptConditionFactory;
const ProfileActionScriptConditionInterface = @import("org/allbinary/input/automation/actions/script/condition/ProfileActionScriptConditionInterface.zig").ProfileActionScriptConditionInterface;
const GenericProfileActionData = @import("org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionData.zig").GenericProfileActionData;
const GenericProfileActionJPanel = @import("org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionJPanel.zig").GenericProfileActionJPanel;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;

pub const GenericProfileActionScript = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.generic.configuration.profile.actions.script.GenericProfileActionScript";
    base: DefaultMutableTreeNode = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    genericProfileActionJPanel: ?*GenericProfileActionJPanel = null,
    profileActionConditionInterfaceVector: ?*BasicArrayList = null,
    // Implements ProfileActionScriptNodeInterface
    const NAME: ?*String = String.literal("Root");

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        this.profileActionConditionInterfaceVector = null;
    }
    

    pub fn create2(genericProfileActionJPanel: ?*GenericProfileActionJPanel, node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(DefaultMutableTreeNode, "create1", .{ GenericProfileActionScript.NAME }).*;
        this.initFields();
        this.genericProfileActionJPanel = genericProfileActionJPanel;
        _ = Inheritance.call(this, "setProfileActionConditionInterfaceVector", .{ BasicArrayListD.create() });
        const actionScriptNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ GenericProfileActionData.SCRIPT, node.?.getChildNodes() }));
        if (actionScriptNode != null) {
            const nodeList: ?*NodeList = Inheritance.upcast(?*NodeList, actionScriptNode.?.getChildNodes());
            {
                var index: i32 = 0;
                while (index < nodeList.?.getLength()) : (index += 1) {
                const actionConditionNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nodeList.?, "item", .{ index }));
                if (Object.same(actionConditionNode.?.getNodeType(), Node.ELEMENT_NODE)) {
                    _ = Inheritance.call(this, "addCondition", .{ Inheritance.callStatic(ProfileActionScriptConditionFactory, "getInstance", .{ actionConditionNode }) });
                }
                }
            }
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Profile Action Script Node Null"); break :exception error.Exception; }});
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create1(genericProfileActionJPanel: ?*GenericProfileActionJPanel) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = DefaultMutableTreeNode.create().*;
        this.initFields();
        this.genericProfileActionJPanel = genericProfileActionJPanel;
        _ = Inheritance.call(this, "setProfileActionConditionInterfaceVector", .{ BasicArrayListD.create() });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn addCondition(self: *Self, profileActionScriptNodeInterface: ?*ProfileActionScriptNodeInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("addCondition") });
        _ = Inheritance.call(self.getProfileActionConditionInterfaceVector().?, "add", .{ profileActionScriptNodeInterface });
        _ = Inheritance.call(self, "add", .{ profileActionScriptNodeInterface });
    }
    

    pub fn removeCondition(self: *Self, profileActionScriptNodeInterface: ?*ProfileActionScriptNodeInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("removeCondition") });
        _ = Inheritance.call(self.getProfileActionConditionInterfaceVector().?, "remove", .{ profileActionScriptNodeInterface });
        _ = Inheritance.call(self, "remove", .{ profileActionScriptNodeInterface });
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("HashMap: "), Object.toString(Object.of(hashMap))), self, String.literal("toHashMap()") });
        return hashMap;
    }
    

    pub fn getProfileActionConditionInterfaceVector(self: *Self) ?*BasicArrayList {
        return self.profileActionConditionInterfaceVector;
    }
    

    pub fn setProfileActionConditionInterfaceVector(self: *Self, profileActionConditionInterfaceVector: ?*BasicArrayList) void {
        self.profileActionConditionInterfaceVector = profileActionConditionInterfaceVector;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ GenericProfileActionData.SCRIPT }));
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, self.getProfileActionConditionInterfaceVector());
        const size: i32 = vector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const profileActionConditionInterface: ?*ProfileActionScriptConditionInterface = Inheritance.cast(?*ProfileActionScriptConditionInterface, Inheritance.call(vector.?, "get", .{ index }));
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(profileActionConditionInterface.?, "toXmlNode", .{ document }) });
            }
        }
        return node;
    }
};

