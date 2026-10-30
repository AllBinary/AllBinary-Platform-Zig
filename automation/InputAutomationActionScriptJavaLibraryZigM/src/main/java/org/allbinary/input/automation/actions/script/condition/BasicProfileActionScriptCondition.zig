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
// const ActionEvent = @import("java/awt/event/ActionEvent.zig").ActionEvent;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const TreePath = @import("javax/swing/tree/TreePath.zig").TreePath;
const JTreeInterfaceFactory = @import("org/allbinary/input/automation/actions/script/JTreeInterfaceFactory.zig").JTreeInterfaceFactory;
const ProfileActionScriptItem = @import("org/allbinary/input/automation/actions/script/ProfileActionScriptItem.zig").ProfileActionScriptItem;
const ProfileActionScriptNodeInterface = @import("org/allbinary/input/automation/actions/script/ProfileActionScriptNodeInterface.zig").ProfileActionScriptNodeInterface;
const ProfileActionScriptProcessorInterface = @import("org/allbinary/input/automation/actions/script/condition/processors/ProfileActionScriptProcessorInterface.zig").ProfileActionScriptProcessorInterface;
const GenericProfileActionScriptInputData = @import("org/allbinary/input/automation/actions/script/condition/processors/input/GenericProfileActionScriptInputData.zig").GenericProfileActionScriptInputData;
const KeyboardActionScriptInput = @import("org/allbinary/input/automation/actions/script/condition/processors/input/KeyboardActionScriptInput.zig").KeyboardActionScriptInput;
const MouseActionScriptInput = @import("org/allbinary/input/automation/actions/script/condition/processors/input/MouseActionScriptInput.zig").MouseActionScriptInput;
const ProfileActionScriptInputFactory = @import("org/allbinary/input/automation/actions/script/condition/processors/input/ProfileActionScriptInputFactory.zig").ProfileActionScriptInputFactory;
const GenericProfileActionScriptOutputData = @import("org/allbinary/input/automation/module/actions/script/condition/processors/output/GenericProfileActionScriptOutputData.zig").GenericProfileActionScriptOutputData;
const ImageActionScriptOutput = @import("org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutput.zig").ImageActionScriptOutput;
const ProfileActionScriptOutputFactory = @import("org/allbinary/input/automation/module/actions/script/condition/processors/output/ProfileActionScriptOutputFactory.zig").ProfileActionScriptOutputFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const AlwaysActionScriptCondition = @import("org/allbinary/input/automation/actions/script/condition/AlwaysActionScriptCondition.zig").AlwaysActionScriptCondition;
const ColorAtActionScriptCondition = @import("org/allbinary/input/automation/actions/script/condition/ColorAtActionScriptCondition.zig").ColorAtActionScriptCondition;
const GenericProfileActionScriptConditionData = @import("org/allbinary/input/automation/actions/script/condition/GenericProfileActionScriptConditionData.zig").GenericProfileActionScriptConditionData;
const ProfileActionScriptConditionFactory = @import("org/allbinary/input/automation/actions/script/condition/ProfileActionScriptConditionFactory.zig").ProfileActionScriptConditionFactory;
const ProfileActionScriptConditionInterface = @import("org/allbinary/input/automation/actions/script/condition/ProfileActionScriptConditionInterface.zig").ProfileActionScriptConditionInterface;
const TimeIntervalActionScriptCondition = @import("org/allbinary/input/automation/actions/script/condition/TimeIntervalActionScriptCondition.zig").TimeIntervalActionScriptCondition;
const Long = @import("java/lang/Long.zig").Long;

pub const BasicProfileActionScriptCondition = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition";
    pub const java_interfaces = .{ ProfileActionScriptConditionInterface };
    base: ProfileActionScriptItem = undefined,
    logUtil: ?*LogUtil = null,
    profileActionProcessorInterfaceVector: ?*BasicArrayList = null,
    profileActionConditionInterfaceVector: ?*BasicArrayList = null,
    // Implements ProfileActionScriptConditionInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.profileActionProcessorInterfaceVector = null;
        this.profileActionConditionInterfaceVector = null;
    }
    

    pub fn create2(label: ?*String, node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ProfileActionScriptItem, "create2", .{ label, node }).*;
        this.initFields();
        _ = this.init();
        const nodeList: ?*NodeList = Inheritance.upcast(?*NodeList, node.?.getChildNodes());
        {
            var index: i32 = 0;
            while (index < nodeList.?.getLength()) : (index += 1) {
            const actionItemNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nodeList.?, "item", .{ index }));
            if (Object.same(actionItemNode.?.getNodeType(), Node.ELEMENT_NODE)) {
                if (Inheritance.call(actionItemNode.?.getNodeName().?, "compareTo", .{ GenericProfileActionScriptConditionData.NAME }) == 0) {
                    _ = Inheritance.call(this, "addCondition", .{ Inheritance.callStatic(ProfileActionScriptConditionFactory, "getInstance", .{ actionItemNode }) });
                } else if (Inheritance.call(actionItemNode.?.getNodeName().?, "compareTo", .{ GenericProfileActionScriptInputData.NAME }) == 0) {
                    _ = Inheritance.call(this, "addProcessor", .{ Inheritance.callStatic(ProfileActionScriptInputFactory, "getInstance", .{ actionItemNode }) });
                } else if (Inheritance.call(actionItemNode.?.getNodeName().?, "compareTo", .{ GenericProfileActionScriptOutputData.NAME }) == 0) {
                    _ = Inheritance.call(this, "addProcessor", .{ Inheritance.callStatic(ProfileActionScriptOutputFactory, "getInstance", .{ actionItemNode }) });
                }
            }
            }
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn addProcessorNodes(self: *Self, node: ?*Node) void {
        const nodeList: ?*NodeList = Inheritance.upcast(?*NodeList, node.?.getChildNodes());
        {
            var index: i32 = 0;
            while (index < nodeList.?.getLength()) : (index += 1) {
            const processorActionItemNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nodeList.?, "item", .{ index }));
            if (Inheritance.call(processorActionItemNode.?.getNodeName().?, "compareTo", .{ GenericProfileActionScriptInputData.NAME }) == 0) {
                _ = Inheritance.call(self, "addProcessor", .{ Inheritance.callStatic(ProfileActionScriptInputFactory, "getInstance", .{ processorActionItemNode }) });
            } else if (Inheritance.call(processorActionItemNode.?.getNodeName().?, "compareTo", .{ GenericProfileActionScriptOutputData.NAME }) == 0) {
                _ = Inheritance.call(self, "addProcessor", .{ Inheritance.callStatic(ProfileActionScriptOutputFactory, "getInstance", .{ processorActionItemNode }) });
            }
            }
        }
    }
    

    pub fn create1(label: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ProfileActionScriptItem, "create1", .{ label }).*;
        this.initFields();
        _ = this.init();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self) void {
        _ = Inheritance.call(self, "setProfileActionProcessorInterfaceVector", .{ BasicArrayListD.create() });
        _ = Inheritance.call(self, "setProfileActionConditionInterfaceVector", .{ BasicArrayListD.create() });
        _ = Inheritance.call(Inheritance.receiver(self, "getJPopupMenu").getJPopupMenu().?, "add", .{ self.getConditionJPopupMenu() });
        _ = Inheritance.call(Inheritance.receiver(self, "getJPopupMenu").getJPopupMenu().?, "add", .{ self.getInputJPopupMenu() });
        _ = Inheritance.call(Inheritance.receiver(self, "getJPopupMenu").getJPopupMenu().?, "add", .{ self.getOutputJPopupMenu() });
    }
    

    pub fn getConditionJPopupMenu(self: *Self) ?*JMenu {
        const jMenu: ?*JMenu = Inheritance.callStatic(JMenu, "create1", .{ NEW_CONDITION });
        const jMenuItemColorAt: ?*JMenuItem = Inheritance.callStatic(JMenuItem, "create1", .{ NEW_COLOR_AT });
        const jMenuItemAlways: ?*JMenuItem = Inheritance.callStatic(JMenuItem, "create1", .{ NEW_ALWAYS });
        const jMenuItemTimeInterval: ?*JMenuItem = Inheritance.callStatic(JMenuItem, "create1", .{ NEW_TIME_INTERVAL });
        _ = Inheritance.call(jMenuItemColorAt.?, "addActionListener", .{ self });
        _ = Inheritance.call(jMenuItemAlways.?, "addActionListener", .{ self });
        _ = Inheritance.call(jMenuItemTimeInterval.?, "addActionListener", .{ self });
        _ = Inheritance.call(jMenu.?, "add", .{ jMenuItemColorAt });
        _ = Inheritance.call(jMenu.?, "add", .{ jMenuItemAlways });
        _ = Inheritance.call(jMenu.?, "add", .{ jMenuItemTimeInterval });
        return jMenu;
    }
    

    pub fn getInputJPopupMenu(self: *Self) ?*JMenu {
        const jMenu: ?*JMenu = Inheritance.callStatic(JMenu, "create1", .{ NEW_INPUT });
        const jMenuItemKey: ?*JMenuItem = Inheritance.callStatic(JMenuItem, "create1", .{ NEW_KEY_INPUT });
        const jMenuItemMouse: ?*JMenuItem = Inheritance.callStatic(JMenuItem, "create1", .{ NEW_MOUSE_INPUT });
        const jMenuItemJoystick: ?*JMenuItem = Inheritance.callStatic(JMenuItem, "create1", .{ NEW_JOYSTICK_INPUT });
        _ = Inheritance.call(jMenuItemKey.?, "addActionListener", .{ self });
        _ = Inheritance.call(jMenuItemMouse.?, "addActionListener", .{ self });
        _ = Inheritance.call(jMenuItemJoystick.?, "addActionListener", .{ self });
        _ = Inheritance.call(jMenu.?, "add", .{ jMenuItemKey });
        _ = Inheritance.call(jMenu.?, "add", .{ jMenuItemMouse });
        _ = Inheritance.call(jMenu.?, "add", .{ jMenuItemJoystick });
        return jMenu;
    }
    

    pub fn getOutputJPopupMenu(self: *Self) ?*JMenu {
        const jMenu: ?*JMenu = Inheritance.callStatic(JMenu, "create1", .{ NEW_OUTPUT });
        const jMenuItemImage: ?*JMenuItem = Inheritance.callStatic(JMenuItem, "create1", .{ NEW_IMAGE_OUTPUT });
        _ = Inheritance.call(jMenuItemImage.?, "addActionListener", .{ self });
        _ = Inheritance.call(jMenu.?, "add", .{ jMenuItemImage });
        return jMenu;
    }
    

    pub fn addProcessor(self: *Self, profileActionProcessorInterface: ?*ProfileActionScriptProcessorInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, String.literal("addInput") });
        _ = Inheritance.call(self.getProfileActionProcessorInterfaceVector().?, "add", .{ profileActionProcessorInterface });
        _ = Inheritance.call(self, "add", .{ profileActionProcessorInterface });
    }
    

    pub fn removeProcessor(self: *Self, profileActionProcessorInterface: ?*ProfileActionScriptProcessorInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, String.literal("removeInput") });
        _ = Inheritance.call(self.getProfileActionProcessorInterfaceVector().?, "remove", .{ profileActionProcessorInterface });
        _ = Inheritance.call(self, "remove", .{ profileActionProcessorInterface });
    }
    

    pub fn removeCondition(self: *Self, profileActionScriptNodeInterface: ?*ProfileActionScriptNodeInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, String.literal("removeCondition") });
        _ = Inheritance.call(self.getProfileActionConditionInterfaceVector().?, "remove", .{ profileActionScriptNodeInterface });
        _ = Inheritance.call(self, "remove", .{ profileActionScriptNodeInterface });
    }
    

    pub fn addCondition(self: *Self, profileActionScriptNodeInterface: ?*ProfileActionScriptNodeInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, String.literal("addCondition") });
        _ = Inheritance.call(self.getProfileActionConditionInterfaceVector().?, "add", .{ profileActionScriptNodeInterface });
        _ = Inheritance.call(self, "add", .{ profileActionScriptNodeInterface });
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ GenericProfileActionScriptConditionData.NAME }));
        const profileActionConditionInterfaceVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, self.getProfileActionConditionInterfaceVector());
        const size: i32 = profileActionConditionInterfaceVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const profileActionConditionInterface: ?*ProfileActionScriptConditionInterface = Inheritance.cast(?*ProfileActionScriptConditionInterface, Inheritance.call(profileActionConditionInterfaceVector.?, "get", .{ index }));
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(profileActionConditionInterface.?, "toXmlNode", .{ document }) });
            }
        }
        const profileActionProcessorInterfaceVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, self.getProfileActionProcessorInterfaceVector());
        const size2: i32 = profileActionProcessorInterfaceVector.?.size();
        {
            var index: i32 = 0;
            while (index < size2) : (index += 1) {
            const profileActionProcessorInterface: ?*ProfileActionScriptProcessorInterface = Inheritance.cast(?*ProfileActionScriptProcessorInterface, Inheritance.call(profileActionProcessorInterfaceVector.?, "get", .{ index }));
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(profileActionProcessorInterface.?, "toXmlNode", .{ document }) });
            }
        }
        return node;
    }
    

    pub fn getProfileActionConditionInterfaceVector(self: *Self) ?*BasicArrayList {
        return self.profileActionConditionInterfaceVector;
    }
    

    pub fn setProfileActionConditionInterfaceVector(self: *Self, profileActionConditionInterfaceVector: ?*BasicArrayList) void {
        self.profileActionConditionInterfaceVector = profileActionConditionInterfaceVector;
    }
    

    pub fn actionPerformed(self: *Self, actionEvent: ?*ActionEvent) void {
        { // try
            _ = Inheritance.call(&self.base, "actionPerformed", .{ actionEvent });
            if (Inheritance.call(actionEvent.?.getActionCommand().?, "compareTo", .{ DELETE }) == 0) {
                if (Object.instanceOf(Object.of(Inheritance.receiver(self, "getParent").getParent()), ProfileActionScriptNodeInterface)) {
                    const profileActionScriptNodeInterface: ?*ProfileActionScriptNodeInterface = Inheritance.cast(?*ProfileActionScriptNodeInterface, Inheritance.receiver(self, "getParent").getParent());
                    _ = Inheritance.call(profileActionScriptNodeInterface.?, "removeCondition", .{ self });
                    _ = Inheritance.receiverOf(Inheritance.receiverOf(JTreeInterfaceFactory.getInstance().?, "getJTreeInterface").getJTreeInterface().?, "updateJTree").updateJTree();
                }
            } else if (Inheritance.call(actionEvent.?.getActionCommand().?, "compareTo", .{ NEW_COLOR_AT }) == 0) {
                _ = Inheritance.call(self, "addCondition", .{ ColorAtActionScriptCondition.create() });
                _ = self.updateTree();
            } else if (Inheritance.call(actionEvent.?.getActionCommand().?, "compareTo", .{ NEW_ALWAYS }) == 0) {
                _ = Inheritance.call(self, "addCondition", .{ AlwaysActionScriptCondition.create() });
                _ = self.updateTree();
            } else if (Inheritance.call(actionEvent.?.getActionCommand().?, "compareTo", .{ NEW_TIME_INTERVAL }) == 0) {
                _ = Inheritance.call(self, "addCondition", .{ TimeIntervalActionScriptCondition.create() });
                _ = self.updateTree();
            } else if (Inheritance.call(actionEvent.?.getActionCommand().?, "compareTo", .{ NEW_KEY_INPUT }) == 0) {
                _ = Inheritance.call(self, "addProcessor", .{ KeyboardActionScriptInput.create() });
                _ = self.updateTree();
            } else if (Inheritance.call(actionEvent.?.getActionCommand().?, "compareTo", .{ NEW_MOUSE_INPUT }) == 0) {
                _ = Inheritance.call(self, "addProcessor", .{ MouseActionScriptInput.create() });
                _ = self.updateTree();
            } else if (Inheritance.call(actionEvent.?.getActionCommand().?, "compareTo", .{ NEW_IMAGE_OUTPUT }) == 0) {
                _ = Inheritance.call(self, "addProcessor", .{ ImageActionScriptOutput.create() });
                _ = self.updateTree();
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Error"), self, String.literal("actionPerformed"), e });
    }
    

    pub fn getProfileActionProcessorInterfaceVector(self: *Self) ?*BasicArrayList {
        return self.profileActionProcessorInterfaceVector;
    }
    

    pub fn setProfileActionProcessorInterfaceVector(self: *Self, profileActionProcessorInterfaceVector: ?*BasicArrayList) void {
        self.profileActionProcessorInterfaceVector = profileActionProcessorInterfaceVector;
    }
    

    pub fn updateTree(self: *Self) void {
        _ = Inheritance.receiverOf(Inheritance.receiverOf(JTreeInterfaceFactory.getInstance().?, "getJTreeInterface").getJTreeInterface().?, "updateJTree").updateJTree();
        const treePath: ?*TreePath = Inheritance.callStatic(TreePath, "create1", .{ self });
        _ = Inheritance.call(Inheritance.receiverOf(Inheritance.receiverOf(JTreeInterfaceFactory.getInstance().?, "getJTreeInterface").getJTreeInterface().?, "getActionScriptJTree").getActionScriptJTree().?, "expandPath", .{ treePath });
    }
    

    // throws Exception
    pub fn shouldProcess(self: *Self, frame: ?*Long) bool {
        const profileActionConditionInterfaceVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, self.getProfileActionConditionInterfaceVector());
        const size: i32 = profileActionConditionInterfaceVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const profileActionScriptConditionInterface: ?*ProfileActionScriptConditionInterface = Inheritance.cast(?*ProfileActionScriptConditionInterface, Inheritance.call(profileActionConditionInterfaceVector.?, "get", .{ index }));
            if (!Inheritance.call(profileActionScriptConditionInterface.?, "shouldProcess", .{ frame })) {
                return false;
            }
            }
        }
        return true;
    }
    

    // throws Exception
    pub fn process(self: *Self, frame: ?*Long) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Start - Processing ") }).?, "appendint", .{ Inheritance.receiverOf(self.getProfileActionProcessorInterfaceVector().?, "size").size() }).?, "append", .{ String.literal(" inputs") }))), self, Inheritance.fieldPointer(self, "commonStrings").*.?.PROCESS });
        const profileActionProcessorInterfaceVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, self.getProfileActionProcessorInterfaceVector());
        const size: i32 = profileActionProcessorInterfaceVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const profileActionScriptProcessorInterface: ?*ProfileActionScriptProcessorInterface = Inheritance.cast(?*ProfileActionScriptProcessorInterface, Inheritance.call(profileActionProcessorInterfaceVector.?, "get", .{ index }));
            _ = Inheritance.call(profileActionScriptProcessorInterface.?, "process", .{ frame });
            }
        }
    }
};

