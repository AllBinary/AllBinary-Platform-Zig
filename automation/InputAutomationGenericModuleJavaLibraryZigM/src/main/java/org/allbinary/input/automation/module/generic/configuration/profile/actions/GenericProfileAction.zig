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
// package org.allbinary.input.automation.module.generic.configuration.profile.actions

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const GenericProfileActionScript = @import("org/allbinary/input/automation/module/generic/configuration/profile/actions/script/GenericProfileActionScript.zig").GenericProfileActionScript;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const GenericProfileActionData = @import("org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionData.zig").GenericProfileActionData;
const GenericProfileActionJPanel = @import("org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionJPanel.zig").GenericProfileActionJPanel;

pub const GenericProfileAction = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.generic.configuration.profile.actions.GenericProfileAction";
    logUtil: ?*LogUtil = null,
    name: ?*String = null,
    genericProfileActionScript: ?*GenericProfileActionScript = null,
    genericProfileActionJPanel: ?*GenericProfileActionJPanel = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        this.genericProfileActionScript = null;
        this.genericProfileActionJPanel = null;
    }
    

    pub fn create2(genericProfileActionJPanel: ?*GenericProfileActionJPanel, node: ?*Node) *Self {
        _ = genericProfileActionJPanel;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const actionNameNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ GenericProfileActionData.NAME, node.?.getChildNodes() }));
        if (actionNameNode != null) {
            this.name = Inheritance.upcast(@TypeOf(this.name), Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ actionNameNode }));
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Profile Action Name Node Null"); break :exception error.Exception; }});
        }
        _ = Inheritance.call(this, "setGenericProfileActionScript", .{ Inheritance.callStatic(GenericProfileActionScript, "create2", .{ this.genericProfileActionJPanel, node }) });
        return this;
    }
    

    pub fn create1(name: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.name = name;
        _ = Inheritance.call(this, "setGenericProfileActionScript", .{ Inheritance.callStatic(GenericProfileActionScript, "create1", .{ this.genericProfileActionJPanel }) });
        return this;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn setName(self: *Self, name: ?*String) void {
        self.name = name;
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ GenericProfileActionData.NAME, self.name });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("HashMap: "), Object.toString(Object.of(hashMap))), self, String.literal("toHashMap()") });
        return hashMap;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNodeWithValueNodes", .{ document, GenericProfileActionData.NAME, self.toHashMap() }));
        _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(self.getGenericProfileActionScript().?, "toXmlNode", .{ document }) });
        return node;
    }
    

    pub fn getGenericProfileActionScript(self: *Self) ?*GenericProfileActionScript {
        return self.genericProfileActionScript;
    }
    

    pub fn setGenericProfileActionScript(self: *Self, genericProfileActionScript: ?*GenericProfileActionScript) void {
        self.genericProfileActionScript = genericProfileActionScript;
    }
};

