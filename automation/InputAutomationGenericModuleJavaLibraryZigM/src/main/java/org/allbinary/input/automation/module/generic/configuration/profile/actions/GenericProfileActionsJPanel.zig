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
const DefaultListModelHelper = @import("org/allbinary/input/automation/module/DefaultListModelHelper.zig").DefaultListModelHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const GenericProfileAction = @import("org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileAction.zig").GenericProfileAction;
const GenericProfileActionJPanel = @import("org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionJPanel.zig").GenericProfileActionJPanel;
const GenericProfileActions = @import("org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActions.zig").GenericProfileActions;
const Short = @import("java/lang/Short.zig").Short;

pub const GenericProfileActionsJPanel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.generic.configuration.profile.actions.GenericProfileActionsJPanel";
    base: JPanel = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    genericProfileActions: ?*GenericProfileActions = null,
    genericProfileActionJPanel: ?*GenericProfileActionJPanel = null,
    blankGenericProfileActionJPanel: ?*JPanel = null,
    deleteActionJButton: ?*JButton = null,
    genericProfileActionsJList: ?*JList = null,
    genericProfileActionsJPanel: ?*JPanel = null,
    genericProfileActionsJScrollPane: ?*JScrollPane = null,
    newActionJButton: ?*JButton = null,
    newProfileActionJDialog: ?*JDialog = null,
    newProfileActionJLabel: ?*JLabel = null,
    newProfileActionJTextField: ?*JTextField = null,
    okNewProfileActionJButton: ?*JButton = null,
    saveJButton: ?*JButton = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.genericProfileActions = null;
        this.genericProfileActionJPanel = null;
        this.blankGenericProfileActionJPanel = null;
        this.deleteActionJButton = null;
        this.genericProfileActionsJList = null;
        this.genericProfileActionsJPanel = null;
        this.genericProfileActionsJScrollPane = null;
        this.newActionJButton = null;
        this.newProfileActionJDialog = null;
        this.newProfileActionJLabel = null;
        this.newProfileActionJTextField = null;
        this.okNewProfileActionJButton = null;
        this.saveJButton = null;
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
    

    pub fn initComponents(self: *Self) void {
        self.newProfileActionJDialog = JDialog.create();
        self.newProfileActionJLabel = JLabel.create();
        self.okNewProfileActionJButton = JButton.create();
        self.newProfileActionJTextField = JTextField.create();
        self.genericProfileActionsJPanel = JPanel.create();
        self.genericProfileActionsJScrollPane = JScrollPane.create();
        self.genericProfileActionsJList = JList.create();
        self.newActionJButton = JButton.create();
        self.deleteActionJButton = JButton.create();
        self.saveJButton = JButton.create();
        self.blankGenericProfileActionJPanel = JPanel.create();
        _ = Inheritance.call(self.newProfileActionJDialog.?, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 250, 150 }) });
        _ = Inheritance.call(self.newProfileActionJDialog.?, "setResizable", .{ false });
        _ = Inheritance.call(self.newProfileActionJLabel.?, "setText", .{ String.literal("New Action Name") });
        _ = Inheritance.call(self.okNewProfileActionJButton.?, "setText", .{ String.literal("Ok") });
        _ = Inheritance.call(self.okNewProfileActionJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "okNewProfileActionJButtonActionPerformed", .{ evt });
//             }
 });
        const newProfileActionJDialogLayout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.newProfileActionJDialog.?.getContentPane() });
        _ = Inheritance.call(self.newProfileActionJDialog.?.getContentPane().?, "setLayout", .{ newProfileActionJDialogLayout });
        _ = Inheritance.call(newProfileActionJDialogLayout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(newProfileActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(newProfileActionJDialogLayout.?.createSequentialGroup().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(newProfileActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(newProfileActionJDialogLayout.?.createSequentialGroup().?, "addGap", .{ 93, 93, 93 }).?, "addComponent", .{ self.okNewProfileActionJButton }) }).?, "addGroup", .{ Inheritance.call(Inheritance.call(newProfileActionJDialogLayout.?.createSequentialGroup().?, "addGap", .{ 75, 75, 75 }).?, "addComponent", .{ self.newProfileActionJLabel }) }).?, "addGroup", .{ Inheritance.call(Inheritance.call(newProfileActionJDialogLayout.?.createSequentialGroup().?, "addGap", .{ 29, 29, 29 }).?, "addComponent", .{ self.newProfileActionJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 178, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }) }).?, "addContainerGap", .{ 34, @as(i16, std.math.maxInt(i16)) }) }) });
        _ = Inheritance.call(newProfileActionJDialogLayout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(newProfileActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.TRAILING, Inheritance.receiverOf(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.receiverOf(newProfileActionJDialogLayout.?.createSequentialGroup().?, "addContainerGap").addContainerGap().?, "addComponent", .{ self.newProfileActionJLabel }).?, "addGap", .{ 21, 21, 21 }).?, "addComponent", .{ self.newProfileActionJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED, 20, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.okNewProfileActionJButton }).?, "addContainerGap").addContainerGap() }) });
        _ = Inheritance.call(self.genericProfileActionsJPanel.?, "setPreferredSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 10000, 10000 }) });
        _ = Inheritance.call(self.genericProfileActionsJList.?, "addListSelectionListener", .{ ListSelectionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn valueChanged(self: *Self, evt: ?*ListSelectionEvent) void {
//                 _ = Inheritance.call(self, "genericProfileActionsJListValueChanged", .{ evt });
//             }
 });
        _ = Inheritance.call(self.genericProfileActionsJScrollPane.?, "setViewportView", .{ self.genericProfileActionsJList });
        _ = Inheritance.call(self.newActionJButton.?, "setText", .{ String.literal("New") });
        _ = Inheritance.call(self.newActionJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "newActionJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.deleteActionJButton.?, "setText", .{ String.literal("Delete") });
        _ = Inheritance.call(self.deleteActionJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "deleteActionJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.saveJButton.?, "setText", .{ String.literal("Save") });
        _ = Inheritance.call(self.saveJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "saveJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.blankGenericProfileActionJPanel.?, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 500, 300 }) });
        const blankGenericProfileActionJPanelLayout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.blankGenericProfileActionJPanel });
        _ = Inheritance.call(self.blankGenericProfileActionJPanel.?, "setLayout", .{ blankGenericProfileActionJPanelLayout });
        _ = Inheritance.call(blankGenericProfileActionJPanelLayout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(blankGenericProfileActionJPanelLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGap", .{ 0, 500, @as(i16, std.math.maxInt(i16)) }) });
        _ = Inheritance.call(blankGenericProfileActionJPanelLayout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(blankGenericProfileActionJPanelLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGap", .{ 0, 296, @as(i16, std.math.maxInt(i16)) }) });
        const genericProfileActionsJPanelLayout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.genericProfileActionsJPanel });
        _ = Inheritance.call(self.genericProfileActionsJPanel.?, "setLayout", .{ genericProfileActionsJPanelLayout });
        _ = Inheritance.call(genericProfileActionsJPanelLayout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(genericProfileActionsJPanelLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(genericProfileActionsJPanelLayout.?.createSequentialGroup().?, "addComponent", .{ self.genericProfileActionsJScrollPane, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 95, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.blankGenericProfileActionJPanel, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }) }).?, "addGroup", .{ Inheritance.receiverOf(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(genericProfileActionsJPanelLayout.?.createSequentialGroup().?, "addComponent", .{ self.newActionJButton }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.deleteActionJButton }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.saveJButton }).?, "addContainerGap").addContainerGap() }) });
        _ = Inheritance.call(genericProfileActionsJPanelLayout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(genericProfileActionsJPanelLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(genericProfileActionsJPanelLayout.?.createSequentialGroup().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(genericProfileActionsJPanelLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.newActionJButton }).?, "addComponent", .{ self.deleteActionJButton }).?, "addComponent", .{ self.saveJButton }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(genericProfileActionsJPanelLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING, false }).?, "addComponent", .{ self.blankGenericProfileActionJPanel, 0, 296, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.genericProfileActionsJScrollPane, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 296, @as(i16, std.math.maxInt(i16)) }) }).?, "addContainerGap", .{ javax.swing.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }) }) });
        const layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self });
        _ = Inheritance.call(self, "setLayout", .{ layout });
        _ = Inheritance.call(layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "addComponent", .{ self.genericProfileActionsJPanel, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 596, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addContainerGap", .{ javax.swing.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }) }) });
        _ = Inheritance.call(layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addComponent", .{ self.genericProfileActionsJPanel, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 336, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) });
    }
    

    pub fn setModel(self: *Self) void {
        const defaultListModelHelper: ?*DefaultListModelHelper = Inheritance.upcast(?*DefaultListModelHelper, Inheritance.receiverOf(self.getGenericProfileActions().?, "getDefaultListModelHelper").getDefaultListModelHelper());
        if (Inheritance.receiverOf(defaultListModelHelper.?.getListModel().?, "getSize").getSize() > 0) {
            _ = Inheritance.call(self.genericProfileActionsJList.?, "setModel", .{ defaultListModelHelper.?.getListModel() });
        }
    }
    

    pub fn saveJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            _ = Inheritance.receiverOf(self.getGenericProfileActions().?, "save").save();
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("saveJButtonActionPerformed"), e });
    }
    

    pub fn updateProfileActionUI(self: *Self, profileActionNameString: ?*String) void {
        _ = self.blankGenericProfileActionJPanel.?.removeAll();
        if (profileActionNameString != null) {
            const genericProfileAction: ?*GenericProfileAction = Inheritance.upcast(?*GenericProfileAction, Inheritance.call(self.getGenericProfileActions().?, "getAction", .{ profileActionNameString }));
            _ = Inheritance.call(self, "setGenericProfileActionJPanel", .{ GenericProfileActionJPanel.create() });
            _ = Inheritance.call(self.getGenericProfileActionJPanel().?, "setGenericProfileAction", .{ genericProfileAction });
            _ = Inheritance.receiverOf(self.getGenericProfileActionJPanel().?, "updateProfileActionUI").updateProfileActionUI();
            const layout: ?*GroupLayout = Inheritance.cast(?*GroupLayout, self.blankGenericProfileActionJPanel.?.getLayout());
            _ = Inheritance.call(layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGap", .{ 0, 395, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.getGenericProfileActionJPanel(), javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) });
            _ = Inheritance.call(layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGap", .{ 0, 256, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.getGenericProfileActionJPanel(), javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Setting Configuration Profile Actions JPanel"), self, String.literal("genericProfileActionsJListValueChanged") });
        }
    }
    

    pub fn genericProfileActionsJListValueChanged(self: *Self, evt: ?*ListSelectionEvent) void {
        _ = evt;
        { // try
            const profileActionNameString: ?*String = Inheritance.cast(?*String, self.genericProfileActionsJList.?.getSelectedValue());
            _ = Inheritance.call(self, "updateProfileActionUI", .{ profileActionNameString });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("genericProfileActionsJListValueChanged"), e });
    }
    

    pub fn okNewProfileActionJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            const newActionName: ?*String = Inheritance.upcast(?*String, self.newProfileActionJTextField.?.getText());
            _ = Inheritance.call(self.getGenericProfileActions().?, "add", .{ newActionName });
            _ = self.setModel();
            _ = Inheritance.call(self.genericProfileActionsJList.?, "setSelectedValue", .{ newActionName, true });
            _ = Inheritance.call(self.newProfileActionJDialog.?, "setVisible", .{ false });
            _ = Inheritance.call(self, "updateProfileActionUI", .{ newActionName });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("okNewProfileActionJButtonActionPerformed"), e });
    }
    

    pub fn deleteActionJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            const anyType: []?Object = self.genericProfileActionsJList.?.getSelectedValues();
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(anyType.len))) : (index += 1) {
                const nextSelectedValueString: ?*String = Inheritance.cast(?*String, anyType[@intCast(index)]);
                _ = Inheritance.call(self.getGenericProfileActions().?, "remove", .{ nextSelectedValueString });
                }
            }
            _ = self.selectFirstElement();
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("deleteActionJButtonActionPerformed"), e });
    }
    

    // throws Exception
    pub fn selectFirstElement(self: *Self) void {
        _ = self.setModel();
        if (Inheritance.receiverOf(self.genericProfileActionsJList.?.getModel().?, "getSize").getSize() > 0) {
            _ = Inheritance.call(self.genericProfileActionsJList.?, "setSelectedValue", .{ Inheritance.call(self.genericProfileActionsJList.?.getModel().?, "getElementAt", .{ 0 }), true });
            _ = Inheritance.call(self, "updateProfileActionUI", .{ Inheritance.cast(?*String, Inheritance.call(self.genericProfileActionsJList.?.getModel().?, "getElementAt", .{ 0 })) });
        } else {
            _ = self.blankGenericProfileActionJPanel.?.removeAll();
            _ = self.blankGenericProfileActionJPanel.?.repaint();
        }
    }
    

    pub fn getGenericProfileActionJPanel(self: *Self) ?*GenericProfileActionJPanel {
        return self.genericProfileActionJPanel;
    }
    

    pub fn setGenericProfileActionJPanel(self: *Self, genericProfileActionJPanel: ?*GenericProfileActionJPanel) void {
        self.genericProfileActionJPanel = genericProfileActionJPanel;
    }
    

    pub fn getGenericProfileActions(self: *Self) ?*GenericProfileActions {
        return self.genericProfileActions;
    }
    

    pub fn setGenericProfileActions(self: *Self, genericProfileActions: ?*GenericProfileActions) void {
        self.genericProfileActions = genericProfileActions;
    }
    

    pub fn newActionJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = Inheritance.call(self.newProfileActionJDialog.?, "setVisible", .{ true });
    }
};

