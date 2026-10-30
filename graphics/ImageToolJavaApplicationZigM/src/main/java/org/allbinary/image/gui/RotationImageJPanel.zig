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
// const IOException = @import("java/io/IOException.zig").IOException;
// const ImageIO = @import("javax/imageio/ImageIO.zig").ImageIO;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const ImageArrayRotationUtil = @import("org/allbinary/media/image/ImageArrayRotationUtil.zig").ImageArrayRotationUtil;
const ImageProcessedVisitor = @import("org/allbinary/media/image/ImageProcessedVisitor.zig").ImageProcessedVisitor;
const ImageProcessorInput = @import("org/allbinary/media/image/ImageProcessorInput.zig").ImageProcessorInput;
const ImageStrings = @import("org/allbinary/media/image/ImageStrings.zig").ImageStrings;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Short = @import("java/lang/Short.zig").Short;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const RotationImageJPanel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.gui.RotationImageJPanel";
    base: JPanel = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    imageStrings: ?*ImageStrings = null,
    imageProcessorInput: ?*ImageProcessorInput = null,
    result: ?*BufferedImage = null,
    generateJButton: ?*JButton = null,
    jLabel1: ?*JLabel = null,
    jLabel2: ?*JLabel = null,
    jLabel3: ?*JLabel = null,
    jPanel1: ?*JPanel = null,
    jPanel2: ?*JPanel = null,
    jPanel3: ?*JPanel = null,
    totalAngleJComboBox: ?*JComboBox = null,
    writeOverOriginalJCheckBox: ?*JCheckBox = null,
    // Implements ImageProcessedVisitor

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.imageStrings = Inheritance.upcast(?*ImageStrings, ImageStrings.getInstance());
        
        this.result = null;
        this.generateJButton = null;
        this.jLabel1 = null;
        this.jLabel2 = null;
        this.jLabel3 = null;
        this.jPanel1 = null;
        this.jPanel2 = null;
        this.jPanel3 = null;
        this.totalAngleJComboBox = null;
        this.writeOverOriginalJCheckBox = null;
    }
    

    pub fn create1(imageProcessorInput: ?*ImageProcessorInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(JPanel, "create", .{  }).*;
        this.initFields();
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
//                 const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
//                 { // try
//                     const angleAsString: ?*String = Inheritance.cast(?*String, self.totalAngleJComboBox.?.getSelectedItem());
//                     _ = Inheritance.call(ImageArrayRotationUtil.getInstance().?, "process", .{ self.getImageProcessorInput(), angleAsString, self });
//                 }
//                 // catch (Exception e):
// //                     _ = Inheritance.call(logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.RUN, e });
//             }
.start();
    }
    

    pub fn initComponents(self: *Self) void {
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
        self.jLabel1 = JLabel.create();
        self.generateJButton = JButton.create();
        self.totalAngleJComboBox = JComboBox.create();
        self.jLabel3 = JLabel.create();
        self.writeOverOriginalJCheckBox = JCheckBox.create();
        self.jPanel3 = JPanel.create();
        self.jLabel2 = JLabel.create();
        const jPanel1Layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.jPanel1 });
        _ = Inheritance.call(self.jPanel1.?, "setLayout", .{ jPanel1Layout });
        _ = Inheritance.call(jPanel1Layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(jPanel1Layout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING }).?, "add", .{ 0, 436, @as(i16, std.math.maxInt(i16)) }) });
        _ = Inheritance.call(jPanel1Layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(jPanel1Layout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING }).?, "add", .{ 0, 227, @as(i16, std.math.maxInt(i16)) }) });
        _ = Inheritance.call(self.generateJButton.?, "setText", .{ String.literal("Generate") });
        _ = Inheritance.call(self.generateJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "generateJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.totalAngleJComboBox.?, "setModel", .{ Inheritance.callStatic(DefaultComboBoxModel, "create1", .{ @constCast(&[_]?*String{ self.commonStrings.?.UP, self.commonStrings.?.DOWN, String.literal("-90"), String.literal("90") })[0..] }) });
        _ = Inheritance.call(self.totalAngleJComboBox.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "totalAngleJComboBoxActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jLabel3.?, "setText", .{ String.literal("Total Angle:") });
        _ = Inheritance.call(self.writeOverOriginalJCheckBox.?, "setText", .{ String.literal("Write Over Original") });
        const jPanel2Layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.jPanel2 });
        _ = Inheritance.call(self.jPanel2.?, "setLayout", .{ jPanel2Layout });
        _ = Inheritance.call(jPanel2Layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(jPanel2Layout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING }).?, "add", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(jPanel2Layout.?.createSequentialGroup().?, "add", .{ 8, 8, 8 }).?, "add", .{ self.jLabel1 }).?, "addPreferredGap", .{ org.jdesktop.?.layout.?.LayoutStyle.?.RELATED }).?, "add", .{ self.jLabel3 }).?, "addPreferredGap", .{ org.jdesktop.?.layout.?.LayoutStyle.?.RELATED }).?, "add", .{ self.totalAngleJComboBox, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE }).?, "addPreferredGap", .{ org.jdesktop.?.layout.?.LayoutStyle.?.RELATED }).?, "add", .{ self.writeOverOriginalJCheckBox }).?, "addPreferredGap", .{ org.jdesktop.?.layout.?.LayoutStyle.?.RELATED }).?, "add", .{ self.generateJButton }).?, "addContainerGap", .{ org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }) }) });
        _ = Inheritance.call(jPanel2Layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(jPanel2Layout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING }).?, "add", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(jPanel2Layout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.BASELINE }).?, "add", .{ self.jLabel1 }).?, "add", .{ self.generateJButton }).?, "add", .{ self.totalAngleJComboBox, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE }).?, "add", .{ self.jLabel3 }).?, "add", .{ self.writeOverOriginalJCheckBox }) }) });
        _ = Inheritance.call(self.jLabel2.?, "setText", .{ String.literal("Results:") });
        const jPanel3Layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.jPanel3 });
        _ = Inheritance.call(self.jPanel3.?, "setLayout", .{ jPanel3Layout });
        _ = Inheritance.call(jPanel3Layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(jPanel3Layout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING }).?, "add", .{ Inheritance.call(Inheritance.call(jPanel3Layout.?.createSequentialGroup().?, "add", .{ self.jLabel2 }).?, "addContainerGap", .{ 377, @as(i16, std.math.maxInt(i16)) }) }) });
        _ = Inheritance.call(jPanel3Layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(jPanel3Layout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING }).?, "add", .{ self.jLabel2 }) });
        const layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self });
        _ = Inheritance.call(self, "setLayout", .{ layout });
        _ = Inheritance.call(layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING }).?, "add", .{ org.jdesktop.?.layout.?.GroupLayout.?.TRAILING, self.jPanel2, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }).?, "add", .{ Inheritance.receiverOf(Inheritance.call(Inheritance.receiverOf(layout.?.createSequentialGroup().?, "addContainerGap").addContainerGap().?, "add", .{ self.jPanel3, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }).?, "addContainerGap").addContainerGap() }).?, "add", .{ self.jPanel1, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }) });
        _ = Inheritance.call(layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING }).?, "add", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "add", .{ self.jPanel2, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE }).?, "addPreferredGap", .{ org.jdesktop.?.layout.?.LayoutStyle.?.UNRELATED }).?, "add", .{ self.jPanel3, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE }).?, "addPreferredGap", .{ org.jdesktop.?.layout.?.LayoutStyle.?.RELATED }).?, "add", .{ self.jPanel1, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }) }) });
    }
    

    pub fn generateJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self.process();
    }
    

    pub fn totalAngleJComboBoxActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self;
    }
    

    pub fn getImageProcessorInput(self: *Self) ?*ImageProcessorInput {
        return self.imageProcessorInput;
    }
    

    pub fn setImageProcessorInput(self: *Self, imageProcessorInput: ?*ImageProcessorInput) void {
        self.imageProcessorInput = imageProcessorInput;
    }
    

    // throws IOException
    pub fn visit(self: *Self, generatedBufferedImage: ?*BufferedImage, name: ?*String, index: i32) void {
        self.result = generatedBufferedImage;
        _ = Inheritance.receiverOf(Inheritance.receiver(self, "getParent").getParent().?, "repaint").repaint();
        var file: ?*File = Inheritance.upcast(?*File, self.imageProcessorInput.?.getFiles()[@intCast(index)]);
        if (!self.writeOverOriginalJCheckBox.?.isSelected()) {
            var filePath: ?*String = Inheritance.upcast(?*String, file.?.getAbsolutePath());
            const extensionIndex: i32 = Inheritance.call(filePath.?, "indexOf", .{ self.imageStrings.?.PNG_EXTENSION });
            filePath = Inheritance.upcast(@TypeOf(filePath), Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ filePath.?.substring2(0, extensionIndex) }).?, "append", .{ CommonSeps.getInstance().?.UNDERSCORE }).?, "append", .{ name }).?, "append", .{ self.imageStrings.?.PNG_EXTENSION }))));
            file = Inheritance.callStatic(File, "create1", .{ filePath });
        }
        const isWritten: bool = Inheritance.callStatic(ImageIO, "write", .{ Inheritance.cast(?*RenderedImage, self.result), self.imageStrings.?.PNG, file });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.literal("File: "), file), String.literal(" Wrote: ")), isWritten), self, self.commonStrings.?.RUN });
    }
};

