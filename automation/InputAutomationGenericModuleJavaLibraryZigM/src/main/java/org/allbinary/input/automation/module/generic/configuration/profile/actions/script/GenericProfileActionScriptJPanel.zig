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
// const MouseEvent = @import("java/awt/event/MouseEvent.zig").MouseEvent;
// const DefaultMutableTreeNode = @import("javax/swing/tree/DefaultMutableTreeNode.zig").DefaultMutableTreeNode;
// const DefaultTreeModel = @import("javax/swing/tree/DefaultTreeModel.zig").DefaultTreeModel;
// const TreePath = @import("javax/swing/tree/TreePath.zig").TreePath;
const JTreeInterface = @import("org/allbinary/input/automation/actions/script/JTreeInterface.zig").JTreeInterface;
const CustomTreeNodeInterface = @import("org/allbinary/input/automation/actions/script/condition/CustomTreeNodeInterface.zig").CustomTreeNodeInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const GenericProfileActionScript = @import("org/allbinary/input/automation/module/generic/configuration/profile/actions/script/GenericProfileActionScript.zig").GenericProfileActionScript;

pub const GenericProfileActionScriptJPanel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.generic.configuration.profile.actions.script.GenericProfileActionScriptJPanel";
    base: JPanel = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    defaultMutableTreeNode: ?*DefaultMutableTreeNode = null,
    genericProfileActionScript: ?*GenericProfileActionScript = null,
    actionScriptJTree: ?*JTree = null,
    jScrollPane1: ?*JScrollPane = null,
    // Implements JTreeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.defaultMutableTreeNode = Inheritance.callStatic(DefaultMutableTreeNode, "create1", .{ String.literal("Root") });
        this.genericProfileActionScript = null;
        this.actionScriptJTree = null;
        this.jScrollPane1 = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = JPanel.create().*;
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.START, this, this.commonStrings.?.CONSTRUCTOR });
        _ = this.initComponents();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateJTree(self: *Self) void {
        const defaultTreeModel: ?*DefaultTreeModel = Inheritance.callStatic(DefaultTreeModel, "create1", .{ self.getGenericProfileActionScript() });
        _ = Inheritance.call(self.getActionScriptJTree().?, "setModel", .{ defaultTreeModel });
        _ = Inheritance.receiver(self, "repaint").repaint();
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Updated UI"), self, String.literal("updateJTree") });
    }
    

    pub fn getGenericProfileActionScript(self: *Self) ?*GenericProfileActionScript {
        return self.genericProfileActionScript;
    }
    

    pub fn setGenericProfileActionScript(self: *Self, genericProfileActionScript: ?*GenericProfileActionScript) void {
        self.genericProfileActionScript = genericProfileActionScript;
    }
    

    pub fn getActionScriptJTree(self: *Self) ?*JTree {
        return self.actionScriptJTree;
    }
    

    pub fn setActionScriptJTree(self: *Self, actionScriptJTree: ?*JTree) void {
        self.actionScriptJTree = actionScriptJTree;
    }
    

    pub fn initComponents(self: *Self) void {
        self.jScrollPane1 = JScrollPane.create();
        self.actionScriptJTree = JTree.create();
        _ = Inheritance.call(self, "setLayout", .{ Inheritance.callStatic(GridLayout, "create2", .{ 1, 0 }) });
        _ = Inheritance.call(self.actionScriptJTree.?, "setPreferredSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 500, 500 }) });
        _ = Inheritance.call(self.actionScriptJTree.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mouseClicked(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "actionScriptJTreeMouseClicked", .{ evt });
//             }
//             
// 
//             pub fn mouseReleased(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "actionScriptJTreeMouseReleased", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jScrollPane1.?, "setViewportView", .{ self.actionScriptJTree });
        _ = Inheritance.call(self, "add", .{ self.jScrollPane1 });
    }
    

    pub fn actionScriptJTreeMouseReleased(self: *Self, evt: ?*MouseEvent) void {
        const button: i32 = evt.?.getButton();
        if (button == MouseEvent.BUTTON3) {
            const treePath: ?*TreePath = Inheritance.upcast(?*TreePath, Inheritance.receiverOf(self.getActionScriptJTree().?, "getSelectionPath").getSelectionPath());
            if (treePath != null) {
                const anyType: ?Object = Inheritance.upcast(?Object, treePath.?.getLastPathComponent());
                if (Object.instanceOf(Object.of(anyType), CustomTreeNodeInterface)) {
                    const customTreeNodeInterface: ?*CustomTreeNodeInterface = Inheritance.cast(?*CustomTreeNodeInterface, anyType);
                    const jPopupMenu: ?*JPopupMenu = Inheritance.upcast(?*JPopupMenu, Inheritance.receiver(customTreeNodeInterface.?, "getJPopupMenu").getJPopupMenu());
                    _ = Inheritance.call(jPopupMenu.?, "show", .{ Inheritance.cast(?*JComponent, evt.?.getSource()), evt.?.getX(), evt.?.getY() });
                }
            }
        }
    }
    

    pub fn actionScriptJTreeMouseClicked(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        _ = self;
    }
};

