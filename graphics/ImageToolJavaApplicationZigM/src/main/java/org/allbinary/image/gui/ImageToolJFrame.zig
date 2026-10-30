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
// const Arrays = @import("java/util/Arrays.zig").Arrays;
// const Comparator = @import("java/util/Comparator.zig").Comparator;
// const ImageIO = @import("javax/imageio/ImageIO.zig").ImageIO;
const FileJDialog = @import("org/allbinary/gui/dialog/FileJDialog.zig").FileJDialog;
const FileJDialogListenerInterface = @import("org/allbinary/gui/dialog/FileJDialogListenerInterface.zig").FileJDialogListenerInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ImageProcessorInput = @import("org/allbinary/media/image/ImageProcessorInput.zig").ImageProcessorInput;
const ImageProcessorInputCompositeInterface = @import("org/allbinary/media/image/ImageProcessorInputCompositeInterface.zig").ImageProcessorInputCompositeInterface;
const ColorRange = @import("org/allbinary/media/image/analysis/ColorRange.zig").ColorRange;
const ColorRangeInterface = @import("org/allbinary/media/image/analysis/ColorRangeInterface.zig").ColorRangeInterface;
const ImageAnalysis = @import("org/allbinary/media/image/analysis/ImageAnalysis.zig").ImageAnalysis;
const ImageAnalysisResults = @import("org/allbinary/media/image/analysis/ImageAnalysisResults.zig").ImageAnalysisResults;
const CommonPhoneStrings = @import("org/allbinary/string/CommonPhoneStrings.zig").CommonPhoneStrings;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const CanvasImageJPanel = @import("org/allbinary/image/gui/CanvasImageJPanel.zig").CanvasImageJPanel;
const CreateIconImagesJPanel = @import("org/allbinary/image/gui/CreateIconImagesJPanel.zig").CreateIconImagesJPanel;
const ImageAnalysisResultsJPanel = @import("org/allbinary/image/gui/ImageAnalysisResultsJPanel.zig").ImageAnalysisResultsJPanel;
const ImageUnifierJPanel = @import("org/allbinary/image/gui/ImageUnifierJPanel.zig").ImageUnifierJPanel;
const MirrorImageJPanel = @import("org/allbinary/image/gui/MirrorImageJPanel.zig").MirrorImageJPanel;
const MirrorSpriteImageJPanel = @import("org/allbinary/image/gui/MirrorSpriteImageJPanel.zig").MirrorSpriteImageJPanel;
const ResizeImageJPanel = @import("org/allbinary/image/gui/ResizeImageJPanel.zig").ResizeImageJPanel;
const RotationImageJPanel = @import("org/allbinary/image/gui/RotationImageJPanel.zig").RotationImageJPanel;
const RotationSpriteImageJPanel = @import("org/allbinary/image/gui/RotationSpriteImageJPanel.zig").RotationSpriteImageJPanel;
const SpriteSplitterImageJPanel = @import("org/allbinary/image/gui/SpriteSplitterImageJPanel.zig").SpriteSplitterImageJPanel;
const Integer = @import("java/lang/Integer.zig").Integer;
const Short = @import("java/lang/Short.zig").Short;

pub const ImageToolJFrame = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.gui.ImageToolJFrame";
    base: JFrame = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    fileJDialog: ?*FileJDialog = null,
    imageProcessorInput: ?*ImageProcessorInput = null,
    analysisActionJDialog: ?*JDialog = null,
    analyzeJMenuItem: ?*JMenuItem = null,
    blueJLabel: ?*JLabel = null,
    colorRangeJLabel: ?*JLabel = null,
    createStripImageJMenuItem: ?*JMenuItem = null,
    fileJMenu: ?*JMenu = null,
    generateSpriteSplitterMenuItem: ?*JMenuItem = null,
    generateRotationMenuItem: ?*JMenuItem = null,
    generateMirrorSpriteMenuItem: ?*JMenuItem = null,
    generateRotationSpriteJMenuItem: ?*JMenuItem = null,
    greenJLabel: ?*JLabel = null,
    jPanel1: ?*JPanel = null,
    mainJMenuBar: ?*JMenuBar = null,
    maxBlueJTextField: ?*JTextField = null,
    maxGreenJTextField: ?*JTextField = null,
    maxJLabel: ?*JLabel = null,
    maxRedJTextField: ?*JTextField = null,
    minBlueJTextField: ?*JTextField = null,
    minGreenJTextField: ?*JTextField = null,
    minJLabel: ?*JLabel = null,
    minRedJTextField: ?*JTextField = null,
    mirrorJMenuItem: ?*JMenuItem = null,
    okJButton: ?*JButton = null,
    openImageJMenuItem: ?*JMenuItem = null,
    processingJMenu: ?*JMenu = null,
    redJLabel: ?*JLabel = null,
    scaleImagesJMenuItem: ?*JMenuItem = null,
    canvasImagesJMenuItem: ?*JMenuItem = null,
    createIconImagesJMenuItem: ?*JMenuItem = null,
    titleJLabel: ?*JLabel = null,
    // Implements FileJDialogListenerInterface
    var imageProcessorInputCompositeInterface: ?*ImageProcessorInputCompositeInterface = null;

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        this.imageProcessorInput = null;
        this.analysisActionJDialog = null;
        this.analyzeJMenuItem = null;
        this.blueJLabel = null;
        this.colorRangeJLabel = null;
        this.createStripImageJMenuItem = null;
        this.fileJMenu = null;
        this.generateSpriteSplitterMenuItem = null;
        this.generateRotationMenuItem = null;
        this.generateMirrorSpriteMenuItem = null;
        this.generateRotationSpriteJMenuItem = null;
        this.greenJLabel = null;
        this.jPanel1 = null;
        this.mainJMenuBar = null;
        this.maxBlueJTextField = null;
        this.maxGreenJTextField = null;
        this.maxJLabel = null;
        this.maxRedJTextField = null;
        this.minBlueJTextField = null;
        this.minGreenJTextField = null;
        this.minJLabel = null;
        this.minRedJTextField = null;
        this.mirrorJMenuItem = null;
        this.okJButton = null;
        this.openImageJMenuItem = null;
        this.processingJMenu = null;
        this.redJLabel = null;
        this.scaleImagesJMenuItem = null;
        this.canvasImagesJMenuItem = null;
        this.createIconImagesJMenuItem = null;
        this.titleJLabel = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = JFrame.create().*;
        this.initFields();
        _ = this.initComponents();
        const commonPhoneStrings: ?*CommonPhoneStrings = Inheritance.upcast(?*CommonPhoneStrings, CommonPhoneStrings.getInstance());
        _ = Inheritance.call(this, "setSize", .{ 640, 480 });
        _ = Inheritance.call(this.getMaxRedJTextField().?, "setText", .{ String.literal("255") });
        _ = Inheritance.call(this.getMaxGreenJTextField().?, "setText", .{ String.literal("255") });
        _ = Inheritance.call(this.getMaxBlueJTextField().?, "setText", .{ String.literal("255") });
        _ = Inheritance.call(this.getMinRedJTextField().?, "setText", .{ commonPhoneStrings.?.ZERO });
        _ = Inheritance.call(this.getMinGreenJTextField().?, "setText", .{ commonPhoneStrings.?.ZERO });
        _ = Inheritance.call(this.getMinBlueJTextField().?, "setText", .{ commonPhoneStrings.?.ZERO });
        this.fileJDialog = FileJDialog.create();
        _ = Inheritance.call(this.fileJDialog.?, "addFinishedListener", .{ this });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initComponents(self: *Self) void {
        self.analysisActionJDialog = JDialog.create();
        self.titleJLabel = JLabel.create();
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
        self.jPanel1 = JPanel.create();
        self.mainJMenuBar = JMenuBar.create();
        self.fileJMenu = JMenu.create();
        self.openImageJMenuItem = JMenuItem.create();
        self.processingJMenu = JMenu.create();
        self.analyzeJMenuItem = JMenuItem.create();
        self.generateSpriteSplitterMenuItem = JMenuItem.create();
        self.generateRotationMenuItem = JMenuItem.create();
        self.generateMirrorSpriteMenuItem = JMenuItem.create();
        self.generateRotationSpriteJMenuItem = JMenuItem.create();
        self.createStripImageJMenuItem = JMenuItem.create();
        self.mirrorJMenuItem = JMenuItem.create();
        self.scaleImagesJMenuItem = JMenuItem.create();
        self.canvasImagesJMenuItem = JMenuItem.create();
        self.createIconImagesJMenuItem = JMenuItem.create();
        _ = Inheritance.call(self.analysisActionJDialog.?, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 350, 250 }) });
        _ = Inheritance.call(self.titleJLabel.?, "setText", .{ String.literal("              Color At Action Options            ") });
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
        const analysisActionJDialogLayout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.analysisActionJDialog.?.getContentPane() });
        _ = Inheritance.call(self.analysisActionJDialog.?.getContentPane().?, "setLayout", .{ analysisActionJDialogLayout });
        _ = Inheritance.call(analysisActionJDialogLayout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(analysisActionJDialogLayout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING }).?, "add", .{ Inheritance.call(Inheritance.receiverOf(analysisActionJDialogLayout.?.createSequentialGroup().?, "addContainerGap").addContainerGap().?, "add", .{ Inheritance.call(Inheritance.call(Inheritance.call(analysisActionJDialogLayout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING }).?, "add", .{ Inheritance.receiverOf(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(analysisActionJDialogLayout.?.createSequentialGroup().?, "add", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(analysisActionJDialogLayout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING }).?, "add", .{ self.blueJLabel }).?, "add", .{ self.greenJLabel }).?, "add", .{ self.redJLabel }).?, "add", .{ self.colorRangeJLabel }) }).?, "add", .{ 29, 29, 29 }).?, "add", .{ Inheritance.call(Inheritance.call(Inheritance.call(analysisActionJDialogLayout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING }).?, "add", .{ org.jdesktop.?.layout.?.GroupLayout.?.TRAILING, self.minJLabel, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, 58, @as(i16, std.math.maxInt(i16)) }).?, "add", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(analysisActionJDialogLayout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.TRAILING, false }).?, "add", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING, self.minBlueJTextField }).?, "add", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING, self.minGreenJTextField }).?, "add", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING, self.minRedJTextField, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, 42, @as(i16, std.math.maxInt(i16)) }).?, "add", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING, self.okJButton }) }) }).?, "addPreferredGap", .{ org.jdesktop.?.layout.?.LayoutStyle.?.RELATED }).?, "add", .{ Inheritance.call(Inheritance.call(Inheritance.call(analysisActionJDialogLayout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.TRAILING }).?, "add", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING, Inheritance.call(Inheritance.call(analysisActionJDialogLayout.?.createSequentialGroup().?, "add", .{ Inheritance.call(Inheritance.call(Inheritance.call(analysisActionJDialogLayout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.TRAILING, false }).?, "add", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING, self.maxRedJTextField }).?, "add", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING, Inheritance.call(Inheritance.call(analysisActionJDialogLayout.?.createSequentialGroup().?, "add", .{ 1, 1, 1 }).?, "add", .{ Inheritance.call(Inheritance.call(Inheritance.call(analysisActionJDialogLayout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING }).?, "add", .{ self.maxBlueJTextField }).?, "add", .{ self.maxGreenJTextField, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE, 43, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE }) }) }) }).?, "addPreferredGap", .{ org.jdesktop.?.layout.?.LayoutStyle.?.RELATED, 17, @as(i16, std.math.maxInt(i16)) }) }).?, "add", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING, self.maxJLabel, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, 61, @as(i16, std.math.maxInt(i16)) }) }).?, "addContainerGap").addContainerGap() }).?, "add", .{ org.jdesktop.?.layout.?.GroupLayout.?.TRAILING, Inheritance.call(Inheritance.call(analysisActionJDialogLayout.?.createSequentialGroup().?, "add", .{ self.titleJLabel }).?, "add", .{ 25, 25, 25 }) }) }) }) });
        _ = Inheritance.call(analysisActionJDialogLayout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(analysisActionJDialogLayout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING }).?, "add", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(analysisActionJDialogLayout.?.createSequentialGroup().?, "add", .{ self.titleJLabel }).?, "addPreferredGap", .{ org.jdesktop.?.layout.?.LayoutStyle.?.RELATED }).?, "add", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(analysisActionJDialogLayout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.BASELINE }).?, "add", .{ self.minJLabel }).?, "add", .{ self.colorRangeJLabel }).?, "add", .{ self.maxJLabel }) }).?, "addPreferredGap", .{ org.jdesktop.?.layout.?.LayoutStyle.?.RELATED }).?, "add", .{ Inheritance.call(Inheritance.call(Inheritance.call(analysisActionJDialogLayout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.TRAILING }).?, "add", .{ self.redJLabel }).?, "add", .{ Inheritance.call(Inheritance.call(Inheritance.call(analysisActionJDialogLayout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.BASELINE }).?, "add", .{ self.minRedJTextField, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE }).?, "add", .{ self.maxRedJTextField, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE }) }) }).?, "addPreferredGap", .{ org.jdesktop.?.layout.?.LayoutStyle.?.RELATED }).?, "add", .{ Inheritance.call(Inheritance.call(Inheritance.call(analysisActionJDialogLayout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.TRAILING }).?, "add", .{ self.greenJLabel }).?, "add", .{ Inheritance.call(Inheritance.call(Inheritance.call(analysisActionJDialogLayout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.BASELINE }).?, "add", .{ self.minGreenJTextField, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE }).?, "add", .{ self.maxGreenJTextField, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE }) }) }).?, "addPreferredGap", .{ org.jdesktop.?.layout.?.LayoutStyle.?.RELATED }).?, "add", .{ Inheritance.call(Inheritance.call(Inheritance.call(analysisActionJDialogLayout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.TRAILING }).?, "add", .{ self.blueJLabel }).?, "add", .{ Inheritance.call(Inheritance.call(Inheritance.call(analysisActionJDialogLayout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.BASELINE }).?, "add", .{ self.minBlueJTextField, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE }).?, "add", .{ self.maxBlueJTextField, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE }) }) }).?, "add", .{ 16, 16, 16 }).?, "add", .{ self.okJButton }).?, "addContainerGap", .{ org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }) }) });
        _ = Inheritance.call(self, "setDefaultCloseOperation", .{ javax.swing.?.WindowConstants.?.EXIT_ON_CLOSE });
        _ = Inheritance.call(Inheritance.receiver(self, "getContentPane").getContentPane().?, "setLayout", .{ Inheritance.callStatic(GridLayout, "create2", .{ 1, 0 }) });
        _ = Inheritance.call(self.jPanel1.?, "setLayout", .{ Inheritance.callStatic(GridLayout, "create2", .{ 1, 0 }) });
        _ = Inheritance.call(Inheritance.receiver(self, "getContentPane").getContentPane().?, "add", .{ self.jPanel1 });
        _ = Inheritance.call(self.fileJMenu.?, "setText", .{ String.literal("File") });
        _ = Inheritance.call(self.fileJMenu.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "fileJMenuActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.openImageJMenuItem.?, "setText", .{ String.literal("Open") });
        _ = Inheritance.call(self.openImageJMenuItem.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "openImageJMenuItemActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.fileJMenu.?, "add", .{ self.openImageJMenuItem });
        _ = Inheritance.call(self.mainJMenuBar.?, "add", .{ self.fileJMenu });
        _ = Inheritance.call(self.processingJMenu.?, "setText", .{ String.literal("Processing") });
        _ = Inheritance.call(self.processingJMenu.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "processingJMenuActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.analyzeJMenuItem.?, "setText", .{ String.literal("Image Analyze") });
        _ = Inheritance.call(self.analyzeJMenuItem.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "analyzeJMenuItemActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.processingJMenu.?, "add", .{ self.analyzeJMenuItem });
        _ = Inheritance.call(self.generateMirrorSpriteMenuItem.?, "setText", .{ String.literal("Mirror Sprite Generator") });
        _ = Inheritance.call(self.generateMirrorSpriteMenuItem.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "generateMirrorSpriteMenuItemActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.processingJMenu.?, "add", .{ self.generateMirrorSpriteMenuItem });
        _ = Inheritance.call(self.generateRotationSpriteJMenuItem.?, "setText", .{ String.literal("Rotation Sprite Generator") });
        _ = Inheritance.call(self.generateRotationSpriteJMenuItem.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "generateRotationSpriteJMenuItemActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.processingJMenu.?, "add", .{ self.generateRotationSpriteJMenuItem });
        _ = Inheritance.call(self.generateSpriteSplitterMenuItem.?, "setText", .{ String.literal("Sprite Splitter Generator") });
        _ = Inheritance.call(self.generateSpriteSplitterMenuItem.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "generateSpriteSplitterMenuItemActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.processingJMenu.?, "add", .{ self.generateSpriteSplitterMenuItem });
        _ = Inheritance.call(self.generateRotationMenuItem.?, "setText", .{ String.literal("Rotate Image Generator") });
        _ = Inheritance.call(self.generateRotationMenuItem.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "generateRotationMenuItemActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.processingJMenu.?, "add", .{ self.generateRotationMenuItem });
        _ = Inheritance.call(self.createStripImageJMenuItem.?, "setText", .{ String.literal("Multi Image Unifier") });
        _ = Inheritance.call(self.createStripImageJMenuItem.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "createStripImageJMenuItemActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.processingJMenu.?, "add", .{ self.createStripImageJMenuItem });
        _ = Inheritance.call(self.mirrorJMenuItem.?, "setText", .{ String.literal("Mirror Image(s)") });
        _ = Inheritance.call(self.mirrorJMenuItem.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "mirrorJMenuItemActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.processingJMenu.?, "add", .{ self.mirrorJMenuItem });
        _ = Inheritance.call(self.scaleImagesJMenuItem.?, "setText", .{ String.literal("Scale Image(s)") });
        _ = Inheritance.call(self.scaleImagesJMenuItem.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "scaleImagesJMenuItemActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.processingJMenu.?, "add", .{ self.scaleImagesJMenuItem });
        _ = Inheritance.call(self.canvasImagesJMenuItem.?, "setText", .{ String.literal("Canvas Image(s)") });
        _ = Inheritance.call(self.canvasImagesJMenuItem.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "canvasImagesJMenuItemActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.processingJMenu.?, "add", .{ self.canvasImagesJMenuItem });
        _ = Inheritance.call(self.createIconImagesJMenuItem.?, "setText", .{ String.literal("Create Icon Image(s)") });
        _ = Inheritance.call(self.createIconImagesJMenuItem.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "createIconsJMenuItemActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.processingJMenu.?, "add", .{ self.createIconImagesJMenuItem });
        _ = Inheritance.call(self.mainJMenuBar.?, "add", .{ self.processingJMenu });
        _ = Inheritance.call(self, "setJMenuBar", .{ self.mainJMenuBar });
        _ = Inheritance.receiver(self, "pack").pack();
    }
    

    pub fn createStripImageJMenuItemActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            const imageUnifierJPanel: ?*ImageUnifierJPanel = Inheritance.callStatic(ImageUnifierJPanel, "create1", .{ self.imageProcessorInput });
            _ = self.jPanel1.?.removeAll();
            _ = Inheritance.call(self.jPanel1.?, "add", .{ imageUnifierJPanel });
            _ = self.jPanel1.?.updateUI();
            ImageToolJFrame.imageProcessorInputCompositeInterface = Inheritance.upcast(@TypeOf(ImageToolJFrame.imageProcessorInputCompositeInterface), imageUnifierJPanel);
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("createStripImageJMenuItemActionPerformed"), e });
    }
    

    pub fn okJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Starting"), self, String.literal("okJButtonActionPerformed") });
            const imageAnalysisResultsArray: []?*ImageAnalysisResults = Inheritance.call(ImageAnalysis.getInstance().?, "process", .{ self.imageProcessorInput.?.getBufferedImageArray(), self.getColorRangeInterface() });
            _ = self.jPanel1.?.removeAll();
            _ = Inheritance.call(self.jPanel1.?, "add", .{ Inheritance.callStatic(ImageAnalysisResultsJPanel, "create1", .{ imageAnalysisResultsArray }) });
            _ = self.jPanel1.?.updateUI();
            _ = Inheritance.call(self.analysisActionJDialog.?, "setVisible", .{ false });
            ImageToolJFrame.imageProcessorInputCompositeInterface = null;
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("okJButtonActionPerformed"), e });
    }
    

    pub fn processingJMenuActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self;
    }
    

    pub fn openImageJMenuItemActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Starting"), self, String.literal("openImageJMenuItemActionPerformed") });
            _ = Inheritance.call(self.fileJDialog.?, "setVisible", .{ true });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("openImageJMenuItemActionPerformed"), e });
    }
    

    pub fn onFiles(self: *Self, files: []?*File) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.literal("Reading "), @as(i32, @intCast(files.len))), String.literal(" files.")), self, String.literal("onFiles") });
            _ = Inheritance.callStatic(Arrays, "sort", .{ files, Comparator.create() // Java anonymous class body: implement it as a named type
//                 
// 
//                 pub fn compare(self: *Self, file1: ?*File, file2: ?*File) i32 {
//                     _ = self;
//                     const fileNameIndexValue1: i32 = Inheritance.call(self, "extractIndexNumberIfAnyFromFileName", .{ file1.?.getName() });
//                     const fileNameIndexValue2: i32 = Inheritance.call(self, "extractIndexNumberIfAnyFromFileName", .{ file2.?.getName() });
//                     return fileNameIndexValue1 - fileNameIndexValue2;
//                 }
//                 
// 
//                 pub fn extractIndexNumberIfAnyFromFileName(self: *Self, name: ?*String) i32 {
//                     _ = self;
//                     var i: i32 = 0;
//                     { // try
//                         const start: i32 = Inheritance.call(name.?, "lastIndexOf", .{ '_' }) + 1;
//                         const end: i32 = Inheritance.call(name.?, "lastIndexOf", .{ '.' });
//                         const number: ?*String = Inheritance.upcast(?*String, name.?.substring2(start, end));
//                         i = (std.fmt.parseInt(i32, number.?.bytes, 10) catch @panic("java.lang.NumberFormatException"));
//                     }
//                     // catch (Exception e):
// //                         i = 0;
//                     return i;
//                 }
 });
            const bufferedImageArray: []?*BufferedImage = array_N77587: { const array_N77587_array = allocator.alloc(?*BufferedImage, @intCast(@as(i32, @intCast(files.len)))) catch unreachable; @memset(array_N77587_array, null); break :array_N77587 array_N77587_array; };
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(files.len))) : (index += 1) {
                bufferedImageArray[@intCast(index)] = Inheritance.upcast(@TypeOf(bufferedImageArray[@intCast(index)]), Inheritance.callStatic(ImageIO, "read", .{ files[@intCast(index)] }));
                if (bufferedImageArray[@intCast(index)] == null) {
                    std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Unable to read file: "), files[@intCast(index)].?.getPath()); break :exception error.Exception; }});
                }
                }
            }
            self.imageProcessorInput = Inheritance.callStatic(ImageProcessorInput, "create2", .{ files, bufferedImageArray });
            _ = Inheritance.call(self.fileJDialog.?, "setVisible", .{ false });
            if (ImageToolJFrame.imageProcessorInputCompositeInterface != null) {
                _ = Inheritance.call(ImageToolJFrame.imageProcessorInputCompositeInterface.?, "setImageProcessorInput", .{ self.imageProcessorInput });
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("onFiles"), e });
    }
    

    pub fn fileJMenuActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self;
    }
    

    pub fn analyzeJMenuItemActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Starting"), self, String.literal("analyzeJMenuItemActionPerformed") });
            _ = Inheritance.call(self.analysisActionJDialog.?, "setVisible", .{ true });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("analyzeJMenuItemActionPerformed"), e });
    }
    

    pub fn generateRotationSpriteJMenuItemActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Starting"), self, String.literal("generateRotationSpriteJMenuItemActionPerformed") });
            const spriteImageJPanel: ?*RotationSpriteImageJPanel = Inheritance.callStatic(RotationSpriteImageJPanel, "create1", .{ self.imageProcessorInput });
            _ = self.jPanel1.?.removeAll();
            _ = Inheritance.call(self.jPanel1.?, "add", .{ spriteImageJPanel });
            _ = self.jPanel1.?.updateUI();
            ImageToolJFrame.imageProcessorInputCompositeInterface = Inheritance.upcast(@TypeOf(ImageToolJFrame.imageProcessorInputCompositeInterface), spriteImageJPanel);
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("generateRotationSpriteJMenuItemActionPerformed"), e });
    }
    

    pub fn generateSpriteSplitterMenuItemActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Starting"), self, String.literal("generateRotationSpriteJMenuItemActionPerformed") });
            const imageJPanel: ?*SpriteSplitterImageJPanel = Inheritance.callStatic(SpriteSplitterImageJPanel, "create1", .{ self.imageProcessorInput });
            _ = self.jPanel1.?.removeAll();
            _ = Inheritance.call(self.jPanel1.?, "add", .{ imageJPanel });
            _ = self.jPanel1.?.updateUI();
            ImageToolJFrame.imageProcessorInputCompositeInterface = Inheritance.upcast(@TypeOf(ImageToolJFrame.imageProcessorInputCompositeInterface), imageJPanel);
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("generateRotationMenuItemActionPerformed"), e });
    }
    

    pub fn generateRotationMenuItemActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Starting"), self, String.literal("generateRotationSpriteJMenuItemActionPerformed") });
            const rotationImageJPanel: ?*RotationImageJPanel = Inheritance.callStatic(RotationImageJPanel, "create1", .{ self.imageProcessorInput });
            _ = self.jPanel1.?.removeAll();
            _ = Inheritance.call(self.jPanel1.?, "add", .{ rotationImageJPanel });
            _ = self.jPanel1.?.updateUI();
            ImageToolJFrame.imageProcessorInputCompositeInterface = Inheritance.upcast(@TypeOf(ImageToolJFrame.imageProcessorInputCompositeInterface), rotationImageJPanel);
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("generateRotationMenuItemActionPerformed"), e });
    }
    

    pub fn scaleImagesJMenuItemActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("scaleImagesJMenuItemActionPerformed") });
            const resizeImageJPanel: ?*ResizeImageJPanel = Inheritance.callStatic(ResizeImageJPanel, "create1", .{ self.imageProcessorInput });
            _ = self.jPanel1.?.removeAll();
            _ = Inheritance.call(self.jPanel1.?, "add", .{ resizeImageJPanel });
            _ = self.jPanel1.?.updateUI();
            ImageToolJFrame.imageProcessorInputCompositeInterface = Inheritance.upcast(@TypeOf(ImageToolJFrame.imageProcessorInputCompositeInterface), resizeImageJPanel);
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("scaleImagesJMenuItemActionPerformed"), e });
    }
    

    pub fn createIconsJMenuItemActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("createIconsJMenuItemActionPerformed") });
            const createIconImagesJPanel: ?*CreateIconImagesJPanel = Inheritance.callStatic(CreateIconImagesJPanel, "create1", .{ self.imageProcessorInput });
            _ = self.jPanel1.?.removeAll();
            _ = Inheritance.call(self.jPanel1.?, "add", .{ createIconImagesJPanel });
            _ = self.jPanel1.?.updateUI();
            ImageToolJFrame.imageProcessorInputCompositeInterface = Inheritance.upcast(@TypeOf(ImageToolJFrame.imageProcessorInputCompositeInterface), createIconImagesJPanel);
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("scaleImagesJMenuItemActionPerformed"), e });
    }
    

    pub fn canvasImagesJMenuItemActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("canvasImagesJMenuItemActionPerformed") });
            const resizeImageJPanel: ?*CanvasImageJPanel = Inheritance.callStatic(CanvasImageJPanel, "create1", .{ self.imageProcessorInput });
            _ = self.jPanel1.?.removeAll();
            _ = Inheritance.call(self.jPanel1.?, "add", .{ resizeImageJPanel });
            _ = self.jPanel1.?.updateUI();
            ImageToolJFrame.imageProcessorInputCompositeInterface = Inheritance.upcast(@TypeOf(ImageToolJFrame.imageProcessorInputCompositeInterface), resizeImageJPanel);
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("scaleImagesJMenuItemActionPerformed"), e });
    }
    

    pub fn generateMirrorSpriteMenuItemActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Starting"), self, String.literal("generateMirrorSpriteJMenuItemActionPerformed") });
            const spriteImageJPanel: ?*MirrorSpriteImageJPanel = Inheritance.callStatic(MirrorSpriteImageJPanel, "create1", .{ self.imageProcessorInput });
            _ = self.jPanel1.?.removeAll();
            _ = Inheritance.call(self.jPanel1.?, "add", .{ spriteImageJPanel });
            _ = self.jPanel1.?.updateUI();
            ImageToolJFrame.imageProcessorInputCompositeInterface = Inheritance.upcast(@TypeOf(ImageToolJFrame.imageProcessorInputCompositeInterface), spriteImageJPanel);
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("generateMirrorSpriteJMenuItemActionPerformed"), e });
    }
    

    pub fn mirrorJMenuItemActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Starting"), self, String.literal("generateMirrorJMenuItemActionPerformed") });
            const mirrorImageJPanel: ?*MirrorImageJPanel = Inheritance.callStatic(MirrorImageJPanel, "create1", .{ self.imageProcessorInput });
            _ = self.jPanel1.?.removeAll();
            _ = Inheritance.call(self.jPanel1.?, "add", .{ mirrorImageJPanel });
            _ = self.jPanel1.?.updateUI();
            ImageToolJFrame.imageProcessorInputCompositeInterface = Inheritance.upcast(@TypeOf(ImageToolJFrame.imageProcessorInputCompositeInterface), mirrorImageJPanel);
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("generateMirrorJMenuItemActionPerformed"), e });
    }
    

    pub fn getColorRangeInterface(self: *Self) ?*ColorRangeInterface {
        const colorRangeInterface: ?*ColorRangeInterface = Inheritance.cast(?*ColorRangeInterface, ColorRange.create());
        _ = Inheritance.call(colorRangeInterface.?, "setMinRed", .{ Inheritance.callStatic(Integer, "create1", .{ Inheritance.receiverOf(self.getMinRedJTextField().?, "getText").getText() }).intValue() });
        _ = Inheritance.call(colorRangeInterface.?, "setMaxRed", .{ Inheritance.callStatic(Integer, "create1", .{ Inheritance.receiverOf(self.getMaxRedJTextField().?, "getText").getText() }).intValue() });
        _ = Inheritance.call(colorRangeInterface.?, "setMinGreen", .{ Inheritance.callStatic(Integer, "create1", .{ Inheritance.receiverOf(self.getMinGreenJTextField().?, "getText").getText() }).intValue() });
        _ = Inheritance.call(colorRangeInterface.?, "setMaxGreen", .{ Inheritance.callStatic(Integer, "create1", .{ Inheritance.receiverOf(self.getMaxGreenJTextField().?, "getText").getText() }).intValue() });
        _ = Inheritance.call(colorRangeInterface.?, "setMinBlue", .{ Inheritance.callStatic(Integer, "create1", .{ Inheritance.receiverOf(self.getMinBlueJTextField().?, "getText").getText() }).intValue() });
        _ = Inheritance.call(colorRangeInterface.?, "setMaxBlue", .{ Inheritance.callStatic(Integer, "create1", .{ Inheritance.receiverOf(self.getMaxBlueJTextField().?, "getText").getText() }).intValue() });
        return colorRangeInterface;
    }
    

    pub fn getMaxBlueJTextField(self: *Self) ?*JTextField {
        return self.maxBlueJTextField;
    }
    

    pub fn setMaxBlueJTextField(self: *Self, maxBlueJTextField: ?*JTextField) void {
        _ = maxBlueJTextField;
        self.maxBlueJTextField = self.maxBlueJTextField;
    }
    

    pub fn getMaxGreenJTextField(self: *Self) ?*JTextField {
        return self.maxGreenJTextField;
    }
    

    pub fn setMaxGreenJTextField(self: *Self, maxGreenJTextField: ?*JTextField) void {
        _ = maxGreenJTextField;
        self.maxGreenJTextField = self.maxGreenJTextField;
    }
    

    pub fn getMaxRedJTextField(self: *Self) ?*JTextField {
        return self.maxRedJTextField;
    }
    

    pub fn setMaxRedJTextField(self: *Self, maxRedJTextField: ?*JTextField) void {
        _ = maxRedJTextField;
        self.maxRedJTextField = self.maxRedJTextField;
    }
    

    pub fn getMinBlueJTextField(self: *Self) ?*JTextField {
        return self.minBlueJTextField;
    }
    

    pub fn setMinBlueJTextField(self: *Self, minBlueJTextField: ?*JTextField) void {
        _ = minBlueJTextField;
        self.minBlueJTextField = self.minBlueJTextField;
    }
    

    pub fn getMinGreenJTextField(self: *Self) ?*JTextField {
        return self.minGreenJTextField;
    }
    

    pub fn setMinGreenJTextField(self: *Self, minGreenJTextField: ?*JTextField) void {
        _ = minGreenJTextField;
        self.minGreenJTextField = self.minGreenJTextField;
    }
    

    pub fn getMinRedJTextField(self: *Self) ?*JTextField {
        return self.minRedJTextField;
    }
    

    pub fn setMinRedJTextField(self: *Self, minRedJTextField: ?*JTextField) void {
        _ = minRedJTextField;
        self.minRedJTextField = self.minRedJTextField;
    }
};

