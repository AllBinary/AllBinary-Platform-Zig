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
// package org.allbinary.input.automation.actions.script

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const ActionEvent = @import("java/awt/event/ActionEvent.zig").ActionEvent;
// const ActionListener = @import("java/awt/event/ActionListener.zig").ActionListener;
// const DefaultMutableTreeNode = @import("javax/swing/tree/DefaultMutableTreeNode.zig").DefaultMutableTreeNode;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Node = @import("org/w3c/dom/Node.zig").Node;
const ProfileActionScriptItemInterface = @import("org/allbinary/input/automation/actions/script/ProfileActionScriptItemInterface.zig").ProfileActionScriptItemInterface;
const Long = @import("java/lang/Long.zig").Long;

pub const ProfileActionScriptItem = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.ProfileActionScriptItem";
    pub const java_interfaces = .{ ProfileActionScriptItemInterface };
    base: DefaultMutableTreeNode = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    jPopupMenu: ?*JPopupMenu = null,
    // Implements ProfileActionScriptItemInterface
    // Implements ActionListener
    const EDIT: ?*String = String.literal("Edit");
    pub const DELETE: ?*String = String.literal("Delete");
    pub const NEW_CONDITION: ?*String = String.literal("New Condition");
    pub const NEW_INPUT: ?*String = String.literal("New Input");
    pub const NEW_OUTPUT: ?*String = String.literal("New Output");
    pub const NEW_COLOR_AT: ?*String = String.literal("Color At");
    pub const NEW_TIME_INTERVAL: ?*String = String.literal("Time Interval");
    pub const NEW_ALWAYS: ?*String = String.literal("Always On/Off");
    pub const NEW_KEY_INPUT: ?*String = String.literal("Key");
    pub const NEW_MOUSE_INPUT: ?*String = String.literal("Mouse");
    pub const NEW_JOYSTICK_INPUT: ?*String = String.literal("Joystick");
    pub const NEW_IMAGE_OUTPUT: ?*String = String.literal("Image");

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.jPopupMenu = null;
    }
    

    pub fn create2(label: ?*String, node: ?*Node) *Self {
        _ = node;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(DefaultMutableTreeNode, "create1", .{ label }).*;
        this.initFields();
        _ = this.init();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Label: "), label), this, this.commonStrings.?.CONSTRUCTOR });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create1(label: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(DefaultMutableTreeNode, "create1", .{ label }).*;
        this.initFields();
        _ = this.init();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Label: "), label), this, this.commonStrings.?.CONSTRUCTOR });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self) void {
        _ = Inheritance.call(self, "setJPopupMenu", .{ JPopupMenu.create() });
        const jMenuItemEdit: ?*JMenuItem = Inheritance.callStatic(JMenuItem, "create1", .{ ProfileActionScriptItem.EDIT });
        const jMenuItemDelete: ?*JMenuItem = Inheritance.callStatic(JMenuItem, "create1", .{ ProfileActionScriptItem.DELETE });
        _ = Inheritance.call(jMenuItemEdit.?, "addActionListener", .{ self });
        _ = Inheritance.call(jMenuItemDelete.?, "addActionListener", .{ self });
        _ = Inheritance.call(self.getJPopupMenu().?, "add", .{ jMenuItemEdit });
        _ = Inheritance.call(self.getJPopupMenu().?, "add", .{ jMenuItemDelete });
    }
    

    // throws Exception
    pub fn process(self: *Self, frame: ?*Long) void {
        _ = frame;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getJPopupMenu(self: *Self) ?*JPopupMenu {
        return self.jPopupMenu;
    }
    

    pub fn showDialog(self: *Self) void {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn actionPerformed(self: *Self, actionEvent: ?*ActionEvent) void {
        if (Inheritance.call(actionEvent.?.getActionCommand().?, "compareTo", .{ ProfileActionScriptItem.EDIT }) == 0) {
            _ = self.showDialog();
        }
    }
    

    pub fn setJPopupMenu(self: *Self, jPopupMenu: ?*JPopupMenu) void {
        self.jPopupMenu = jPopupMenu;
    }
};

