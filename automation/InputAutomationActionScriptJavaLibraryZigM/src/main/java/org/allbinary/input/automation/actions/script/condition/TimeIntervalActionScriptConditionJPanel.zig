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
const TimeIntervalActionScriptConditionInterface = @import("org/allbinary/input/automation/actions/script/condition/TimeIntervalActionScriptConditionInterface.zig").TimeIntervalActionScriptConditionInterface;
const Integer = @import("java/lang/Integer.zig").Integer;
const Short = @import("java/lang/Short.zig").Short;

pub const TimeIntervalActionScriptConditionJPanel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel";
    base: JPanel = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    timeIntervalActionScriptConditionInterface: ?*TimeIntervalActionScriptConditionInterface = null,
    jLabel1: ?*JLabel = null,
    jLabel2: ?*JLabel = null,
    okJButton: ?*JButton = null,
    timeIntervalActionJButton: ?*JButton = null,
    timeIntervalActionJDialog: ?*JDialog = null,
    timeIntervalJTextField: ?*JTextField = null,
    titleJLabel: ?*JLabel = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        this.jLabel1 = null;
        this.jLabel2 = null;
        this.okJButton = null;
        this.timeIntervalActionJButton = null;
        this.timeIntervalActionJDialog = null;
        this.timeIntervalJTextField = null;
        this.titleJLabel = null;
    }
    

    pub fn create1(timeIntervalActionScriptConditionInterface: ?*TimeIntervalActionScriptConditionInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = JPanel.create().*;
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.START, this, this.commonStrings.?.CONSTRUCTOR });
        _ = this.initComponents();
        this.timeIntervalActionScriptConditionInterface = timeIntervalActionScriptConditionInterface;
        _ = this.set();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn set(self: *Self) void {
        _ = Inheritance.call(self.getTimeIntervalJTextField().?, "setText", .{ String.valueOf(self.timeIntervalActionScriptConditionInterface.?.getTimeDelayHelper().?.delay) });
        _ = self.timeIntervalActionScriptConditionInterface.?.log();
    }
    

    pub fn update(self: *Self) void {
        self.timeIntervalActionScriptConditionInterface.?.getTimeDelayHelper().?.delay = Inheritance.upcast(@TypeOf(self.timeIntervalActionScriptConditionInterface.?.getTimeDelayHelper().?.delay), Inheritance.callStatic(Integer, "valueOf", .{ Inheritance.receiverOf(self.getTimeIntervalJTextField().?, "getText").getText() }));
        _ = self.timeIntervalActionScriptConditionInterface.?.log();
    }
    

    pub fn getTimeIntervalJTextField(self: *Self) ?*JTextField {
        return self.timeIntervalJTextField;
    }
    

    pub fn setTimeIntervalJTextField(self: *Self, timeIntervalJTextField: ?*JTextField) void {
        self.timeIntervalJTextField = timeIntervalJTextField;
    }
    

    pub fn getTimeIntervalActionJDialog(self: *Self) ?*JDialog {
        return self.timeIntervalActionJDialog;
    }
    

    pub fn setTimeIntervalActionJDialog(self: *Self, timeIntervalActionJDialog: ?*JDialog) void {
        self.timeIntervalActionJDialog = timeIntervalActionJDialog;
    }
    

    pub fn initComponents(self: *Self) void {
        self.timeIntervalActionJDialog = JDialog.create();
        self.titleJLabel = JLabel.create();
        self.okJButton = JButton.create();
        self.jLabel2 = JLabel.create();
        self.timeIntervalJTextField = JTextField.create();
        self.timeIntervalActionJButton = JButton.create();
        self.jLabel1 = JLabel.create();
        _ = Inheritance.call(self.timeIntervalActionJDialog.?, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 250, 150 }) });
        _ = Inheritance.call(self.titleJLabel.?, "setText", .{ String.literal("Time Interval Condition Options") });
        _ = Inheritance.call(self.okJButton.?, "setText", .{ String.literal("OK") });
        _ = Inheritance.call(self.okJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "okJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jLabel2.?, "setText", .{ String.literal("Time (ms):") });
        const timeIntervalActionJDialogLayout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.timeIntervalActionJDialog.?.getContentPane() });
        _ = Inheritance.call(self.timeIntervalActionJDialog.?.getContentPane().?, "setLayout", .{ timeIntervalActionJDialogLayout });
        _ = Inheritance.call(timeIntervalActionJDialogLayout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(timeIntervalActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(timeIntervalActionJDialogLayout.?.createSequentialGroup().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(timeIntervalActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.TRAILING }).?, "addGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING, Inheritance.call(Inheritance.call(timeIntervalActionJDialogLayout.?.createSequentialGroup().?, "addGap", .{ 82, 82, 82 }).?, "addComponent", .{ self.okJButton }) }).?, "addGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING, Inheritance.call(Inheritance.call(timeIntervalActionJDialogLayout.?.createSequentialGroup().?, "addGap", .{ 32, 32, 32 }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(timeIntervalActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(timeIntervalActionJDialogLayout.?.createSequentialGroup().?, "addComponent", .{ self.jLabel2 }).?, "addGap", .{ 16, 16, 16 }).?, "addComponent", .{ self.timeIntervalJTextField, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 85, @as(i16, std.math.maxInt(i16)) }) }).?, "addComponent", .{ self.titleJLabel }) }) }) }).?, "addContainerGap", .{ 36, @as(i16, std.math.maxInt(i16)) }) }) });
        _ = Inheritance.call(timeIntervalActionJDialogLayout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(timeIntervalActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.receiverOf(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.receiverOf(timeIntervalActionJDialogLayout.?.createSequentialGroup().?, "addContainerGap").addContainerGap().?, "addComponent", .{ self.titleJLabel }).?, "addGap", .{ 20, 20, 20 }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(timeIntervalActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.jLabel2 }).?, "addComponent", .{ self.timeIntervalJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addGap", .{ 15, 15, 15 }).?, "addComponent", .{ self.okJButton }).?, "addContainerGap").addContainerGap() }) });
        _ = Inheritance.call(self, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 100, 0 }) });
        _ = Inheritance.call(self.timeIntervalActionJButton.?, "setText", .{ String.literal("Edit") });
        _ = Inheritance.call(self.timeIntervalActionJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "timeIntervalActionJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jLabel1.?, "setText", .{ String.literal("Time Interval:") });
        const layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self });
        _ = Inheritance.call(self, "setLayout", .{ layout });
        _ = Inheritance.call(layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "addComponent", .{ self.jLabel1 }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.timeIntervalActionJButton }) }) });
        _ = Inheritance.call(layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.jLabel1 }).?, "addComponent", .{ self.timeIntervalActionJButton }) }) });
    }
    

    pub fn okJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self.update();
        _ = Inheritance.call(self.getTimeIntervalActionJDialog().?, "setVisible", .{ false });
    }
    

    pub fn timeIntervalActionJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = Inheritance.call(self.getTimeIntervalActionJDialog().?, "setVisible", .{ true });
    }
};

