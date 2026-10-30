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
// package org.allbinary.input.automation.module.generic.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const GenericProfile = @import("org/allbinary/input/automation/module/generic/configuration/profile/GenericProfile.zig").GenericProfile;
const GenericProfileDataWorkerType = @import("org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileDataWorkerType.zig").GenericProfileDataWorkerType;
const GenericProfiles = @import("org/allbinary/input/automation/module/generic/configuration/profile/GenericProfiles.zig").GenericProfiles;
const GenericProfileActions = @import("org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActions.zig").GenericProfileActions;
const GenericProfileActionsJPanel = @import("org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionsJPanel.zig").GenericProfileActionsJPanel;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const GenericModuleConfigurationInterface = @import("org/allbinary/input/automation/module/generic/configuration/GenericModuleConfigurationInterface.zig").GenericModuleConfigurationInterface;
const Short = @import("java/lang/Short.zig").Short;

pub const GenericModuleConfigurationJPanel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.generic.configuration.GenericModuleConfigurationJPanel";
    pub const java_interfaces = .{ GenericModuleConfigurationInterface };
    base: JPanel = undefined,
    logUtil: ?*LogUtil = null,
    stringUtil: ?*StringUtil = null,
    commonStrings: ?*CommonStrings = null,
    genericProfiles: ?*GenericProfiles = null,
    selectedGenericProfile: ?*GenericProfile = null,
    blankGenericProfileActionsJPanel: ?*JPanel = null,
    buttonGroup2: ?*ButtonGroup = null,
    captureComparisonJCheckBox: ?*JCheckBox = null,
    captureMotionAnalysisJCheckBox: ?*JCheckBox = null,
    deleteProfileJButton: ?*JButton = null,
    genericJTabbedPane: ?*JTabbedPane = null,
    genericProfilesJList: ?*JList = null,
    genericProfilesJPanel: ?*JPanel = null,
    genericProfilesJScrollPane: ?*JScrollPane = null,
    jLabel1: ?*JLabel = null,
    jLabel2: ?*JLabel = null,
    jLabel3: ?*JLabel = null,
    jPanel1: ?*JPanel = null,
    newProfileJButton: ?*JButton = null,
    newProfileJDialog: ?*JDialog = null,
    newProfileNameJLabel: ?*JLabel = null,
    newProfileNameJTextField: ?*JTextField = null,
    okNewProfileJButton: ?*JButton = null,
    savedCaptureJRadioButton: ?*JRadioButton = null,
    screenCaptureJRadioButton: ?*JRadioButton = null,
    // Implements GenericModuleConfigurationInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.stringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.genericProfiles = null;
        this.selectedGenericProfile = null;
        this.blankGenericProfileActionsJPanel = null;
        this.buttonGroup2 = null;
        this.captureComparisonJCheckBox = null;
        this.captureMotionAnalysisJCheckBox = null;
        this.deleteProfileJButton = null;
        this.genericJTabbedPane = null;
        this.genericProfilesJList = null;
        this.genericProfilesJPanel = null;
        this.genericProfilesJScrollPane = null;
        this.jLabel1 = null;
        this.jLabel2 = null;
        this.jLabel3 = null;
        this.jPanel1 = null;
        this.newProfileJButton = null;
        this.newProfileJDialog = null;
        this.newProfileNameJLabel = null;
        this.newProfileNameJTextField = null;
        this.okNewProfileJButton = null;
        this.savedCaptureJRadioButton = null;
        this.screenCaptureJRadioButton = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = JPanel.create().*;
        this.initFields();
        _ = this.initComponents();
        _ = Inheritance.call(this, "setGenericProfiles", .{ Inheritance.callStatic(GenericProfiles, "create1", .{ GenericProfiles.DEFAULT_FILE }) });
        _ = this.selectFirstElement();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initComponents(self: *Self) void {
        self.newProfileJDialog = JDialog.create();
        self.okNewProfileJButton = JButton.create();
        self.newProfileNameJLabel = JLabel.create();
        self.newProfileNameJTextField = JTextField.create();
        self.buttonGroup2 = ButtonGroup.create();
        self.genericJTabbedPane = JTabbedPane.create();
        self.genericProfilesJPanel = JPanel.create();
        self.genericProfilesJScrollPane = JScrollPane.create();
        self.genericProfilesJList = JList.create();
        self.newProfileJButton = JButton.create();
        self.deleteProfileJButton = JButton.create();
        self.jPanel1 = JPanel.create();
        self.screenCaptureJRadioButton = JRadioButton.create();
        self.jLabel1 = JLabel.create();
        self.jLabel2 = JLabel.create();
        self.savedCaptureJRadioButton = JRadioButton.create();
        self.captureMotionAnalysisJCheckBox = JCheckBox.create();
        self.captureComparisonJCheckBox = JCheckBox.create();
        self.jLabel3 = JLabel.create();
        self.blankGenericProfileActionsJPanel = JPanel.create();
        _ = Inheritance.call(self.newProfileJDialog.?, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 250, 150 }) });
        _ = Inheritance.call(self.newProfileJDialog.?, "setResizable", .{ false });
        _ = Inheritance.call(self.okNewProfileJButton.?, "setText", .{ String.literal("Ok") });
        _ = Inheritance.call(self.okNewProfileJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "okNewProfileJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.newProfileNameJLabel.?, "setText", .{ String.literal("New Profile Name") });
        const newProfileJDialogLayout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.newProfileJDialog.?.getContentPane() });
        _ = Inheritance.call(self.newProfileJDialog.?.getContentPane().?, "setLayout", .{ newProfileJDialogLayout });
        _ = Inheritance.call(newProfileJDialogLayout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(newProfileJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(newProfileJDialogLayout.?.createSequentialGroup().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(newProfileJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(newProfileJDialogLayout.?.createSequentialGroup().?, "addGap", .{ 80, 80, 80 }).?, "addComponent", .{ self.newProfileNameJLabel }) }).?, "addGroup", .{ Inheritance.call(Inheritance.call(newProfileJDialogLayout.?.createSequentialGroup().?, "addGap", .{ 30, 30, 30 }).?, "addComponent", .{ self.newProfileNameJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 180, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addGroup", .{ Inheritance.call(Inheritance.call(newProfileJDialogLayout.?.createSequentialGroup().?, "addGap", .{ 100, 100, 100 }).?, "addComponent", .{ self.okNewProfileJButton }) }) }).?, "addContainerGap", .{ 35, @as(i16, std.math.maxInt(i16)) }) }) });
        _ = Inheritance.call(newProfileJDialogLayout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(newProfileJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(newProfileJDialogLayout.?.createSequentialGroup().?, "addGap", .{ 10, 10, 10 }).?, "addComponent", .{ self.newProfileNameJLabel }).?, "addGap", .{ 16, 16, 16 }).?, "addComponent", .{ self.newProfileNameJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addGap", .{ 20, 20, 20 }).?, "addComponent", .{ self.okNewProfileJButton }) }) });
        _ = Inheritance.call(self, "setLayout", .{ Inheritance.callStatic(GridLayout, "create2", .{ 1, 0 }) });
        _ = Inheritance.call(self, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 400, 300 }) });
        _ = Inheritance.call(self, "setPreferredSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 700, 700 }) });
        _ = Inheritance.call(self.genericJTabbedPane.?, "setToolTipText", .{ self.stringUtil.?.EMPTY_STRING });
        _ = Inheritance.call(self.genericJTabbedPane.?, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 800, 600 }) });
        _ = Inheritance.call(self.genericProfilesJPanel.?, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 400, 300 }) });
        _ = Inheritance.call(self.genericProfilesJPanel.?, "setPreferredSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 0, 0 }) });
        _ = Inheritance.call(self.genericProfilesJList.?, "addListSelectionListener", .{ ListSelectionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn valueChanged(self: *Self, evt: ?*ListSelectionEvent) void {
//                 _ = Inheritance.call(self, "genericProfilesJListValueChanged", .{ evt });
//             }
 });
        _ = Inheritance.call(self.genericProfilesJScrollPane.?, "setViewportView", .{ self.genericProfilesJList });
        _ = Inheritance.call(self.newProfileJButton.?, "setText", .{ String.literal("New") });
        _ = Inheritance.call(self.newProfileJButton.?, "setToolTipText", .{ String.literal("Creates a new profile") });
        _ = Inheritance.call(self.newProfileJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "newProfileJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.deleteProfileJButton.?, "setText", .{ String.literal("Delete") });
        _ = Inheritance.call(self.deleteProfileJButton.?, "setToolTipText", .{ String.literal("Deletes the selected profile") });
        _ = Inheritance.call(self.deleteProfileJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "deleteProfileJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jPanel1.?, "setPreferredSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 1000, 100 }) });
        _ = Inheritance.call(self.screenCaptureJRadioButton.?, "setText", .{ String.literal("Screen Captures") });
        _ = Inheritance.call(self.screenCaptureJRadioButton.?, "setToolTipText", .{ String.literal("Records the screen into memory for logical processing") });
        _ = Inheritance.call(self.screenCaptureJRadioButton.?, "setBorder", .{ Inheritance.call(javax.swing.?.BorderFactory.?, "createEmptyBorder", .{ 0, 0, 0, 0 }) });
        _ = Inheritance.call(self.screenCaptureJRadioButton.?, "setMargin", .{ Inheritance.callStatic(Insets, "create4", .{ 0, 0, 0, 0 }) });
        _ = Inheritance.call(self.screenCaptureJRadioButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "screenCaptureJRadioButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jLabel1.?, "setText", .{ String.literal("Profile Options") });
        _ = Inheritance.call(self.jLabel2.?, "setText", .{ String.literal("Process From:") });
        _ = Inheritance.call(self.savedCaptureJRadioButton.?, "setText", .{ String.literal("Saved Images") });
        _ = Inheritance.call(self.savedCaptureJRadioButton.?, "setToolTipText", .{ String.literal("Loads images from files for logical processing.  Usually for debugging your profile actions") });
        _ = Inheritance.call(self.savedCaptureJRadioButton.?, "setBorder", .{ Inheritance.call(javax.swing.?.BorderFactory.?, "createEmptyBorder", .{ 0, 0, 0, 0 }) });
        _ = Inheritance.call(self.savedCaptureJRadioButton.?, "setMargin", .{ Inheritance.callStatic(Insets, "create4", .{ 0, 0, 0, 0 }) });
        _ = Inheritance.call(self.savedCaptureJRadioButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "savedCaptureJRadioButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.captureMotionAnalysisJCheckBox.?, "setText", .{ String.literal("Motion Analysis") });
        _ = Inheritance.call(self.captureMotionAnalysisJCheckBox.?, "setToolTipText", .{ String.literal("Uses image comparison and contraints to locate moving objects") });
        _ = Inheritance.call(self.captureMotionAnalysisJCheckBox.?, "setBorder", .{ Inheritance.call(javax.swing.?.BorderFactory.?, "createEmptyBorder", .{ 0, 0, 0, 0 }) });
        _ = Inheritance.call(self.captureMotionAnalysisJCheckBox.?, "setMargin", .{ Inheritance.callStatic(Insets, "create4", .{ 0, 0, 0, 0 }) });
        _ = Inheritance.call(self.captureMotionAnalysisJCheckBox.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "captureMotionAnalysisJCheckBoxActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.captureComparisonJCheckBox.?, "setText", .{ String.literal("Comparison") });
        _ = Inheritance.call(self.captureComparisonJCheckBox.?, "setToolTipText", .{ String.literal("Compares the last two input images for multi image logic") });
        _ = Inheritance.call(self.captureComparisonJCheckBox.?, "setBorder", .{ Inheritance.call(javax.swing.?.BorderFactory.?, "createEmptyBorder", .{ 0, 0, 0, 0 }) });
        _ = Inheritance.call(self.captureComparisonJCheckBox.?, "setMargin", .{ Inheritance.callStatic(Insets, "create4", .{ 0, 0, 0, 0 }) });
        _ = Inheritance.call(self.captureComparisonJCheckBox.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "captureComparisonJCheckBoxActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jLabel3.?, "setText", .{ String.literal("Image Processing:") });
        _ = Inheritance.call(self.jLabel3.?, "setToolTipText", .{ String.literal("Turns on/off various extended image processing") });
        const jPanel1Layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.jPanel1 });
        _ = Inheritance.call(self.jPanel1.?, "setLayout", .{ jPanel1Layout });
        _ = Inheritance.call(jPanel1Layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(jPanel1Layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(jPanel1Layout.?.createSequentialGroup().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(jPanel1Layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addComponent", .{ self.screenCaptureJRadioButton }).?, "addComponent", .{ self.jLabel1 }).?, "addComponent", .{ self.jLabel2 }).?, "addComponent", .{ self.savedCaptureJRadioButton }).?, "addComponent", .{ self.captureMotionAnalysisJCheckBox }).?, "addComponent", .{ self.captureComparisonJCheckBox }).?, "addComponent", .{ self.jLabel3 }) }).?, "addContainerGap", .{ 22, @as(i16, std.math.maxInt(i16)) }) }) });
        _ = Inheritance.call(jPanel1Layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(jPanel1Layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(jPanel1Layout.?.createSequentialGroup().?, "addComponent", .{ self.jLabel1 }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.jLabel2 }).?, "addGap", .{ 7, 7, 7 }).?, "addComponent", .{ self.screenCaptureJRadioButton }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.savedCaptureJRadioButton }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.jLabel3 }).?, "addGap", .{ 7, 7, 7 }).?, "addComponent", .{ self.captureComparisonJCheckBox }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.captureMotionAnalysisJCheckBox }).?, "addContainerGap", .{ 106, @as(i16, std.math.maxInt(i16)) }) }) });
        const genericProfilesJPanelLayout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.genericProfilesJPanel });
        _ = Inheritance.call(self.genericProfilesJPanel.?, "setLayout", .{ genericProfilesJPanelLayout });
        _ = Inheritance.call(genericProfilesJPanelLayout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(genericProfilesJPanelLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.receiverOf(Inheritance.call(genericProfilesJPanelLayout.?.createSequentialGroup().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(genericProfilesJPanelLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(genericProfilesJPanelLayout.?.createSequentialGroup().?, "addComponent", .{ self.newProfileJButton }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.deleteProfileJButton }) }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(genericProfilesJPanelLayout.?.createSequentialGroup().?, "addComponent", .{ self.genericProfilesJScrollPane, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.jPanel1, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 119, @as(i16, std.math.maxInt(i16)) }) }) }).?, "addContainerGap").addContainerGap() }) });
        _ = Inheritance.call(genericProfilesJPanelLayout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(genericProfilesJPanelLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(genericProfilesJPanelLayout.?.createSequentialGroup().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(genericProfilesJPanelLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.newProfileJButton }).?, "addComponent", .{ self.deleteProfileJButton }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(genericProfilesJPanelLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addComponent", .{ self.jPanel1, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 246, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.genericProfilesJScrollPane, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 246, @as(i16, std.math.maxInt(i16)) }) }) }) });
        _ = Inheritance.call(self.genericJTabbedPane.?, "addTab", .{ String.literal("Profiles"), self.genericProfilesJPanel });
        const blankGenericProfileActionsJPanelLayout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.blankGenericProfileActionsJPanel });
        _ = Inheritance.call(self.blankGenericProfileActionsJPanel.?, "setLayout", .{ blankGenericProfileActionsJPanelLayout });
        _ = Inheritance.call(blankGenericProfileActionsJPanelLayout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(blankGenericProfileActionsJPanelLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGap", .{ 0, 395, @as(i16, std.math.maxInt(i16)) }) });
        _ = Inheritance.call(blankGenericProfileActionsJPanelLayout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(blankGenericProfileActionsJPanelLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGap", .{ 0, 275, @as(i16, std.math.maxInt(i16)) }) });
        _ = Inheritance.call(self.genericJTabbedPane.?, "addTab", .{ String.literal("Actions"), self.blankGenericProfileActionsJPanel });
        _ = Inheritance.call(self, "add", .{ self.genericJTabbedPane });
    }
    

    pub fn savedCaptureJRadioButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            if (self.savedCaptureJRadioButton.?.isSelected()) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Selected"), self, String.literal("savedCaptureJRadioButtonActionPerformed") });
                _ = Inheritance.call(self.getSelectedGenericProfile().?, "add", .{ GenericProfileDataWorkerType.SAVED_CAPTURE });
                _ = Inheritance.call(self.getSelectedGenericProfile().?, "remove", .{ GenericProfileDataWorkerType.SCREEN_CAPTURE });
                _ = Inheritance.call(self.screenCaptureJRadioButton.?, "setSelected", .{ false });
                _ = Inheritance.receiverOf(self.getGenericProfiles().?, "save").save();
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("savedCaptureJRadioButtonActionPerformed"), e });
    }
    

    pub fn screenCaptureJRadioButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            if (self.screenCaptureJRadioButton.?.isSelected()) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Selected"), self, String.literal("screenCaptureJRadioButtonActionPerformed") });
                _ = Inheritance.call(self.getSelectedGenericProfile().?, "add", .{ GenericProfileDataWorkerType.SCREEN_CAPTURE });
                _ = Inheritance.call(self.getSelectedGenericProfile().?, "remove", .{ GenericProfileDataWorkerType.SAVED_CAPTURE });
                _ = Inheritance.call(self.savedCaptureJRadioButton.?, "setSelected", .{ false });
                _ = Inheritance.receiverOf(self.getGenericProfiles().?, "save").save();
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("screenCaptureJRadioButtonActionPerformed"), e });
    }
    

    pub fn captureMotionAnalysisJCheckBoxActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            if (self.captureMotionAnalysisJCheckBox.?.isSelected()) {
                _ = Inheritance.call(self.getSelectedGenericProfile().?, "add", .{ GenericProfileDataWorkerType.MOTION });
            } else {
                _ = Inheritance.call(self.getSelectedGenericProfile().?, "remove", .{ GenericProfileDataWorkerType.MOTION });
            }
            _ = Inheritance.receiverOf(self.getGenericProfiles().?, "save").save();
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("captureComparisonJCheckBoxActionPerformed"), e });
    }
    

    pub fn captureComparisonJCheckBoxActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            if (self.captureComparisonJCheckBox.?.isSelected()) {
                _ = Inheritance.call(self.getSelectedGenericProfile().?, "add", .{ GenericProfileDataWorkerType.COMPARISON });
            } else {
                _ = Inheritance.call(self.getSelectedGenericProfile().?, "remove", .{ GenericProfileDataWorkerType.COMPARISON });
            }
            _ = Inheritance.receiverOf(self.getGenericProfiles().?, "save").save();
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("captureComparisonJCheckBoxActionPerformed"), e });
    }
    

    // throws Exception
    pub fn updateProfileUI(self: *Self, profileNameString: ?*String) void {
        _ = Inheritance.receiverOf(self.getBlankGenericProfileActionsJPanel().?, "removeAll").removeAll();
        if (profileNameString != null) {
            const genericProfileActionsJPanel: ?*GenericProfileActionsJPanel = GenericProfileActionsJPanel.create();
            _ = Inheritance.call(self, "setSelectedGenericProfile", .{ Inheritance.call(self.getGenericProfiles().?, "get", .{ profileNameString }) });
            _ = Inheritance.call(self.getSelectedGenericProfile().?, "setGenericProfileActions", .{ Inheritance.callStatic(GenericProfileActions, "create2", .{ genericProfileActionsJPanel, profileNameString }) });
            _ = Inheritance.call(genericProfileActionsJPanel.?, "setGenericProfileActions", .{ Inheritance.receiverOf(self.getSelectedGenericProfile().?, "getGenericProfileActions").getGenericProfileActions() });
            _ = Inheritance.receiver(genericProfileActionsJPanel.?, "selectFirstElement").selectFirstElement();
            const layout: ?*GroupLayout = Inheritance.cast(?*GroupLayout, Inheritance.receiverOf(self.getBlankGenericProfileActionsJPanel().?, "getLayout").getLayout());
            _ = Inheritance.call(layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGap", .{ 0, 395, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ genericProfileActionsJPanel, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) });
            _ = Inheritance.call(layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGap", .{ 0, 256, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ genericProfileActionsJPanel, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) });
            _ = self.updateProfileOptions();
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Setting Configuration Profile JPanel"), self, String.literal("updateProfileUI") });
        } else {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Null Configuration Profile"), self, String.literal("updateProfileUI") });
        }
    }
    

    // throws Exception
    pub fn selectFirstElement(self: *Self) void {
        _ = Inheritance.call(self.genericProfilesJList.?, "setModel", .{ Inheritance.receiverOf(Inheritance.receiverOf(self.getGenericProfiles().?, "getDefaultListModelHelper").getDefaultListModelHelper().?, "getListModel").getListModel() });
        if (Inheritance.receiverOf(self.genericProfilesJList.?.getModel().?, "getSize").getSize() > 0) {
            _ = Inheritance.call(self.genericProfilesJList.?, "setSelectedValue", .{ Inheritance.call(self.genericProfilesJList.?.getModel().?, "getElementAt", .{ 0 }), true });
            _ = Inheritance.call(self, "updateProfileUI", .{ Inheritance.cast(?*String, Inheritance.call(self.genericProfilesJList.?.getModel().?, "getElementAt", .{ 0 })) });
        }
    }
    

    // throws Exception
    pub fn updateProfileOptions(self: *Self) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("updateProfileOptions") });
        const genericProfile: ?*GenericProfile = Inheritance.upcast(?*GenericProfile, self.getSelectedGenericProfile());
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, genericProfile.?.getGenericProfileDataWorkerTypeVector());
        _ = Inheritance.call(self.screenCaptureJRadioButton.?, "setSelected", .{ false });
        _ = Inheritance.call(self.savedCaptureJRadioButton.?, "setSelected", .{ false });
        _ = Inheritance.call(self.captureComparisonJCheckBox.?, "setSelected", .{ false });
        _ = Inheritance.call(self.captureMotionAnalysisJCheckBox.?, "setSelected", .{ false });
        const size: i32 = vector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const genericProfileDataWorkerType: ?*GenericProfileDataWorkerType = Inheritance.cast(?*GenericProfileDataWorkerType, Inheritance.call(vector.?, "get", .{ index }));
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(genericProfile.?.getName(), String.literal(" has GenericProfileDataWorkerType: ")), Object.toString(Object.of(genericProfileDataWorkerType))), self, String.literal("updateProfileOptions") });
            if (Object.same(genericProfileDataWorkerType, GenericProfileDataWorkerType.SCREEN_CAPTURE)) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Screen Capture Selected"), self, String.literal("updateProfileOptions") });
                _ = Inheritance.call(self.screenCaptureJRadioButton.?, "setSelected", .{ true });
            } else if (Object.same(genericProfileDataWorkerType, GenericProfileDataWorkerType.SAVED_CAPTURE)) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Saved Capture Selected"), self, String.literal("updateProfileOptions") });
                _ = Inheritance.call(self.savedCaptureJRadioButton.?, "setSelected", .{ true });
            } else if (Object.same(genericProfileDataWorkerType, GenericProfileDataWorkerType.COMPARISON)) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Checking Comparison Box"), self, String.literal("updateProfileOptions") });
                _ = Inheritance.call(self.captureComparisonJCheckBox.?, "setSelected", .{ true });
            } else if (Object.same(genericProfileDataWorkerType, GenericProfileDataWorkerType.MOTION)) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Checking Motion Box"), self, String.literal("updateProfileOptions") });
                _ = Inheritance.call(self.captureMotionAnalysisJCheckBox.?, "setSelected", .{ true });
            }
            }
        }
        if (!self.screenCaptureJRadioButton.?.isSelected() and !self.savedCaptureJRadioButton.?.isSelected()) {
            _ = Inheritance.call(self.screenCaptureJRadioButton.?, "setSelected", .{ true });
            _ = Inheritance.call(self.getSelectedGenericProfile().?, "add", .{ GenericProfileDataWorkerType.SCREEN_CAPTURE });
        }
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.END, self, String.literal("updateProfileOptions") });
    }
    

    pub fn getBlankGenericProfileActionsJPanel(self: *Self) ?*JPanel {
        return self.blankGenericProfileActionsJPanel;
    }
    

    pub fn setBlankGenericProfileActionsJPanel(self: *Self, blankGenericProfileActionsJPanel: ?*JPanel) void {
        self.blankGenericProfileActionsJPanel = blankGenericProfileActionsJPanel;
    }
    

    pub fn getGenericProfiles(self: *Self) ?*GenericProfiles {
        return self.genericProfiles;
    }
    

    pub fn setGenericProfiles(self: *Self, genericProfiles: ?*GenericProfiles) void {
        self.genericProfiles = genericProfiles;
    }
    

    pub fn getSelectedGenericProfile(self: *Self) ?*GenericProfile {
        return self.selectedGenericProfile;
    }
    

    pub fn setSelectedGenericProfile(self: *Self, selectedGenericProfile: ?*GenericProfile) void {
        self.selectedGenericProfile = selectedGenericProfile;
    }
    

    pub fn genericProfilesJListValueChanged(self: *Self, evt: ?*ListSelectionEvent) void {
        _ = evt;
        { // try
            const profileNameString: ?*String = Inheritance.cast(?*String, self.genericProfilesJList.?.getSelectedValue());
            _ = Inheritance.call(self, "updateProfileUI", .{ profileNameString });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("genericProfilesJListValueChanged"), e });
    }
    

    pub fn deleteProfileJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            const anyType: []?Object = self.genericProfilesJList.?.getSelectedValues();
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(anyType.len))) : (index += 1) {
                const nextSelectedValueString: ?*String = Inheritance.cast(?*String, anyType[@intCast(index)]);
                _ = Inheritance.call(self.getGenericProfiles().?, "remove", .{ nextSelectedValueString });
                }
            }
            _ = self.selectFirstElement();
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("deleteProfileJButtonActionPerformed"), e });
    }
    

    pub fn okNewProfileJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            const newProfileName: ?*String = Inheritance.upcast(?*String, self.newProfileNameJTextField.?.getText());
            _ = Inheritance.call(self.getGenericProfiles().?, "add", .{ newProfileName });
            _ = Inheritance.call(self.genericProfilesJList.?, "setModel", .{ Inheritance.receiverOf(Inheritance.receiverOf(self.getGenericProfiles().?, "getDefaultListModelHelper").getDefaultListModelHelper().?, "getListModel").getListModel() });
            _ = Inheritance.call(self.genericProfilesJList.?, "setSelectedValue", .{ newProfileName, true });
            _ = Inheritance.call(self.newProfileJDialog.?, "setVisible", .{ false });
            _ = Inheritance.call(self, "updateProfileUI", .{ newProfileName });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("okNewProfileJButtonActionPerformed"), e });
    }
    

    pub fn newProfileJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = Inheritance.call(self.newProfileJDialog.?, "setVisible", .{ true });
    }
};

