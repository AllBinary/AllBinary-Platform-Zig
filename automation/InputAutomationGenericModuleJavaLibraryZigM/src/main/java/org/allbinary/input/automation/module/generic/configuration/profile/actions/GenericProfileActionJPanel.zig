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
const JTreeInterfaceFactory = @import("org/allbinary/input/automation/actions/script/JTreeInterfaceFactory.zig").JTreeInterfaceFactory;
const AlwaysActionScriptCondition = @import("org/allbinary/input/automation/actions/script/condition/AlwaysActionScriptCondition.zig").AlwaysActionScriptCondition;
const ColorAtActionScriptCondition = @import("org/allbinary/input/automation/actions/script/condition/ColorAtActionScriptCondition.zig").ColorAtActionScriptCondition;
const ProfileActionScriptConditionInterface = @import("org/allbinary/input/automation/actions/script/condition/ProfileActionScriptConditionInterface.zig").ProfileActionScriptConditionInterface;
const TimeIntervalActionScriptCondition = @import("org/allbinary/input/automation/actions/script/condition/TimeIntervalActionScriptCondition.zig").TimeIntervalActionScriptCondition;
const GenericProfileActionScriptJPanel = @import("org/allbinary/input/automation/module/generic/configuration/profile/actions/script/GenericProfileActionScriptJPanel.zig").GenericProfileActionScriptJPanel;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const GenericProfileAction = @import("org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileAction.zig").GenericProfileAction;
const Short = @import("java/lang/Short.zig").Short;

pub const GenericProfileActionJPanel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.generic.configuration.profile.actions.GenericProfileActionJPanel";
    base: JPanel = undefined,
    logUtil: ?*LogUtil = null,
    genericProfileAction: ?*GenericProfileAction = null,
    genericProfileActionScriptJPanel: ?*GenericProfileActionScriptJPanel = null,
    blankProfileActionScriptJPanel: ?*JPanel = null,
    genericProfileActionScriptJScrollPane: ?*JScrollPane = null,
    ifJLabel: ?*JLabel = null,
    newAlwaysJButton: ?*JButton = null,
    newColorAtJButton: ?*JButton = null,
    newTimeIntervalJButton: ?*JButton = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.genericProfileAction = null;
        this.genericProfileActionScriptJPanel = null;
        this.blankProfileActionScriptJPanel = null;
        this.genericProfileActionScriptJScrollPane = null;
        this.ifJLabel = null;
        this.newAlwaysJButton = null;
        this.newColorAtJButton = null;
        this.newTimeIntervalJButton = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = JPanel.create().*;
        this.initFields();
        _ = this.initComponents();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateProfileActionUI(self: *Self) void {
        _ = self.blankProfileActionScriptJPanel.?.removeAll();
        const genericProfileActionScriptJPanel: ?*GenericProfileActionScriptJPanel = GenericProfileActionScriptJPanel.create();
        _ = Inheritance.call(JTreeInterfaceFactory.getInstance().?, "set", .{ genericProfileActionScriptJPanel });
        _ = Inheritance.call(self, "setGenericProfileActionScriptJPanel", .{ genericProfileActionScriptJPanel });
        _ = Inheritance.call(self.getGenericProfileActionScriptJPanel().?, "setGenericProfileActionScript", .{ Inheritance.receiverOf(self.getGenericProfileAction().?, "getGenericProfileActionScript").getGenericProfileActionScript() });
        _ = Inheritance.receiverOf(self.getGenericProfileActionScriptJPanel().?, "updateJTree").updateJTree();
        const layout: ?*GroupLayout = Inheritance.cast(?*GroupLayout, self.blankProfileActionScriptJPanel.?.getLayout());
        _ = Inheritance.call(layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGap", .{ 0, 395, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.getGenericProfileActionScriptJPanel(), javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) });
        _ = Inheritance.call(layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGap", .{ 0, 256, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.getGenericProfileActionScriptJPanel(), javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Updated UI"), self, String.literal("updateUI") });
    }
    

    pub fn getGenericProfileAction(self: *Self) ?*GenericProfileAction {
        return self.genericProfileAction;
    }
    

    pub fn setGenericProfileAction(self: *Self, genericProfileAction: ?*GenericProfileAction) void {
        self.genericProfileAction = genericProfileAction;
    }
    

    pub fn getGenericProfileActionScriptJPanel(self: *Self) ?*GenericProfileActionScriptJPanel {
        return self.genericProfileActionScriptJPanel;
    }
    

    pub fn setGenericProfileActionScriptJPanel(self: *Self, genericProfileActionScriptJPanel: ?*GenericProfileActionScriptJPanel) void {
        self.genericProfileActionScriptJPanel = genericProfileActionScriptJPanel;
    }
    

    pub fn initComponents(self: *Self) void {
        self.genericProfileActionScriptJScrollPane = JScrollPane.create();
        self.blankProfileActionScriptJPanel = JPanel.create();
        self.ifJLabel = JLabel.create();
        self.newColorAtJButton = JButton.create();
        self.newTimeIntervalJButton = JButton.create();
        self.newAlwaysJButton = JButton.create();
        _ = Inheritance.call(self, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 440, 275 }) });
        _ = Inheritance.call(self, "setPreferredSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 440, 275 }) });
        _ = Inheritance.call(self.genericProfileActionScriptJScrollPane.?, "setPreferredSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 474, 270 }) });
        _ = Inheritance.call(self.blankProfileActionScriptJPanel.?, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 400, 200 }) });
        const blankProfileActionScriptJPanelLayout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.blankProfileActionScriptJPanel });
        _ = Inheritance.call(self.blankProfileActionScriptJPanel.?, "setLayout", .{ blankProfileActionScriptJPanelLayout });
        _ = Inheritance.call(blankProfileActionScriptJPanelLayout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(blankProfileActionScriptJPanelLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGap", .{ 0, 9996, @as(i16, std.math.maxInt(i16)) }) });
        _ = Inheritance.call(blankProfileActionScriptJPanelLayout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(blankProfileActionScriptJPanelLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGap", .{ 0, 9967, @as(i16, std.math.maxInt(i16)) }) });
        _ = Inheritance.call(self.genericProfileActionScriptJScrollPane.?, "setViewportView", .{ self.blankProfileActionScriptJPanel });
        _ = Inheritance.call(self.ifJLabel.?, "setText", .{ String.literal("Conditions:") });
        _ = Inheritance.call(self.newColorAtJButton.?, "setText", .{ String.literal("Color Range At") });
        _ = Inheritance.call(self.newColorAtJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "newColorAtJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.newTimeIntervalJButton.?, "setText", .{ String.literal("Time Interval") });
        _ = Inheritance.call(self.newTimeIntervalJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "newTimeIntervalJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.newAlwaysJButton.?, "setText", .{ String.literal("Always On/Off") });
        _ = Inheritance.call(self.newAlwaysJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "newAlwaysJButtonActionPerformed", .{ evt });
//             }
 });
        const layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self });
        _ = Inheritance.call(self, "setLayout", .{ layout });
        _ = Inheritance.call(layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "addComponent", .{ self.ifJLabel }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.newColorAtJButton }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.newTimeIntervalJButton }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.newAlwaysJButton }).?, "addContainerGap", .{ 61, @as(i16, std.math.maxInt(i16)) }) }).?, "addComponent", .{ self.genericProfileActionScriptJScrollPane, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 440, @as(i16, std.math.maxInt(i16)) }) });
        _ = Inheritance.call(layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.ifJLabel, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 14, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.newColorAtJButton }).?, "addComponent", .{ self.newTimeIntervalJButton }).?, "addComponent", .{ self.newAlwaysJButton }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.genericProfileActionScriptJScrollPane, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 246, @as(i16, std.math.maxInt(i16)) }) }) });
    }
    

    pub fn newTimeIntervalJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("New Time Interval Action Condition"), self, String.literal("newTimeIntervalJButtonActionPerformed") });
        _ = Inheritance.call(Inheritance.receiverOf(self.getGenericProfileAction().?, "getGenericProfileActionScript").getGenericProfileActionScript().?, "addCondition", .{ Inheritance.cast(?*ProfileActionScriptConditionInterface, TimeIntervalActionScriptCondition.create()) });
        _ = self.updateProfileActionUI();
    }
    

    pub fn newAlwaysJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("New EveryTime Action Condition"), self, String.literal("newEveryTimeJButtonActionPerformed") });
        _ = Inheritance.call(Inheritance.receiverOf(self.getGenericProfileAction().?, "getGenericProfileActionScript").getGenericProfileActionScript().?, "addCondition", .{ Inheritance.cast(?*ProfileActionScriptConditionInterface, AlwaysActionScriptCondition.create()) });
        _ = self.updateProfileActionUI();
    }
    

    pub fn newColorAtJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("New Color At Action Condition"), self, String.literal("newColorAtJButtonActionPerformed") });
        _ = Inheritance.call(Inheritance.receiverOf(self.getGenericProfileAction().?, "getGenericProfileActionScript").getGenericProfileActionScript().?, "addCondition", .{ Inheritance.cast(?*ProfileActionScriptConditionInterface, ColorAtActionScriptCondition.create()) });
        _ = self.updateProfileActionUI();
    }
};

