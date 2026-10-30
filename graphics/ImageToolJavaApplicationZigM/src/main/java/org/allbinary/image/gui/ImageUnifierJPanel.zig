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
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
const File = @import("java/io/File.zig").File;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const FileWrapperUtil = @import("org/allbinary/logic/io/file/FileWrapperUtil.zig").FileWrapperUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const ImagePersistanceUtil = @import("org/allbinary/media/image/ImagePersistanceUtil.zig").ImagePersistanceUtil;
const ImageProcessorInput = @import("org/allbinary/media/image/ImageProcessorInput.zig").ImageProcessorInput;
const ImageProcessorInputCompositeInterface = @import("org/allbinary/media/image/ImageProcessorInputCompositeInterface.zig").ImageProcessorInputCompositeInterface;
const ImageStrings = @import("org/allbinary/media/image/ImageStrings.zig").ImageStrings;
const ImageUnifierCell = @import("org/allbinary/media/image/ImageUnifierCell.zig").ImageUnifierCell;
const ImageUnifierProperties = @import("org/allbinary/media/image/ImageUnifierProperties.zig").ImageUnifierProperties;
const ImageUnifierUtil = @import("org/allbinary/media/image/ImageUnifierUtil.zig").ImageUnifierUtil;
const ImageUtil = @import("org/allbinary/media/image/ImageUtil.zig").ImageUtil;
const ImagesRatioUtil = @import("org/allbinary/media/image/ImagesRatioUtil.zig").ImagesRatioUtil;
const CommonPhoneStrings = @import("org/allbinary/string/CommonPhoneStrings.zig").CommonPhoneStrings;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ImageIconUnique = @import("org/allbinary/image/gui/ImageIconUnique.zig").ImageIconUnique;
const Integer = @import("java/lang/Integer.zig").Integer;
const Short = @import("java/lang/Short.zig").Short;
const Double = @import("java/lang/Double.zig").Double;

pub const ImageUnifierJPanel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.gui.ImageUnifierJPanel";
    base: JPanel = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    imageStrings: ?*ImageStrings = null,
    imagesRatioUtil: ?*ImagesRatioUtil = null,
    imageProcessorInput: ?*ImageProcessorInput = null,
    icon: []?*ImageIconUnique = &.{},
    imageUnifierProperties: ?*ImageUnifierProperties = null,
    result: ?*BufferedImage = null,
    isImageFillIn: bool = false,
    avgRatioJTextField: ?*JTextField = null,
    cellHeightJTextField: ?*JTextField = null,
    cellRatioJTextField: ?*JTextField = null,
    cellWidthJTextField: ?*JTextField = null,
    columnsJTextField: ?*JTextField = null,
    downJButton: ?*JButton = null,
    fudgeItJButton: ?*JButton = null,
    imageJList: ?*JList = null,
    jButton1: ?*JButton = null,
    jButton2: ?*JButton = null,
    jButtonOrder: ?*JButton = null,
    jLabel1: ?*JLabel = null,
    jLabel2: ?*JLabel = null,
    jLabel3: ?*JLabel = null,
    jLabel4: ?*JLabel = null,
    jLabel5: ?*JLabel = null,
    jLabel6: ?*JLabel = null,
    jPanel1: ?*JPanel = null,
    jScrollPane1: ?*JScrollPane = null,
    jScrollPane2: ?*JScrollPane = null,
    rowsJTextField: ?*JTextField = null,
    upJButton: ?*JButton = null,
    // Implements ImageProcessorInputCompositeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.imageStrings = Inheritance.upcast(?*ImageStrings, ImageStrings.getInstance());
        this.imagesRatioUtil = Inheritance.upcast(?*ImagesRatioUtil, ImagesRatioUtil.getInstance());
        this.imageProcessorInput = null;
        this.icon = &.{};
        this.imageUnifierProperties = null;
        this.result = null;
        this.isImageFillIn = true;
        this.avgRatioJTextField = null;
        this.cellHeightJTextField = null;
        this.cellRatioJTextField = null;
        this.cellWidthJTextField = null;
        this.columnsJTextField = null;
        this.downJButton = null;
        this.fudgeItJButton = null;
        this.imageJList = null;
        this.jButton1 = null;
        this.jButton2 = null;
        this.jButtonOrder = null;
        this.jLabel1 = null;
        this.jLabel2 = null;
        this.jLabel3 = null;
        this.jLabel4 = null;
        this.jLabel5 = null;
        this.jLabel6 = null;
        this.jPanel1 = null;
        this.jScrollPane1 = null;
        this.jScrollPane2 = null;
        this.rowsJTextField = null;
        this.upJButton = null;
    }
    

    pub fn create1(imageProcessorInput: ?*ImageProcessorInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = JPanel.create().*;
        this.initFields();
        _ = this.initComponents();
        _ = Inheritance.call(this, "setImageProcessorInput", .{ imageProcessorInput });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self) void {
        { // try
            const imageProcessorInput: ?*ImageProcessorInput = Inheritance.upcast(?*ImageProcessorInput, self.getImageProcessorInput());
            const bufferedImageArray: []?*BufferedImage = imageProcessorInput.?.getBufferedImageArray();
            self.icon = Inheritance.upcast(@TypeOf(self.icon), array_N66746: { const array_N66746_array = allocator.alloc(?*ImageIconUnique, @intCast(@as(i32, @intCast(bufferedImageArray.len)))) catch unreachable; @memset(array_N66746_array, null); break :array_N66746 array_N66746_array; });
            const defaultListModel: ?*DefaultListModel = DefaultListModel.create();
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(bufferedImageArray.len))) : (index += 1) {
                const width: f64 = bufferedImageArray[@intCast(index)].?.getWidth();
                const height: f64 = bufferedImageArray[@intCast(index)].?.getHeight();
                const newWidth: i32 = 52;
                const oldRatio: f64 = width / height;
                const newHeight: i32 = @as(i32, @intFromFloat((@divTrunc(@as(f64, @floatFromInt(newWidth)), oldRatio))));
                const iconBufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, Inheritance.call(ImageUtil.getInstance().?, "createBufferedImage", .{ bufferedImageArray[@intCast(index)], newWidth, newHeight, true }));
                self.icon[@intCast(index)] = Inheritance.upcast(@TypeOf(self.icon[@intCast(index)]), Inheritance.callStatic(ImageIconUnique, "create2", .{ iconBufferedImage, index }));
                _ = Inheritance.call(defaultListModel.?, "addElement", .{ self.icon[@intCast(index)] });
                }
            }
            _ = Inheritance.call(self.imageJList.?, "setModel", .{ defaultListModel });
            _ = self.updateOnPropertiesChange();
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.INIT, e });
    }
    

    pub fn updateImage(self: *Self) void {
        { // try
            const bufferedImageArray: []?*BufferedImage = Inheritance.receiverOf(self.getImageProcessorInput().?, "getBufferedImageArray").getBufferedImageArray();
            const tempBufferedImageArray: []?*BufferedImage = array_N67652: { const array_N67652_array = allocator.alloc(?*BufferedImage, @intCast(@as(i32, @intCast(bufferedImageArray.len)))) catch unreachable; @memset(array_N67652_array, null); break :array_N67652 array_N67652_array; };
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(bufferedImageArray.len))) : (index += 1) {
                const indexedImageIcon: ?*ImageIconUnique = Inheritance.cast(?*ImageIconUnique, Inheritance.call(self.imageJList.?.getModel().?, "getElementAt", .{ index }));
                const bufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, Inheritance.call(ImageUtil.getInstance().?, "createBufferedImage", .{ bufferedImageArray[@intCast(Inheritance.receiver(indexedImageIcon.?, "getId").getId())], Inheritance.receiverOf(self.imageUnifierProperties.?.getImageUnifierCell().?, "getWidth").getWidth(), Inheritance.receiverOf(self.imageUnifierProperties.?.getImageUnifierCell().?, "getHeight").getHeight(), false }));
                tempBufferedImageArray[@intCast(index)] = Inheritance.upcast(@TypeOf(tempBufferedImageArray[@intCast(index)]), bufferedImage);
                }
            }
            const totalImages: i32 = self.imageUnifierProperties.?.getRows() * self.imageUnifierProperties.?.getColumns();
            const averageRatio: f64 = Inheritance.call(self.imagesRatioUtil.?, "getAverage", .{ tempBufferedImageArray, totalImages });
            var averageRatioString: ?*String = Inheritance.upcast(?*String, String.valueOf(Inheritance.callStatic(Double, "create1", .{ averageRatio }).?));
            if (averageRatioString.?.length() > 4) {
                averageRatioString = Inheritance.upcast(@TypeOf(averageRatioString), averageRatioString.?.substring2(0, 4));
            }
            _ = Inheritance.call(self.avgRatioJTextField.?, "setText", .{ averageRatioString });
            _ = Inheritance.call(self.fudgeItJButton.?, "setEnabled", .{ false });
            if (!Inheritance.call(self.imagesRatioUtil.?, "isEqual", .{ tempBufferedImageArray, totalImages })) {
                if (self.isImageFillIn) {
                    _ = Inheritance.call(self.fudgeItJButton.?, "setEnabled", .{ true });
                }
            }
            _ = Inheritance.call(self, "updateImage", .{ tempBufferedImageArray });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("updateImage"), e });
    }
    

    pub fn updateImageWithFudgedImages(self: *Self) void {
        { // try
            const bufferedImageArray: []?*BufferedImage = Inheritance.receiverOf(self.getImageProcessorInput().?, "getBufferedImageArray").getBufferedImageArray();
            const tempBufferedImageArray: []?*BufferedImage = array_N68730: { const array_N68730_array = allocator.alloc(?*BufferedImage, @intCast(@as(i32, @intCast(bufferedImageArray.len)))) catch unreachable; @memset(array_N68730_array, null); break :array_N68730 array_N68730_array; };
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(bufferedImageArray.len))) : (index += 1) {
                const indexedImageIcon: ?*ImageIconUnique = Inheritance.cast(?*ImageIconUnique, Inheritance.call(self.imageJList.?.getModel().?, "getElementAt", .{ index }));
                const bufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, Inheritance.call(ImageUtil.getInstance().?, "createBufferedImage", .{ bufferedImageArray[@intCast(Inheritance.receiver(indexedImageIcon.?, "getId").getId())], Inheritance.receiverOf(self.imageUnifierProperties.?.getImageUnifierCell().?, "getWidth").getWidth(), Inheritance.receiverOf(self.imageUnifierProperties.?.getImageUnifierCell().?, "getHeight").getHeight(), false }));
                tempBufferedImageArray[@intCast(index)] = Inheritance.upcast(@TypeOf(tempBufferedImageArray[@intCast(index)]), bufferedImage);
                }
            }
            const totalImages: i32 = self.imageUnifierProperties.?.getRows() * self.imageUnifierProperties.?.getColumns();
            const averageRatio: f64 = Inheritance.call(self.imagesRatioUtil.?, "getAverage", .{ tempBufferedImageArray, totalImages });
            const fudgedBufferedImageArray: []?*BufferedImage = Inheritance.call(self.imagesRatioUtil.?, "fudge", .{ tempBufferedImageArray, totalImages, averageRatio });
            _ = Inheritance.call(self, "updateImage", .{ fudgedBufferedImageArray });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("updateImageWithFudgedImages"), e });
    }
    

    pub fn updateImage1(self: *Self, tempBufferedImageArray: []?*BufferedImage) void {
        self.result = Inheritance.upcast(@TypeOf(self.result), Inheritance.call(ImageUnifierUtil.getInstance().?, "getImage", .{ tempBufferedImageArray, self.imageUnifierProperties }));
        const image: ?*Icon = Inheritance.upcast(?*Icon, Inheritance.callStatic(ImageIcon, "create1", .{ self.result }));
        const label: ?*JLabel = Inheritance.callStatic(JLabel, "create1", .{ image });
        _ = Inheritance.call(self.jScrollPane2.?.getViewport().?, "add", .{ label });
        _ = Inheritance.receiver(self, "updateUI").updateUI();
    }
    

    pub fn updateOnPropertiesChange(self: *Self) void {
        if (Inheritance.receiverOf(self.rowsJTextField.?.getText().?, "length").length() > 0 and Inheritance.receiverOf(self.columnsJTextField.?.getText().?, "length").length() > 0 and Inheritance.receiverOf(self.cellWidthJTextField.?.getText().?, "length").length() > 0 and Inheritance.receiverOf(self.cellHeightJTextField.?.getText().?, "length").length() > 0) {
            self.imageUnifierProperties = ImageUnifierProperties.create();
            _ = Inheritance.call(self.imageUnifierProperties.?, "setRows", .{ Inheritance.callStatic(Integer, "create1", .{ self.rowsJTextField.?.getText() }) });
            _ = Inheritance.call(self.imageUnifierProperties.?, "setColumns", .{ Inheritance.callStatic(Integer, "create1", .{ self.columnsJTextField.?.getText() }) });
            const imageUnifierCell: ?*ImageUnifierCell = Inheritance.callStatic(ImageUnifierCell, "create2", .{ Inheritance.callStatic(Integer, "create1", .{ self.cellWidthJTextField.?.getText() }), Inheritance.callStatic(Integer, "create1", .{ self.cellHeightJTextField.?.getText() }) });
            _ = Inheritance.call(self.imageUnifierProperties.?, "setImageUnifierCell", .{ imageUnifierCell });
            const cellRatio: f64 = (@as(f64, @floatCast(imageUnifierCell.?.getWidth())) / imageUnifierCell.?.getHeight());
            var cellRatioString: ?*String = Inheritance.upcast(?*String, String.valueOf(Inheritance.callStatic(Double, "create1", .{ cellRatio }).?));
            if (cellRatioString.?.length() > 4) {
                cellRatioString = Inheritance.upcast(@TypeOf(cellRatioString), cellRatioString.?.substring2(0, 4));
            }
            _ = Inheritance.call(self.cellRatioJTextField.?, "setText", .{ cellRatioString });
            _ = self.updateImage();
        }
    }
    

    pub fn initComponents(self: *Self) void {
        const commonPhoneStrings: ?*CommonPhoneStrings = Inheritance.upcast(?*CommonPhoneStrings, CommonPhoneStrings.getInstance());
        self.jScrollPane1 = JScrollPane.create();
        self.imageJList = JList.create();
        self.jScrollPane2 = JScrollPane.create();
        self.jPanel1 = JPanel.create();
        self.jButton1 = JButton.create();
        self.upJButton = JButton.create();
        self.downJButton = JButton.create();
        self.fudgeItJButton = JButton.create();
        self.jLabel2 = JLabel.create();
        self.columnsJTextField = JTextField.create();
        self.jLabel1 = JLabel.create();
        self.rowsJTextField = JTextField.create();
        self.jLabel3 = JLabel.create();
        self.cellWidthJTextField = JTextField.create();
        self.jLabel4 = JLabel.create();
        self.cellHeightJTextField = JTextField.create();
        self.jLabel5 = JLabel.create();
        self.cellRatioJTextField = JTextField.create();
        self.jLabel6 = JLabel.create();
        self.avgRatioJTextField = JTextField.create();
        self.jButton2 = JButton.create();
        self.jButtonOrder = JButton.create();
        _ = Inheritance.call(self, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 500, 375 }) });
        _ = Inheritance.call(self, "setPreferredSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 0, 0 }) });
        _ = Inheritance.call(self.imageJList.?, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 50, 0 }) });
        _ = Inheritance.call(self.jScrollPane1.?, "setViewportView", .{ self.imageJList });
        _ = Inheritance.call(self.jButton1.?, "setText", .{ String.literal("Save") });
        _ = Inheritance.call(self.jButton1.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "jButton1ActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.upJButton.?, "setText", .{ String.literal("Up") });
        _ = Inheritance.call(self.upJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "upJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.downJButton.?, "setText", .{ String.literal("Down") });
        _ = Inheritance.call(self.downJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "downJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.fudgeItJButton.?, "setText", .{ String.literal("Fudge It!") });
        _ = Inheritance.call(self.fudgeItJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "fudgeItJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jLabel2.?, "setText", .{ String.literal("Columns:") });
        _ = Inheritance.call(self.columnsJTextField.?, "setText", .{ commonPhoneStrings.?.TWO });
        _ = Inheritance.call(self.columnsJTextField.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "columnsJTextFieldActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.columnsJTextField.?, "addPropertyChangeListener", .{ PropertyChangeListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn propertyChange(self: *Self, evt: ?*PropertyChangeEvent) void {
//                 _ = Inheritance.call(self, "columnsJTextFieldPropertyChange", .{ evt });
//             }
 });
        _ = Inheritance.call(self.columnsJTextField.?, "addKeyListener", .{ KeyAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn keyPressed(self: *Self, evt: ?*KeyEvent) void {
//                 _ = Inheritance.call(self, "columnsJTextFieldKeyPressed", .{ evt });
//             }
//             
// 
//             pub fn keyTyped(self: *Self, evt: ?*KeyEvent) void {
//                 _ = Inheritance.call(self, "columnsJTextFieldKeyTyped", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jLabel1.?, "setText", .{ String.literal("Rows:") });
        _ = Inheritance.call(self.rowsJTextField.?, "setText", .{ commonPhoneStrings.?.TWO });
        _ = Inheritance.call(self.rowsJTextField.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "rowsJTextFieldActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jLabel3.?, "setText", .{ String.literal("Cell Width:") });
        _ = Inheritance.call(self.cellWidthJTextField.?, "setText", .{ String.literal("200") });
        _ = Inheritance.call(self.cellWidthJTextField.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "cellWidthJTextFieldActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jLabel4.?, "setText", .{ String.literal("Cell Height:") });
        _ = Inheritance.call(self.cellHeightJTextField.?, "setText", .{ String.literal("150") });
        _ = Inheritance.call(self.cellHeightJTextField.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "cellHeightJTextFieldActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jLabel5.?, "setText", .{ String.literal("Cell Ratio:") });
        _ = Inheritance.call(self.cellRatioJTextField.?, "setEditable", .{ false });
        _ = Inheritance.call(self.jLabel6.?, "setText", .{ String.literal("Avg Image Ratio:") });
        _ = Inheritance.call(self.avgRatioJTextField.?, "setEditable", .{ false });
        _ = Inheritance.call(self.jButton2.?, "setText", .{ self.commonStrings.?.UPDATE });
        _ = Inheritance.call(self.jButton2.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "jButton2ActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jButtonOrder.?, "setText", .{ String.literal("Order") });
        _ = Inheritance.call(self.jButtonOrder.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "jButtonOrderActionPerformed", .{ evt });
//             }
 });
        const jPanel1Layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.jPanel1 });
        _ = Inheritance.call(self.jPanel1.?, "setLayout", .{ jPanel1Layout });
        _ = Inheritance.call(jPanel1Layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(jPanel1Layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.TRAILING, Inheritance.receiverOf(Inheritance.call(Inheritance.receiverOf(jPanel1Layout.?.createSequentialGroup().?, "addContainerGap").addContainerGap().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(jPanel1Layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.TRAILING }).?, "addComponent", .{ self.jButton1, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 151, @as(i16, std.math.maxInt(i16)) }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(jPanel1Layout.?.createSequentialGroup().?, "addComponent", .{ self.upJButton, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 71, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED, 10, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.downJButton, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 70, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addComponent", .{ self.fudgeItJButton, javax.swing.?.GroupLayout.?.Alignment.?.LEADING, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 151, @as(i16, std.math.maxInt(i16)) }).?, "addGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING, Inheritance.call(Inheritance.call(jPanel1Layout.?.createSequentialGroup().?, "addComponent", .{ self.jLabel3 }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED, 99, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING, Inheritance.call(Inheritance.call(jPanel1Layout.?.createSequentialGroup().?, "addComponent", .{ self.jLabel4 }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED, 96, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addComponent", .{ self.avgRatioJTextField, javax.swing.?.GroupLayout.?.Alignment.?.LEADING, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 151, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.jLabel6, javax.swing.?.GroupLayout.?.Alignment.?.LEADING, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 151, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.cellRatioJTextField, javax.swing.?.GroupLayout.?.Alignment.?.LEADING, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 151, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.jLabel5, javax.swing.?.GroupLayout.?.Alignment.?.LEADING, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 151, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.cellHeightJTextField, javax.swing.?.GroupLayout.?.Alignment.?.LEADING, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 151, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.cellWidthJTextField, javax.swing.?.GroupLayout.?.Alignment.?.LEADING, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 151, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.jButton2, javax.swing.?.GroupLayout.?.Alignment.?.LEADING, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 151, @as(i16, std.math.maxInt(i16)) }).?, "addGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING, Inheritance.call(Inheritance.call(Inheritance.call(jPanel1Layout.?.createSequentialGroup().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(jPanel1Layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addComponent", .{ self.jLabel2 }).?, "addComponent", .{ self.jLabel1 }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(jPanel1Layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addComponent", .{ self.rowsJTextField, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 103, @as(i16, std.math.maxInt(i16)) }).?, "addGroup", .{ Inheritance.call(Inheritance.call(jPanel1Layout.?.createSequentialGroup().?, "addComponent", .{ self.columnsJTextField, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 102, @as(i16, std.math.maxInt(i16)) }).?, "addGap", .{ 1, 1, 1 }) }) }) }).?, "addComponent", .{ self.jButtonOrder, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 151, @as(i16, std.math.maxInt(i16)) }) }).?, "addContainerGap").addContainerGap() }) });
        _ = Inheritance.call(jPanel1Layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(jPanel1Layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.receiverOf(jPanel1Layout.?.createSequentialGroup().?, "addContainerGap").addContainerGap().?, "addComponent", .{ self.jButton1 }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(jPanel1Layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.upJButton }).?, "addComponent", .{ self.downJButton }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.jButtonOrder }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.fudgeItJButton }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(jPanel1Layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.jLabel2 }).?, "addComponent", .{ self.columnsJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(jPanel1Layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.jLabel1 }).?, "addComponent", .{ self.rowsJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.jLabel3 }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.cellWidthJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.jLabel4 }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.cellHeightJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.jButton2 }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.jLabel5 }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.cellRatioJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addGap", .{ 7, 7, 7 }).?, "addComponent", .{ self.jLabel6 }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.avgRatioJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addGap", .{ 66, 66, 66 }) }) });
        const layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self });
        _ = Inheritance.call(self, "setLayout", .{ layout });
        _ = Inheritance.call(layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "addComponent", .{ self.jScrollPane1, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 84, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.jPanel1, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.jScrollPane2, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 527, @as(i16, std.math.maxInt(i16)) }) }) });
        _ = Inheritance.call(layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.TRAILING, Inheritance.receiverOf(Inheritance.call(layout.?.createSequentialGroup().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.TRAILING }).?, "addComponent", .{ self.jPanel1, javax.swing.?.GroupLayout.?.Alignment.?.LEADING, 0, 445, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.jScrollPane2, javax.swing.?.GroupLayout.?.Alignment.?.LEADING, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 445, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.jScrollPane1, javax.swing.?.GroupLayout.?.Alignment.?.LEADING, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 445, @as(i16, std.math.maxInt(i16)) }) }).?, "addContainerGap").addContainerGap() }) });
    }
    

    pub fn jButton2ActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self.updateOnPropertiesChange();
    }
    

    pub fn columnsJTextFieldKeyPressed(self: *Self, evt: ?*KeyEvent) void {
        _ = evt;
        _ = self;
    }
    

    pub fn columnsJTextFieldKeyTyped(self: *Self, evt: ?*KeyEvent) void {
        _ = evt;
        _ = self;
    }
    

    pub fn columnsJTextFieldPropertyChange(self: *Self, evt: ?*PropertyChangeEvent) void {
        _ = evt;
        _ = self;
    }
    

    pub fn fudgeItJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self.updateImageWithFudgedImages();
    }
    

    pub fn cellHeightJTextFieldActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self.updateOnPropertiesChange();
    }
    

    pub fn cellWidthJTextFieldActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self.updateOnPropertiesChange();
    }
    

    pub fn columnsJTextFieldActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self.updateOnPropertiesChange();
    }
    

    pub fn rowsJTextFieldActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self.updateOnPropertiesChange();
    }
    

    pub fn jButton1ActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            const fileArray: []?*File = self.imageProcessorInput.?.getFiles();
            const file: ?*File = Inheritance.upcast(?*File, fileArray[@intCast(0)]);
            var filePath: ?*String = Inheritance.upcast(?*String, file.?.getAbsolutePath());
            const extensionIndex: i32 = Inheritance.call(filePath.?, "indexOf", .{ self.imageStrings.?.PNG_EXTENSION });
            filePath = Inheritance.upcast(@TypeOf(filePath), Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ filePath.?.substring2(0, extensionIndex) }).?, "append", .{ CommonSeps.getInstance().?.UNDERSCORE }).?, "appendint", .{ @as(i32, @intCast(self.imageUnifierProperties.?.getColumns())) }).?, "append", .{ String.literal("_By_") }).?, "appendint", .{ @as(i32, @intCast(self.imageUnifierProperties.?.getRows())) }).?, "append", .{ String.literal("_Unified") }).?, "append", .{ self.imageStrings.?.PNG_EXTENSION }))));
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("New File Path: "), filePath), self, StringUtil.getInstance().?.EMPTY_STRING });
            const outputFile: ?*File = Inheritance.callStatic(File, "create1", .{ filePath });
            _ = Inheritance.call(ImagePersistanceUtil.getInstance().?, "saveWithBatik", .{ Inheritance.callStatic(FileWrapperUtil, "wrapFile", .{ outputFile }), self.result });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("jButton1ActionPerformed"), e });
    }
    

    pub fn downJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        const index: i32 = self.imageJList.?.getSelectedIndex();
        const defaultListModel: ?*DefaultListModel = Inheritance.cast(?*DefaultListModel, self.imageJList.?.getModel());
        if (index >= 0 and index + 1 < defaultListModel.?.size()) {
            const indexedImageIcon: ?*ImageIconUnique = Inheritance.cast(?*ImageIconUnique, Inheritance.call(defaultListModel.?, "remove", .{ index }));
            _ = Inheritance.call(defaultListModel.?, "insertElementAt", .{ indexedImageIcon, index + 1 });
            _ = Inheritance.call(self.imageJList.?, "setSelectedIndex", .{ index + 1 });
            _ = self.updateImage();
        }
    }
    

    pub fn upJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        const index: i32 = self.imageJList.?.getSelectedIndex();
        if (index > 0) {
            const defaultListModel: ?*DefaultListModel = Inheritance.cast(?*DefaultListModel, self.imageJList.?.getModel());
            const indexedImageIcon: ?*ImageIconUnique = Inheritance.cast(?*ImageIconUnique, Inheritance.call(defaultListModel.?, "remove", .{ index }));
            _ = Inheritance.call(defaultListModel.?, "insertElementAt", .{ indexedImageIcon, index - 1 });
            _ = Inheritance.call(self.imageJList.?, "setSelectedIndex", .{ index - 1 });
            _ = self.updateImage();
        }
    }
    

    pub fn jButtonOrderActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        const defaultListModel: ?*DefaultListModel = Inheritance.cast(?*DefaultListModel, self.imageJList.?.getModel());
        const size: i32 = defaultListModel.?.size();
        const last: i32 = size - 1;
        {
            var index: i32 = last;
            while (index >= 0) : (index -= 1) {
            const indexedImageIcon: ?*ImageIconUnique = Inheritance.cast(?*ImageIconUnique, Inheritance.call(defaultListModel.?, "remove", .{ last }));
            _ = Inheritance.call(defaultListModel.?, "insertElementAt", .{ indexedImageIcon, last - index });
            }
        }
        if (size > 0) {
            _ = Inheritance.call(self.imageJList.?, "setSelectedIndex", .{ 0 });
            _ = self.updateImage();
        }
    }
    

    pub fn getImageProcessorInput(self: *Self) ?*ImageProcessorInput {
        return self.imageProcessorInput;
    }
    

    pub fn setImageProcessorInput(self: *Self, imageProcessorInput: ?*ImageProcessorInput) void {
        self.imageProcessorInput = imageProcessorInput;
        _ = self.init();
    }
};

