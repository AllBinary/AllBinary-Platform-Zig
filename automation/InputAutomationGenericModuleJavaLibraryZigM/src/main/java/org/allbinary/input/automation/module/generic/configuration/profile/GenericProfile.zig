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
// package org.allbinary.input.automation.module.generic.configuration.profile

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const GenericProfileActions = @import("org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActions.zig").GenericProfileActions;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const GenericProfileData = @import("org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileData.zig").GenericProfileData;
const GenericProfileDataWorkerData = @import("org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileDataWorkerData.zig").GenericProfileDataWorkerData;
const GenericProfileDataWorkerType = @import("org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileDataWorkerType.zig").GenericProfileDataWorkerType;

pub const GenericProfile = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.generic.configuration.profile.GenericProfile";
    logUtil: ?*LogUtil = null,
    name: ?*String = null,
    vector: ?*BasicArrayList = null,
    genericProfileActions: ?*GenericProfileActions = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.name = null;
        
        this.genericProfileActions = null;
    }
    

    pub fn create1(node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setName", .{ Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ node }) });
        this.vector = Inheritance.upcast(@TypeOf(this.vector), BasicArrayListD.create());
        const nodeList: ?*NodeList = Inheritance.upcast(?*NodeList, node.?.getChildNodes());
        _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.literal("Name: "), this.getName()), String.literal(" Child Nodes: ")), nodeList.?.getLength()), this, String.literal("Contructor") });
        {
            var index: i32 = 0;
            while (index < nodeList.?.getLength()) : (index += 1) {
            const profileNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nodeList.?, "item", .{ index }));
            if (Inheritance.call(profileNode.?.getNodeName().?, "compareTo", .{ GenericProfileDataWorkerData.NAME }) == 0) {
                const genericProfileDataWorkerType: ?*GenericProfileDataWorkerType = Inheritance.upcast(?*GenericProfileDataWorkerType, Inheritance.callStatic(GenericProfileDataWorkerType, "getInstance", .{ profileNode }));
                _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Adding GenericProfileDataWorkerType: "), Object.toString(Object.of(genericProfileDataWorkerType))), this, String.literal("Contructor") });
                _ = Inheritance.call(this.vector.?, "add", .{ genericProfileDataWorkerType });
            }
            }
        }
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(name: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setName", .{ name });
        this.vector = Inheritance.upcast(@TypeOf(this.vector), BasicArrayListD.create());
        return this;
    }
    

    pub fn getGenericProfileDataWorkerTypeVector(self: *Self) ?*BasicArrayList {
        return self.vector;
    }
    

    pub fn add(self: *Self, genericProfileDataWorkerType: ?*GenericProfileDataWorkerType) void {
        if (!Inheritance.call(self.vector.?, "contains", .{ genericProfileDataWorkerType })) {
            _ = Inheritance.call(self.vector.?, "add", .{ genericProfileDataWorkerType });
        }
    }
    

    pub fn remove(self: *Self, genericProfileDataWorkerType: ?*GenericProfileDataWorkerType) void {
        _ = Inheritance.call(self.vector.?, "remove", .{ genericProfileDataWorkerType });
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createTextNode", .{ document, GenericProfileData.NAME, self.name }));
        const size: i32 = self.vector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const genericProfileDataWorkerType: ?*GenericProfileDataWorkerType = Inheritance.cast(?*GenericProfileDataWorkerType, Inheritance.call(self.vector.?, "get", .{ index }));
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(genericProfileDataWorkerType.?, "toXmlNode", .{ document }) });
            }
        }
        return node;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn setName(self: *Self, name: ?*String) void {
        self.name = name;
    }
    

    pub fn getGenericProfileActions(self: *Self) ?*GenericProfileActions {
        return self.genericProfileActions;
    }
    

    pub fn setGenericProfileActions(self: *Self, genericProfileActions: ?*GenericProfileActions) void {
        self.genericProfileActions = genericProfileActions;
    }
};

