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
// package org.allbinary.input.automation.module.actions.script.condition.processors.output

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const InputImageType = @import("org/allbinary/input/media/image/InputImageType.zig").InputImageType;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ImageActionScriptOutputInterface = @import("org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutputInterface.zig").ImageActionScriptOutputInterface;
const ImageTypes = @import("org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageTypes.zig").ImageTypes;
const Short = @import("java/lang/Short.zig").Short;

pub const ImageActionScriptOutputJPanel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel";
    base: JPanel = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    capturedImageActionScriptOutputInterface: ?*ImageActionScriptOutputInterface = null,
    capturedImageActionJButton: ?*JButton = null,
    capturedImageActionJDialog: ?*JDialog = null,
    displayJCheckBox: ?*JCheckBox = null,
    itemTypesJList: ?*JList = null,
    jLabel1: ?*JLabel = null,
    jScrollPane1: ?*JScrollPane = null,
    okJButton: ?*JButton = null,
    saveJCheckBox: ?*JCheckBox = null,
    titleJLabel: ?*JLabel = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        this.capturedImageActionJButton = null;
        this.capturedImageActionJDialog = null;
        this.displayJCheckBox = null;
        this.itemTypesJList = null;
        this.jLabel1 = null;
        this.jScrollPane1 = null;
        this.okJButton = null;
        this.saveJCheckBox = null;
        this.titleJLabel = null;
    }
    

    pub fn create1(capturedImageActionScriptOutputInterface: ?*ImageActionScriptOutputInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = JPanel.create().*;
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.START, this, this.commonStrings.?.CONSTRUCTOR });
        _ = this.initComponents();
        this.capturedImageActionScriptOutputInterface = capturedImageActionScriptOutputInterface;
        _ = this.set();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn set(self: *Self) void {
        _ = self.setImageTypeJlistModel();
        const imageTypes: ?*ImageTypes = Inheritance.upcast(?*ImageTypes, Inheritance.receiver(self.capturedImageActionScriptOutputInterface.?, "getImageTypes").getImageTypes());
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, imageTypes.?.getVector());
        const selectedArray: []i32 = array_N66239: { const array_N66239_array = allocator.alloc(i32, @intCast(vector.?.size())) catch unreachable; @memset(array_N66239_array, 0); break :array_N66239 array_N66239_array; };
        const size: i32 = vector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const imageType: ?*InputImageType = Inheritance.cast(?*InputImageType, Inheritance.call(vector.?, "get", .{ index }));
            selectedArray[@intCast(value_N66417: { const value_N66417_value = index; index += 1; break :value_N66417 value_N66417_value; })] = imageType.?.getIndex();
            }
        }
        _ = Inheritance.call(self.itemTypesJList.?, "setSelectedIndices", .{ selectedArray });
        if (Inheritance.receiver(self.capturedImageActionScriptOutputInterface.?, "isSaved").isSaved()) {
            _ = Inheritance.call(self.saveJCheckBox.?, "setSelected", .{ true });
        }
        if (Inheritance.receiver(self.capturedImageActionScriptOutputInterface.?, "isSaved").isSaved()) {
            _ = Inheritance.call(self.displayJCheckBox.?, "setSelected", .{ true });
        }
        _ = Inheritance.receiver(self.capturedImageActionScriptOutputInterface.?, "log").log();
    }
    

    pub fn update(self: *Self) void {
        const anyType: []?Object = self.itemTypesJList.?.getSelectedValues();
        const imageTypes: ?*ImageTypes = Inheritance.upcast(?*ImageTypes, Inheritance.callStatic(ImageTypes, "valueOf", .{ anyType }));
        _ = Inheritance.call(self.capturedImageActionScriptOutputInterface.?, "setImageTypes", .{ imageTypes });
        if (self.saveJCheckBox.?.isSelected()) {
            _ = Inheritance.call(self.capturedImageActionScriptOutputInterface.?, "setSaved", .{ true });
        } else {
            _ = Inheritance.call(self.capturedImageActionScriptOutputInterface.?, "setSaved", .{ false });
        }
        if (self.displayJCheckBox.?.isSelected()) {
            _ = Inheritance.call(self.capturedImageActionScriptOutputInterface.?, "setDisplay", .{ true });
        } else {
            _ = Inheritance.call(self.capturedImageActionScriptOutputInterface.?, "setDisplay", .{ false });
        }
        _ = Inheritance.receiver(self.capturedImageActionScriptOutputInterface.?, "log").log();
    }
    

    pub fn setImageTypeJlistModel(self: *Self) void {
        const defaultListModel: ?*DefaultListModel = DefaultListModel.create();
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, InputImageType.getAllAsVector());
        const size: i32 = vector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const imageType: ?*InputImageType = Inheritance.cast(?*InputImageType, Inheritance.call(vector.?, "get", .{ index }));
            _ = Inheritance.call(defaultListModel.?, "addElement", .{ imageType.?.getName() });
            }
        }
        _ = Inheritance.call(self.itemTypesJList.?, "setModel", .{ defaultListModel });
    }
    

    pub fn getCapturedImageActionJDialog(self: *Self) ?*JDialog {
        return self.capturedImageActionJDialog;
    }
    

    pub fn setCapturedImageActionJDialog(self: *Self, capturedImageActionJDialog: ?*JDialog) void {
        self.capturedImageActionJDialog = capturedImageActionJDialog;
    }
    

    pub fn initComponents(self: *Self) void {
        self.capturedImageActionJDialog = JDialog.create();
        self.titleJLabel = JLabel.create();
        self.okJButton = JButton.create();
        self.saveJCheckBox = JCheckBox.create();
        self.displayJCheckBox = JCheckBox.create();
        self.jScrollPane1 = JScrollPane.create();
        self.itemTypesJList = JList.create();
        self.capturedImageActionJButton = JButton.create();
        self.jLabel1 = JLabel.create();
        _ = Inheritance.call(self.capturedImageActionJDialog.?, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 250, 250 }) });
        _ = Inheritance.call(self.titleJLabel.?, "setText", .{ String.literal("Image Output Options") });
        _ = Inheritance.call(self.okJButton.?, "setText", .{ String.literal("OK") });
        _ = Inheritance.call(self.okJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "okJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.saveJCheckBox.?, "setText", .{ String.literal("Save To File") });
        _ = Inheritance.call(self.saveJCheckBox.?, "setBorder", .{ Inheritance.call(javax.swing.?.BorderFactory.?, "createEmptyBorder", .{ 0, 0, 0, 0 }) });
        _ = Inheritance.call(self.saveJCheckBox.?, "setMargin", .{ Inheritance.callStatic(Insets, "create4", .{ 0, 0, 0, 0 }) });
        _ = Inheritance.call(self.displayJCheckBox.?, "setText", .{ String.literal("Display") });
        _ = Inheritance.call(self.displayJCheckBox.?, "setBorder", .{ Inheritance.call(javax.swing.?.BorderFactory.?, "createEmptyBorder", .{ 0, 0, 0, 0 }) });
        _ = Inheritance.call(self.displayJCheckBox.?, "setMargin", .{ Inheritance.callStatic(Insets, "create4", .{ 0, 0, 0, 0 }) });
        _ = Inheritance.call(self.displayJCheckBox.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "displayJCheckBoxActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.itemTypesJList.?, "setModel", .{ AbstractListModel.create() // Java anonymous class body: implement it as a named type
//             this.strings = @constCast(&[_]?*String{ String.literal("Item 1"), String.literal("Item 2"), String.literal("Item 3"), String.literal("Item 4"), String.literal("Item 5") })[0..];
//             
// 
//             pub fn getSize(self: *Self) i32 {
//                 _ = self;
//                 return @as(i32, @intCast(strings.len));
//             }
//             
// 
//             pub fn getElementAt(self: *Self, i: i32) ?Object {
//                 _ = self;
//                 return strings[@intCast(i)];
//             }
 });
        _ = Inheritance.call(self.jScrollPane1.?, "setViewportView", .{ self.itemTypesJList });
        const capturedImageActionJDialogLayout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.capturedImageActionJDialog.?.getContentPane() });
        _ = Inheritance.call(self.capturedImageActionJDialog.?.getContentPane().?, "setLayout", .{ capturedImageActionJDialogLayout });
        _ = Inheritance.call(capturedImageActionJDialogLayout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(capturedImageActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.receiverOf(Inheritance.call(capturedImageActionJDialogLayout.?.createSequentialGroup().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(capturedImageActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(capturedImageActionJDialogLayout.?.createSequentialGroup().?, "addGap", .{ 61, 61, 61 }).?, "addComponent", .{ self.titleJLabel }) }).?, "addGroup", .{ Inheritance.call(Inheritance.receiverOf(capturedImageActionJDialogLayout.?.createSequentialGroup().?, "addContainerGap").addContainerGap().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(capturedImageActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(capturedImageActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addComponent", .{ self.displayJCheckBox }).?, "addComponent", .{ self.saveJCheckBox, javax.swing.?.GroupLayout.?.Alignment.?.TRAILING }) }).?, "addGroup", .{ Inheritance.call(Inheritance.call(capturedImageActionJDialogLayout.?.createSequentialGroup().?, "addGap", .{ 84, 84, 84 }).?, "addComponent", .{ self.okJButton }) }) }) }).?, "addGroup", .{ Inheritance.call(Inheritance.receiverOf(capturedImageActionJDialogLayout.?.createSequentialGroup().?, "addContainerGap").addContainerGap().?, "addComponent", .{ self.jScrollPane1, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 216, @as(i16, std.math.maxInt(i16)) }) }) }).?, "addContainerGap").addContainerGap() }) });
        _ = Inheritance.call(capturedImageActionJDialogLayout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(capturedImageActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.receiverOf(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(capturedImageActionJDialogLayout.?.createSequentialGroup().?, "addComponent", .{ self.titleJLabel }).?, "addGap", .{ 5, 5, 5 }).?, "addComponent", .{ self.jScrollPane1, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 105, @as(i16, std.math.maxInt(i16)) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.saveJCheckBox }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.displayJCheckBox }).?, "addGap", .{ 9, 9, 9 }).?, "addComponent", .{ self.okJButton }).?, "addContainerGap").addContainerGap() }) });
        _ = Inheritance.call(self, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 100, 0 }) });
        _ = Inheritance.call(self.capturedImageActionJButton.?, "setText", .{ String.literal("Edit") });
        _ = Inheritance.call(self.capturedImageActionJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "capturedImageActionJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jLabel1.?, "setText", .{ String.literal("Capture Image:") });
        const layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self });
        _ = Inheritance.call(self, "setLayout", .{ layout });
        _ = Inheritance.call(layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "addComponent", .{ self.jLabel1 }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.capturedImageActionJButton }) }) });
        _ = Inheritance.call(layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.jLabel1 }).?, "addComponent", .{ self.capturedImageActionJButton }) }) });
    }
    

    pub fn displayJCheckBoxActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self;
    }
    

    pub fn okJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self.update();
        _ = Inheritance.call(self.getCapturedImageActionJDialog().?, "setVisible", .{ false });
    }
    

    pub fn capturedImageActionJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = Inheritance.call(self.getCapturedImageActionJDialog().?, "setVisible", .{ true });
    }
};

