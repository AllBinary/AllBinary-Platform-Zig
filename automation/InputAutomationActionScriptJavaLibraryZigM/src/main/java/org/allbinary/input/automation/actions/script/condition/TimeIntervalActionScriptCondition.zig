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
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const BasicProfileActionScriptCondition = @import("org/allbinary/input/automation/actions/script/condition/BasicProfileActionScriptCondition.zig").BasicProfileActionScriptCondition;
const TimeIntervalActionScriptConditionData = @import("org/allbinary/input/automation/actions/script/condition/TimeIntervalActionScriptConditionData.zig").TimeIntervalActionScriptConditionData;
const TimeIntervalActionScriptConditionInterface = @import("org/allbinary/input/automation/actions/script/condition/TimeIntervalActionScriptConditionInterface.zig").TimeIntervalActionScriptConditionInterface;
const TimeIntervalActionScriptConditionJPanel = @import("org/allbinary/input/automation/actions/script/condition/TimeIntervalActionScriptConditionJPanel.zig").TimeIntervalActionScriptConditionJPanel;
const Integer = @import("java/lang/Integer.zig").Integer;
const Long = @import("java/lang/Long.zig").Long;

pub const TimeIntervalActionScriptCondition = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition";
    pub const java_interfaces = .{ TimeIntervalActionScriptConditionInterface };
    base: BasicProfileActionScriptCondition = undefined,
    logUtil: ?*LogUtil = null,
    timeIntervalActionScriptConditionJPanel: ?*TimeIntervalActionScriptConditionJPanel = null,
    timeHelper: ?*TimeDelayHelper = null,
    // Implements TimeIntervalActionScriptConditionInterface
    const NAME: ?*String = String.literal("Time Interval");

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.timeIntervalActionScriptConditionJPanel = null;
        this.timeHelper = null;
    }
    

    pub fn create1(node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicProfileActionScriptCondition, "create2", .{ TimeIntervalActionScriptCondition.NAME, node }).*;
        this.initFields();
        const actionNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ TimeIntervalActionScriptConditionData.NAME, node.?.getChildNodes() }));
        if (actionNode != null) {
            const nodeList: ?*NodeList = Inheritance.upcast(?*NodeList, actionNode.?.getChildNodes());
            {
                var index: i32 = 0;
                while (index < nodeList.?.getLength()) : (index += 1) {
                const childNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nodeList.?, "item", .{ index }));
                if (Inheritance.call(childNode.?.getNodeName().?, "compareTo", .{ TimeIntervalActionScriptConditionData.TIME }) == 0) {
                    const interval: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ childNode }));
                    _ = Inheritance.call(this, "setTimeDelayHelper", .{ Inheritance.callStatic(TimeDelayHelper, "create1", .{ Inheritance.callStatic(Integer, "valueOf", .{ interval }) }) });
                } else {
                    std.debug.panic("{any}", .{exception: { _ = String.literal("Time Interval Action Script Condition Unknown Node"); break :exception error.Exception; }});
                }
                }
            }
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Time Interval Action Script Condition Node Null"); break :exception error.Exception; }});
        }
        _ = this.init();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicProfileActionScriptCondition, "create1", .{ TimeIntervalActionScriptCondition.NAME }).*;
        this.initFields();
        _ = Inheritance.call(this, "setTimeDelayHelper", .{ Inheritance.callStatic(TimeDelayHelper, "create1", .{ 0 }) });
        _ = this.init();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self) void {
        self.timeIntervalActionScriptConditionJPanel = Inheritance.callStatic(TimeIntervalActionScriptConditionJPanel, "create1", .{ self });
    }
    

    pub fn showDialog(self: *Self) void {
        _ = Inheritance.call(Inheritance.receiver(self.timeIntervalActionScriptConditionJPanel.?, "getTimeIntervalActionJDialog").getTimeIntervalActionJDialog().?, "setVisible", .{ true });
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ TimeIntervalActionScriptConditionData.TIME, String.valueOf(self.timeHelper.?.delay) });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("HashMap: "), Object.toString(Object.of(hashMap))), self, String.literal("toHashMap()") });
        return hashMap;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(&self.base, "toXmlNode", .{ document }));
        _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNodeWithValueNodes", .{ document, TimeIntervalActionScriptConditionData.NAME, self.toHashMap() }) });
        return node;
    }
    

    pub fn log(self: *Self) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Time Interval: "), self.timeHelper.?.delay), self, String.literal("log") });
    }
    

    pub fn getTimeDelayHelper(self: *Self) ?*TimeDelayHelper {
        return self.timeHelper;
    }
    

    pub fn setTimeDelayHelper(self: *Self, timeHelper: ?*TimeDelayHelper) void {
        self.timeHelper = timeHelper;
    }
    

    // throws Exception
    pub fn shouldProcess(self: *Self, frame: ?*Long) bool {
        const timeHelper: ?*TimeDelayHelper = Inheritance.upcast(?*TimeDelayHelper, self.getTimeDelayHelper());
        if (timeHelper.?.isTimeTNT()) {
            _ = timeHelper.?.setStartTimeTNT();
            return Inheritance.call(&self.base, "shouldProcess", .{ frame });
        }
        return false;
    }
};

