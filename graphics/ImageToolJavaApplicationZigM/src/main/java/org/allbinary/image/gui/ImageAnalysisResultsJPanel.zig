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
// package org.allbinary.image.gui

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ImageAnalysisResults = @import("org/allbinary/media/image/analysis/ImageAnalysisResults.zig").ImageAnalysisResults;
const ImageColorRangeResults = @import("org/allbinary/media/image/analysis/ImageColorRangeResults.zig").ImageColorRangeResults;
const ImageColorResults = @import("org/allbinary/media/image/analysis/ImageColorResults.zig").ImageColorResults;
const CommonPhoneStrings = @import("org/allbinary/string/CommonPhoneStrings.zig").CommonPhoneStrings;
const Long = @import("java/lang/Long.zig").Long;
const Short = @import("java/lang/Short.zig").Short;
const Float = @import("java/lang/Float.zig").Float;

pub const ImageAnalysisResultsJPanel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.gui.ImageAnalysisResultsJPanel";
    base: JPanel = undefined,
    avgBlueJTextField: ?*JTextField = null,
    avgGreenJTextField: ?*JTextField = null,
    avgRedJTextField: ?*JTextField = null,
    jComboBox1: ?*JComboBox = null,
    jLabel1: ?*JLabel = null,
    jLabel10: ?*JLabel = null,
    jLabel11: ?*JLabel = null,
    jLabel12: ?*JLabel = null,
    jLabel13: ?*JLabel = null,
    jLabel2: ?*JLabel = null,
    jLabel3: ?*JLabel = null,
    jLabel4: ?*JLabel = null,
    jLabel5: ?*JLabel = null,
    jLabel6: ?*JLabel = null,
    jLabel7: ?*JLabel = null,
    jLabel8: ?*JLabel = null,
    jLabel9: ?*JLabel = null,
    matchingPixelsJTextField: ?*JTextField = null,
    maxBlueJTextField: ?*JTextField = null,
    maxGreenJTextField: ?*JTextField = null,
    maxRedJTextField: ?*JTextField = null,
    minBlueJTextField: ?*JTextField = null,
    minGreenJTextField: ?*JTextField = null,
    minRedJTextField: ?*JTextField = null,
    percentMatchingJTextField: ?*JTextField = null,
    totalPixelsJTextField: ?*JTextField = null,

    fn initFields(this: *Self) void {
        this.avgBlueJTextField = null;
        this.avgGreenJTextField = null;
        this.avgRedJTextField = null;
        this.jComboBox1 = null;
        this.jLabel1 = null;
        this.jLabel10 = null;
        this.jLabel11 = null;
        this.jLabel12 = null;
        this.jLabel13 = null;
        this.jLabel2 = null;
        this.jLabel3 = null;
        this.jLabel4 = null;
        this.jLabel5 = null;
        this.jLabel6 = null;
        this.jLabel7 = null;
        this.jLabel8 = null;
        this.jLabel9 = null;
        this.matchingPixelsJTextField = null;
        this.maxBlueJTextField = null;
        this.maxGreenJTextField = null;
        this.maxRedJTextField = null;
        this.minBlueJTextField = null;
        this.minGreenJTextField = null;
        this.minRedJTextField = null;
        this.percentMatchingJTextField = null;
        this.totalPixelsJTextField = null;
    }
    

    pub fn create1(imageAnalysisResultsArray: []?*ImageAnalysisResults) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = JPanel.create().*;
        this.initFields();
        _ = this.initComponents();
        const imageAnalysisResults: ?*ImageAnalysisResults = Inheritance.upcast(?*ImageAnalysisResults, imageAnalysisResultsArray[@intCast(0)]);
        _ = Inheritance.call(this, "updateImageColorRangeResults", .{ imageAnalysisResults });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initComponents(self: *Self) void {
        self.jLabel1 = JLabel.create();
        self.jLabel2 = JLabel.create();
        self.jLabel3 = JLabel.create();
        self.percentMatchingJTextField = JTextField.create();
        self.totalPixelsJTextField = JTextField.create();
        self.matchingPixelsJTextField = JTextField.create();
        self.jComboBox1 = JComboBox.create();
        self.jLabel4 = JLabel.create();
        self.jLabel5 = JLabel.create();
        self.jLabel6 = JLabel.create();
        self.jLabel7 = JLabel.create();
        self.avgRedJTextField = JTextField.create();
        self.avgGreenJTextField = JTextField.create();
        self.avgBlueJTextField = JTextField.create();
        self.minGreenJTextField = JTextField.create();
        self.jLabel8 = JLabel.create();
        self.jLabel9 = JLabel.create();
        self.jLabel10 = JLabel.create();
        self.minRedJTextField = JTextField.create();
        self.minBlueJTextField = JTextField.create();
        self.jLabel11 = JLabel.create();
        self.jLabel12 = JLabel.create();
        self.jLabel13 = JLabel.create();
        self.maxRedJTextField = JTextField.create();
        self.maxGreenJTextField = JTextField.create();
        self.maxBlueJTextField = JTextField.create();
        _ = Inheritance.call(self.jLabel1.?, "setText", .{ String.literal("Matching Pixels:") });
        _ = Inheritance.call(self.jLabel2.?, "setText", .{ String.literal("Total Pixels:") });
        _ = Inheritance.call(self.jLabel3.?, "setText", .{ String.literal("Percent Matching:") });
        _ = Inheritance.call(self.percentMatchingJTextField.?, "setEditable", .{ false });
        _ = Inheritance.call(self.totalPixelsJTextField.?, "setEditable", .{ false });
        _ = Inheritance.call(self.matchingPixelsJTextField.?, "setEditable", .{ false });
        _ = Inheritance.call(self.jComboBox1.?, "setModel", .{ Inheritance.callStatic(DefaultComboBoxModel, "create1", .{ @constCast(&[_]?*String{ CommonPhoneStrings.getInstance().?.ONE })[0..] }) });
        _ = Inheritance.call(self.jComboBox1.?, "setEnabled", .{ false });
        _ = Inheritance.call(self.jLabel4.?, "setText", .{ String.literal("Image:") });
        _ = Inheritance.call(self.jLabel5.?, "setText", .{ String.literal("Average Red:") });
        _ = Inheritance.call(self.jLabel6.?, "setText", .{ String.literal("Average Green:") });
        _ = Inheritance.call(self.jLabel7.?, "setText", .{ String.literal("Average Blue:") });
        _ = Inheritance.call(self.avgRedJTextField.?, "setEditable", .{ false });
        _ = Inheritance.call(self.avgGreenJTextField.?, "setEditable", .{ false });
        _ = Inheritance.call(self.avgBlueJTextField.?, "setEditable", .{ false });
        _ = Inheritance.call(self.minGreenJTextField.?, "setEditable", .{ false });
        _ = Inheritance.call(self.jLabel8.?, "setText", .{ String.literal("Min Red:") });
        _ = Inheritance.call(self.jLabel9.?, "setText", .{ String.literal("Min Green:") });
        _ = Inheritance.call(self.jLabel10.?, "setText", .{ String.literal("Min Blue:") });
        _ = Inheritance.call(self.minRedJTextField.?, "setEditable", .{ false });
        _ = Inheritance.call(self.minBlueJTextField.?, "setEditable", .{ false });
        _ = Inheritance.call(self.jLabel11.?, "setText", .{ String.literal("Max Red:") });
        _ = Inheritance.call(self.jLabel12.?, "setText", .{ String.literal("Max Green:") });
        _ = Inheritance.call(self.jLabel13.?, "setText", .{ String.literal("Max Blue:") });
        _ = Inheritance.call(self.maxRedJTextField.?, "setEditable", .{ false });
        _ = Inheritance.call(self.maxGreenJTextField.?, "setEditable", .{ false });
        _ = Inheritance.call(self.maxBlueJTextField.?, "setEditable", .{ false });
        const layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self });
        _ = Inheritance.call(self, "setLayout", .{ layout });
        _ = Inheritance.call(layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.receiverOf(layout.?.createSequentialGroup().?, "addContainerGap").addContainerGap().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addComponent", .{ self.jLabel3 }).?, "addComponent", .{ self.jLabel2 }).?, "addComponent", .{ self.jLabel1 }).?, "addComponent", .{ self.jLabel5 }).?, "addComponent", .{ self.jLabel6 }).?, "addComponent", .{ self.jLabel7 }).?, "addComponent", .{ self.jLabel4 }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addComponent", .{ self.jComboBox1, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 81, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.avgBlueJTextField, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 81, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.avgGreenJTextField, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 81, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.avgRedJTextField, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 81, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.totalPixelsJTextField, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 81, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.percentMatchingJTextField, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 81, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.matchingPixelsJTextField, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 81, @as(i16, std.math.maxInt(i16)) }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addComponent", .{ self.jLabel12 }).?, "addComponent", .{ self.jLabel13 }).?, "addComponent", .{ self.jLabel8 }).?, "addComponent", .{ self.jLabel9 }).?, "addComponent", .{ self.jLabel10 }).?, "addComponent", .{ self.jLabel11 }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addComponent", .{ self.minRedJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 82, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.maxGreenJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 82, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.minGreenJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 82, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.minBlueJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 82, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.maxRedJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 82, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.maxBlueJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 82, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addContainerGap", .{ 18, @as(i16, std.math.maxInt(i16)) }) }) });
        _ = Inheritance.call(layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.jLabel4 }).?, "addComponent", .{ self.jComboBox1, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.jLabel1 }).?, "addComponent", .{ self.matchingPixelsJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.jLabel8 }).?, "addComponent", .{ self.minRedJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.jLabel2 }).?, "addComponent", .{ self.totalPixelsJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.jLabel9 }).?, "addComponent", .{ self.minGreenJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.jLabel3 }).?, "addComponent", .{ self.percentMatchingJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.jLabel10 }).?, "addComponent", .{ self.minBlueJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.jLabel5 }).?, "addComponent", .{ self.avgRedJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.jLabel11 }).?, "addComponent", .{ self.maxRedJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.jLabel6 }).?, "addComponent", .{ self.avgGreenJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.maxGreenJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.jLabel12 }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.jLabel7 }).?, "addComponent", .{ self.avgBlueJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.jLabel13 }).?, "addComponent", .{ self.maxBlueJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }) }) });
    }
    

    pub fn updateImageColorRangeResults(self: *Self, imageAnalysisResults: ?*ImageAnalysisResults) void {
        const imageColorRangeResults: ?*ImageColorRangeResults = Inheritance.upcast(?*ImageColorRangeResults, imageAnalysisResults.?.getImageColorRangeResults());
        _ = Inheritance.call(self.matchingPixelsJTextField.?, "setText", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ imageColorRangeResults.?.getMatchingPixelsChecked() }).?) });
        _ = Inheritance.call(self.totalPixelsJTextField.?, "setText", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ imageColorRangeResults.?.getTotalPixelsChecked() }).?) });
        _ = Inheritance.call(self.percentMatchingJTextField.?, "setText", .{ String.valueOf(Inheritance.callStatic(Float, "create1", .{ imageColorRangeResults.?.getPercent() }).?) });
        const imageColorResults: ?*ImageColorResults = Inheritance.upcast(?*ImageColorResults, imageAnalysisResults.?.getImageColorResults());
        _ = Inheritance.call(self.avgRedJTextField.?, "setText", .{ String.valueOf(Inheritance.callStatic(Float, "create1", .{ Inheritance.receiverOf(imageColorResults.?.getColorAverage().?, "getAvgRed").getAvgRed() }).?) });
        _ = Inheritance.call(self.avgGreenJTextField.?, "setText", .{ String.valueOf(Inheritance.callStatic(Float, "create1", .{ Inheritance.receiverOf(imageColorResults.?.getColorAverage().?, "getAvgGreen").getAvgGreen() }).?) });
        _ = Inheritance.call(self.avgBlueJTextField.?, "setText", .{ String.valueOf(Inheritance.callStatic(Float, "create1", .{ Inheritance.receiverOf(imageColorResults.?.getColorAverage().?, "getAvgBlue").getAvgBlue() }).?) });
        _ = Inheritance.call(self.minRedJTextField.?, "setText", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ Inheritance.receiverOf(imageColorResults.?.getColorRange().?, "getMinRed").getMinRed() }).?) });
        _ = Inheritance.call(self.minGreenJTextField.?, "setText", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ Inheritance.receiverOf(imageColorResults.?.getColorRange().?, "getMinGreen").getMinGreen() }).?) });
        _ = Inheritance.call(self.minBlueJTextField.?, "setText", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ Inheritance.receiverOf(imageColorResults.?.getColorRange().?, "getMinBlue").getMinBlue() }).?) });
        _ = Inheritance.call(self.maxRedJTextField.?, "setText", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ Inheritance.receiverOf(imageColorResults.?.getColorRange().?, "getMaxRed").getMaxRed() }).?) });
        _ = Inheritance.call(self.maxGreenJTextField.?, "setText", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ Inheritance.receiverOf(imageColorResults.?.getColorRange().?, "getMaxGreen").getMaxGreen() }).?) });
        _ = Inheritance.call(self.maxBlueJTextField.?, "setText", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ Inheritance.receiverOf(imageColorResults.?.getColorRange().?, "getMaxBlue").getMaxBlue() }).?) });
    }
};

