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
// package org.allbinary.input.automation

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ARunnable = @import("org/allbinary/thread/ARunnable.zig").ARunnable;
// const URI = @import("java/net/URI.zig").URI;
// const URL = @import("java/net/URL.zig").URL;
// const Desktop = @import("java/awt/Desktop.zig").Desktop;
// const List = @import("java/util/List.zig").List;
// const ImageIcon = @import("javax/swing/ImageIcon.zig").ImageIcon;
// const JDialog = @import("javax/swing/JDialog.zig").JDialog;
// const HelpSet = @import("javax/help/HelpSet.zig").HelpSet;
// const HelpSetEvent = @import("javax/help/event/HelpSetEvent.zig").HelpSetEvent;
// const HelpSetListener = @import("javax/help/event/HelpSetListener.zig").HelpSetListener;
const InputAutomationBundleActivatorListenerInterface = @import("bundle/input/automation/InputAutomationBundleActivatorListenerInterface.zig").InputAutomationBundleActivatorListenerInterface;
const InputAutomationConfigurationModuleChangeListener = @import("bundle/input/automation/module/configuration/InputAutomationConfigurationModuleChangeListener.zig").InputAutomationConfigurationModuleChangeListener;
const InputAutomationRobotChangeListener = @import("bundle/input/automation/robot/InputAutomationRobotChangeListener.zig").InputAutomationRobotChangeListener;
const AppUrlGlobals = @import("org/allbinary/globals/AppUrlGlobals.zig").AppUrlGlobals;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const BasicTextJDialog = @import("org/allbinary/gui/dialog/BasicTextJDialog.zig").BasicTextJDialog;
const JListSwingWorker = @import("org/allbinary/gui/swing/workers/JListSwingWorker.zig").JListSwingWorker;
const InputAutomationConfiguration = @import("org/allbinary/input/automation/configuration/InputAutomationConfiguration.zig").InputAutomationConfiguration;
const InputAutomationConfigurationFactory = @import("org/allbinary/input/automation/configuration/InputAutomationConfigurationFactory.zig").InputAutomationConfigurationFactory;
const InputAutomationConfigurationModuleChangeEvent = @import("org/allbinary/input/automation/configuration/InputAutomationConfigurationModuleChangeEvent.zig").InputAutomationConfigurationModuleChangeEvent;
const InputAutomationModuleFactoryFactory = @import("org/allbinary/input/automation/module/InputAutomationModuleFactoryFactory.zig").InputAutomationModuleFactoryFactory;
const InputAutomationModuleFactoryInterface = @import("org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface.zig").InputAutomationModuleFactoryInterface;
const InputAutomationModuleConfiguration = @import("org/allbinary/input/automation/module/configuration/InputAutomationModuleConfiguration.zig").InputAutomationModuleConfiguration;
const InputAutomationModuleConfigurations = @import("org/allbinary/input/automation/module/configuration/InputAutomationModuleConfigurations.zig").InputAutomationModuleConfigurations;
const DesktopBundle = @import("org/allbinary/input/automation/osgi/DesktopBundle.zig").DesktopBundle;
const InputRobotFactory = @import("org/allbinary/input/automation/robot/InputRobotFactory.zig").InputRobotFactory;
const InputAutomationRobotChangeEvent = @import("org/allbinary/input/automation/robot/osgi/InputAutomationRobotChangeEvent.zig").InputAutomationRobotChangeEvent;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const LogConfigTypeFactory = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.zig").LogConfigTypeFactory;
const JavaHelpUtil = @import("org/allbinary/logic/java/help/JavaHelpUtil.zig").JavaHelpUtil;
const WebappClassLoaderInfo = @import("org/allbinary/logic/system/loader/WebappClassLoaderInfo.zig").WebappClassLoaderInfo;
const InputAutomationClientInformationFactory = @import("org/allbinary/logic/system/security/licensing/InputAutomationClientInformationFactory.zig").InputAutomationClientInformationFactory;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const RunnableInterface = @import("org/allbinary/thread/RunnableInterface.zig").RunnableInterface;
const Short = @import("java/lang/Short.zig").Short;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const InputAutomationJFrame = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.InputAutomationJFrame";
    base: JFrame = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    inputAutomationModuleConfigurations: ?*InputAutomationModuleConfigurations = null,
    inputAutomationModuleFactory: ?*InputAutomationModuleFactoryFactory = null,
    inputAutomationModuleInterface: ?*InputAutomationModuleFactoryInterface = null,
    runnableInterface: ?*RunnableInterface = null,
    thread: ?*Thread = null,
    helpSet: ?*HelpSet = null,
    uri: ?*URI = null,
    aboutJMenuItem: ?*JMenuItem = null,
    automationModuleConfigurationJPanel: ?*JPanel = null,
    gameRobotJTabbedPane: ?*JTabbedPane = null,
    helpJMenuItem: ?*JMenuItem = null,
    inputAutomationModuleJList: ?*JList = null,
    inputAutomationModuleJPanel: ?*JPanel = null,
    jScrollPane1: ?*JScrollPane = null,
    mainJMenuBar: ?*JMenuBar = null,
    modulesJMenuItem: ?*JMenuItem = null,
    noModuleSelectedJDialog: ?*JDialog = null,
    noModuleSelectedJLabel: ?*JLabel = null,
    optionsJMenu: ?*JMenu = null,
    processingJMenu: ?*JMenu = null,
    startJMenuItem: ?*JMenuItem = null,
    stopJMenuItem: ?*JMenuItem = null,
    stopOnFocusJCheckBoxMenuItem: ?*JCheckBoxMenuItem = null,
    subscriptionJMenuItem: ?*JMenuItem = null,
    toolsJMenu: ?*JMenu = null,
    updatesJMenuItem: ?*JMenuItem = null,
    // Implements InputAutomationConfigurationModuleChangeListener
    // Implements InputAutomationRobotChangeListener
    // Implements HelpSetListener
    var INPUTAUTOMATION_JFRAME: ?*InputAutomationJFrame = null;

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.inputAutomationModuleConfigurations = InputAutomationModuleConfigurations.create();
        this.inputAutomationModuleFactory = null;
        this.inputAutomationModuleInterface = null;
        this.runnableInterface = null;
        this.thread = null;
        
        this.uri = Inheritance.callStatic(URI, "create1", .{ String.literal("http://geocities.com/allbinary/") });
        this.aboutJMenuItem = null;
        this.automationModuleConfigurationJPanel = null;
        this.gameRobotJTabbedPane = null;
        this.helpJMenuItem = null;
        this.inputAutomationModuleJList = null;
        this.inputAutomationModuleJPanel = null;
        this.jScrollPane1 = null;
        this.mainJMenuBar = null;
        this.modulesJMenuItem = null;
        this.noModuleSelectedJDialog = null;
        this.noModuleSelectedJLabel = null;
        this.optionsJMenu = null;
        this.processingJMenu = null;
        this.startJMenuItem = null;
        this.stopJMenuItem = null;
        this.stopOnFocusJCheckBoxMenuItem = null;
        this.subscriptionJMenuItem = null;
        this.toolsJMenu = null;
        this.updatesJMenuItem = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = JFrame.create().*;
        this.initFields();
        _ = this.initComponents();
        var url: ?*URL = Inheritance.upcast(?*URL, Inheritance.call(@as(?*anyopaque, @ptrCast(@constCast(Object.of(this).?.class))).?, "getResource", .{ String.literal("/help/Help.hs") }));
        _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("URL: "), url), this, this.commonStrings.?.CONSTRUCTOR });
        this.helpSet = Inheritance.upcast(@TypeOf(this.helpSet), Inheritance.call(JavaHelpUtil.getInstance().?, "getHelpSet", .{ url }));
        url = Inheritance.upcast(@TypeOf(url), Inheritance.call(@as(?*anyopaque, @ptrCast(@constCast(Object.of(this).?.class))).?, "getResource", .{ String.literal("/resources/allbinaryicon8bit.jpg") }));
        const imageIcon: ?*ImageIcon = Inheritance.callStatic(ImageIcon, "create1", .{ url });
        _ = Inheritance.call(this, "setIconImage", .{ imageIcon.?.getImage() });
        _ = this.init();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn helpSetAdded(self: *Self, helpSetEvent: ?*HelpSetEvent) void {
        _ = Inheritance.call(self.helpSet.?, "add", .{ helpSetEvent.?.getHelpSet() });
    }
    

    pub fn helpSetRemoved(self: *Self, helpSetEvent: ?*HelpSetEvent) void {
        _ = Inheritance.call(self.helpSet.?, "remove", .{ helpSetEvent.?.getHelpSet() });
    }
    

    // throws Exception
    pub fn init(self: *Self) void {
        const inputAutomationConfigurationFactory: ?*InputAutomationConfigurationFactory = Inheritance.upcast(?*InputAutomationConfigurationFactory, InputAutomationConfigurationFactory.getInstance());
        _ = Inheritance.call(inputAutomationConfigurationFactory.?, "init", .{ InputAutomationClientInformationFactory.getInstance() });
        const inputAutomationModuleConfigurationList: ?*List = Inheritance.upcast(?*List, Inheritance.receiverOf(inputAutomationConfigurationFactory.?.inputAutomationConfiguration.?, "getInputAutomationModuleConfigurationList").getInputAutomationModuleConfigurationList());
        if (inputAutomationModuleConfigurationList == null) {
        } else {
            self.inputAutomationModuleConfigurations = Inheritance.callStatic(InputAutomationModuleConfigurations, "create1", .{ inputAutomationModuleConfigurationList });
        }
        self.inputAutomationModuleFactory = Inheritance.callStatic(InputAutomationModuleFactoryFactory, "create2", .{ self.inputAutomationModuleConfigurations, self });
        _ = Inheritance.receiverOf((Inheritance.callStatic(JListSwingWorker, "create2", .{ self.inputAutomationModuleJList, self.inputAutomationModuleFactory.?.getListModel() })).?, "execute").execute();
        _ = Inheritance.call(self.gameRobotJTabbedPane.?, "setEnabledAt", .{ 1, false });
        _ = Inheritance.call(self.gameRobotJTabbedPane.?, "setSelectedIndex", .{ 0 });
    }
    

    pub fn initComponents(self: *Self) void {
        self.noModuleSelectedJDialog = JDialog.create();
        self.noModuleSelectedJLabel = JLabel.create();
        self.gameRobotJTabbedPane = JTabbedPane.create();
        self.inputAutomationModuleJPanel = JPanel.create();
        self.jScrollPane1 = JScrollPane.create();
        self.inputAutomationModuleJList = JList.create();
        self.automationModuleConfigurationJPanel = JPanel.create();
        self.mainJMenuBar = JMenuBar.create();
        self.processingJMenu = JMenu.create();
        self.startJMenuItem = JMenuItem.create();
        self.stopJMenuItem = JMenuItem.create();
        self.optionsJMenu = JMenu.create();
        self.stopOnFocusJCheckBoxMenuItem = JCheckBoxMenuItem.create();
        self.toolsJMenu = JMenu.create();
        self.helpJMenuItem = JMenuItem.create();
        self.updatesJMenuItem = JMenuItem.create();
        self.subscriptionJMenuItem = JMenuItem.create();
        self.modulesJMenuItem = JMenuItem.create();
        self.aboutJMenuItem = JMenuItem.create();
        _ = Inheritance.call(self.noModuleSelectedJDialog.?, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 200, 100 }) });
        _ = Inheritance.call(self.noModuleSelectedJLabel.?, "setText", .{ String.literal("Please Select A Module") });
        const noModuleSelectedJDialogLayout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.noModuleSelectedJDialog.?.getContentPane() });
        _ = Inheritance.call(self.noModuleSelectedJDialog.?.getContentPane().?, "setLayout", .{ noModuleSelectedJDialogLayout });
        _ = Inheritance.call(noModuleSelectedJDialogLayout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(noModuleSelectedJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.receiverOf(noModuleSelectedJDialogLayout.?.createSequentialGroup().?, "addContainerGap").addContainerGap().?, "addComponent", .{ self.noModuleSelectedJLabel }).?, "addContainerGap", .{ javax.swing.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }) }) });
        _ = Inheritance.call(noModuleSelectedJDialogLayout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(noModuleSelectedJDialogLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addComponent", .{ self.noModuleSelectedJLabel, javax.swing.?.GroupLayout.?.Alignment.?.TRAILING, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 48, @as(i16, std.math.maxInt(i16)) }) });
        _ = Inheritance.call(self, "setDefaultCloseOperation", .{ javax.swing.?.WindowConstants.?.EXIT_ON_CLOSE });
        _ = Inheritance.call(self, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 325, 215 }) });
        _ = Inheritance.call(self, "setResizable", .{ false });
        _ = Inheritance.call(self, "addWindowFocusListener", .{ WindowFocusListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn windowGainedFocus(self: *Self, evt: ?*WindowEvent) void {
//                 _ = Inheritance.call(self, "formWindowGainedFocus", .{ evt });
//             }
//             
// 
//             pub fn windowLostFocus(self: *Self, evt: ?*WindowEvent) void {
//                 _ = Inheritance.call(self, "formWindowLostFocus", .{ evt });
//             }
 });
        _ = Inheritance.call(self, "addFocusListener", .{ FocusAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn focusGained(self: *Self, evt: ?*FocusEvent) void {
//                 _ = Inheritance.call(self, "formFocusGained", .{ evt });
//             }
//             
// 
//             pub fn focusLost(self: *Self, evt: ?*FocusEvent) void {
//                 _ = Inheritance.call(self, "formFocusLost", .{ evt });
//             }
 });
        _ = Inheritance.call(self.gameRobotJTabbedPane.?, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 320, 200 }) });
        _ = Inheritance.call(self.inputAutomationModuleJList.?, "setMinimumSize", .{ Inheritance.callStatic(Dimension, "create2", .{ 200, 0 }) });
        _ = Inheritance.call(self.inputAutomationModuleJList.?, "addListSelectionListener", .{ ListSelectionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn valueChanged(self: *Self, evt: ?*ListSelectionEvent) void {
//                 _ = Inheritance.call(self, "inputAutomationModuleJListValueChanged", .{ evt });
//             }
 });
        _ = Inheritance.call(self.jScrollPane1.?, "setViewportView", .{ self.inputAutomationModuleJList });
        const inputAutomationModuleJPanelLayout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.inputAutomationModuleJPanel });
        _ = Inheritance.call(self.inputAutomationModuleJPanel.?, "setLayout", .{ inputAutomationModuleJPanelLayout });
        _ = Inheritance.call(inputAutomationModuleJPanelLayout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(inputAutomationModuleJPanelLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(inputAutomationModuleJPanelLayout.?.createSequentialGroup().?, "addComponent", .{ self.jScrollPane1, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 199, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addContainerGap", .{ 367, @as(i16, std.math.maxInt(i16)) }) }) });
        _ = Inheritance.call(inputAutomationModuleJPanelLayout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(inputAutomationModuleJPanelLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(inputAutomationModuleJPanelLayout.?.createSequentialGroup().?, "addComponent", .{ self.jScrollPane1, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 330, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addContainerGap", .{ javax.swing.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }) }) });
        _ = Inheritance.call(self.gameRobotJTabbedPane.?, "addTab", .{ String.literal("Modules"), self.inputAutomationModuleJPanel });
        const automationModuleConfigurationJPanelLayout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.automationModuleConfigurationJPanel });
        _ = Inheritance.call(self.automationModuleConfigurationJPanel.?, "setLayout", .{ automationModuleConfigurationJPanelLayout });
        _ = Inheritance.call(automationModuleConfigurationJPanelLayout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(automationModuleConfigurationJPanelLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGap", .{ 0, 566, @as(i16, std.math.maxInt(i16)) }) });
        _ = Inheritance.call(automationModuleConfigurationJPanelLayout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(automationModuleConfigurationJPanelLayout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGap", .{ 0, 334, @as(i16, std.math.maxInt(i16)) }) });
        _ = Inheritance.call(self.gameRobotJTabbedPane.?, "addTab", .{ String.literal("Configuration"), self.automationModuleConfigurationJPanel });
        _ = Inheritance.call(self.processingJMenu.?, "setText", .{ String.literal("Processing") });
        _ = Inheritance.call(self.processingJMenu.?, "setToolTipText", .{ String.literal("Set module processing state") });
        _ = Inheritance.call(self.startJMenuItem.?, "setText", .{ self.commonStrings.?.START });
        _ = Inheritance.call(self.startJMenuItem.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "startJMenuItemActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.processingJMenu.?, "add", .{ self.startJMenuItem });
        _ = Inheritance.call(self.stopJMenuItem.?, "setText", .{ String.literal("Stop") });
        _ = Inheritance.call(self.stopJMenuItem.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "stopJMenuItemActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.processingJMenu.?, "add", .{ self.stopJMenuItem });
        _ = Inheritance.call(self.mainJMenuBar.?, "add", .{ self.processingJMenu });
        _ = Inheritance.call(self.optionsJMenu.?, "setText", .{ String.literal("Options") });
        _ = Inheritance.call(self.optionsJMenu.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "optionsJMenuActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.stopOnFocusJCheckBoxMenuItem.?, "setSelected", .{ true });
        _ = Inheritance.call(self.stopOnFocusJCheckBoxMenuItem.?, "setEnabled", .{ false });
        _ = Inheritance.call(self.stopOnFocusJCheckBoxMenuItem.?, "setLabel", .{ String.literal("Stop Module On Focus") });
        _ = Inheritance.call(self.stopOnFocusJCheckBoxMenuItem.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "stopOnFocusJCheckBoxMenuItemActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.optionsJMenu.?, "add", .{ self.stopOnFocusJCheckBoxMenuItem });
        _ = Inheritance.call(self.mainJMenuBar.?, "add", .{ self.optionsJMenu });
        _ = Inheritance.call(self.toolsJMenu.?, "setText", .{ String.literal("Help") });
        _ = Inheritance.call(self.helpJMenuItem.?, "setText", .{ String.literal("Help") });
        _ = Inheritance.call(self.helpJMenuItem.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "helpJMenuItemActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.toolsJMenu.?, "add", .{ self.helpJMenuItem });
        _ = Inheritance.call(self.updatesJMenuItem.?, "setText", .{ String.literal("Updates") });
        _ = Inheritance.call(self.updatesJMenuItem.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "updatesJMenuItemActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.toolsJMenu.?, "add", .{ self.updatesJMenuItem });
        _ = Inheritance.call(self.subscriptionJMenuItem.?, "setText", .{ String.literal("Subscription") });
        _ = Inheritance.call(self.subscriptionJMenuItem.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "subscriptionJMenuItemActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.toolsJMenu.?, "add", .{ self.subscriptionJMenuItem });
        _ = Inheritance.call(self.modulesJMenuItem.?, "setText", .{ String.literal("Module Manager") });
        _ = Inheritance.call(self.modulesJMenuItem.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "modulesJMenuItemActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.toolsJMenu.?, "add", .{ self.modulesJMenuItem });
        _ = Inheritance.call(self.aboutJMenuItem.?, "setText", .{ String.literal("About") });
        _ = Inheritance.call(self.aboutJMenuItem.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "aboutJMenuItemActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.toolsJMenu.?, "add", .{ self.aboutJMenuItem });
        _ = Inheritance.call(self.mainJMenuBar.?, "add", .{ self.toolsJMenu });
        _ = Inheritance.call(self, "setJMenuBar", .{ self.mainJMenuBar });
        const layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ Inheritance.receiver(self, "getContentPane").getContentPane() });
        _ = Inheritance.call(Inheritance.receiver(self, "getContentPane").getContentPane().?, "setLayout", .{ layout });
        _ = Inheritance.call(layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addComponent", .{ self.gameRobotJTabbedPane, javax.swing.?.GroupLayout.?.Alignment.?.TRAILING, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 571, @as(i16, std.math.maxInt(i16)) }) });
        _ = Inheritance.call(layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addComponent", .{ self.gameRobotJTabbedPane, javax.swing.?.GroupLayout.?.Alignment.?.TRAILING, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 359, @as(i16, std.math.maxInt(i16)) }) });
        _ = Inheritance.receiver(self, "pack").pack();
    }
    

    pub fn subscriptionJMenuItemActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            _ = Inheritance.call(Desktop.getDesktop().?, "browse", .{ self.uri });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("subscriptionJMenuItemActionPerformed"), e });
    }
    

    pub fn updatesJMenuItemActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            _ = Inheritance.call(Desktop.getDesktop().?, "browse", .{ self.uri });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("updatesJMenuItemActionPerformed"), e });
    }
    

    pub fn aboutJMenuItemActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        const textJDialog: ?*JDialog = Inheritance.upcast(?*JDialog, Inheritance.callStatic(BasicTextJDialog, "create1", .{ String.literal("Copyright (c) 2002-2007 AllBinary") }));
        _ = Inheritance.call(textJDialog.?, "setVisible", .{ true });
        _ = Inheritance.call(textJDialog.?, "setLocationRelativeTo", .{ self });
    }
    

    pub fn modulesJMenuItemActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self;
        { // try
            _ = DesktopBundle.create().start();
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("modulesJMenuItemActionPerformed"), e });
    }
    

    pub fn helpJMenuItemActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = Inheritance.call(JavaHelpUtil.getInstance().?, "show", .{ self.helpSet });
    }
    

    pub fn stopOnFocusJCheckBoxMenuItemActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self;
    }
    

    pub fn optionsJMenuActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = self;
    }
    

    pub fn formWindowLostFocus(self: *Self, evt: ?*WindowEvent) void {
        _ = evt;
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Nothing"), self, String.literal("focusLost") });
    }
    

    pub fn formWindowGainedFocus(self: *Self, evt: ?*WindowEvent) void {
        _ = evt;
        if (self.stopOnFocusJCheckBoxMenuItem.?.isSelected()) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Stopping"), self, String.literal("focusGained") });
            if (self.runnableInterface != null) {
                _ = Inheritance.call(self.runnableInterface.?, "setRunning", .{ false });
            }
        }
    }
    

    pub fn formFocusLost(self: *Self, evt: ?*FocusEvent) void {
        _ = evt;
        _ = self;
    }
    

    pub fn formFocusGained(self: *Self, evt: ?*FocusEvent) void {
        _ = evt;
        _ = self;
    }
    

    pub fn inputAutomationModuleJListValueChanged(self: *Self, evt: ?*ListSelectionEvent) void {
        _ = evt;
        { // try
            const gameAutomationRobotModuleNameString: ?*String = Inheritance.cast(?*String, self.inputAutomationModuleJList.?.getSelectedValue());
            if (gameAutomationRobotModuleNameString != null) {
                self.inputAutomationModuleInterface = Inheritance.upcast(@TypeOf(self.inputAutomationModuleInterface), Inheritance.call(self.inputAutomationModuleFactory.?, "getInstance", .{ gameAutomationRobotModuleNameString }));
                _ = Inheritance.receiverOf(self.getAutomationModuleConfigurationJPanel().?, "removeAll").removeAll();
                const layout: ?*GroupLayout = Inheritance.cast(?*GroupLayout, Inheritance.receiverOf(self.getAutomationModuleConfigurationJPanel().?, "getLayout").getLayout());
                _ = Inheritance.call(layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGap", .{ 0, 395, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.inputAutomationModuleInterface.?.getConfigurationJPanel(), javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) });
                _ = Inheritance.call(layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGap", .{ 0, 256, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.inputAutomationModuleInterface.?.getConfigurationJPanel(), javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) });
                _ = Inheritance.call(self.gameRobotJTabbedPane.?, "setEnabledAt", .{ 1, true });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.literal("Setting Module: "), gameAutomationRobotModuleNameString), String.literal(" and Configuration JPanel")), self, String.literal("gameAutomationRobotModuleJListValueChanged") });
            } else {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Module name was null"), self, String.literal("gameAutomationRobotModuleJListValueChanged") });
                _ = Inheritance.call(self.gameRobotJTabbedPane.?, "setEnabledAt", .{ 1, false });
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("gameAutomationRobotModuleJListValueChanged"), e });
    }
    

    pub fn stopJMenuItemActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        if (self.runnableInterface != null) {
            _ = Inheritance.call(self.runnableInterface.?, "setRunning", .{ false });
        } else {
            _ = Inheritance.call(self.noModuleSelectedJDialog.?, "setVisible", .{ true });
            _ = Inheritance.call(self.noModuleSelectedJDialog.?, "setLocationRelativeTo", .{ self });
        }
    }
    

    pub fn startJMenuItemActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Starting"), self, String.literal("startJMenuItemActionPerformed") });
            if (self.inputAutomationModuleInterface != null) {
                self.runnableInterface = Inheritance.upcast(@TypeOf(self.runnableInterface), self.inputAutomationModuleInterface.?.getInstance());
                if (self.runnableInterface != null) {
                    self.thread = Inheritance.callStatic(Thread, "create1", .{ self.runnableInterface });
                    _ = Inheritance.call(self.thread.?, "setPriority", .{ Thread.MIN_PRIORITY + 1 });
                    _ = self.thread.?.start();
                } else {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Runnnable was null"), self, String.literal("startJMenuItemActionPerformed") });
                    _ = Inheritance.call(self.noModuleSelectedJDialog.?, "setVisible", .{ true });
                    _ = Inheritance.call(self.noModuleSelectedJDialog.?, "setLocationRelativeTo", .{ self });
                }
            } else {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("InputAutomationModuleInterface was null"), self, String.literal("startJMenuItemActionPerformed") });
                _ = Inheritance.call(self.noModuleSelectedJDialog.?, "setVisible", .{ true });
                _ = Inheritance.call(self.noModuleSelectedJDialog.?, "setLocationRelativeTo", .{ self });
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("startJMenuItemActionPerformed"), e });
    }
    

    pub fn getInstance() ?*InputAutomationJFrame {
        return Inheritance.upcast(?*InputAutomationJFrame, InputAutomationJFrame.INPUTAUTOMATION_JFRAME);
    }
    

    pub fn destroy() void {
        _ = Inheritance.call(InputAutomationJFrame.INPUTAUTOMATION_JFRAME.?, "setVisible", .{ false });
    }
    

    pub fn create(inputAutomationBundleActivatorListenerInterface: ?*InputAutomationBundleActivatorListenerInterface) void {
        _ = LogConfigTypeFactory.getInstance();
        const appUrlGlobals: ?*AppUrlGlobals = AppUrlGlobals.create();
        _ = Inheritance.call(appUrlGlobals.?, "setWebappPath", .{ String.literal("G:/mnt/bc/mydev/work_automation/automation/run/") });
        _ = Inheritance.callStatic(URLGLOBALS, "init", .{ appUrlGlobals });
        _ = Inheritance.callStatic(WebappClassLoaderInfo, "setLoader", .{ Inheritance.receiverOf(@as(?*anyopaque, @ptrCast(@constCast(Object.of(appUrlGlobals).?.class))).?, "getClassLoader").getClassLoader() });
        _ = Inheritance.call(java.awt.?.EventQueue.?, "invokeLater", .{ ARunnable.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn run(self: *Self) void {
//                 const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
//                 { // try
//                     _ = Inheritance.call(logUtil.?, "putF", .{ String.literal("Running"), self, commonStrings.?.RUN });
//                     InputAutomationJFrame.INPUTAUTOMATION_JFRAME = InputAutomationJFrame.create();
//                     _ = Inheritance.call(InputRobotFactory.getInstance().?, "addListener", .{ InputAutomationJFrame.getInstance() });
//                     if (inputAutomationBundleActivatorListenerInterface != null) {
//                         _ = inputAutomationBundleActivatorListenerInterface.?.registerAsService();
//                         _ = inputAutomationBundleActivatorListenerInterface.?.useServices();
//                     }
//                     _ = Inheritance.call(InputAutomationJFrame.INPUTAUTOMATION_JFRAME.?, "setVisible", .{ true });
//                 }
//                 // catch (Exception e):
// //                     _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.RUN, e });
//             }
 });
    }
    

    // throws Exception
    pub fn main(args: []?*String) void {
        _ = args;
        _ = Inheritance.callStatic(InputAutomationJFrame, "create", .{ null });
    }
    

    pub fn getAutomationModuleConfigurationJPanel(self: *Self) ?*JPanel {
        return self.automationModuleConfigurationJPanel;
    }
    

    pub fn setAutomationModuleConfigurationJPanel(self: *Self, automationModuleConfigurationJPanel: ?*JPanel) void {
        self.automationModuleConfigurationJPanel = automationModuleConfigurationJPanel;
    }
    

    pub fn onAdd(self: *Self, inputAutomationRobotChangeEvent: ?*InputAutomationRobotChangeEvent) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("onAdd") });
            _ = Inheritance.call(InputRobotFactory.getInstance().?, "add", .{ Inheritance.receiverOf(inputAutomationRobotChangeEvent.?.getInputAutomationRobotInterfaceWrapper().?, "getInputRobotInterface").getInputRobotInterface() });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("onAdd"), e });
    }
    

    pub fn onRemove(self: *Self, inputAutomationRobotChangeEvent: ?*InputAutomationRobotChangeEvent) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("onRemove") });
            _ = Inheritance.call(InputRobotFactory.getInstance().?, "add", .{ Inheritance.receiverOf(inputAutomationRobotChangeEvent.?.getInputAutomationRobotInterfaceWrapper().?, "getInputRobotInterface").getInputRobotInterface() });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("onRemove"), e });
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn onAdd(self: *Self, inputAutomationConfigurationChangeEvent: ?*InputAutomationConfigurationModuleChangeEvent) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("onAdd") });
            _ = Inheritance.call(self.inputAutomationModuleConfigurations.?, "add", .{ inputAutomationConfigurationChangeEvent.?.getInputAutomationModuleConfiguration() });
            _ = self.init();
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("onAdd"), e });
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn onRemove(self: *Self, inputAutomationConfigurationChangeEvent: ?*InputAutomationConfigurationModuleChangeEvent) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("onRemove") });
            const inputAutomationConfiguration: ?*InputAutomationConfiguration = Inheritance.upcast(?*InputAutomationConfiguration, InputAutomationConfigurationFactory.getInstance().?.inputAutomationConfiguration);
            const inputAutomationModuleConfigurationList: ?*List = Inheritance.upcast(?*List, inputAutomationConfiguration.?.getInputAutomationModuleConfigurationList());
            if (inputAutomationModuleConfigurationList == null) {
                const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
                const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
                _ = Inheritance.call(logUtil.?, "putF", .{ String.plus(String.literal("inputAutomationModuleConfigurationList: "), inputAutomationModuleConfigurationList), self, commonStrings.?.INIT });
                std.debug.panic("{any}", .{error.Exception});
            }
            const inputAutomationModuleConfigurations: ?*InputAutomationModuleConfigurations = Inheritance.callStatic(InputAutomationModuleConfigurations, "create1", .{ inputAutomationConfiguration.?.getInputAutomationModuleConfigurationList() });
            _ = Inheritance.call(inputAutomationModuleConfigurations.?, "remove", .{ inputAutomationConfigurationChangeEvent.?.getInputAutomationModuleConfiguration() });
            _ = self.init();
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("onRemove"), e });
    }
};

