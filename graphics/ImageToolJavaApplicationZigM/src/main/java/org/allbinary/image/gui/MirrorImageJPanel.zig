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
// const RenderedImage = @import("java/awt/image/RenderedImage.zig").RenderedImage;
const File = @import("java/io/File.zig").File;
// const ImageIO = @import("javax/imageio/ImageIO.zig").ImageIO;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ImageProcessorInput = @import("org/allbinary/media/image/ImageProcessorInput.zig").ImageProcessorInput;
const ImageProcessorInputCompositeInterface = @import("org/allbinary/media/image/ImageProcessorInputCompositeInterface.zig").ImageProcessorInputCompositeInterface;
const ImageStrings = @import("org/allbinary/media/image/ImageStrings.zig").ImageStrings;
const MirrorImageUtil = @import("org/allbinary/media/image/MirrorImageUtil.zig").MirrorImageUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Short = @import("java/lang/Short.zig").Short;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const MirrorImageJPanel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.gui.MirrorImageJPanel";
    base: JPanel = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    imageStrings: ?*ImageStrings = null,
    imageProcessorInput: ?*ImageProcessorInput = null,
    result: ?*BufferedImage = null,
    buttonGroup: ?*ButtonGroup = null,
    generateJButton: ?*JButton = null,
    horizontalJCheckBox: ?*JCheckBox = null,
    jLabel2: ?*JLabel = null,
    jLayeredPane1: ?*JLayeredPane = null,
    jPanel1: ?*JPanel = null,
    jPanel2: ?*JPanel = null,
    jPanel3: ?*JPanel = null,
    renameJRadioButton: ?*JRadioButton = null,
    verticleJCheckBox: ?*JCheckBox = null,
    writeOverOriginalJRadioButton: ?*JRadioButton = null,
    // Implements ImageProcessorInputCompositeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.imageStrings = Inheritance.upcast(?*ImageStrings, ImageStrings.getInstance());
        
        this.result = null;
        this.buttonGroup = null;
        this.generateJButton = null;
        this.horizontalJCheckBox = null;
        this.jLabel2 = null;
        this.jLayeredPane1 = null;
        this.jPanel1 = null;
        this.jPanel2 = null;
        this.jPanel3 = null;
        this.renameJRadioButton = null;
        this.verticleJCheckBox = null;
        this.writeOverOriginalJRadioButton = null;
    }
    

    pub fn create1(imageProcessorInput: ?*ImageProcessorInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(JPanel, "create", .{  }).*;
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ String.literal("Starting"), this, this.commonStrings.?.CONSTRUCTOR });
        _ = this.initComponents();
        this.imageProcessorInput = imageProcessorInput;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn process(self: *Self) void {
        _ = Thread.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn run(self: *Self) void {
//                 const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
//                 { // try
//                     const imageProcessorInput: ?*ImageProcessorInput = Inheritance.upcast(?*ImageProcessorInput, self.getImageProcessorInput());
//                     const bufferedImageArray: []?*BufferedImage = imageProcessorInput.?.getBufferedImageArray();
//                     {
//                         var index: i32 = 0;
//                         while (index < @as(i32, @intCast(bufferedImageArray.len))) : (index += 1) {
//                         self.result = Inheritance.upcast(@TypeOf(self.result), Inheritance.call(MirrorImageUtil.getInstance().?, "getImage", .{ bufferedImageArray[@intCast(index)], self.verticleJCheckBox.?.isSelected(), self.horizontalJCheckBox.?.isSelected() }));
//                         var file: ?*File = Inheritance.upcast(?*File, imageProcessorInput.?.getFiles()[@intCast(index)]);
//                         if (self.writeOverOriginalJRadioButton.?.isSelected()) {
//                         } else if (self.renameJRadioButton.?.isSelected()) {
//                             var filePath: ?*String = Inheritance.upcast(?*String, file.?.getAbsolutePath());
//                             const extensionIndex: i32 = Inheritance.call(filePath.?, "indexOf", .{ self.imageStrings.?.PNG_EXTENSION });
//                             filePath = Inheritance.upcast(@TypeOf(filePath), String.plus(String.plus(filePath.?.substring2(0, extensionIndex), String.literal("_mirror")), self.imageStrings.?.PNG_EXTENSION));
//                             _ = Inheritance.call(logUtil.?, "putF", .{ String.plus(String.literal("Renamed File: "), filePath), self, self.commonStrings.?.RUN });
//                             file = Inheritance.callStatic(File, "create1", .{ filePath });
//                         }
//                         const isWritten: bool = Inheritance.callStatic(ImageIO, "write", .{ Inheritance.cast(?*RenderedImage, self.result), self.imageStrings.?.PNG, file });
//                         _ = Inheritance.call(logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.literal("File: "), file), String.literal(" Wrote: ")), isWritten), self, self.commonStrings.?.RUN });
//                         _ = Inheritance.receiverOf(Inheritance.receiver(self, "getParent").getParent().?, "repaint").repaint();
//                         }
//                     }
//                 }
//                 // catch (Exception e):
// //                     _ = Inheritance.call(logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.RUN, e });
//             }
.start();
    }
    

    pub fn initComponents(self: *Self) void {
        self.jLayeredPane1 = JLayeredPane.create();
        self.buttonGroup = ButtonGroup.create();
        self.jPanel1 = JPanel.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn paint(self: *Self, graphics: ?*Graphics) void {
//                 if (self.result != null) {
//                     _ = Inheritance.call(graphics.?, "drawImage", .{ self.result, 0, 0, Inheritance.call(self.result.?, "getWidth", .{ null }), Inheritance.call(self.result.?, "getHeight", .{ null }), null });
//                 }
//             }
;
        self.jPanel2 = JPanel.create();
        self.horizontalJCheckBox = JCheckBox.create();
        self.verticleJCheckBox = JCheckBox.create();
        self.generateJButton = JButton.create();
        self.renameJRadioButton = JRadioButton.create();
        self.writeOverOriginalJRadioButton = JRadioButton.create();
        self.jPanel3 = JPanel.create();
        self.jLabel2 = JLabel.create();
        const jPanel1Layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.jPanel1 });
        _ = Inheritance.call(self.jPanel1.?, "setLayout", .{ jPanel1Layout });
        _ = Inheritance.call(jPanel1Layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(jPanel1Layout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING }).?, "add", .{ 0, 522, @as(i16, std.math.maxInt(i16)) }) });
        _ = Inheritance.call(jPanel1Layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(jPanel1Layout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING }).?, "add", .{ 0, 230, @as(i16, std.math.maxInt(i16)) }) });
        _ = Inheritance.call(self.horizontalJCheckBox.?, "setSelected", .{ true });
        _ = Inheritance.call(self.horizontalJCheckBox.?, "setText", .{ String.literal("Horizontal") });
        _ = Inheritance.call(self.horizontalJCheckBox.?, "setEnabled", .{ false });
        _ = Inheritance.call(self.verticleJCheckBox.?, "setText", .{ String.literal("Verticle") });
        _ = Inheritance.call(self.verticleJCheckBox.?, "setEnabled", .{ false });
        _ = Inheritance.call(self.generateJButton.?, "setText", .{ String.literal("Generate") });
        _ = Inheritance.call(self.generateJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "generateJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.renameJRadioButton.?, "setText", .{ String.literal("Save As filename_mirror") });
        _ = Inheritance.call(self.renameJRadioButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "renameJRadioButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.writeOverOriginalJRadioButton.?, "setText", .{ String.literal("Write Over Original") });
        const jPanel2Layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.jPanel2 });
        _ = Inheritance.call(self.jPanel2.?, "setLayout", .{ jPanel2Layout });
        _ = Inheritance.call(jPanel2Layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(jPanel2Layout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING }).?, "add", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(jPanel2Layout.?.createSequentialGroup().?, "addContainerGap", .{ org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }).?, "add", .{ self.verticleJCheckBox }).?, "addPreferredGap", .{ org.jdesktop.?.layout.?.LayoutStyle.?.UNRELATED }).?, "add", .{ self.horizontalJCheckBox }).?, "addPreferredGap", .{ org.jdesktop.?.layout.?.LayoutStyle.?.RELATED }).?, "add", .{ self.writeOverOriginalJRadioButton }).?, "addPreferredGap", .{ org.jdesktop.?.layout.?.LayoutStyle.?.UNRELATED }).?, "add", .{ self.renameJRadioButton }).?, "addPreferredGap", .{ org.jdesktop.?.layout.?.LayoutStyle.?.RELATED }).?, "add", .{ self.generateJButton }).?, "add", .{ 37, 37, 37 }) }) });
        _ = Inheritance.call(jPanel2Layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(jPanel2Layout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING }).?, "add", .{ Inheritance.receiverOf(Inheritance.call(jPanel2Layout.?.createSequentialGroup().?, "add", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(jPanel2Layout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.BASELINE }).?, "add", .{ self.horizontalJCheckBox }).?, "add", .{ self.verticleJCheckBox }).?, "add", .{ self.writeOverOriginalJRadioButton }).?, "add", .{ self.renameJRadioButton }).?, "add", .{ self.generateJButton }) }).?, "addContainerGap").addContainerGap() }) });
        _ = Inheritance.call(self.jLabel2.?, "setText", .{ String.literal("Results:") });
        const jPanel3Layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.jPanel3 });
        _ = Inheritance.call(self.jPanel3.?, "setLayout", .{ jPanel3Layout });
        _ = Inheritance.call(jPanel3Layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(jPanel3Layout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING }).?, "add", .{ Inheritance.call(Inheritance.call(jPanel3Layout.?.createSequentialGroup().?, "add", .{ self.jLabel2 }).?, "addContainerGap", .{ 433, @as(i16, std.math.maxInt(i16)) }) }) });
        _ = Inheritance.call(jPanel3Layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(jPanel3Layout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING }).?, "add", .{ self.jLabel2 }) });
        const layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self });
        _ = Inheritance.call(self, "setLayout", .{ layout });
        _ = Inheritance.call(layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING }).?, "add", .{ org.jdesktop.?.layout.?.GroupLayout.?.TRAILING, Inheritance.receiverOf(Inheritance.call(Inheritance.receiverOf(layout.?.createSequentialGroup().?, "addContainerGap").addContainerGap().?, "add", .{ self.jPanel3, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }).?, "addContainerGap").addContainerGap() }).?, "add", .{ self.jPanel1, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }).?, "add", .{ Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "add", .{ self.jPanel2, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }).?, "addContainerGap", .{ org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }) }) });
        _ = Inheritance.call(layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING }).?, "add", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "add", .{ self.jPanel2, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE, 25, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE }).?, "addPreferredGap", .{ org.jdesktop.?.layout.?.LayoutStyle.?.RELATED }).?, "add", .{ self.jPanel3, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE }).?, "addPreferredGap", .{ org.jdesktop.?.layout.?.LayoutStyle.?.RELATED }).?, "add", .{ self.jPanel1, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }) }) });
    }
    

    pub fn generateJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self.process();
    }
    

    pub fn renameJRadioButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self;
    }
    

    pub fn getImageProcessorInput(self: *Self) ?*ImageProcessorInput {
        return self.imageProcessorInput;
    }
    

    pub fn setImageProcessorInput(self: *Self, imageProcessorInput: ?*ImageProcessorInput) void {
        self.imageProcessorInput = imageProcessorInput;
    }
};

