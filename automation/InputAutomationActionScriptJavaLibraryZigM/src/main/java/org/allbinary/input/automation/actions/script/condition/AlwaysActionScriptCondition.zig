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
// package org.allbinary.input.automation.actions.script.condition

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const AlwaysActionScriptConditionData = @import("org/allbinary/input/automation/actions/script/condition/AlwaysActionScriptConditionData.zig").AlwaysActionScriptConditionData;
const AlwaysActionScriptConditionInterface = @import("org/allbinary/input/automation/actions/script/condition/AlwaysActionScriptConditionInterface.zig").AlwaysActionScriptConditionInterface;
const AlwaysActionScriptConditionJPanel = @import("org/allbinary/input/automation/actions/script/condition/AlwaysActionScriptConditionJPanel.zig").AlwaysActionScriptConditionJPanel;
const BasicProfileActionScriptCondition = @import("org/allbinary/input/automation/actions/script/condition/BasicProfileActionScriptCondition.zig").BasicProfileActionScriptCondition;
const Long = @import("java/lang/Long.zig").Long;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const AlwaysActionScriptCondition = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition";
    pub const java_interfaces = .{ AlwaysActionScriptConditionInterface };
    base: BasicProfileActionScriptCondition = undefined,
    logUtil: ?*LogUtil = null,
    alwaysActionScriptConditionJPanel: ?*AlwaysActionScriptConditionJPanel = null,
    isOn: bool = false,
    // Implements AlwaysActionScriptConditionInterface
    const NAME: ?*String = String.literal("Always On/Off");

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.alwaysActionScriptConditionJPanel = null;
        this.isOn = false;
    }
    

    pub fn create1(node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicProfileActionScriptCondition, "create2", .{ AlwaysActionScriptCondition.NAME, node }).*;
        this.initFields();
        const actionNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ AlwaysActionScriptConditionData.NAME, node.?.getChildNodes() }));
        if (actionNode != null) {
            const nodeList: ?*NodeList = Inheritance.upcast(?*NodeList, actionNode.?.getChildNodes());
            {
                var index: i32 = 0;
                while (index < nodeList.?.getLength()) : (index += 1) {
                const childNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nodeList.?, "item", .{ index }));
                if (Inheritance.call(childNode.?.getNodeName().?, "compareTo", .{ AlwaysActionScriptConditionData.IS_ON }) == 0) {
                    const booleanString: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ childNode }));
                    _ = Inheritance.call(this, "setIsOn", .{ Inheritance.callStatic(Boolean, "create1", .{ booleanString }).booleanValue() });
                } else {
                    std.debug.panic("{any}", .{exception: { _ = String.literal("Action Script Condition Unknown Node"); break :exception error.Exception; }});
                }
                }
            }
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Action Script Condition Node Null"); break :exception error.Exception; }});
        }
        _ = this.init();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicProfileActionScriptCondition, "create1", .{ AlwaysActionScriptCondition.NAME }).*;
        this.initFields();
        _ = this.init();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self) void {
        self.alwaysActionScriptConditionJPanel = Inheritance.callStatic(AlwaysActionScriptConditionJPanel, "create1", .{ self });
    }
    

    pub fn isIsOn(self: *Self) bool {
        return self.isOn;
    }
    

    pub fn setIsOn(self: *Self, isOn: bool) void {
        self.isOn = isOn;
    }
    

    pub fn showDialog(self: *Self) void {
        _ = Inheritance.call(Inheritance.receiver(self.alwaysActionScriptConditionJPanel.?, "getAlwaysActionJDialog").getAlwaysActionJDialog().?, "setVisible", .{ true });
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ AlwaysActionScriptConditionData.IS_ON, String.valueOf(self.isIsOn()) });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("HashMap: "), Object.toString(Object.of(hashMap))), self, String.literal("toHashMap()") });
        return hashMap;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(&self.base, "toXmlNode", .{ document }));
        _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNodeWithValueNodes", .{ document, AlwaysActionScriptConditionData.NAME, self.toHashMap() }) });
        return node;
    }
    

    // throws Exception
    pub fn shouldProcess(self: *Self, frame: ?*Long) bool {
        if (self.isIsOn()) {
            return Inheritance.call(&self.base, "shouldProcess", .{ frame });
        }
        return false;
    }
    

    pub fn log(self: *Self) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Is On: "), self.isIsOn()), self, String.literal("log") });
    }
};

