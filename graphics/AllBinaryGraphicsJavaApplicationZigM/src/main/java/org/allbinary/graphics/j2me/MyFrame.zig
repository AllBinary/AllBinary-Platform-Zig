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
// package org.allbinary.graphics.j2me

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const File = @import("java/io/File.zig").File;
const HashMap = @import("java/util/HashMap.zig").HashMap;
const XslHelper = @import("org/allbinary/data/tree/dom/XslHelper.zig").XslHelper;
const DomHelper = @import("org/allbinary/dom/DomHelper.zig").DomHelper;
const NewWorkAreaJDialog = @import("org/allbinary/graphics/j2me/dialog/NewWorkAreaJDialog.zig").NewWorkAreaJDialog;
const RotateJDialog = @import("org/allbinary/graphics/j2me/dialog/RotateJDialog.zig").RotateJDialog;
const WorkAreaDom = @import("org/allbinary/graphics/j2me/workarea/WorkAreaDom.zig").WorkAreaDom;
const WorkAreaJPanel = @import("org/allbinary/graphics/j2me/workarea/WorkAreaJPanel.zig").WorkAreaJPanel;
const WorkAreaJPanelInterface = @import("org/allbinary/graphics/j2me/workarea/WorkAreaJPanelInterface.zig").WorkAreaJPanelInterface;
const MyCanvasEvent = @import("org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEvent.zig").MyCanvasEvent;
const MyCanvasEventService = @import("org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEventService.zig").MyCanvasEventService;
const MyCanvasEventSource = @import("org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEventSource.zig").MyCanvasEventSource;
const FileJDialog = @import("org/allbinary/gui/dialog/FileJDialog.zig").FileJDialog;
const FileJDialogListenerInterface = @import("org/allbinary/gui/dialog/FileJDialogListenerInterface.zig").FileJDialogListenerInterface;
const HashMapJDialogListenerInterface = @import("org/allbinary/gui/dialog/HashMapJDialogListenerInterface.zig").HashMapJDialogListenerInterface;
const LOGGING = @import("org/allbinary/log/LOGGING.zig").LOGGING;
const GuiLog = @import("org/allbinary/logic/communication/log/GuiLog.zig").GuiLog;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const System = @import("java/lang/System.zig").System;
const Integer = @import("java/lang/Integer.zig").Integer;
const Thread = @import("java/lang/Thread.zig").Thread;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

pub const MyFrame = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.MyFrame";
    base: JFrame = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    guiLog: ?*GuiLog = null,
    xslHelper: ?*XslHelper = null,
    JAVA_TEMPLATE: ?*String = null,
    SAVEEXTENSION: ?*String = null,
    JAVAEXTENSION: ?*String = null,
    fileJDialog: ?*FileJDialog = null,
    rotateJDialog: ?*RotateJDialog = null,
    animateJButton: ?*JButton = null,
    autoDamageJMenuItem: ?*JMenuItem = null,
    autoExplodeJMenuItem: ?*JMenuItem = null,
    autoGrowJMenuItem: ?*JMenuItem = null,
    autoRotateGenerationJMenuItem: ?*JMenuItem = null,
    autoSheildMenuItem: ?*JMenuItem = null,
    autoShrinkJMenuItem: ?*JMenuItem = null,
    centerJMenuItem: ?*JMenuItem = null,
    copyJMenuItem1: ?*JMenuItem = null,
    exitJMenuItem: ?*JMenuItem = null,
    explodeAllJMenuItem: ?*JMenuItem = null,
    exportJMenuItem1: ?*JMenuItem = null,
    fileJMenu: ?*JMenu = null,
    frameJMenu: ?*JMenu = null,
    generateJMenu: ?*JMenu = null,
    insertAfterJMenuItem: ?*JMenuItem = null,
    insertBeforeJMenuItem: ?*JMenuItem = null,
    jButton1: ?*JButton = null,
    jButton2: ?*JButton = null,
    jButton3: ?*JButton = null,
    jButton4: ?*JButton = null,
    jButton41: ?*JButton = null,
    jButton5: ?*JButton = null,
    jMenu1: ?*JMenu = null,
    jMenuItem1: ?*JMenuItem = null,
    jPanel1: ?*JPanel = null,
    jTabbedPane: ?*JTabbedPane = null,
    jToolBar1: ?*JToolBar = null,
    mainJPanel: ?*JPanel = null,
    menuJMenuBar: ?*JMenuBar = null,
    newJMenuItem: ?*JMenuItem = null,
    nextFrameJMenuItem: ?*JMenuItem = null,
    objectJMenu: ?*JMenu = null,
    openJButton: ?*JButton = null,
    openJMenuItem: ?*JMenuItem = null,
    playJButton: ?*JButton = null,
    previousFrameJMenuItem: ?*JMenuItem = null,
    removeJMenuItem: ?*JMenuItem = null,
    saveAsJMenuItem: ?*JMenuItem = null,
    saveJButton: ?*JButton = null,
    saveJMenuItem: ?*JMenuItem = null,
    statusJPanel: ?*JPanel = null,
    stopJjButton: ?*JButton = null,
    viewJMenu: ?*JMenu = null,
    zoomInJMenuItem: ?*JMenuItem = null,
    zoomOutJMenuItem: ?*JMenuItem = null,
    // Implements FileJDialogListenerInterface
    // Implements HashMapJDialogListenerInterface
    // Implements KeyListener
    const MAXWORKAREAS: i32 = 10;
    var numberOfWorkAreas: i32 = 0;
    const PATH: ?*String = String.literal("G:/mnt/bc/mydev/work/graphics/AllBinaryGraphicsJavaApplication");
    var SAVE_PATH: ?*String = undefined;
    var TEMPLATE_EXPORT_PATH: ?*String = undefined;
    pub var statusJLabel: ?*JLabel = null;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SAVE_PATH = Inheritance.upcast(?*String, String.plus(MyFrame.PATH, String.literal("/save")));
        TEMPLATE_EXPORT_PATH = Inheritance.upcast(?*String, String.plus(MyFrame.PATH, String.literal("/templates/export")));
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.guiLog = Inheritance.upcast(?*GuiLog, GuiLog.getInstance());
        this.xslHelper = Inheritance.upcast(?*XslHelper, XslHelper.getInstance());
        this.JAVA_TEMPLATE = String.literal("svgExport.xsl");
        this.SAVEEXTENSION = String.literal(".gxml");
        this.JAVAEXTENSION = String.literal(".javax");
        
        
        this.animateJButton = null;
        this.autoDamageJMenuItem = null;
        this.autoExplodeJMenuItem = null;
        this.autoGrowJMenuItem = null;
        this.autoRotateGenerationJMenuItem = null;
        this.autoSheildMenuItem = null;
        this.autoShrinkJMenuItem = null;
        this.centerJMenuItem = null;
        this.copyJMenuItem1 = null;
        this.exitJMenuItem = null;
        this.explodeAllJMenuItem = null;
        this.exportJMenuItem1 = null;
        this.fileJMenu = null;
        this.frameJMenu = null;
        this.generateJMenu = null;
        this.insertAfterJMenuItem = null;
        this.insertBeforeJMenuItem = null;
        this.jButton1 = null;
        this.jButton2 = null;
        this.jButton3 = null;
        this.jButton4 = null;
        this.jButton41 = null;
        this.jButton5 = null;
        this.jMenu1 = null;
        this.jMenuItem1 = null;
        this.jPanel1 = null;
        this.jTabbedPane = null;
        this.jToolBar1 = null;
        this.mainJPanel = null;
        this.menuJMenuBar = null;
        this.newJMenuItem = null;
        this.nextFrameJMenuItem = null;
        this.objectJMenu = null;
        this.openJButton = null;
        this.openJMenuItem = null;
        this.playJButton = null;
        this.previousFrameJMenuItem = null;
        this.removeJMenuItem = null;
        this.saveAsJMenuItem = null;
        this.saveJButton = null;
        this.saveJMenuItem = null;
        this.statusJPanel = null;
        this.stopJjButton = null;
        this.viewJMenu = null;
        this.zoomInJMenuItem = null;
        this.zoomOutJMenuItem = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = JFrame.create().*;
        this.initFields();
        _ = this.initComponents();
        _ = Inheritance.call(this, "setSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 550, 400 }) });
        _ = Inheritance.call(this.mainJPanel.?, "setSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 550, 400 }) });
        _ = Inheritance.call(this.jTabbedPane.?, "setSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 550, 400 }) });
        this.fileJDialog = FileJDialog.create();
        _ = Inheritance.call(this.fileJDialog.?, "addFinishedListener", .{ this });
        this.rotateJDialog = Inheritance.callStatic(RotateJDialog, "create2", .{ this, false });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initComponents(self: *Self) void {
        self.jToolBar1 = JToolBar.create();
        self.jButton2 = JButton.create();
        self.saveJButton = JButton.create();
        self.jButton1 = JButton.create();
        self.openJButton = JButton.create();
        self.jButton3 = JButton.create();
        self.jButton4 = JButton.create();
        self.jButton41 = JButton.create();
        self.jButton5 = JButton.create();
        self.animateJButton = JButton.create();
        self.playJButton = JButton.create();
        self.stopJjButton = JButton.create();
        self.jPanel1 = JPanel.create();
        self.mainJPanel = JPanel.create();
        self.jTabbedPane = JTabbedPane.create();
        self.statusJPanel = JPanel.create();
        MyFrame.statusJLabel = Inheritance.upcast(@TypeOf(MyFrame.statusJLabel), JLabel.create());
        self.menuJMenuBar = JMenuBar.create();
        self.fileJMenu = JMenu.create();
        self.newJMenuItem = JMenuItem.create();
        self.openJMenuItem = JMenuItem.create();
        self.saveJMenuItem = JMenuItem.create();
        self.saveAsJMenuItem = JMenuItem.create();
        self.exportJMenuItem1 = JMenuItem.create();
        self.exitJMenuItem = JMenuItem.create();
        self.viewJMenu = JMenu.create();
        self.zoomInJMenuItem = JMenuItem.create();
        self.zoomOutJMenuItem = JMenuItem.create();
        self.objectJMenu = JMenu.create();
        self.explodeAllJMenuItem = JMenuItem.create();
        self.frameJMenu = JMenu.create();
        self.previousFrameJMenuItem = JMenuItem.create();
        self.nextFrameJMenuItem = JMenuItem.create();
        self.removeJMenuItem = JMenuItem.create();
        self.copyJMenuItem1 = JMenuItem.create();
        self.insertAfterJMenuItem = JMenuItem.create();
        self.insertBeforeJMenuItem = JMenuItem.create();
        self.generateJMenu = JMenu.create();
        self.centerJMenuItem = JMenuItem.create();
        self.autoDamageJMenuItem = JMenuItem.create();
        self.autoExplodeJMenuItem = JMenuItem.create();
        self.autoGrowJMenuItem = JMenuItem.create();
        self.jMenuItem1 = JMenuItem.create();
        self.autoRotateGenerationJMenuItem = JMenuItem.create();
        self.autoSheildMenuItem = JMenuItem.create();
        self.autoShrinkJMenuItem = JMenuItem.create();
        self.jMenu1 = JMenu.create();
        _ = Inheritance.call(self, "addWindowListener", .{ WindowAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn windowClosing(self: *Self, evt: ?*WindowEvent) void {
//                 _ = Inheritance.call(self, "exitForm", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jButton2.?, "setText", .{ String.literal("New") });
        _ = Inheritance.call(self.jButton2.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "jButton2ActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jToolBar1.?, "add", .{ self.jButton2 });
        _ = Inheritance.call(self.saveJButton.?, "setText", .{ String.literal("Save") });
        _ = Inheritance.call(self.saveJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "saveJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jToolBar1.?, "add", .{ self.saveJButton });
        _ = Inheritance.call(self.jButton1.?, "setText", .{ String.literal("Export") });
        _ = Inheritance.call(self.jButton1.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "jButton1ActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jToolBar1.?, "add", .{ self.jButton1 });
        _ = Inheritance.call(self.openJButton.?, "setText", .{ String.literal("Open") });
        _ = Inheritance.call(self.openJButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "openJButtonActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jToolBar1.?, "add", .{ self.openJButton });
        _ = Inheritance.call(self.jButton3.?, "setText", .{ String.literal("Copy") });
        _ = Inheritance.call(self.jToolBar1.?, "add", .{ self.jButton3 });
        _ = Inheritance.call(self.jButton4.?, "setText", .{ String.literal("Insert Before") });
        _ = Inheritance.call(self.jToolBar1.?, "add", .{ self.jButton4 });
        _ = Inheritance.call(self.jButton41.?, "setText", .{ String.literal("Insert After") });
        _ = Inheritance.call(self.jToolBar1.?, "add", .{ self.jButton41 });
        _ = Inheritance.call(self.jButton5.?, "setText", .{ String.literal("Delete") });
        _ = Inheritance.call(self.jToolBar1.?, "add", .{ self.jButton5 });
        _ = Inheritance.call(self.animateJButton.?, "setText", .{ String.literal("AnimateEdit") });
        _ = Inheritance.call(self.jToolBar1.?, "add", .{ self.animateJButton });
        _ = Inheritance.call(self.playJButton.?, "setText", .{ String.literal("Play") });
        _ = Inheritance.call(self.playJButton.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mousePressed(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "playJButtonMousePressed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jToolBar1.?, "add", .{ self.playJButton });
        _ = Inheritance.call(self.stopJjButton.?, "setText", .{ String.literal("Stop") });
        _ = Inheritance.call(self.stopJjButton.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mousePressed(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "stopJjButtonMousePressed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jToolBar1.?, "add", .{ self.stopJjButton });
        _ = Inheritance.call(Inheritance.receiver(self, "getContentPane").getContentPane().?, "add", .{ self.jToolBar1, java.awt.?.BorderLayout.?.NORTH });
        _ = Inheritance.call(self.jPanel1.?, "setLayout", .{ Inheritance.callStatic(GridLayout, "create2", .{ 1, 0 }) });
        _ = Inheritance.call(self.mainJPanel.?, "setLayout", .{ Inheritance.callStatic(GridLayout, "create2", .{ 1, 0 }) });
        _ = Inheritance.call(self.jTabbedPane.?, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 550, 400 }) });
        _ = Inheritance.call(self.jTabbedPane.?, "addChangeListener", .{ ChangeListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn stateChanged(self: *Self, evt: ?*ChangeEvent) void {
//                 _ = Inheritance.call(self, "jTabbedPaneStateChanged", .{ evt });
//             }
 });
        _ = Inheritance.call(self.mainJPanel.?, "add", .{ self.jTabbedPane });
        _ = Inheritance.call(self.jPanel1.?, "add", .{ self.mainJPanel });
        _ = Inheritance.call(Inheritance.receiver(self, "getContentPane").getContentPane().?, "add", .{ self.jPanel1, java.awt.?.BorderLayout.?.CENTER });
        _ = Inheritance.call(self.statusJPanel.?, "setLayout", .{ Inheritance.callStatic(GridLayout, "create2", .{ 1, 0 }) });
        _ = Inheritance.call(MyFrame.statusJLabel.?, "setText", .{ String.literal("Status Bar") });
        _ = Inheritance.call(self.statusJPanel.?, "add", .{ MyFrame.statusJLabel });
        _ = Inheritance.call(Inheritance.receiver(self, "getContentPane").getContentPane().?, "add", .{ self.statusJPanel, java.awt.?.BorderLayout.?.SOUTH });
        _ = Inheritance.call(self.fileJMenu.?, "setText", .{ String.literal("File") });
        _ = Inheritance.call(self.fileJMenu.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "fileJMenuActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.newJMenuItem.?, "setText", .{ String.literal("New") });
        _ = Inheritance.call(self.newJMenuItem.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "newJMenuItemActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.fileJMenu.?, "add", .{ self.newJMenuItem });
        _ = Inheritance.call(self.openJMenuItem.?, "setText", .{ String.literal("Open") });
        _ = Inheritance.call(self.openJMenuItem.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "openJMenuItemActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.fileJMenu.?, "add", .{ self.openJMenuItem });
        _ = Inheritance.call(self.saveJMenuItem.?, "setText", .{ String.literal("Save") });
        _ = Inheritance.call(self.saveJMenuItem.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mousePressed(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "saveJMenuItemMousePressed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.fileJMenu.?, "add", .{ self.saveJMenuItem });
        _ = Inheritance.call(self.saveAsJMenuItem.?, "setText", .{ String.literal("SaveAs") });
        _ = Inheritance.call(self.fileJMenu.?, "add", .{ self.saveAsJMenuItem });
        _ = Inheritance.call(self.exportJMenuItem1.?, "setText", .{ String.literal("Export") });
        _ = Inheritance.call(self.exportJMenuItem1.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "exportJMenuItem1ActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.fileJMenu.?, "add", .{ self.exportJMenuItem1 });
        _ = Inheritance.call(self.exitJMenuItem.?, "setText", .{ String.literal("Exit") });
        _ = Inheritance.call(self.exitJMenuItem.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "exitJMenuItemActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.fileJMenu.?, "add", .{ self.exitJMenuItem });
        _ = Inheritance.call(self.menuJMenuBar.?, "add", .{ self.fileJMenu });
        _ = Inheritance.call(self.viewJMenu.?, "setText", .{ String.literal("View") });
        _ = Inheritance.call(self.zoomInJMenuItem.?, "setText", .{ String.literal("Zoom In") });
        _ = Inheritance.call(self.zoomInJMenuItem.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mousePressed(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "zoomInJMenuItemMousePressed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.viewJMenu.?, "add", .{ self.zoomInJMenuItem });
        _ = Inheritance.call(self.zoomOutJMenuItem.?, "setText", .{ String.literal("Zoom Out") });
        _ = Inheritance.call(self.zoomOutJMenuItem.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mousePressed(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "zoomOutJMenuItemMousePressed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.viewJMenu.?, "add", .{ self.zoomOutJMenuItem });
        _ = Inheritance.call(self.menuJMenuBar.?, "add", .{ self.viewJMenu });
        _ = Inheritance.call(self.objectJMenu.?, "setText", .{ String.literal("Objects") });
        _ = Inheritance.call(self.explodeAllJMenuItem.?, "setText", .{ String.literal("Explode All") });
        _ = Inheritance.call(self.explodeAllJMenuItem.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mousePressed(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "explodeAllJMenuItemMousePressed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.objectJMenu.?, "add", .{ self.explodeAllJMenuItem });
        _ = Inheritance.call(self.menuJMenuBar.?, "add", .{ self.objectJMenu });
        _ = Inheritance.call(self.frameJMenu.?, "setText", .{ String.literal("Frame") });
        _ = Inheritance.call(self.frameJMenu.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "frameJMenuActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.previousFrameJMenuItem.?, "setText", .{ String.literal("Previous") });
        _ = Inheritance.call(self.frameJMenu.?, "add", .{ self.previousFrameJMenuItem });
        _ = Inheritance.call(self.nextFrameJMenuItem.?, "setText", .{ CommonLabels.getInstance().?.NEXT });
        _ = Inheritance.call(self.frameJMenu.?, "add", .{ self.nextFrameJMenuItem });
        _ = Inheritance.call(self.removeJMenuItem.?, "setText", .{ String.literal("Remove") });
        _ = Inheritance.call(self.frameJMenu.?, "add", .{ self.removeJMenuItem });
        _ = Inheritance.call(self.copyJMenuItem1.?, "setText", .{ String.literal("Copy") });
        _ = Inheritance.call(self.frameJMenu.?, "add", .{ self.copyJMenuItem1 });
        _ = Inheritance.call(self.insertAfterJMenuItem.?, "setText", .{ String.literal("Ins After") });
        _ = Inheritance.call(self.frameJMenu.?, "add", .{ self.insertAfterJMenuItem });
        _ = Inheritance.call(self.insertBeforeJMenuItem.?, "setText", .{ String.literal("Ins Before") });
        _ = Inheritance.call(self.frameJMenu.?, "add", .{ self.insertBeforeJMenuItem });
        _ = Inheritance.call(self.menuJMenuBar.?, "add", .{ self.frameJMenu });
        _ = Inheritance.call(self.generateJMenu.?, "setText", .{ String.literal("Generate") });
        _ = Inheritance.call(self.centerJMenuItem.?, "setText", .{ String.literal("Center") });
        _ = Inheritance.call(self.centerJMenuItem.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "centerJMenuItemActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.generateJMenu.?, "add", .{ self.centerJMenuItem });
        _ = Inheritance.call(self.autoDamageJMenuItem.?, "setText", .{ String.literal("Damage") });
        _ = Inheritance.call(self.generateJMenu.?, "add", .{ self.autoDamageJMenuItem });
        _ = Inheritance.call(self.autoExplodeJMenuItem.?, "setText", .{ String.literal("Explode") });
        _ = Inheritance.call(self.autoExplodeJMenuItem.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mousePressed(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "autoExplodeJMenuItemMousePressed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.generateJMenu.?, "add", .{ self.autoExplodeJMenuItem });
        _ = Inheritance.call(self.autoGrowJMenuItem.?, "setText", .{ String.literal("Grow") });
        _ = Inheritance.call(self.generateJMenu.?, "add", .{ self.autoGrowJMenuItem });
        _ = Inheritance.call(self.jMenuItem1.?, "setText", .{ String.literal("Mirror") });
        _ = Inheritance.call(self.jMenuItem1.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "jMenuItem1ActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.generateJMenu.?, "add", .{ self.jMenuItem1 });
        _ = Inheritance.call(self.autoRotateGenerationJMenuItem.?, "setText", .{ String.literal("Rotate") });
        _ = Inheritance.call(self.autoRotateGenerationJMenuItem.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mousePressed(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "autoRotateGenerationJMenuItemMousePressed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.generateJMenu.?, "add", .{ self.autoRotateGenerationJMenuItem });
        _ = Inheritance.call(self.autoSheildMenuItem.?, "setText", .{ String.literal("Shield") });
        _ = Inheritance.call(self.generateJMenu.?, "add", .{ self.autoSheildMenuItem });
        _ = Inheritance.call(self.autoShrinkJMenuItem.?, "setText", .{ String.literal("Shrink") });
        _ = Inheritance.call(self.generateJMenu.?, "add", .{ self.autoShrinkJMenuItem });
        _ = Inheritance.call(self.menuJMenuBar.?, "add", .{ self.generateJMenu });
        _ = Inheritance.call(self.jMenu1.?, "setText", .{ String.literal("Help") });
        _ = Inheritance.call(self.menuJMenuBar.?, "add", .{ self.jMenu1 });
        _ = Inheritance.call(self, "setJMenuBar", .{ self.menuJMenuBar });
        _ = Inheritance.receiver(self, "pack").pack();
    }
    

    pub fn explodeAllJMenuItemMousePressed(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        _ = self;
        { // try
            _ = Inheritance.callStatic(MyCanvasEventService, "fire", .{ Inheritance.callStatic(MyCanvasEvent, "create1", .{ Inheritance.cast(?Object, Inheritance.callStatic(MyCanvasEventSource, "create2", .{ MyCanvasEventService.EXPLODE, null })) }) });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("explodeAllJMenuItemMousePressed"), e });
    }
    

    pub fn autoExplodeJMenuItemMousePressed(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        _ = self;
        { // try
            _ = Inheritance.callStatic(MyCanvasEventService, "fire", .{ Inheritance.callStatic(MyCanvasEvent, "create1", .{ Inheritance.cast(?Object, Inheritance.callStatic(MyCanvasEventSource, "create2", .{ MyCanvasEventService.AUTOEXPLODE, null })) }) });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("autoExplodeJMenuItemMousePressed"), e });
    }
    

    pub fn stopJjButtonMousePressed(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        _ = Inheritance.receiverOf(self.getSelectedWorkArea().?, "stop").stop();
    }
    

    pub fn playJButtonMousePressed(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        _ = Inheritance.receiverOf(self.getSelectedWorkArea().?, "play").play();
    }
    

    pub fn autoRotateGenerationJMenuItemMousePressed(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        _ = Inheritance.call(self.rotateJDialog.?, "setVisible", .{ true });
    }
    

    pub fn zoomOutJMenuItemMousePressed(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        _ = Inheritance.call(self.getSelectedWorkArea().?, "changeZoom", .{ -1 });
    }
    

    pub fn zoomInJMenuItemMousePressed(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        _ = Inheritance.call(self.getSelectedWorkArea().?, "changeZoom", .{ 1 });
    }
    

    pub fn openJMenuItemActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self.openGraphics();
    }
    

    pub fn exportJMenuItem1ActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self.@"export"();
    }
    

    pub fn saveJMenuItemMousePressed(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        _ = self.save();
    }
    

    pub fn jTabbedPaneStateChanged(self: *Self, evt: ?*ChangeEvent) void {
        _ = evt;
        _ = self.updateSelectedWorkArea();
    }
    

    pub fn frameJMenuActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self;
    }
    

    pub fn exitJMenuItemActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self;
        _ = std.process.exit(@intCast(0));
    }
    

    pub fn newJMenuItemActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self.newGraphics();
    }
    

    pub fn fileJMenuActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self;
    }
    

    pub fn exitForm(self: *Self, evt: ?*WindowEvent) void {
        _ = evt;
        _ = self;
        _ = std.process.exit(@intCast(0));
    }
    

    pub fn openJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self.openGraphics();
    }
    

    pub fn jButton2ActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self.newGraphics();
    }
    

    pub fn centerJMenuItemActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self;
        { // try
            _ = Inheritance.callStatic(MyCanvasEventService, "fire", .{ Inheritance.callStatic(MyCanvasEvent, "create1", .{ Inheritance.cast(?Object, Inheritance.callStatic(MyCanvasEventSource, "create2", .{ MyCanvasEventService.CENTER, null })) }) });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("centerJMenuItemActionPerformed"), e });
    }
    

    pub fn saveJButtonActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self.save();
    }
    

    pub fn jButton1ActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self.@"export"();
    }
    

    pub fn jMenuItem1ActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            _ = Inheritance.receiverOf(self.getSelectedWorkArea().?, "autoMirror").autoMirror();
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("centerJMenuItemActionPerformed"), e });
    }
    

    pub fn onFiles(self: *Self, files: []?*File) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Reading: "), files), self, String.literal("onFiles") });
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(files.len))) : (index += 1) {
                const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.call(DomHelper.getInstance().?, "createDocument", .{ files[@intCast(index)] }));
                const workAreaJPanel: ?*WorkAreaJPanel = Inheritance.callStatic(WorkAreaJPanel, "create2", .{ Inheritance.callStatic(WorkAreaDom, "create1", .{ document }), Inheritance.receiver(self, "getSize").getSize() });
                _ = Inheritance.call(workAreaJPanel.?, "setLayout", .{ Inheritance.callStatic(GridLayout, "create2", .{ 1, 1 }) });
                _ = Inheritance.call(self, "add", .{ Inheritance.cast(?*WorkAreaJPanelInterface, workAreaJPanel) });
                }
            }
            _ = Inheritance.call(self.fileJDialog.?, "setVisible", .{ false });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("onFiles"), e });
    }
    

    pub fn newGraphics(self: *Self) void {
        { // try
            const newName: ?*String = Inheritance.upcast(?*String, String.plus(String.literal("graphic"), MyFrame.numberOfWorkAreas));
            const dim: ?*Dimension = Inheritance.upcast(?*Dimension, Inheritance.receiver(self, "getSize").getSize());
            const newDialog: ?*NewWorkAreaJDialog = Inheritance.callStatic(NewWorkAreaJDialog, "create4", .{ self, false, dim, newName }); _ = newDialog;
        }
        // catch (Exception e):
//             if (Inheritance.callStatic(LOGGING, "contains", .{ LOGGING.MENUEVENT })) {
//                 _ = Inheritance.call(self.guiLog.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("newJMenuItemActionPerformed"), e });
//             }
    }
    

    pub fn openGraphics(self: *Self) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Starting"), self, String.literal("openImageJMenuItemActionPerformed") });
            _ = Inheritance.call(self.fileJDialog.?, "setVisible", .{ true });
        }
        // catch (Exception e):
//             if (Inheritance.callStatic(LOGGING, "contains", .{ LOGGING.MENUEVENT })) {
//                 _ = Inheritance.call(self.guiLog.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("open"), e });
//             }
    }
    

    pub fn @"export"(self: *Self) void {
        { // try
            const workAreaJPanel: ?*WorkAreaJPanelInterface = Inheritance.cast(?*WorkAreaJPanelInterface, self.jTabbedPane.?.getSelectedComponent());
            const file: ?*File = Inheritance.callStatic(File, "create1", .{ String.plus(String.plus(String.plus(self.SAVE_PATH, String.literal("/")), Inheritance.receiver(workAreaJPanel.?, "getName").getName()), self.JAVAEXTENSION) });
            const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.receiver(workAreaJPanel.?, "toDocument").toDocument());
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Export: "), Inheritance.call(DomHelper.getInstance().?, "toString", .{ document })), self, String.literal("exportJMenuItem1ActionPerformed") });
            _ = Inheritance.call(self.xslHelper.?, "export", .{ file, String.plus(String.plus(MyFrame.TEMPLATE_EXPORT_PATH, String.literal("/")), self.JAVA_TEMPLATE), document });
        }
        // catch (Exception e):
//             if (Inheritance.callStatic(LOGGING, "contains", .{ LOGGING.MENUEVENT })) {
//                 _ = Inheritance.call(self.guiLog.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("export"), e });
//             }
    }
    

    pub fn save(self: *Self) void {
        { // try
            const workAreaJPanel: ?*WorkAreaJPanelInterface = Inheritance.cast(?*WorkAreaJPanelInterface, self.jTabbedPane.?.getSelectedComponent());
            _ = Inheritance.call(DomHelper.getInstance().?, "save", .{ Inheritance.callStatic(File, "create1", .{ String.plus(String.plus(String.plus(self.SAVE_PATH, String.literal("/")), Inheritance.receiver(workAreaJPanel.?, "getName").getName()), self.SAVEEXTENSION) }), Inheritance.receiver(workAreaJPanel.?, "toDocument").toDocument() });
        }
        // catch (Exception e):
//             if (Inheritance.callStatic(LOGGING, "contains", .{ LOGGING.MENUEVENT })) {
//                 _ = Inheritance.call(self.guiLog.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.SAVE, e });
//             }
    }
    

    // throws Exception
    pub fn onHashMap(self: *Self, hashMap: ?*HashMap) void {
        const angleIncrementInteger: ?*Integer = Inheritance.cast(?*Integer, Inheritance.call(hashMap.?, "get", .{ Inheritance.callStatic(Integer, "valueOf", .{ 0 }) }));
        const totalRotationInteger: ?*Integer = Inheritance.cast(?*Integer, Inheritance.call(hashMap.?, "get", .{ Inheritance.callStatic(Integer, "valueOf", .{ 1 }) }));
        _ = Inheritance.call(self.getSelectedWorkArea().?, "autoRotate", .{ angleIncrementInteger.?.intValue(), totalRotationInteger.?.intValue() });
    }
    

    pub fn getSelectedWorkArea(self: *Self) ?*WorkAreaJPanelInterface {
        return Inheritance.cast(?*WorkAreaJPanelInterface, self.jTabbedPane.?.getSelectedComponent());
    }
    

    pub fn updateSelectedWorkArea(self: *Self) void {
        const numberOfTabs: i32 = self.jTabbedPane.?.getTabCount();
        {
            var index: i32 = 0;
            while (index < numberOfTabs) : (index += 1) {
            const workAreaJPanel: ?*WorkAreaJPanelInterface = Inheritance.cast(?*WorkAreaJPanelInterface, Inheritance.call(self.jTabbedPane.?, "getComponentAt", .{ index }));
            _ = Inheritance.receiver(workAreaJPanel.?, "deselect").deselect();
            }
        }
        const workAreaJPanel: ?*WorkAreaJPanelInterface = Inheritance.cast(?*WorkAreaJPanelInterface, self.jTabbedPane.?.getSelectedComponent());
        if (workAreaJPanel != null) {
            _ = Inheritance.receiver(workAreaJPanel.?, "select").select();
        }
    }
    

    // throws Exception
    pub fn add(self: *Self, newCanvasInterface: ?*WorkAreaJPanelInterface) void {
        { // try
            self.numberOfWorkAreas += 1;
            if (self.numberOfWorkAreas == MyFrame.MAXWORKAREAS) {
                std.debug.panic("{any}", .{error.Exception});
            }
            _ = Inheritance.call(self.jTabbedPane.?, "addTab", .{ Inheritance.receiver(newCanvasInterface.?, "getName").getName(), Inheritance.cast(?*JPanel, newCanvasInterface) });
            _ = Inheritance.call(self.jTabbedPane.?, "setSelectedComponent", .{ Inheritance.cast(?*JPanel, newCanvasInterface) });
            const animationThread: ?*Thread = Inheritance.callStatic(Thread, "create1", .{ Inheritance.cast(?*Runnable, newCanvasInterface) });
            _ = animationThread.?.start();
            _ = self.updateSelectedWorkArea();
        }
        // catch (Exception e):
//             if (Inheritance.callStatic(LOGGING, "contains", .{ LOGGING.GRAPHICSCREATION })) {
//                 _ = Inheritance.call(self.guiLog.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("addNewCanvas"), e });
//             }
    }
    

    pub fn keyPressed(self: *Self, keyEvent: ?*KeyEvent) void {
        _ = Inheritance.call(self.getSelectedWorkArea().?, "keyPressed", .{ keyEvent });
    }
    

    pub fn keyReleased(self: *Self, keyEvent: ?*KeyEvent) void {
        _ = keyEvent;
        _ = self;
    }
    

    pub fn keyTyped(self: *Self, keyEvent: ?*KeyEvent) void {
        _ = keyEvent;
        _ = self;
    }
    

    pub fn main(args: []?*String) void {
        _ = args;
        { // try
            _ = AngleFactory.getInstance();
            _ = Inheritance.receiverOf(SmallIntegerSingletonFactory.getInstance().?, "init").init();
            _ = Inheritance.receiver(MyFrame.create(), "show").show();
        }
        // catch (Exception e):
//             const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
//             _ = Inheritance.call(logUtil.?, "put", .{ CommonStrings.getInstance().?.EXCEPTION, null, String.literal("main"), e });
    }
};

