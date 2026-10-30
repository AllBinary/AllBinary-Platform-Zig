// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const ImageProcessedVisitor = @import("org/allbinary/media/image/ImageProcessedVisitor.zig").ImageProcessedVisitor;
const ImageProcessorInput = @import("org/allbinary/media/image/ImageProcessorInput.zig").ImageProcessorInput;
const ImageStrings = @import("org/allbinary/media/image/ImageStrings.zig").ImageStrings;
const SpriteSplitterUtil = @import("org/allbinary/media/image/SpriteSplitterUtil.zig").SpriteSplitterUtil;
const CommonPhoneStrings = @import("org/allbinary/string/CommonPhoneStrings.zig").CommonPhoneStrings;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Integer = @import("java/lang/Integer.zig").Integer;
const Short = @import("java/lang/Short.zig").Short;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const SpriteSplitterImageJPanel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.gui.SpriteSplitterImageJPanel";
    base: JPanel = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    commonSeps: ?*CommonSeps = null,
    imageStrings: ?*ImageStrings = null,
    imageProcessorInput: ?*ImageProcessorInput = null,
    result: ?*BufferedImage = null,
    generateJButton: ?*JButton = null,
    heightReductionTextField: ?*JTextField = null,
    increaseHeightTextField: ?*JTextField = null,
    increaseWidthTextField: ?*JTextField = null,
    jLabel1: ?*JLabel = null,
    jLabel2: ?*JLabel = null,
    jLabel3: ?*JLabel = null,
    jLabel4: ?*JLabel = null,
    jLabel5: ?*JLabel = null,
    jLabel6: ?*JLabel = null,
    jLabel7: ?*JLabel = null,
    jLabel8: ?*JLabel = null,
    jPanel1: ?*JPanel = null,
    jPanel2: ?*JPanel = null,
    spriteTypeJComboBox: ?*JComboBox = null,
    totalAnimationsJComboBox: ?*JComboBox = null,
    totalFramesJComboBox: ?*JComboBox = null,
    widthReductionTextField: ?*JTextField = null,
    writeOverOriginalJCheckBox: ?*JCheckBox = null,
    // Implements ImageProcessedVisitor

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.commonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        this.imageStrings = Inheritance.upcast(?*ImageStrings, ImageStrings.getInstance());
        
        this.result = null;
        this.generateJButton = null;
        this.heightReductionTextField = null;
        this.increaseHeightTextField = null;
        this.increaseWidthTextField = null;
        this.jLabel1 = null;
        this.jLabel2 = null;
        this.jLabel3 = null;
        this.jLabel4 = null;
        this.jLabel5 = null;
        this.jLabel6 = null;
        this.jLabel7 = null;
        this.jLabel8 = null;
        this.jPanel1 = null;
        this.jPanel2 = null;
        this.spriteTypeJComboBox = null;
        this.totalAnimationsJComboBox = null;
        this.totalFramesJComboBox = null;
        this.widthReductionTextField = null;
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
//                     const spriteSplitterUtil: ?*SpriteSplitterUtil = Inheritance.upcast(?*SpriteSplitterUtil, SpriteSplitterUtil.getInstance());
//                     const spriteType: ?*String = Inheritance.cast(?*String, self.spriteTypeJComboBox.?.getSelectedItem());
//                     const totalFrames: ?*Integer = Inheritance.upcast(?*Integer, Inheritance.callStatic(Integer, "valueOf", .{ Inheritance.cast(?*String, self.totalFramesJComboBox.?.getSelectedItem()) }));
//                     const totalAnimations: ?*Integer = Inheritance.upcast(?*Integer, Inheritance.callStatic(Integer, "valueOf", .{ Inheritance.cast(?*String, self.totalAnimationsJComboBox.?.getSelectedItem()) }));
//                     const widthReduction: i32 = Inheritance.callStatic(Integer, "valueOf", .{ self.widthReductionTextField.?.getText() });
//                     const heightReduction: i32 = Inheritance.callStatic(Integer, "valueOf", .{ self.heightReductionTextField.?.getText() });
//                     const increaseWidth: i32 = Inheritance.callStatic(Integer, "valueOf", .{ self.increaseWidthTextField.?.getText() });
//                     const increaseHeight: i32 = Inheritance.callStatic(Integer, "valueOf", .{ self.increaseHeightTextField.?.getText() });
//                     _ = Inheritance.call(spriteSplitterUtil.?, "process", .{ self.getImageProcessorInput(), totalFrames, totalAnimations, widthReduction, heightReduction, increaseWidth, increaseHeight, spriteType, self });
//                 }
//                 // catch (Exception e):
// //                     _ = Inheritance.call(logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.RUN, e });
//             }
.start();
    }
    

    pub fn initComponents(self: *Self) void {
        self.writeOverOriginalJCheckBox = JCheckBox.create();
        self.widthReductionTextField = JTextField.create();
        self.jLabel5 = JLabel.create();
        self.jPanel1 = JPanel.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn paint(self: *Self, graphics: ?*Graphics) void {
//                 if (self.result != null) {
//                     _ = Inheritance.call(graphics.?, "drawImage", .{ self.result, 0, 0, Inheritance.call(self.result.?, "getWidth", .{ null }), Inheritance.call(self.result.?, "getHeight", .{ null }), null });
//                 }
//             }
;
        self.jLabel4 = JLabel.create();
        self.jLabel6 = JLabel.create();
        self.heightReductionTextField = JTextField.create();
        self.generateJButton = JButton.create();
        self.jPanel2 = JPanel.create();
        self.jLabel1 = JLabel.create();
        self.totalFramesJComboBox = JComboBox.create();
        const size: i32 = 70;
        const animationStringArray2: []?*String = array_N68059: { const array_N68059_array = allocator.alloc(?*String, @intCast(size - 1)) catch unreachable; @memset(array_N68059_array, null); break :array_N68059 array_N68059_array; };
        {
            var index: i32 = 1;
            while (index < size) : (index += 1) {
            animationStringArray2[@intCast(index - 1)] = Inheritance.upcast(@TypeOf(animationStringArray2[@intCast(index - 1)]), String.valueOf(index));
            }
        }
        _ = Inheritance.call(self.totalFramesJComboBox.?, "setModel", .{ Inheritance.callStatic(DefaultComboBoxModel, "create1", .{ animationStringArray2 }) });
        self.jLabel2 = JLabel.create();
        self.totalAnimationsJComboBox = JComboBox.create();
        const animationStringArray: []?*String = array_N68436: { const array_N68436_array = allocator.alloc(?*String, @intCast(size - 1)) catch unreachable; @memset(array_N68436_array, null); break :array_N68436 array_N68436_array; };
        {
            var index: i32 = 1;
            while (index < size) : (index += 1) {
            animationStringArray[@intCast(index - 1)] = Inheritance.upcast(@TypeOf(animationStringArray[@intCast(index - 1)]), String.valueOf(index));
            }
        }
        _ = Inheritance.call(self.totalAnimationsJComboBox.?, "setModel", .{ Inheritance.callStatic(DefaultComboBoxModel, "create1", .{ animationStringArray }) });
        self.jLabel3 = JLabel.create();
        self.spriteTypeJComboBox = JComboBox.create();
        _ = Inheritance.call(self.spriteTypeJComboBox.?, "setModel", .{ Inheritance.callStatic(DefaultComboBoxModel, "create1", .{ @constCast(&[_]?*String{ Inheritance.receiverOf(org.allbinary.?.media.?.image.?.SpriteSplitterUtil.?, "getInstance").getInstance().?.DIRECTIONAL_ANIMATIONS, Inheritance.receiverOf(org.allbinary.?.media.?.image.?.SpriteSplitterUtil.?, "getInstance").getInstance().?.HORIZONTAL_ANIMATIONS, Inheritance.receiverOf(org.allbinary.?.media.?.image.?.SpriteSplitterUtil.?, "getInstance").getInstance().?.HORIZONTAL_SPRITE })[0..] }) });
        self.jLabel7 = JLabel.create();
        self.increaseWidthTextField = JTextField.create();
        self.jLabel8 = JLabel.create();
        self.increaseHeightTextField = JTextField.create();
        _ = Inheritance.call(self.writeOverOriginalJCheckBox.?, "setText", .{ String.literal("Write Over Original") });
        _ = Inheritance.call(self.writeOverOriginalJCheckBox.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "writeOverOriginalJCheckBoxActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.widthReductionTextField.?, "setText", .{ CommonPhoneStrings.getInstance().?.ZERO });
        _ = Inheritance.call(self.widthReductionTextField.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "widthReductionTextFieldActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jLabel5.?, "setText", .{ String.literal("Less Width:") });
        _ = Inheritance.call(self.jLabel4.?, "setText", .{ String.literal("Results:") });
        const jPanel1Layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.jPanel1 });
        _ = Inheritance.call(self.jPanel1.?, "setLayout", .{ jPanel1Layout });
        _ = Inheritance.call(jPanel1Layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(jPanel1Layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(jPanel1Layout.?.createSequentialGroup().?, "addComponent", .{ self.jLabel4 }).?, "addGap", .{ 0, 0, @as(i16, std.math.maxInt(i16)) }) }) });
        _ = Inheritance.call(jPanel1Layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(jPanel1Layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(jPanel1Layout.?.createSequentialGroup().?, "addComponent", .{ self.jLabel4 }).?, "addGap", .{ 0, 184, @as(i16, std.math.maxInt(i16)) }) }) });
        _ = Inheritance.call(self.jLabel6.?, "setText", .{ String.literal("Less Height:") });
        _ = Inheritance.call(self.heightReductionTextField.?, "setText", .{ CommonPhoneStrings.getInstance().?.ZERO });
        _ = Inheritance.call(self.generateJButton.?, "setText", .{ String.literal("Generate") });
        _ = Inheritance.call(self.generateJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "generateJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jLabel1.?, "setText", .{ String.literal("Row Total:") });
        _ = Inheritance.call(self.totalFramesJComboBox.?, "setSelectedIndex", .{ 1 });
        _ = Inheritance.call(self.totalFramesJComboBox.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "totalFramesJComboBoxActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jLabel2.?, "setText", .{ String.literal("Column Total :") });
        _ = Inheritance.call(self.totalAnimationsJComboBox.?, "setSelectedIndex", .{ 3 });
        _ = Inheritance.call(self.totalAnimationsJComboBox.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "totalAnimationsJComboBoxActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jLabel3.?, "setText", .{ String.literal("Type:") });
        _ = Inheritance.call(self.spriteTypeJComboBox.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "spriteTypeJComboBoxActionPerformed", .{ evt });
//             }
 });
        const jPanel2Layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.jPanel2 });
        _ = Inheritance.call(self.jPanel2.?, "setLayout", .{ jPanel2Layout });
        _ = Inheritance.call(jPanel2Layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(jPanel2Layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.TRAILING, Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.receiverOf(jPanel2Layout.?.createSequentialGroup().?, "addContainerGap").addContainerGap().?, "addComponent", .{ self.jLabel1 }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.totalFramesJComboBox, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 48, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.jLabel2 }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.totalAnimationsJComboBox, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 39, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.jLabel3 }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.spriteTypeJComboBox, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 172, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addContainerGap", .{ javax.swing.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }) }) });
        _ = Inheritance.call(jPanel2Layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(jPanel2Layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(jPanel2Layout.?.createSequentialGroup().?, "addContainerGap", .{ javax.swing.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(jPanel2Layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.jLabel1 }).?, "addComponent", .{ self.totalFramesJComboBox, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.jLabel2 }).?, "addComponent", .{ self.totalAnimationsJComboBox, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.jLabel3 }).?, "addComponent", .{ self.spriteTypeJComboBox, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }) }) });
        _ = Inheritance.call(self.jLabel7.?, "setText", .{ String.literal("More Width:") });
        _ = Inheritance.call(self.increaseWidthTextField.?, "setText", .{ CommonPhoneStrings.getInstance().?.ZERO });
        _ = Inheritance.call(self.increaseWidthTextField.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "increaseWidthTextFieldActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jLabel8.?, "setText", .{ String.literal("More Height:") });
        _ = Inheritance.call(self.increaseHeightTextField.?, "setText", .{ CommonPhoneStrings.getInstance().?.ZERO });
        const layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self });
        _ = Inheritance.call(self, "setLayout", .{ layout });
        _ = Inheritance.call(layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "addComponent", .{ self.jPanel2, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 415, @as(i16, std.math.maxInt(i16)) }).?, "addGap", .{ 78, 78, 78 }) }).?, "addGroup", .{ Inheritance.receiverOf(Inheritance.call(Inheritance.receiverOf(layout.?.createSequentialGroup().?, "addContainerGap").addContainerGap().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addComponent", .{ self.jPanel1, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }).?, "addGroup", .{ Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "addComponent", .{ self.writeOverOriginalJCheckBox }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.generateJButton }) }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "addComponent", .{ self.jLabel5 }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.widthReductionTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 41, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.jLabel6 }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.heightReductionTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 46, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.jLabel7 }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.increaseWidthTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 41, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.jLabel8 }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.increaseHeightTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 46, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }) }).?, "addGap", .{ 0, 0, @as(i16, std.math.maxInt(i16)) }) }) }).?, "addContainerGap").addContainerGap() }) });
        _ = Inheritance.call(layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "addComponent", .{ self.jPanel2, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.jLabel7 }).?, "addComponent", .{ self.increaseWidthTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 22, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.jLabel8 }).?, "addComponent", .{ self.increaseHeightTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.jLabel5 }).?, "addComponent", .{ self.widthReductionTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 22, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.jLabel6 }).?, "addComponent", .{ self.heightReductionTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.writeOverOriginalJCheckBox }).?, "addComponent", .{ self.generateJButton }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addComponent", .{ self.jPanel1, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }) }) });
    }
    

    pub fn writeOverOriginalJCheckBoxActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self;
    }
    

    pub fn generateJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self.process();
    }
    

    pub fn spriteTypeJComboBoxActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        const spriteSplitterUtil: ?*SpriteSplitterUtil = Inheritance.upcast(?*SpriteSplitterUtil, SpriteSplitterUtil.getInstance());
        _ = Inheritance.call(self.jLabel1.?, "setText", .{ spriteSplitterUtil.?.ANIMATIONS_LABELS[@intCast(self.spriteTypeJComboBox.?.getSelectedIndex())] });
        _ = Inheritance.call(self.jLabel2.?, "setText", .{ spriteSplitterUtil.?.ANIMATIONS_LABELS[@intCast(self.spriteTypeJComboBox.?.getSelectedIndex() + 1)] });
    }
    

    pub fn totalAnimationsJComboBoxActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self;
    }
    

    pub fn totalFramesJComboBoxActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self;
    }
    

    pub fn widthReductionTextFieldActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self;
    }
    

    pub fn increaseWidthTextFieldActionPerformed(self: *Self, evt: ?*ActionEvent) void {
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
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.VISIT, self, self.commonStrings.?.VISIT });
        self.result = generatedBufferedImage;
        _ = Inheritance.receiverOf(Inheritance.receiver(self, "getParent").getParent().?, "repaint").repaint();
        var file: ?*File = Inheritance.upcast(?*File, self.imageProcessorInput.?.getFiles()[@intCast(index)]);
        if (!self.writeOverOriginalJCheckBox.?.isSelected()) {
            var filePath: ?*String = Inheritance.upcast(?*String, file.?.getAbsolutePath());
            const extensionIndex: i32 = Inheritance.call(filePath.?, "indexOf", .{ self.imageStrings.?.PNG_EXTENSION });
            filePath = Inheritance.upcast(@TypeOf(filePath), Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ filePath.?.substring2(0, extensionIndex) }).?, "append", .{ self.commonSeps.?.UNDERSCORE }).?, "append", .{ name }).?, "append", .{ self.imageStrings.?.PNG_EXTENSION }))));
            file = Inheritance.callStatic(File, "create1", .{ filePath });
        }
        const isWritten: bool = Inheritance.callStatic(ImageIO, "write", .{ Inheritance.cast(?*RenderedImage, self.result), self.imageStrings.?.PNG, file });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("File: ") }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ file }) }).?, "append", .{ String.literal(" Wrote: ") }).?, "appendboolean", .{ isWritten }))), self, self.commonStrings.?.RUN });
    }
};

