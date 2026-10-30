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
// package org.allbinary.input.automation.actions.script.condition.processors.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const KeySingletonFactory = @import("org/allbinary/input/KeySingletonFactory.zig").KeySingletonFactory;
const InputRobot = @import("org/allbinary/input/automation/robot/InputRobot.zig").InputRobot;
const InputRobotFactory = @import("org/allbinary/input/automation/robot/InputRobotFactory.zig").InputRobotFactory;
const TempInputRobotNames = @import("org/allbinary/input/automation/robot/TempInputRobotNames.zig").TempInputRobotNames;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const CommonPhoneStrings = @import("org/allbinary/string/CommonPhoneStrings.zig").CommonPhoneStrings;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const KeyCharDefaultComboBoxModelFactory = @import("org/allbinary/input/automation/actions/script/condition/processors/input/KeyCharDefaultComboBoxModelFactory.zig").KeyCharDefaultComboBoxModelFactory;
const KeyNameDefaultComboBoxModelFactory = @import("org/allbinary/input/automation/actions/script/condition/processors/input/KeyNameDefaultComboBoxModelFactory.zig").KeyNameDefaultComboBoxModelFactory;
const KeyboardActionScriptInputInterface = @import("org/allbinary/input/automation/actions/script/condition/processors/input/KeyboardActionScriptInputInterface.zig").KeyboardActionScriptInputInterface;
const Integer = @import("java/lang/Integer.zig").Integer;
const Short = @import("java/lang/Short.zig").Short;

pub const KeyboardActionScriptInputJPanel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel";
    base: JPanel = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    keyActionScriptInputInterface: ?*KeyboardActionScriptInputInterface = null,
    addKeyJLabel: ?*JLabel = null,
    delayBetweenJLabel: ?*JLabel = null,
    delayJTextField: ?*JTextField = null,
    holdTimeJLabel: ?*JLabel = null,
    inputAutomationTypeJComboBox: ?*JComboBox = null,
    inputTypeJLabel: ?*JLabel = null,
    jLabel1: ?*JLabel = null,
    jPanel1: ?*JPanel = null,
    keyActionJButton: ?*JButton = null,
    keyActionJDialog: ?*JDialog = null,
    keyIntegerJComboBox: ?*JComboBox = null,
    keyNameJComboBox: ?*JComboBox = null,
    normalJRadioButton: ?*JRadioButton = null,
    okJButton: ?*JButton = null,
    pressJRadioButton: ?*JRadioButton = null,
    releaseJRadioButton: ?*JRadioButton = null,
    sequenceJRadioButton: ?*JRadioButton = null,
    simultaneousJRadioButton: ?*JRadioButton = null,
    testJLabel: ?*JLabel = null,
    textJTextField: ?*JTextField = null,
    timeJTextField: ?*JTextField = null,
    titleJLabel: ?*JLabel = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        this.addKeyJLabel = null;
        this.delayBetweenJLabel = null;
        this.delayJTextField = null;
        this.holdTimeJLabel = null;
        this.inputAutomationTypeJComboBox = null;
        this.inputTypeJLabel = null;
        this.jLabel1 = null;
        this.jPanel1 = null;
        this.keyActionJButton = null;
        this.keyActionJDialog = null;
        this.keyIntegerJComboBox = null;
        this.keyNameJComboBox = null;
        this.normalJRadioButton = null;
        this.okJButton = null;
        this.pressJRadioButton = null;
        this.releaseJRadioButton = null;
        this.sequenceJRadioButton = null;
        this.simultaneousJRadioButton = null;
        this.testJLabel = null;
        this.textJTextField = null;
        this.timeJTextField = null;
        this.titleJLabel = null;
    }
    

    pub fn create1(keyActionScriptInputInterface: ?*KeyboardActionScriptInputInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = JPanel.create().*;
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.START, this, this.commonStrings.?.CONSTRUCTOR });
        _ = this.initComponents();
        this.keyActionScriptInputInterface = keyActionScriptInputInterface;
        const defaultComboBoxModel: ?*DefaultComboBoxModel = DefaultComboBoxModel.create();
        _ = Inheritance.call(defaultComboBoxModel.?, "addElement", .{ TempInputRobotNames.DX_NAME });
        _ = Inheritance.call(defaultComboBoxModel.?, "addElement", .{ InputRobot.NAME });
        _ = Inheritance.call(this.inputAutomationTypeJComboBox.?, "setModel", .{ defaultComboBoxModel });
        _ = Inheritance.call(this.keyNameJComboBox.?, "setModel", .{ KeyNameDefaultComboBoxModelFactory.getInstance() });
        _ = Inheritance.call(this.keyIntegerJComboBox.?, "setModel", .{ KeyCharDefaultComboBoxModelFactory.getInstance() });
        if (Inheritance.receiver(this.keyActionScriptInputInterface.?, "isNormal").isNormal()) {
            _ = Inheritance.call(this.normalJRadioButton.?, "setSelected", .{ true });
            _ = Inheritance.call(this.pressJRadioButton.?, "setSelected", .{ false });
            _ = Inheritance.call(this.releaseJRadioButton.?, "setSelected", .{ false });
        } else if (Inheritance.receiver(this.keyActionScriptInputInterface.?, "isPress").isPress()) {
            _ = Inheritance.call(this.normalJRadioButton.?, "setSelected", .{ false });
            _ = Inheritance.call(this.pressJRadioButton.?, "setSelected", .{ true });
            _ = Inheritance.call(this.releaseJRadioButton.?, "setSelected", .{ false });
        } else if (Inheritance.receiver(this.keyActionScriptInputInterface.?, "isRelease").isRelease()) {
            _ = Inheritance.call(this.normalJRadioButton.?, "setSelected", .{ false });
            _ = Inheritance.call(this.pressJRadioButton.?, "setSelected", .{ false });
            _ = Inheritance.call(this.releaseJRadioButton.?, "setSelected", .{ true });
        }
        _ = this.set();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn set(self: *Self) void {
        const inputTypeComboBoxModel: ?*ComboBoxModel = Inheritance.upcast(?*ComboBoxModel, self.inputAutomationTypeJComboBox.?.getModel());
        _ = Inheritance.call(inputTypeComboBoxModel.?, "setSelectedItem", .{ Inheritance.receiverOf(Inheritance.receiver(self.keyActionScriptInputInterface.?, "getInputRobotInterface").getInputRobotInterface().?, "getName").getName() });
        _ = Inheritance.call(self.textJTextField.?, "setText", .{ Inheritance.receiver(self.keyActionScriptInputInterface.?, "getText").getText() });
        _ = Inheritance.call(self.delayJTextField.?, "setText", .{ String.valueOf(Inheritance.receiver(self.keyActionScriptInputInterface.?, "getDelayBetweenKeys").getDelayBetweenKeys()) });
        _ = Inheritance.call(self.timeJTextField.?, "setText", .{ String.valueOf(Inheritance.receiver(self.keyActionScriptInputInterface.?, "getTime").getTime()) });
        _ = Inheritance.receiver(self.keyActionScriptInputInterface.?, "log").log();
    }
    

    // throws Exception
    pub fn updateInputType(self: *Self) void {
        const comboBoxModel: ?*ComboBoxModel = Inheritance.upcast(?*ComboBoxModel, self.inputAutomationTypeJComboBox.?.getModel());
        const selectedItem: ?*String = Inheritance.cast(?*String, comboBoxModel.?.getSelectedItem());
        if (!Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ selectedItem })) {
            _ = Inheritance.call(self.keyActionScriptInputInterface.?, "setInputRobotInterface", .{ Inheritance.call(InputRobotFactory.getInstance().?, "get", .{ selectedItem }) });
        }
    }
    

    pub fn getSelectedKey(self: *Self) ?*Integer {
        const comboBoxModel: ?*ComboBoxModel = Inheritance.upcast(?*ComboBoxModel, self.keyNameJComboBox.?.getModel());
        const selectedItem: ?*String = Inheritance.cast(?*String, comboBoxModel.?.getSelectedItem());
        if (!Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ selectedItem })) {
            return Inheritance.cast(?*Integer, Inheritance.call(KeySingletonFactory.getHashtable().?, "get", .{ selectedItem }));
        }
        return null;
    }
    

    pub fn updateKeys(self: *Self) void {
        const text: ?*String = Inheritance.upcast(?*String, self.textJTextField.?.getText());
        _ = Inheritance.call(self.keyActionScriptInputInterface.?, "setText", .{ text });
    }
    

    // throws Exception
    pub fn update(self: *Self) void {
        _ = self.updateInputType();
        _ = self.updateKeys();
        _ = Inheritance.call(self.keyActionScriptInputInterface.?, "setTime", .{ Inheritance.receiverOf(Inheritance.callStatic(Integer, "valueOf", .{ self.timeJTextField.?.getText() }).?, "intValue").intValue() });
        _ = Inheritance.receiver(self.keyActionScriptInputInterface.?, "log").log();
    }
    

    pub fn getKeyActionJDialog(self: *Self) ?*JDialog {
        return self.keyActionJDialog;
    }
    

    pub fn setKeyActionJDialog(self: *Self, keyActionJDialog: ?*JDialog) void {
        self.keyActionJDialog = keyActionJDialog;
    }
    

    pub fn initComponents(self: *Self) void {
        self.keyActionJDialog = JDialog.create();
        self.titleJLabel = JLabel.create();
        self.addKeyJLabel = JLabel.create();
        self.keyNameJComboBox = JComboBox.create();
        self.timeJTextField = JTextField.create();
        self.holdTimeJLabel = JLabel.create();
        self.inputAutomationTypeJComboBox = JComboBox.create();
        self.inputTypeJLabel = JLabel.create();
        self.delayJTextField = JTextField.create();
        self.delayBetweenJLabel = JLabel.create();
        self.testJLabel = JLabel.create();
        self.textJTextField = JTextField.create();
        self.pressJRadioButton = JRadioButton.create();
        self.releaseJRadioButton = JRadioButton.create();
        self.normalJRadioButton = JRadioButton.create();
        self.simultaneousJRadioButton = JRadioButton.create();
        self.sequenceJRadioButton = JRadioButton.create();
        self.jPanel1 = JPanel.create();
        self.okJButton = JButton.create();
        self.keyIntegerJComboBox = JComboBox.create();
        self.keyActionJButton = JButton.create();
        self.jLabel1 = JLabel.create();
        _ = Inheritance.call(self.keyActionJDialog.?, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 255, 280 }) });
        _ = Inheritance.call(self.titleJLabel.?, "setHorizontalAlignment", .{ javax.swing.?.SwingConstants.?.CENTER });
        _ = Inheritance.call(self.titleJLabel.?, "setText", .{ String.literal("Keyboard Input Options") });
        _ = Inheritance.call(self.addKeyJLabel.?, "setText", .{ String.literal("Add Key:") });
        _ = Inheritance.call(self.keyNameJComboBox.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "keyNameJComboBoxActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.timeJTextField.?, "setText", .{ CommonPhoneStrings.getInstance().?.ZERO });
        _ = Inheritance.call(self.holdTimeJLabel.?, "setText", .{ String.literal("Hold Time (ms):") });
        _ = Inheritance.call(self.inputTypeJLabel.?, "setText", .{ String.literal("Input Type:") });
        _ = Inheritance.call(self.delayJTextField.?, "setText", .{ CommonPhoneStrings.getInstance().?.ZERO });
        _ = Inheritance.call(self.delayBetweenJLabel.?, "setText", .{ String.literal("Delay Between Keys (ms):") });
        _ = Inheritance.call(self.testJLabel.?, "setText", .{ String.literal("Text:") });
        _ = Inheritance.call(self.textJTextField.?, "setText", .{ CommonPhoneStrings.getInstance().?.ZERO });
        _ = Inheritance.call(self.pressJRadioButton.?, "setText", .{ String.literal("Press") });
        _ = Inheritance.call(self.pressJRadioButton.?, "setBorder", .{ Inheritance.call(javax.swing.?.BorderFactory.?, "createEmptyBorder", .{ 0, 0, 0, 0 }) });
        _ = Inheritance.call(self.pressJRadioButton.?, "setMargin", .{ Inheritance.callStatic(Insets, "create4", .{ 0, 0, 0, 0 }) });
        _ = Inheritance.call(self.pressJRadioButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "pressJRadioButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.releaseJRadioButton.?, "setText", .{ String.literal("Release") });
        _ = Inheritance.call(self.releaseJRadioButton.?, "setBorder", .{ Inheritance.call(javax.swing.?.BorderFactory.?, "createEmptyBorder", .{ 0, 0, 0, 0 }) });
        _ = Inheritance.call(self.releaseJRadioButton.?, "setMargin", .{ Inheritance.callStatic(Insets, "create4", .{ 0, 0, 0, 0 }) });
        _ = Inheritance.call(self.releaseJRadioButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "releaseJRadioButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.normalJRadioButton.?, "setSelected", .{ true });
        _ = Inheritance.call(self.normalJRadioButton.?, "setText", .{ String.literal("Normal") });
        _ = Inheritance.call(self.normalJRadioButton.?, "setBorder", .{ Inheritance.call(javax.swing.?.BorderFactory.?, "createEmptyBorder", .{ 0, 0, 0, 0 }) });
        _ = Inheritance.call(self.normalJRadioButton.?, "setMargin", .{ Inheritance.callStatic(Insets, "create4", .{ 0, 0, 0, 0 }) });
        _ = Inheritance.call(self.normalJRadioButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "normalJRadioButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.simultaneousJRadioButton.?, "setSelected", .{ true });
        _ = Inheritance.call(self.simultaneousJRadioButton.?, "setText", .{ String.literal("Simultaneous") });
        _ = Inheritance.call(self.simultaneousJRadioButton.?, "setBorder", .{ Inheritance.call(javax.swing.?.BorderFactory.?, "createEmptyBorder", .{ 0, 0, 0, 0 }) });
        _ = Inheritance.call(self.simultaneousJRadioButton.?, "setMargin", .{ Inheritance.callStatic(Insets, "create4", .{ 0, 0, 0, 0 }) });
        _ = Inheritance.call(self.simultaneousJRadioButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "simultaneousJRadioButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.sequenceJRadioButton.?, "setText", .{ String.literal("Sequence") });
        _ = Inheritance.call(self.sequenceJRadioButton.?, "setBorder", .{ Inheritance.call(javax.swing.?.BorderFactory.?, "createEmptyBorder", .{ 0, 0, 0, 0 }) });
        _ = Inheritance.call(self.sequenceJRadioButton.?, "setMargin", .{ Inheritance.callStatic(Insets, "create4", .{ 0, 0, 0, 0 }) });
        _ = Inheritance.call(self.sequenceJRadioButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "sequenceJRadioButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.okJButton.?, "setText", .{ String.literal("OK") });
        _ = Inheritance.call(self.okJButton.?, "setHorizontalTextPosition", .{ javax.swing.?.SwingConstants.?.CENTER });
        _ = Inheritance.call(self.okJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "okJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jPanel1.?, "add", .{ self.okJButton });
        _ = Inheritance.call(self.keyIntegerJComboBox.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "keyIntegerJComboBoxActionPerformed", .{ evt });
//             }
 });
        const keyActionJDialogLayout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.keyActionJDialog.?.getContentPane() });
        _ = Inheritance.call(self.keyActionJDialog.?.getContentPane().?, "setLayout", .{ keyActionJDialogLayout });
        _ = Inheritance.call(keyActionJDialogLayout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(keyActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.receiverOf(Inheritance.call(Inheritance.receiverOf(keyActionJDialogLayout.?.createSequentialGroup().?, "addContainerGap").addContainerGap().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(keyActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(keyActionJDialogLayout.?.createSequentialGroup().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(keyActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING, false }).?, "addComponent", .{ self.addKeyJLabel, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.inputTypeJLabel, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(keyActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.TRAILING }).?, "addComponent", .{ self.inputAutomationTypeJComboBox, 0, 148, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.textJTextField, javax.swing.?.GroupLayout.?.Alignment.?.LEADING, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 148, @as(i16, std.math.maxInt(i16)) }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(keyActionJDialogLayout.?.createSequentialGroup().?, "addComponent", .{ self.keyNameJComboBox, 0, 101, @as(i16, std.math.maxInt(i16)) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.keyIntegerJComboBox, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 41, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }) }) }).?, "addComponent", .{ self.testJLabel, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 60, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(keyActionJDialogLayout.?.createSequentialGroup().?, "addComponent", .{ self.normalJRadioButton }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.pressJRadioButton }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.releaseJRadioButton }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED, 48, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.TRAILING, Inheritance.call(Inheritance.call(Inheritance.call(keyActionJDialogLayout.?.createSequentialGroup().?, "addComponent", .{ self.holdTimeJLabel }).?, "addGap", .{ 22, 22, 22 }).?, "addComponent", .{ self.timeJTextField, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 113, @as(i16, std.math.maxInt(i16)) }) }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(keyActionJDialogLayout.?.createSequentialGroup().?, "addComponent", .{ self.delayBetweenJLabel }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED, 15, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.delayJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 68, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(keyActionJDialogLayout.?.createSequentialGroup().?, "addComponent", .{ self.simultaneousJRadioButton }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.sequenceJRadioButton }) }) }).?, "addContainerGap").addContainerGap() }).?, "addComponent", .{ self.titleJLabel, javax.swing.?.GroupLayout.?.Alignment.?.TRAILING, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 229, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.jPanel1, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 229, @as(i16, std.math.maxInt(i16)) }) });
        _ = Inheritance.call(keyActionJDialogLayout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(keyActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.receiverOf(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(keyActionJDialogLayout.?.createSequentialGroup().?, "addComponent", .{ self.titleJLabel }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(keyActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.inputTypeJLabel }).?, "addComponent", .{ self.inputAutomationTypeJComboBox, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(keyActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.addKeyJLabel }).?, "addComponent", .{ self.keyIntegerJComboBox, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.keyNameJComboBox, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(keyActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.testJLabel }).?, "addComponent", .{ self.textJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(keyActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.pressJRadioButton }).?, "addComponent", .{ self.normalJRadioButton }).?, "addComponent", .{ self.releaseJRadioButton }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(keyActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.holdTimeJLabel }).?, "addComponent", .{ self.timeJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(keyActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.delayBetweenJLabel }).?, "addComponent", .{ self.delayJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(keyActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.simultaneousJRadioButton }).?, "addComponent", .{ self.sequenceJRadioButton }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.jPanel1, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addContainerGap").addContainerGap() }) });
        _ = Inheritance.call(self, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 100, 0 }) });
        _ = Inheritance.call(self.keyActionJButton.?, "setText", .{ String.literal("Edit") });
        _ = Inheritance.call(self.keyActionJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "keyActionJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jLabel1.?, "setText", .{ String.literal("Key:") });
        const layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self });
        _ = Inheritance.call(self, "setLayout", .{ layout });
        _ = Inheritance.call(layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "addComponent", .{ self.jLabel1 }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED, 49, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.keyActionJButton }) }) });
        _ = Inheritance.call(layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.jLabel1 }).?, "addComponent", .{ self.keyActionJButton }) }) });
    }
    

    pub fn prependText(self: *Self, integer: ?*Integer) void {
        if (integer != null) {
            const newKey: ?*String = Inheritance.upcast(?*String, String.plus(String.plus(String.literal("&#"), String.valueOf(integer.?)), String.literal(";")));
            _ = Inheritance.call(self.textJTextField.?, "setText", .{ String.plus(newKey, self.textJTextField.?.getText()) });
        }
    }
    

    pub fn keyIntegerJComboBoxActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self.keyIntegerJComboBox.?.getSelectedIndex();
        _ = Inheritance.call(self.keyNameJComboBox.?, "setSelectedIndex", .{ self.keyIntegerJComboBox.?.getSelectedIndex() });
    }
    

    pub fn sequenceJRadioButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        if (self.sequenceJRadioButton.?.isSelected()) {
            _ = Inheritance.call(self.delayJTextField.?, "setText", .{ CommonPhoneStrings.getInstance().?.ONE });
            _ = Inheritance.call(self.simultaneousJRadioButton.?, "setSelected", .{ false });
        }
    }
    

    pub fn simultaneousJRadioButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        if (self.simultaneousJRadioButton.?.isSelected()) {
            _ = Inheritance.call(self.delayJTextField.?, "setText", .{ CommonPhoneStrings.getInstance().?.ZERO });
            _ = Inheritance.call(self.sequenceJRadioButton.?, "setSelected", .{ false });
        }
    }
    

    pub fn keyNameJComboBoxActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        const integer: ?*Integer = Inheritance.upcast(?*Integer, self.getSelectedKey());
        _ = Inheritance.call(self, "prependText", .{ integer });
        _ = Inheritance.call(self.keyIntegerJComboBox.?, "setSelectedIndex", .{ self.keyNameJComboBox.?.getSelectedIndex() });
    }
    

    pub fn okJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            _ = self.update();
            _ = Inheritance.call(self.getKeyActionJDialog().?, "setVisible", .{ false });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("okButtonActionPerformed"), e });
    }
    

    pub fn keyActionJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = Inheritance.call(self.getKeyActionJDialog().?, "setVisible", .{ true });
    }
    

    pub fn normalJRadioButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        if (self.normalJRadioButton.?.isSelected()) {
            _ = Inheritance.receiver(self.keyActionScriptInputInterface.?, "setNormal").setNormal();
            _ = Inheritance.call(self.pressJRadioButton.?, "setSelected", .{ false });
            _ = Inheritance.call(self.releaseJRadioButton.?, "setSelected", .{ false });
        }
    }
    

    pub fn releaseJRadioButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        if (self.releaseJRadioButton.?.isSelected()) {
            _ = Inheritance.call(self.keyActionScriptInputInterface.?, "setRelease", .{ true });
            _ = Inheritance.call(self.keyActionScriptInputInterface.?, "setPress", .{ false });
            _ = Inheritance.call(self.pressJRadioButton.?, "setSelected", .{ false });
            _ = Inheritance.call(self.normalJRadioButton.?, "setSelected", .{ false });
        }
    }
    

    pub fn pressJRadioButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        if (self.pressJRadioButton.?.isSelected()) {
            _ = Inheritance.call(self.keyActionScriptInputInterface.?, "setPress", .{ true });
            _ = Inheritance.call(self.keyActionScriptInputInterface.?, "setRelease", .{ false });
            _ = Inheritance.call(self.releaseJRadioButton.?, "setSelected", .{ false });
            _ = Inheritance.call(self.normalJRadioButton.?, "setSelected", .{ false });
        }
    }
};

