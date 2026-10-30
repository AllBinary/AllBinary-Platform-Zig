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
// package org.allbinary.input.automation.actions.script.condition.processors

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const ActionEvent = @import("java/awt/event/ActionEvent.zig").ActionEvent;
const JTreeInterfaceFactory = @import("org/allbinary/input/automation/actions/script/JTreeInterfaceFactory.zig").JTreeInterfaceFactory;
const ProfileActionScriptItem = @import("org/allbinary/input/automation/actions/script/ProfileActionScriptItem.zig").ProfileActionScriptItem;
const ProfileActionScriptConditionInterface = @import("org/allbinary/input/automation/actions/script/condition/ProfileActionScriptConditionInterface.zig").ProfileActionScriptConditionInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const GenericProfileActionScriptProcessorData = @import("org/allbinary/input/automation/actions/script/condition/processors/GenericProfileActionScriptProcessorData.zig").GenericProfileActionScriptProcessorData;
const ProfileActionScriptProcessorInterface = @import("org/allbinary/input/automation/actions/script/condition/processors/ProfileActionScriptProcessorInterface.zig").ProfileActionScriptProcessorInterface;

pub const BasicProfileActionScriptProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor";
    pub const java_interfaces = .{ ProfileActionScriptProcessorInterface };
    base: ProfileActionScriptItem = undefined,
    // Implements ProfileActionScriptProcessorInterface
    

    pub fn create2(label: ?*String, node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ProfileActionScriptItem, "create2", .{ label, node }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create1(label: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ProfileActionScriptItem, "create1", .{ label }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn actionPerformed(self: *Self, actionEvent: ?*ActionEvent) void {
        _ = Inheritance.call(&self.base, "actionPerformed", .{ actionEvent });
        if (Inheritance.call(actionEvent.?.getActionCommand().?, "compareTo", .{ DELETE }) == 0) {
            if (Object.instanceOf(Object.of(Inheritance.receiver(self, "getParent").getParent()), ProfileActionScriptConditionInterface)) {
                const profileActionScriptConditionInterface: ?*ProfileActionScriptConditionInterface = Inheritance.cast(?*ProfileActionScriptConditionInterface, Inheritance.receiver(self, "getParent").getParent());
                _ = Inheritance.call(profileActionScriptConditionInterface.?, "removeProcessor", .{ Inheritance.cast(?*ProfileActionScriptProcessorInterface, self) });
                _ = Inheritance.receiverOf(Inheritance.receiverOf(JTreeInterfaceFactory.getInstance().?, "getJTreeInterface").getJTreeInterface().?, "updateJTree").updateJTree();
            }
        }
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        _ = self;
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ GenericProfileActionScriptProcessorData.NAME }));
        return node;
    }
};

