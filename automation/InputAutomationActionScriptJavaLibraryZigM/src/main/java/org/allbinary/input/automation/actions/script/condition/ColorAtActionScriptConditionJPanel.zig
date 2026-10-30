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
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const ColorRangeInterface = @import("org/allbinary/media/image/analysis/ColorRangeInterface.zig").ColorRangeInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ColorAtActionScriptConditionInterface = @import("org/allbinary/input/automation/actions/script/condition/ColorAtActionScriptConditionInterface.zig").ColorAtActionScriptConditionInterface;
const Integer = @import("java/lang/Integer.zig").Integer;
const Short = @import("java/lang/Short.zig").Short;

pub const ColorAtActionScriptConditionJPanel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel";
    base: JPanel = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    colorAtActionScriptConditionInterface: ?*ColorAtActionScriptConditionInterface = null,
    blueJLabel: ?*JLabel = null,
    colorAtActionJButton: ?*JButton = null,
    colorAtActionJDialog: ?*JDialog = null,
    colorAtXJTextField: ?*JTextField = null,
    colorAtYJTextField: ?*JTextField = null,
    colorRangeJLabel: ?*JLabel = null,
    greenJLabel: ?*JLabel = null,
    jLabel1: ?*JLabel = null,
    locationJLabel: ?*JLabel = null,
    maxBlueJTextField: ?*JTextField = null,
    maxGreenJTextField: ?*JTextField = null,
    maxJLabel: ?*JLabel = null,
    maxRedJTextField: ?*JTextField = null,
    minBlueJTextField: ?*JTextField = null,
    minGreenJTextField: ?*JTextField = null,
    minJLabel: ?*JLabel = null,
    minRedJTextField: ?*JTextField = null,
    okJButton: ?*JButton = null,
    redJLabel: ?*JLabel = null,
    titleJLabel: ?*JLabel = null,
    xJLabel: ?*JLabel = null,
    yJLabel: ?*JLabel = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        this.blueJLabel = null;
        this.colorAtActionJButton = null;
        this.colorAtActionJDialog = null;
        this.colorAtXJTextField = null;
        this.colorAtYJTextField = null;
        this.colorRangeJLabel = null;
        this.greenJLabel = null;
        this.jLabel1 = null;
        this.locationJLabel = null;
        this.maxBlueJTextField = null;
        this.maxGreenJTextField = null;
        this.maxJLabel = null;
        this.maxRedJTextField = null;
        this.minBlueJTextField = null;
        this.minGreenJTextField = null;
        this.minJLabel = null;
        this.minRedJTextField = null;
        this.okJButton = null;
        this.redJLabel = null;
        this.titleJLabel = null;
        this.xJLabel = null;
        this.yJLabel = null;
    }
    

    pub fn create1(colorAtActionScriptConditionInterface: ?*ColorAtActionScriptConditionInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = JPanel.create().*;
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.START, this, this.commonStrings.?.CONSTRUCTOR });
        _ = this.initComponents();
        this.colorAtActionScriptConditionInterface = colorAtActionScriptConditionInterface;
        _ = this.set();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn set(self: *Self) void {
        const colorRangeInterface: ?*ColorRangeInterface = Inheritance.upcast(?*ColorRangeInterface, self.colorAtActionScriptConditionInterface.?.getColorRangeInterface());
        _ = Inheritance.call(self.getMinRedJTextField().?, "setText", .{ String.valueOf(colorRangeInterface.?.getMinRed()) });
        _ = Inheritance.call(self.getMaxRedJTextField().?, "setText", .{ String.valueOf(colorRangeInterface.?.getMaxRed()) });
        _ = Inheritance.call(self.getMinGreenJTextField().?, "setText", .{ String.valueOf(colorRangeInterface.?.getMinGreen()) });
        _ = Inheritance.call(self.getMaxGreenJTextField().?, "setText", .{ String.valueOf(colorRangeInterface.?.getMaxGreen()) });
        _ = Inheritance.call(self.getMinBlueJTextField().?, "setText", .{ String.valueOf(colorRangeInterface.?.getMinBlue()) });
        _ = Inheritance.call(self.getMaxBlueJTextField().?, "setText", .{ String.valueOf(colorRangeInterface.?.getMaxBlue()) });
        _ = Inheritance.call(self.getColorAtXJTextField().?, "setText", .{ String.valueOf(self.colorAtActionScriptConditionInterface.?.getPoint().?.x) });
        _ = Inheritance.call(self.getColorAtYJTextField().?, "setText", .{ String.valueOf(self.colorAtActionScriptConditionInterface.?.getPoint().?.y) });
        _ = self.colorAtActionScriptConditionInterface.?.log();
    }
    

    pub fn update(self: *Self) void {
        const colorRangeInterface: ?*ColorRangeInterface = Inheritance.upcast(?*ColorRangeInterface, self.colorAtActionScriptConditionInterface.?.getColorRangeInterface());
        _ = Inheritance.call(colorRangeInterface.?, "setMinRed", .{ Inheritance.receiverOf(Inheritance.callStatic(Integer, "valueOf", .{ Inheritance.receiverOf(self.getMinRedJTextField().?, "getText").getText() }).?, "intValue").intValue() });
        _ = Inheritance.call(colorRangeInterface.?, "setMaxRed", .{ Inheritance.receiverOf(Inheritance.callStatic(Integer, "valueOf", .{ Inheritance.receiverOf(self.getMaxRedJTextField().?, "getText").getText() }).?, "intValue").intValue() });
        _ = Inheritance.call(colorRangeInterface.?, "setMinGreen", .{ Inheritance.receiverOf(Inheritance.callStatic(Integer, "valueOf", .{ Inheritance.receiverOf(self.getMinGreenJTextField().?, "getText").getText() }).?, "intValue").intValue() });
        _ = Inheritance.call(colorRangeInterface.?, "setMaxGreen", .{ Inheritance.receiverOf(Inheritance.callStatic(Integer, "valueOf", .{ Inheritance.receiverOf(self.getMaxGreenJTextField().?, "getText").getText() }).?, "intValue").intValue() });
        _ = Inheritance.call(colorRangeInterface.?, "setMinBlue", .{ Inheritance.receiverOf(Inheritance.callStatic(Integer, "valueOf", .{ Inheritance.receiverOf(self.getMinBlueJTextField().?, "getText").getText() }).?, "intValue").intValue() });
        _ = Inheritance.call(colorRangeInterface.?, "setMaxBlue", .{ Inheritance.receiverOf(Inheritance.callStatic(Integer, "valueOf", .{ Inheritance.receiverOf(self.getMaxBlueJTextField().?, "getText").getText() }).?, "intValue").intValue() });
        const xString: ?*String = Inheritance.upcast(?*String, Inheritance.receiverOf(self.getColorAtXJTextField().?, "getText").getText());
        if (!Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ xString }) and Inheritance.call(StringValidationUtil.getInstance().?, "isNumber", .{ xString })) {
            self.colorAtActionScriptConditionInterface.?.getPoint().?.x = Inheritance.upcast(@TypeOf(self.colorAtActionScriptConditionInterface.?.getPoint().?.x), (std.fmt.parseInt(i32, xString.?.bytes, 10) catch @panic("java.lang.NumberFormatException")));
        }
        const yString: ?*String = Inheritance.upcast(?*String, Inheritance.receiverOf(self.getColorAtYJTextField().?, "getText").getText());
        if (!Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ yString }) and Inheritance.call(StringValidationUtil.getInstance().?, "isNumber", .{ yString })) {
            self.colorAtActionScriptConditionInterface.?.getPoint().?.y = Inheritance.upcast(@TypeOf(self.colorAtActionScriptConditionInterface.?.getPoint().?.y), (std.fmt.parseInt(i32, xString.?.bytes, 10) catch @panic("java.lang.NumberFormatException")));
        }
        _ = self.colorAtActionScriptConditionInterface.?.log();
    }
    

    pub fn getColorAtXJTextField(self: *Self) ?*JTextField {
        return self.colorAtXJTextField;
    }
    

    pub fn setColorAtXJTextField(self: *Self, colorAtXJTextField: ?*JTextField) void {
        self.colorAtXJTextField = colorAtXJTextField;
    }
    

    pub fn getColorAtYJTextField(self: *Self) ?*JTextField {
        return self.colorAtYJTextField;
    }
    

    pub fn setColorAtYJTextField(self: *Self, colorAtYJTextField: ?*JTextField) void {
        self.colorAtYJTextField = colorAtYJTextField;
    }
    

    pub fn getMaxBlueJTextField(self: *Self) ?*JTextField {
        return self.maxBlueJTextField;
    }
    

    pub fn setMaxBlueJTextField(self: *Self, maxBlueJTextField: ?*JTextField) void {
        self.maxBlueJTextField = maxBlueJTextField;
    }
    

    pub fn getMaxGreenJTextField(self: *Self) ?*JTextField {
        return self.maxGreenJTextField;
    }
    

    pub fn setMaxGreenJTextField(self: *Self, maxGreenJTextField: ?*JTextField) void {
        self.maxGreenJTextField = maxGreenJTextField;
    }
    

    pub fn getMaxRedJTextField(self: *Self) ?*JTextField {
        return self.maxRedJTextField;
    }
    

    pub fn setMaxRedJTextField(self: *Self, maxRedJTextField: ?*JTextField) void {
        self.maxRedJTextField = maxRedJTextField;
    }
    

    pub fn getMinBlueJTextField(self: *Self) ?*JTextField {
        return self.minBlueJTextField;
    }
    

    pub fn setMinBlueJTextField(self: *Self, minBlueJTextField: ?*JTextField) void {
        self.minBlueJTextField = minBlueJTextField;
    }
    

    pub fn getMinGreenJTextField(self: *Self) ?*JTextField {
        return self.minGreenJTextField;
    }
    

    pub fn setMinGreenJTextField(self: *Self, minGreenJTextField: ?*JTextField) void {
        self.minGreenJTextField = minGreenJTextField;
    }
    

    pub fn getMinRedJTextField(self: *Self) ?*JTextField {
        return self.minRedJTextField;
    }
    

    pub fn setMinRedJTextField(self: *Self, minRedJTextField: ?*JTextField) void {
        self.minRedJTextField = minRedJTextField;
    }
    

    pub fn getYJLabel(self: *Self) ?*JLabel {
        return self.yJLabel;
    }
    

    pub fn setYJLabel(self: *Self, yJLabel: ?*JLabel) void {
        self.yJLabel = yJLabel;
    }
    

    pub fn getColorAtActionJDialog(self: *Self) ?*JDialog {
        return self.colorAtActionJDialog;
    }
    

    pub fn setColorAtActionJDialog(self: *Self, colorAtActionJDialog: ?*JDialog) void {
        self.colorAtActionJDialog = colorAtActionJDialog;
    }
    

    pub fn initComponents(self: *Self) void {
        self.colorAtActionJDialog = JDialog.create();
        self.titleJLabel = JLabel.create();
        self.locationJLabel = JLabel.create();
        self.colorAtXJTextField = JTextField.create();
        self.xJLabel = JLabel.create();
        self.yJLabel = JLabel.create();
        self.colorAtYJTextField = JTextField.create();
        self.colorRangeJLabel = JLabel.create();
        self.redJLabel = JLabel.create();
        self.minJLabel = JLabel.create();
        self.maxJLabel = JLabel.create();
        self.greenJLabel = JLabel.create();
        self.blueJLabel = JLabel.create();
        self.minRedJTextField = JTextField.create();
        self.maxRedJTextField = JTextField.create();
        self.maxGreenJTextField = JTextField.create();
        self.minBlueJTextField = JTextField.create();
        self.maxBlueJTextField = JTextField.create();
        self.okJButton = JButton.create();
        self.minGreenJTextField = JTextField.create();
        self.colorAtActionJButton = JButton.create();
        self.jLabel1 = JLabel.create();
        _ = Inheritance.call(self.colorAtActionJDialog.?, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 350, 250 }) });
        _ = Inheritance.call(self.titleJLabel.?, "setText", .{ String.literal("              Color At Action Options            ") });
        _ = Inheritance.call(self.locationJLabel.?, "setText", .{ String.literal("Location:") });
        _ = Inheritance.call(self.xJLabel.?, "setText", .{ String.literal("X:") });
        _ = Inheritance.call(self.yJLabel.?, "setText", .{ String.literal("Y:") });
        _ = Inheritance.call(self.colorRangeJLabel.?, "setText", .{ String.literal("Color Range") });
        _ = Inheritance.call(self.redJLabel.?, "setText", .{ String.literal("Red:") });
        _ = Inheritance.call(self.minJLabel.?, "setText", .{ String.literal("Minimum") });
        _ = Inheritance.call(self.maxJLabel.?, "setText", .{ String.literal("Maximum") });
        _ = Inheritance.call(self.greenJLabel.?, "setText", .{ String.literal("Green:") });
        _ = Inheritance.call(self.blueJLabel.?, "setText", .{ String.literal("Blue:") });
        _ = Inheritance.call(self.okJButton.?, "setText", .{ String.literal("OK") });
        _ = Inheritance.call(self.okJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "okJButtonActionPerformed", .{ evt });
//             }
 });
        const colorAtActionJDialogLayout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.colorAtActionJDialog.?.getContentPane() });
        _ = Inheritance.call(self.colorAtActionJDialog.?.getContentPane().?, "setLayout", .{ colorAtActionJDialogLayout });
        _ = Inheritance.call(colorAtActionJDialogLayout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(colorAtActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.receiverOf(colorAtActionJDialogLayout.?.createSequentialGroup().?, "addContainerGap").addContainerGap().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(colorAtActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(colorAtActionJDialogLayout.?.createSequentialGroup().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(colorAtActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.TRAILING }).?, "addComponent", .{ self.okJButton }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(colorAtActionJDialogLayout.?.createSequentialGroup().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(colorAtActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING, false }).?, "addGroup", .{ Inheritance.call(Inheritance.call(colorAtActionJDialogLayout.?.createSequentialGroup().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(colorAtActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addComponent", .{ self.blueJLabel }).?, "addComponent", .{ self.greenJLabel }).?, "addComponent", .{ self.redJLabel }).?, "addComponent", .{ self.colorRangeJLabel }) }).?, "addGap", .{ 29, 29, 29 }) }).?, "addGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.TRAILING, Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(colorAtActionJDialogLayout.?.createSequentialGroup().?, "addComponent", .{ self.locationJLabel }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.xJLabel }).?, "addGap", .{ 18, 18, 18 }) }) }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(colorAtActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addComponent", .{ self.minBlueJTextField, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 40, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.minGreenJTextField, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 40, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.minJLabel, javax.swing.?.GroupLayout.?.Alignment.?.TRAILING, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.minRedJTextField, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 40, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.colorAtXJTextField, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 40, @as(i16, std.math.maxInt(i16)) }) }).?, "addGap", .{ 16, 16, 16 }) }) }).?, "addGap", .{ 6, 6, 6 }).?, "addComponent", .{ self.yJLabel }).?, "addGap", .{ 24, 24, 24 }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(colorAtActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.TRAILING }).?, "addComponent", .{ self.maxJLabel, javax.swing.?.GroupLayout.?.Alignment.?.LEADING, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }).?, "addGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING, Inheritance.call(Inheritance.call(colorAtActionJDialogLayout.?.createSequentialGroup().?, "addGap", .{ 1, 1, 1 }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(colorAtActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING, false }).?, "addComponent", .{ self.maxBlueJTextField, javax.swing.?.GroupLayout.?.Alignment.?.TRAILING }).?, "addComponent", .{ self.maxRedJTextField, javax.swing.?.GroupLayout.?.Alignment.?.TRAILING, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 43, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.maxGreenJTextField, javax.swing.?.GroupLayout.?.Alignment.?.TRAILING, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 43, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }) }).?, "addComponent", .{ self.colorAtYJTextField, javax.swing.?.GroupLayout.?.Alignment.?.LEADING, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 44, @as(i16, std.math.maxInt(i16)) }) }).?, "addGap", .{ 22, 22, 22 }) }).?, "addGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.TRAILING, Inheritance.call(Inheritance.call(colorAtActionJDialogLayout.?.createSequentialGroup().?, "addComponent", .{ self.titleJLabel }).?, "addGap", .{ 33, 33, 33 }) }) }) }) });
        _ = Inheritance.call(colorAtActionJDialogLayout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(colorAtActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.receiverOf(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.receiverOf(colorAtActionJDialogLayout.?.createSequentialGroup().?, "addContainerGap").addContainerGap().?, "addComponent", .{ self.titleJLabel }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(colorAtActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(colorAtActionJDialogLayout.?.createSequentialGroup().?, "addGap", .{ 15, 15, 15 }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(colorAtActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.xJLabel }).?, "addComponent", .{ self.locationJLabel }).?, "addComponent", .{ self.colorAtXJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.yJLabel }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(colorAtActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.minJLabel }).?, "addComponent", .{ self.colorRangeJLabel }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(colorAtActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.minRedJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.redJLabel }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(colorAtActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.greenJLabel }).?, "addComponent", .{ self.minGreenJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(colorAtActionJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.blueJLabel }).?, "addComponent", .{ self.minBlueJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED, 17, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.okJButton }) }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(colorAtActionJDialogLayout.?.createSequentialGroup().?, "addGap", .{ 14, 14, 14 }).?, "addComponent", .{ self.colorAtYJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.maxJLabel }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.maxRedJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.maxGreenJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.maxBlueJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }) }).?, "addContainerGap").addContainerGap() }) });
        _ = Inheritance.call(self, "setPreferredSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 100, 0 }) });
        _ = Inheritance.call(self.colorAtActionJButton.?, "setText", .{ String.literal("Edit") });
        _ = Inheritance.call(self.colorAtActionJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "colorAtActionJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jLabel1.?, "setText", .{ String.literal("Color At:") });
        const layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self });
        _ = Inheritance.call(self, "setLayout", .{ layout });
        _ = Inheritance.call(layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "addComponent", .{ self.jLabel1 }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED, 15, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.colorAtActionJButton }) }) });
        _ = Inheritance.call(layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.jLabel1 }).?, "addComponent", .{ self.colorAtActionJButton }) }) });
    }
    

    pub fn okJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self.update();
        _ = Inheritance.call(self.getColorAtActionJDialog().?, "setVisible", .{ false });
    }
    

    pub fn colorAtActionJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = Inheritance.call(self.getColorAtActionJDialog().?, "setVisible", .{ true });
    }
};

