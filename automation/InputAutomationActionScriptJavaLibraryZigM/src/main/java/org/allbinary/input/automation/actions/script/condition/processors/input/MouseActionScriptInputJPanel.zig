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
// const InputEvent = @import("java/awt/event/InputEvent.zig").InputEvent;
const InputRobot = @import("org/allbinary/input/automation/robot/InputRobot.zig").InputRobot;
const InputRobotFactory = @import("org/allbinary/input/automation/robot/InputRobotFactory.zig").InputRobotFactory;
const TempInputRobotNames = @import("org/allbinary/input/automation/robot/TempInputRobotNames.zig").TempInputRobotNames;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonPhoneStrings = @import("org/allbinary/string/CommonPhoneStrings.zig").CommonPhoneStrings;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const MouseActionScriptInputInterface = @import("org/allbinary/input/automation/actions/script/condition/processors/input/MouseActionScriptInputInterface.zig").MouseActionScriptInputInterface;
const Integer = @import("java/lang/Integer.zig").Integer;
const Short = @import("java/lang/Short.zig").Short;

pub const MouseActionScriptInputJPanel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel";
    base: JPanel = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    mouseActionScriptInputInterface: ?*MouseActionScriptInputInterface = null,
    button1JCheckBox: ?*JCheckBox = null,
    button2JCheckBox: ?*JCheckBox = null,
    inputAutomationTypeJComboBox: ?*JComboBox = null,
    inputTypeJLabel: ?*JLabel = null,
    jLabel1: ?*JLabel = null,
    jLabel2: ?*JLabel = null,
    jLabel3: ?*JLabel = null,
    jLabel4: ?*JLabel = null,
    jLabel5: ?*JLabel = null,
    jLabel6: ?*JLabel = null,
    mouseActionJButton: ?*JButton = null,
    mouseActionJDialog: ?*JDialog = null,
    mouseDelayJTextField: ?*JTextField = null,
    mouseXJTextField: ?*JTextField = null,
    mouseYJTextField: ?*JTextField = null,
    okJButton: ?*JButton = null,
    titleJLabel: ?*JLabel = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        this.button1JCheckBox = null;
        this.button2JCheckBox = null;
        this.inputAutomationTypeJComboBox = null;
        this.inputTypeJLabel = null;
        this.jLabel1 = null;
        this.jLabel2 = null;
        this.jLabel3 = null;
        this.jLabel4 = null;
        this.jLabel5 = null;
        this.jLabel6 = null;
        this.mouseActionJButton = null;
        this.mouseActionJDialog = null;
        this.mouseDelayJTextField = null;
        this.mouseXJTextField = null;
        this.mouseYJTextField = null;
        this.okJButton = null;
        this.titleJLabel = null;
    }
    

    pub fn create1(mouseActionScriptInputInterface: ?*MouseActionScriptInputInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = JPanel.create().*;
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ CommonLabels.getInstance().?.START + mouseActionScriptInputInterface, this, this.commonStrings.?.CONSTRUCTOR });
        _ = this.initComponents();
        this.mouseActionScriptInputInterface = mouseActionScriptInputInterface;
        const defaultComboBoxModel: ?*DefaultComboBoxModel = DefaultComboBoxModel.create();
        _ = Inheritance.call(defaultComboBoxModel.?, "addElement", .{ TempInputRobotNames.LOW_NAME });
        _ = Inheritance.call(defaultComboBoxModel.?, "addElement", .{ TempInputRobotNames.SYS_NAME });
        _ = Inheritance.call(defaultComboBoxModel.?, "addElement", .{ InputRobot.NAME });
        _ = Inheritance.call(this.inputAutomationTypeJComboBox.?, "setModel", .{ defaultComboBoxModel });
        _ = this.set();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn set(self: *Self) void {
        const inputTypeComboBoxModel: ?*ComboBoxModel = Inheritance.upcast(?*ComboBoxModel, self.inputAutomationTypeJComboBox.?.getModel());
        _ = Inheritance.call(inputTypeComboBoxModel.?, "setSelectedItem", .{ Inheritance.receiverOf(Inheritance.receiver(self.mouseActionScriptInputInterface.?, "getInputRobotInterface").getInputRobotInterface().?, "getName").getName() });
        if ((Inheritance.receiver(self.mouseActionScriptInputInterface.?, "getButtonClicks").getButtonClicks() & InputEvent.BUTTON1_MASK) != 0) {
            _ = Inheritance.call(self.button1JCheckBox.?, "setSelected", .{ true });
        } else {
            _ = Inheritance.call(self.button1JCheckBox.?, "setSelected", .{ false });
        }
        if ((Inheritance.receiver(self.mouseActionScriptInputInterface.?, "getButtonClicks").getButtonClicks() & InputEvent.BUTTON2_MASK) != 0) {
            _ = Inheritance.call(self.button2JCheckBox.?, "setSelected", .{ true });
        } else {
            _ = Inheritance.call(self.button2JCheckBox.?, "setSelected", .{ false });
        }
        _ = Inheritance.call(self.mouseDelayJTextField.?, "setText", .{ String.valueOf(Inheritance.receiver(self.mouseActionScriptInputInterface.?, "getTime").getTime()) });
        _ = Inheritance.call(self.mouseXJTextField.?, "setText", .{ String.valueOf(Inheritance.receiver(self.mouseActionScriptInputInterface.?, "getPoint").getPoint().?.x) });
        _ = Inheritance.call(self.mouseYJTextField.?, "setText", .{ String.valueOf(Inheritance.receiver(self.mouseActionScriptInputInterface.?, "getPoint").getPoint().?.y) });
        _ = Inheritance.receiver(self.mouseActionScriptInputInterface.?, "log").log();
    }
    

    // throws Exception
    pub fn updateInputType(self: *Self) void {
        const comboBoxModel: ?*ComboBoxModel = Inheritance.upcast(?*ComboBoxModel, self.inputAutomationTypeJComboBox.?.getModel());
        const selectedItem: ?*String = Inheritance.cast(?*String, comboBoxModel.?.getSelectedItem());
        if (!Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ selectedItem })) {
            _ = Inheritance.call(self.mouseActionScriptInputInterface.?, "setInputRobotInterface", .{ Inheritance.call(InputRobotFactory.getInstance().?, "get", .{ selectedItem }) });
        }
    }
    

    // throws Exception
    pub fn update(self: *Self) void {
        _ = self.updateInputType();
        _ = Inheritance.call(self.mouseActionScriptInputInterface.?, "setTime", .{ Inheritance.callStatic(Integer, "valueOf", .{ self.mouseDelayJTextField.?.getText() }) });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Button State: "), Inheritance.receiver(self.mouseActionScriptInputInterface.?, "getButtonClicks").getButtonClicks()), self, String.literal("update") });
        if (self.button1JCheckBox.?.isSelected()) {
            if ((Inheritance.receiver(self.mouseActionScriptInputInterface.?, "getButtonClicks").getButtonClicks() & InputEvent.BUTTON1_MASK) == 0) {
                _ = Inheritance.call(self.mouseActionScriptInputInterface.?, "setButtonClicks", .{ Inheritance.receiver(self.mouseActionScriptInputInterface.?, "getButtonClicks").getButtonClicks() | InputEvent.BUTTON1_MASK });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Button 1 Selected: "), Inheritance.receiver(self.mouseActionScriptInputInterface.?, "getButtonClicks").getButtonClicks()), self, String.literal("update") });
            }
        } else {
            if ((Inheritance.receiver(self.mouseActionScriptInputInterface.?, "getButtonClicks").getButtonClicks() & InputEvent.BUTTON1_MASK) != 0) {
                _ = Inheritance.call(self.mouseActionScriptInputInterface.?, "setButtonClicks", .{ Inheritance.receiver(self.mouseActionScriptInputInterface.?, "getButtonClicks").getButtonClicks() ^ InputEvent.BUTTON1_MASK });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Button 1 Deselected: "), Inheritance.receiver(self.mouseActionScriptInputInterface.?, "getButtonClicks").getButtonClicks()), self, String.literal("update") });
            }
        }
        if (self.button2JCheckBox.?.isSelected()) {
            if ((Inheritance.receiver(self.mouseActionScriptInputInterface.?, "getButtonClicks").getButtonClicks() & InputEvent.BUTTON2_MASK) == 0) {
                _ = Inheritance.call(self.mouseActionScriptInputInterface.?, "setButtonClicks", .{ Inheritance.receiver(self.mouseActionScriptInputInterface.?, "getButtonClicks").getButtonClicks() | InputEvent.BUTTON2_MASK });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Button 2 Selected: "), Inheritance.receiver(self.mouseActionScriptInputInterface.?, "getButtonClicks").getButtonClicks()), self, String.literal("update") });
            }
        } else {
            if ((Inheritance.receiver(self.mouseActionScriptInputInterface.?, "getButtonClicks").getButtonClicks() & InputEvent.BUTTON2_MASK) != 0) {
                _ = Inheritance.call(self.mouseActionScriptInputInterface.?, "setButtonClicks", .{ Inheritance.receiver(self.mouseActionScriptInputInterface.?, "getButtonClicks").getButtonClicks() ^ InputEvent.BUTTON2_MASK });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Button 2 Deselected: "), Inheritance.receiver(self.mouseActionScriptInputInterface.?, "getButtonClicks").getButtonClicks()), self, String.literal("update") });
            }
        }
        const mouseXString: ?*String = Inheritance.upcast(?*String, self.mouseXJTextField.?.getText());
        if (!Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ mouseXString }) and Inheritance.call(StringValidationUtil.getInstance().?, "isNumber", .{ mouseXString })) {
            Inheritance.receiver(self.mouseActionScriptInputInterface.?, "getPoint").getPoint().?.x = Inheritance.upcast(@TypeOf(Inheritance.receiver(self.mouseActionScriptInputInterface.?, "getPoint").getPoint().?.x), (std.fmt.parseInt(i32, mouseXString.?.bytes, 10) catch @panic("java.lang.NumberFormatException")));
        }
        const mouseYString: ?*String = Inheritance.upcast(?*String, self.mouseYJTextField.?.getText());
        if (!Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ mouseYString }) and Inheritance.call(StringValidationUtil.getInstance().?, "isNumber", .{ mouseYString })) {
            Inheritance.receiver(self.mouseActionScriptInputInterface.?, "getPoint").getPoint().?.y = Inheritance.upcast(@TypeOf(Inheritance.receiver(self.mouseActionScriptInputInterface.?, "getPoint").getPoint().?.y), (std.fmt.parseInt(i32, mouseYString.?.bytes, 10) catch @panic("java.lang.NumberFormatException")));
        }
        _ = Inheritance.receiver(self.mouseActionScriptInputInterface.?, "log").log();
    }
    

    pub fn getMouseActionJDialog(self: *Self) ?*JDialog {
        return self.mouseActionJDialog;
    }
    

    pub fn setMouseActionJDialog(self: *Self, mouseActionJDialog: ?*JDialog) void {
        self.mouseActionJDialog = mouseActionJDialog;
    }
    

    pub fn initComponents(self: *Self) void {
        self.mouseActionJDialog = JDialog.create();
        self.titleJLabel = JLabel.create();
        self.okJButton = JButton.create();
        self.jLabel2 = JLabel.create();
        self.jLabel3 = JLabel.create();
        self.button1JCheckBox = JCheckBox.create();
        self.button2JCheckBox = JCheckBox.create();
        self.jLabel4 = JLabel.create();
        self.mouseXJTextField = JTextField.create();
        self.jLabel5 = JLabel.create();
        self.mouseYJTextField = JTextField.create();
        self.inputTypeJLabel = JLabel.create();
        self.inputAutomationTypeJComboBox = JComboBox.create();
        self.jLabel6 = JLabel.create();
        self.mouseDelayJTextField = JTextField.create();
        self.mouseActionJButton = JButton.create();
        self.jLabel1 = JLabel.create();
        _ = Inheritance.call(self.mouseActionJDialog.?, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 275, 185 }) });
        _ = Inheritance.call(self.titleJLabel.?, "setText", .{ String.literal("Mouse Input Options") });
        _ = Inheritance.call(self.okJButton.?, "setText", .{ String.literal("OK") });
        _ = Inheritance.call(self.okJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "okJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jLabel2.?, "setText", .{ String.literal("Buttons:") });
        _ = Inheritance.call(self.jLabel3.?, "setText", .{ String.literal("Move To:") });
        _ = Inheritance.call(self.button1JCheckBox.?, "setText", .{ CommonPhoneStrings.getInstance().?.ONE });
        _ = Inheritance.call(self.button1JCheckBox.?, "setBorder", .{ Inheritance.call(javax.swing.?.BorderFactory.?, "createEmptyBorder", .{ 0, 0, 0, 0 }) });
        _ = Inheritance.call(self.button1JCheckBox.?, "setMargin", .{ Inheritance.callStatic(Insets, "create4", .{ 0, 0, 0, 0 }) });
        _ = Inheritance.call(self.button2JCheckBox.?, "setText", .{ CommonPhoneStrings.getInstance().?.TWO });
        _ = Inheritance.call(self.button2JCheckBox.?, "setBorder", .{ Inheritance.call(javax.swing.?.BorderFactory.?, "createEmptyBorder", .{ 0, 0, 0, 0 }) });
        _ = Inheritance.call(self.button2JCheckBox.?, "setMargin", .{ Inheritance.callStatic(Insets, "create4", .{ 0, 0, 0, 0 }) });
        _ = Inheritance.call(self.button2JCheckBox.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "button2JCheckBoxActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jLabel4.?, "setText", .{ String.literal("x:") });
        _ = Inheritance.call(self.mouseXJTextField.?, "setText", .{ CommonPhoneStrings.getInstance().?.ZERO });
        _ = Inheritance.call(self.jLabel5.?, "setText", .{ String.literal("y:") });
        _ = Inheritance.call(self.mouseYJTextField.?, "setText", .{ CommonPhoneStrings.getInstance().?.ZERO });
        _ = Inheritance.call(self.inputTypeJLabel.?, "setText", .{ String.literal("Input Type:") });
        _ = Inheritance.call(self.jLabel6.?, "setText", .{ String.literal("Delay:") });
        _ = Inheritance.call(self.mouseDelayJTextField.?, "setText", .{ String.literal("100") });
        const mouseActionJDialogLayout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.mouseActionJDialog.?.getContentPane() });
        _ = Inheritance.call(self.mouseActionJDialog.?.getContentPane().?, "setLayout", .{ mouseActionJDialogLayout });
        _ = Inheritance.call(mouseActionJDialogLayout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(mouseActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.receiverOf(Inheritance.call(Inheritance.receiverOf(mouseActionJDialogLayout.?.createSequentialGroup().?, "addContainerGap").addContainerGap().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(mouseActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addComponent", .{ self.inputTypeJLabel }).?, "addGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.TRAILING, Inheritance.call(Inheritance.call(mouseActionJDialogLayout.?.createSequentialGroup().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(mouseActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.TRAILING, Inheritance.call(Inheritance.call(mouseActionJDialogLayout.?.createSequentialGroup().?, "addComponent", .{ self.jLabel2 }).?, "addGap", .{ 25, 25, 25 }) }).?, "addGroup", .{ Inheritance.call(Inheritance.call(mouseActionJDialogLayout.?.createSequentialGroup().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(mouseActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addComponent", .{ self.jLabel3 }).?, "addComponent", .{ self.jLabel6 }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }) }) }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(mouseActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addComponent", .{ self.mouseDelayJTextField, javax.swing.?.GroupLayout.?.Alignment.?.TRAILING, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 154, @as(i16, std.math.maxInt(i16)) }).?, "addGroup", .{ Inheritance.call(Inheritance.call(mouseActionJDialogLayout.?.createSequentialGroup().?, "addComponent", .{ self.titleJLabel }).?, "addGap", .{ 45, 45, 45 }) }).?, "addGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.TRAILING, Inheritance.call(Inheritance.call(mouseActionJDialogLayout.?.createSequentialGroup().?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.inputAutomationTypeJComboBox, 0, 154, @as(i16, std.math.maxInt(i16)) }) }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(mouseActionJDialogLayout.?.createSequentialGroup().?, "addComponent", .{ self.button1JCheckBox }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.button2JCheckBox }) }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(mouseActionJDialogLayout.?.createSequentialGroup().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(mouseActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.TRAILING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(mouseActionJDialogLayout.?.createSequentialGroup().?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.okJButton }) }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(mouseActionJDialogLayout.?.createSequentialGroup().?, "addComponent", .{ self.jLabel4 }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED, 5, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.mouseXJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 59, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.jLabel5 }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.mouseYJTextField, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 62, @as(i16, std.math.maxInt(i16)) }) }) }) }) }).?, "addContainerGap").addContainerGap() }) });
        _ = Inheritance.call(mouseActionJDialogLayout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(mouseActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.receiverOf(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(mouseActionJDialogLayout.?.createSequentialGroup().?, "addComponent", .{ self.titleJLabel }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(mouseActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.inputTypeJLabel }).?, "addComponent", .{ self.inputAutomationTypeJComboBox, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(mouseActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addComponent", .{ self.jLabel2, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 15, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(mouseActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.button1JCheckBox }).?, "addComponent", .{ self.button2JCheckBox }) }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(mouseActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.jLabel6 }).?, "addComponent", .{ self.mouseDelayJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(mouseActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.jLabel3 }).?, "addComponent", .{ self.jLabel4 }).?, "addComponent", .{ self.jLabel5 }).?, "addComponent", .{ self.mouseYJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.mouseXJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.okJButton }).?, "addContainerGap").addContainerGap() }) });
        _ = Inheritance.call(self, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 100, 0 }) });
        _ = Inheritance.call(self.mouseActionJButton.?, "setText", .{ String.literal("Edit") });
        _ = Inheritance.call(self.mouseActionJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "mouseActionJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jLabel1.?, "setText", .{ String.literal("Mouse:") });
        const layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self });
        _ = Inheritance.call(self, "setLayout", .{ layout });
        _ = Inheritance.call(layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "addComponent", .{ self.jLabel1 }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED, 36, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.mouseActionJButton }) }) });
        _ = Inheritance.call(layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.jLabel1 }).?, "addComponent", .{ self.mouseActionJButton }) }) });
    }
    

    pub fn button2JCheckBoxActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self;
    }
    

    pub fn okJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            _ = self.update();
            _ = Inheritance.call(self.getMouseActionJDialog().?, "setVisible", .{ false });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("okButtonActionPerformed"), e });
    }
    

    pub fn mouseActionJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = Inheritance.call(self.getMouseActionJDialog().?, "setVisible", .{ true });
    }
};

