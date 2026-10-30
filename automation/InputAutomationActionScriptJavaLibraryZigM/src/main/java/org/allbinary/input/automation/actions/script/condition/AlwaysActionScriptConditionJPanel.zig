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
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const AlwaysActionScriptConditionInterface = @import("org/allbinary/input/automation/actions/script/condition/AlwaysActionScriptConditionInterface.zig").AlwaysActionScriptConditionInterface;
const Short = @import("java/lang/Short.zig").Short;

pub const AlwaysActionScriptConditionJPanel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel";
    base: JPanel = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    alwaysActionScriptConditionInterface: ?*AlwaysActionScriptConditionInterface = null,
    alwaysActionJButton: ?*JButton = null,
    alwaysActionJDialog: ?*JDialog = null,
    alwaysJComboBox: ?*JComboBox = null,
    jLabel1: ?*JLabel = null,
    jLabel2: ?*JLabel = null,
    okJButton: ?*JButton = null,
    titleJLabel: ?*JLabel = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        this.alwaysActionJButton = null;
        this.alwaysActionJDialog = null;
        this.alwaysJComboBox = null;
        this.jLabel1 = null;
        this.jLabel2 = null;
        this.okJButton = null;
        this.titleJLabel = null;
    }
    

    pub fn create1(alwaysActionScriptConditionInterface: ?*AlwaysActionScriptConditionInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = JPanel.create().*;
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.START, this, this.commonStrings.?.CONSTRUCTOR });
        _ = this.initComponents();
        this.alwaysActionScriptConditionInterface = alwaysActionScriptConditionInterface;
        _ = this.set();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn set(self: *Self) void {
        if (self.alwaysActionScriptConditionInterface.?.isIsOn()) {
            _ = Inheritance.call(self.alwaysJComboBox.?, "setSelectedIndex", .{ 0 });
        } else {
            _ = Inheritance.call(self.alwaysJComboBox.?, "setSelectedIndex", .{ 1 });
        }
        _ = self.alwaysActionScriptConditionInterface.?.log();
    }
    

    pub fn update(self: *Self) void {
        if (self.alwaysJComboBox.?.getSelectedIndex() == 0) {
            _ = Inheritance.call(self.alwaysActionScriptConditionInterface.?, "setIsOn", .{ true });
        } else {
            _ = Inheritance.call(self.alwaysActionScriptConditionInterface.?, "setIsOn", .{ false });
        }
        _ = self.alwaysActionScriptConditionInterface.?.log();
    }
    

    pub fn getAlwaysActionJDialog(self: *Self) ?*JDialog {
        return self.alwaysActionJDialog;
    }
    

    pub fn setAlwaysActionJDialog(self: *Self, alwaysActionJDialog: ?*JDialog) void {
        self.alwaysActionJDialog = alwaysActionJDialog;
    }
    

    pub fn initComponents(self: *Self) void {
        self.alwaysActionJDialog = JDialog.create();
        self.titleJLabel = JLabel.create();
        self.okJButton = JButton.create();
        self.jLabel2 = JLabel.create();
        self.alwaysJComboBox = JComboBox.create();
        self.alwaysActionJButton = JButton.create();
        self.jLabel1 = JLabel.create();
        _ = Inheritance.call(self.alwaysActionJDialog.?, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 250, 150 }) });
        _ = Inheritance.call(self.titleJLabel.?, "setText", .{ String.literal("Always Condition Options") });
        _ = Inheritance.call(self.okJButton.?, "setText", .{ String.literal("OK") });
        _ = Inheritance.call(self.okJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "okJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jLabel2.?, "setText", .{ String.literal("On:") });
        _ = Inheritance.call(self.alwaysJComboBox.?, "setModel", .{ Inheritance.callStatic(DefaultComboBoxModel, "create1", .{ @constCast(&[_]?*String{ String.literal("true"), String.literal("false") })[0..] }) });
        const alwaysActionJDialogLayout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.alwaysActionJDialog.?.getContentPane() });
        _ = Inheritance.call(self.alwaysActionJDialog.?.getContentPane().?, "setLayout", .{ alwaysActionJDialogLayout });
        _ = Inheritance.call(alwaysActionJDialogLayout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(alwaysActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(alwaysActionJDialogLayout.?.createSequentialGroup().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(alwaysActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(alwaysActionJDialogLayout.?.createSequentialGroup().?, "addGap", .{ 47, 47, 47 }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(alwaysActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING, false }).?, "addGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.TRAILING, Inheritance.call(Inheritance.call(Inheritance.call(alwaysActionJDialogLayout.?.createSequentialGroup().?, "addComponent", .{ self.jLabel2 }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.alwaysJComboBox, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addComponent", .{ self.titleJLabel }) }) }).?, "addGroup", .{ Inheritance.call(Inheritance.call(alwaysActionJDialogLayout.?.createSequentialGroup().?, "addGap", .{ 79, 79, 79 }).?, "addComponent", .{ self.okJButton }) }) }).?, "addContainerGap", .{ 45, @as(i16, std.math.maxInt(i16)) }) }) });
        _ = Inheritance.call(alwaysActionJDialogLayout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(alwaysActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.receiverOf(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.receiverOf(alwaysActionJDialogLayout.?.createSequentialGroup().?, "addContainerGap").addContainerGap().?, "addComponent", .{ self.titleJLabel }).?, "addGap", .{ 20, 20, 20 }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(alwaysActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.alwaysJComboBox, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.jLabel2 }) }).?, "addGap", .{ 15, 15, 15 }).?, "addComponent", .{ self.okJButton }).?, "addContainerGap").addContainerGap() }) });
        _ = Inheritance.call(self, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 100, 0 }) });
        _ = Inheritance.call(self.alwaysActionJButton.?, "setText", .{ String.literal("Edit") });
        _ = Inheritance.call(self.alwaysActionJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "alwaysActionJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jLabel1.?, "setText", .{ String.literal("Always:") });
        const layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self });
        _ = Inheritance.call(self, "setLayout", .{ layout });
        _ = Inheritance.call(layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "addComponent", .{ self.jLabel1 }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED, 33, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.alwaysActionJButton }) }) });
        _ = Inheritance.call(layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.jLabel1 }).?, "addComponent", .{ self.alwaysActionJButton }) }) });
    }
    

    pub fn okJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self.update();
        _ = Inheritance.call(self.getAlwaysActionJDialog().?, "setVisible", .{ false });
    }
    

    pub fn alwaysActionJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = Inheritance.call(self.getAlwaysActionJDialog().?, "setVisible", .{ true });
    }
};

