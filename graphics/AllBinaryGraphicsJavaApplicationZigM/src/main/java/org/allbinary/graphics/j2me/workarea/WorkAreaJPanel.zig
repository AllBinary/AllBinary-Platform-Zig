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
// package org.allbinary.graphics.j2me.workarea

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const EventListener = @import("java/util/EventListener.zig").EventListener;
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const LinkedList = @import("java/util/LinkedList.zig").LinkedList;
// const MutableTreeNode = @import("javax/swing/tree/MutableTreeNode.zig").MutableTreeNode;
const DomHelper = @import("org/allbinary/dom/DomHelper.zig").DomHelper;
const StatusFactory = @import("org/allbinary/graphics/j2me/StatusFactory.zig").StatusFactory;
const CanvasDom = @import("org/allbinary/graphics/j2me/workarea/canvas/CanvasDom.zig").CanvasDom;
const CanvasJPanel = @import("org/allbinary/graphics/j2me/workarea/canvas/CanvasJPanel.zig").CanvasJPanel;
const MyCanvasEvent = @import("org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEvent.zig").MyCanvasEvent;
const MyCanvasEventListener = @import("org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEventListener.zig").MyCanvasEventListener;
const MyCanvasEventService = @import("org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEventService.zig").MyCanvasEventService;
const PropertiesJPanel = @import("org/allbinary/graphics/j2me/workarea/properties/PropertiesJPanel.zig").PropertiesJPanel;
const ToolJPanel = @import("org/allbinary/graphics/j2me/workarea/tools/ToolJPanel.zig").ToolJPanel;
const LOGGING = @import("org/allbinary/log/LOGGING.zig").LOGGING;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const WorkAreaDom = @import("org/allbinary/graphics/j2me/workarea/WorkAreaDom.zig").WorkAreaDom;
const WorkAreaJPanelInterface = @import("org/allbinary/graphics/j2me/workarea/WorkAreaJPanelInterface.zig").WorkAreaJPanelInterface;
const WorkAreaJTreeJPanel = @import("org/allbinary/graphics/j2me/workarea/WorkAreaJTreeJPanel.zig").WorkAreaJTreeJPanel;
const Integer = @import("java/lang/Integer.zig").Integer;
const Thread = @import("java/lang/Thread.zig").Thread;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

pub const WorkAreaJPanel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.WorkAreaJPanel";
    pub const java_interfaces = .{ WorkAreaJPanelInterface, Runnable };
    base: JPanel = undefined,
    logUtil: ?*LogUtil = null,
    canvasJPanelList: ?*LinkedList = null,
    canvasHolderJPanel: ?*JPanel = null,
    name: ?*String = null,
    selectedFrame: i32 = 0,
    propertiesJPanel: ?*PropertiesJPanel = null,
    workAreaJTreeJPanel: ?*WorkAreaJTreeJPanel = null,
    isPlaying: bool = false,
    innerJPanel: ?*JPanel = null,
    // Implements WorkAreaJPanelInterface
    // Implements MyCanvasEventListener
    // Implements EventListener
    // Implements Runnable
    var document: ?*Document = null;

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.canvasJPanelList = null;
        this.canvasHolderJPanel = null;
        this.name = null;
        this.selectedFrame = 0;
        this.propertiesJPanel = null;
        this.workAreaJTreeJPanel = null;
        this.isPlaying = false;
        this.innerJPanel = null;
    }
    

    pub fn create4(name: ?*String, dimension: ?*Dimension, x: i32, y: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = JPanel.create().*;
        this.initFields();
        { // try
            _ = this.initComponents();
            this.name = name;
            _ = Inheritance.call(this, "initMyComponents", .{ dimension });
            this.workAreaJTreeJPanel = Inheritance.callStatic(WorkAreaJTreeJPanel, "create1", .{ this.name });
            const canvasJPanel: ?*CanvasJPanel = Inheritance.callStatic(CanvasJPanel, "create4", .{ this.workAreaJTreeJPanel, Inheritance.receiver(this, "getSize").getSize(), x, y });
            _ = Inheritance.call(this.canvasJPanelList.?, "add", .{ canvasJPanel });
            this.selectedFrame = 0;
            _ = Inheritance.call(this.propertiesJPanel.?, "set", .{ this.workAreaJTreeJPanel });
            _ = Inheritance.call(this.canvasHolderJPanel.?, "add", .{ Inheritance.cast(?*Component, canvasJPanel) });
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create2(workAreaDom: ?*WorkAreaDom, dimension: ?*Dimension) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = JPanel.create().*;
        this.initFields();
        { // try
            _ = this.initComponents();
            this.name = Inheritance.upcast(@TypeOf(this.name), workAreaDom.?.getName());
            _ = Inheritance.call(this, "initMyComponents", .{ dimension });
            const canvasNodeList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, workAreaDom.?.getCanvasNodes());
            const numberOfFrames: i32 = canvasNodeList.?.size();
            {
                var index: i32 = 0;
                while (index < numberOfFrames) : (index += 1) {
                const node: ?*Node = Inheritance.cast(?*Node, Inheritance.call(canvasNodeList.?, "get", .{ index }));
                const canvasJPanel: ?*CanvasJPanel = Inheritance.callStatic(CanvasJPanel, "create3", .{ this.workAreaJTreeJPanel, Inheritance.receiver(this, "getSize").getSize(), Inheritance.callStatic(CanvasDom, "create1", .{ node }) });
                _ = Inheritance.call(this.canvasJPanelList.?, "add", .{ canvasJPanel });
                }
            }
            this.selectedFrame = 0;
            _ = Inheritance.call(this.canvasHolderJPanel.?, "add", .{ Inheritance.cast(?*Component, this.getCurrentFrame()) });
            _ = Inheritance.call(this.propertiesJPanel.?, "set", .{ this.workAreaJTreeJPanel });
        }
        // catch (Exception e):
//             if (Inheritance.callStatic(LOGGING, "contains", .{ LOGGING.LOADINGERROR })) {
//                 _ = Inheritance.call(this.logUtil.?, "put", .{ String.literal("Constructor Error"), this, String.literal("WorkAreaJPanel"), e });
//             }
//             std.debug.panic("{any}", .{e});
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initMyComponents(self: *Self, dimension: ?*Dimension) void {
        self.workAreaJTreeJPanel = Inheritance.callStatic(WorkAreaJTreeJPanel, "create1", .{ self.name });
        self.canvasHolderJPanel = JPanel.create();
        _ = Inheritance.call(self.canvasHolderJPanel.?, "setSize", .{ dimension });
        _ = Inheritance.call(self.canvasHolderJPanel.?, "setLayout", .{ Inheritance.callStatic(GridLayout, "create2", .{ 1, 1 }) });
        _ = Inheritance.call(self, "setSize", .{ dimension });
        self.canvasJPanelList = LinkedList.create();
        const gridBagLayout: ?*GridBagLayout = GridBagLayout.create();
        var gridBagConstraints: ?*GridBagConstraints = GridBagConstraints.create();
        _ = Inheritance.call(self.innerJPanel.?, "setLayout", .{ gridBagLayout });
        gridBagConstraints.?.gridx = 0;
        gridBagConstraints.?.gridy = 0;
        gridBagConstraints.?.gridwidth = 1;
        gridBagConstraints.?.fill = Inheritance.upcast(@TypeOf(gridBagConstraints.?.fill), java.awt.?.GridBagConstraints.?.BOTH);
        gridBagConstraints.?.weightx = .05;
        gridBagConstraints.?.weighty = .05;
        const toolJPanel: ?*ToolJPanel = ToolJPanel.create();
        _ = Inheritance.call(gridBagLayout.?, "setConstraints", .{ toolJPanel, gridBagConstraints });
        _ = Inheritance.call(self.innerJPanel.?, "add", .{ toolJPanel });
        gridBagConstraints = GridBagConstraints.create();
        gridBagConstraints.?.gridx = 1;
        gridBagConstraints.?.gridy = 0;
        gridBagConstraints.?.gridwidth = 6;
        gridBagConstraints.?.fill = Inheritance.upcast(@TypeOf(gridBagConstraints.?.fill), java.awt.?.GridBagConstraints.?.BOTH);
        gridBagConstraints.?.weightx = 1;
        gridBagConstraints.?.weighty = 1;
        _ = Inheritance.call(gridBagLayout.?, "setConstraints", .{ self.canvasHolderJPanel, gridBagConstraints });
        _ = Inheritance.call(self.innerJPanel.?, "add", .{ self.canvasHolderJPanel });
        gridBagConstraints = GridBagConstraints.create();
        gridBagConstraints.?.gridx = 8;
        gridBagConstraints.?.gridy = 0;
        gridBagConstraints.?.gridwidth = Inheritance.upcast(@TypeOf(gridBagConstraints.?.gridwidth), java.awt.?.GridBagConstraints.?.REMAINDER);
        gridBagConstraints.?.fill = Inheritance.upcast(@TypeOf(gridBagConstraints.?.fill), java.awt.?.GridBagConstraints.?.BOTH);
        gridBagConstraints.?.weightx = .1;
        gridBagConstraints.?.weighty = .1;
        self.propertiesJPanel = PropertiesJPanel.create();
        _ = Inheritance.call(gridBagLayout.?, "setConstraints", .{ self.propertiesJPanel, gridBagConstraints });
        _ = Inheritance.call(self.innerJPanel.?, "add", .{ self.propertiesJPanel });
        _ = Inheritance.callStatic(MyCanvasEventService, "addListener", .{ Inheritance.cast(?*MyCanvasEventListener, self) });
    }
    

    pub fn getCanvasHashMap(self: *Self) ?*HashMap {
        const canvasJPanelHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        const size: i32 = self.canvasJPanelList.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const canvasJPanel: ?*CanvasJPanel = Inheritance.cast(?*CanvasJPanel, Inheritance.call(self.canvasJPanelList.?, "get", .{ index }));
            _ = Inheritance.call(canvasJPanelHashMap.?, "put", .{ Inheritance.receiver(canvasJPanel.?, "getTreeNode").getTreeNode(), Inheritance.callStatic(Integer, "create1", .{ index }) });
            }
        }
        return canvasJPanelHashMap;
    }
    

    pub fn play(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        self.isPlaying = true;
    }
    

    pub fn stop(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        self.isPlaying = false;
    }
    

    pub fn isPlaying(self: *Self) bool {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        return self.isPlaying;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn setName(self: *Self, value: ?*String) void {
        self.name = value;
    }
    

    pub fn disableCanvas(self: *Self) void {
        _ = self.canvasHolderJPanel.?.removeAll();
    }
    

    pub fn enableCanvas(self: *Self) void {
        _ = Inheritance.call(self.canvasHolderJPanel.?, "add", .{ Inheritance.cast(?*Component, self.getCurrentFrame()) });
    }
    

    pub fn deselect(self: *Self) void {
        _ = Inheritance.call(&self.base, "setVisible", .{ false });
    }
    

    pub fn select(self: *Self) void {
        _ = Inheritance.call(&self.base, "setVisible", .{ true });
        if (self.canvasHolderJPanel.?.getComponentCount() == 1) {
            const component: ?*Component = Inheritance.upcast(?*Component, Inheritance.call(self.canvasHolderJPanel.?, "getComponent", .{ 0 }));
            if (component != null) {
                _ = component.?.repaint();
            }
        }
    }
    

    pub fn changeZoom(self: *Self, factor: i32) void {
        const size: i32 = self.canvasJPanelList.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const canvasJPanel: ?*CanvasJPanel = Inheritance.cast(?*CanvasJPanel, Inheritance.call(self.canvasJPanelList.?, "get", .{ index }));
            _ = Inheritance.call(Inheritance.receiver(canvasJPanel.?, "getGrid").getGrid().?, "setZoom", .{ Inheritance.receiverOf(Inheritance.receiver(canvasJPanel.?, "getGrid").getGrid().?, "getZoom").getZoom() + factor });
            }
        }
    }
    

    pub fn getCurrentFrame(self: *Self) ?*CanvasJPanel {
        return Inheritance.cast(?*CanvasJPanel, Inheritance.call(self.canvasJPanelList.?, "get", .{ self.selectedFrame }));
    }
    

    pub fn initDuplicate(self: *Self, newCanvasJPanel: ?*CanvasJPanel) void {
        if (newCanvasJPanel != null) {
            _ = Inheritance.call(self.canvasJPanelList.?, "add", .{ newCanvasJPanel });
            _ = Inheritance.call(self, "select", .{ self.canvasJPanelList.?.size() - 1 });
        }
    }
    

    // throws Exception
    pub fn duplicate(self: *Self, treeNode: ?*MutableTreeNode) void {
        const canvasJPanelHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, self.getCanvasHashMap());
        if (Inheritance.call(canvasJPanelHashMap.?, "containsKey", .{ treeNode })) {
            const frameInteger: ?*Integer = Inheritance.cast(?*Integer, Inheritance.call(canvasJPanelHashMap.?, "get", .{ treeNode }));
            const canvasJPanel: ?*CanvasJPanel = Inheritance.cast(?*CanvasJPanel, Inheritance.call(self.canvasJPanelList.?, "get", .{ frameInteger.?.intValue() }));
            _ = Inheritance.call(self, "initDuplicate", .{ Inheritance.receiver(canvasJPanel.?, "duplicate").duplicate() });
        }
    }
    

    // throws Exception
    pub fn autoRotate(self: *Self, increments: i32, totalAngle: i32) void {
        const incrementAngle: i32 = (@divTrunc(totalAngle, increments));
        {
            var index: i32 = 1;
            while (index < increments) : (index += 1) {
            const canvasJPanel: ?*CanvasJPanel = Inheritance.cast(?*CanvasJPanel, self.getCurrentFrame());
            const newCanvasJPanel: ?*CanvasJPanel = Inheritance.upcast(?*CanvasJPanel, Inheritance.receiver(canvasJPanel.?, "duplicate").duplicate());
            _ = Inheritance.call(newCanvasJPanel.?, "setAngle", .{ incrementAngle * index });
            _ = Inheritance.call(self, "initDuplicate", .{ newCanvasJPanel });
            }
        }
    }
    

    pub fn explodeAll(self: *Self) void {
        const canvasJPanel: ?*CanvasJPanel = Inheritance.cast(?*CanvasJPanel, self.getCurrentFrame());
        _ = Inheritance.receiver(canvasJPanel.?, "explodeAll").explodeAll();
    }
    

    // throws Exception
    pub fn autoExplode2(self: *Self, numberOfFrames: i32, explodeType: i32) void {
        {
            var index: i32 = 1;
            while (index < numberOfFrames) : (index += 1) {
            const canvasJPanel: ?*CanvasJPanel = Inheritance.cast(?*CanvasJPanel, self.getCurrentFrame());
            const newCanvasJPanel: ?*CanvasJPanel = Inheritance.upcast(?*CanvasJPanel, Inheritance.receiver(canvasJPanel.?, "duplicate").duplicate());
            _ = Inheritance.call(newCanvasJPanel.?, "explode", .{ index + 1, explodeType });
            _ = Inheritance.call(self, "initDuplicate", .{ newCanvasJPanel });
            }
        }
    }
    

    // throws Exception
    pub fn autoMirror(self: *Self) void {
        const canvasJPanel: ?*CanvasJPanel = Inheritance.cast(?*CanvasJPanel, self.getCurrentFrame());
        const newCanvasJPanel: ?*CanvasJPanel = Inheritance.upcast(?*CanvasJPanel, Inheritance.receiver(canvasJPanel.?, "duplicate").duplicate());
        _ = Inheritance.receiver(newCanvasJPanel.?, "mirror").mirror();
        _ = Inheritance.call(self, "initDuplicate", .{ newCanvasJPanel });
    }
    

    pub fn select1(self: *Self, index: i32) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        if (index < self.canvasJPanelList.?.size()) {
            const canvasJPanel: ?*CanvasJPanel = Inheritance.cast(?*CanvasJPanel, Inheritance.call(self.canvasJPanelList.?, "get", .{ index }));
            if (canvasJPanel != null) {
                _ = self.canvasHolderJPanel.?.removeAll();
                _ = Inheritance.call(self.canvasHolderJPanel.?, "add", .{ canvasJPanel });
                self.selectedFrame = index;
                _ = Inheritance.receiver(canvasJPanel.?, "changed").changed();
                _ = self.canvasHolderJPanel.?.repaint();
                _ = Inheritance.receiver(canvasJPanel.?, "repaint").repaint();
            }
        }
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn select1(self: *Self, treeNode: ?*MutableTreeNode) void {
        const canvasJPanelHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, self.getCanvasHashMap());
        const frameInteger: ?*Integer = Inheritance.cast(?*Integer, Inheritance.call(canvasJPanelHashMap.?, "get", .{ treeNode }));
        if (frameInteger != null) {
            _ = Inheritance.call(self, "select", .{ frameInteger.?.intValue() });
        }
    }
    

    pub fn getDocument() ?*Document {
        return Inheritance.upcast(?*Document, WorkAreaJPanel.document);
    }
    

    // throws Exception
    pub fn toDocument(self: *Self) ?*Document {
        WorkAreaJPanel.document = Inheritance.upcast(@TypeOf(WorkAreaJPanel.document), Inheritance.receiverOf(DomHelper.getInstance().?, "createDocument").createDocument());
        const workAreaNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(WorkAreaJPanel.document.?, "createElement", .{ WorkAreaDom.WORKAREA }));
        const nameNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(WorkAreaJPanel.document.?, "createElement", .{ WorkAreaDom.NAME }));
        const nameTextNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(WorkAreaJPanel.document.?, "createTextNode", .{ self.name }));
        _ = Inheritance.call(nameNode.?, "appendChild", .{ nameTextNode });
        const framesNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(WorkAreaJPanel.document.?, "createElement", .{ WorkAreaDom.FRAMES }));
        const size: i32 = self.canvasJPanelList.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const canvasJPanel: ?*CanvasJPanel = Inheritance.cast(?*CanvasJPanel, Inheritance.call(self.canvasJPanelList.?, "get", .{ index }));
            _ = Inheritance.call(framesNode.?, "appendChild", .{ Inheritance.receiver(canvasJPanel.?, "toDom").toDom() });
            }
        }
        _ = Inheritance.call(workAreaNode.?, "appendChild", .{ nameNode });
        _ = Inheritance.call(workAreaNode.?, "appendChild", .{ framesNode });
        _ = Inheritance.call(WorkAreaJPanel.document.?, "appendChild", .{ workAreaNode });
        return WorkAreaJPanel.document;
    }
    

    pub fn initComponents(self: *Self) void {
        self.innerJPanel = JPanel.create();
        _ = Inheritance.call(self, "setLayout", .{ Inheritance.callStatic(GridLayout, "create2", .{ 1, 1 }) });
        _ = Inheritance.call(self.innerJPanel.?, "addKeyListener", .{ KeyAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn keyTyped(self: *Self, evt: ?*KeyEvent) void {
//                 _ = Inheritance.call(self, "innerJPanelKeyTyped", .{ evt });
//             }
//             
// 
//             pub fn keyPressed(self: *Self, evt: ?*KeyEvent) void {
//                 _ = Inheritance.call(self, "innerJPanelKeyPressed", .{ evt });
//             }
//             
// 
//             pub fn keyReleased(self: *Self, evt: ?*KeyEvent) void {
//                 _ = Inheritance.call(self, "innerJPanelKeyReleased", .{ evt });
//             }
 });
        _ = Inheritance.call(self, "add", .{ self.innerJPanel });
    }
    

    pub fn innerJPanelKeyReleased(self: *Self, evt: ?*KeyEvent) void {
        _ = evt;
        _ = self;
        _ = Inheritance.call(StatusFactory.getInstance().?, "setStatus", .{ String.literal("Key Pressed1") });
    }
    

    pub fn innerJPanelKeyPressed(self: *Self, evt: ?*KeyEvent) void {
        _ = evt;
        _ = self;
        _ = Inheritance.call(StatusFactory.getInstance().?, "setStatus", .{ String.literal("Key Pressed2") });
    }
    

    pub fn innerJPanelKeyTyped(self: *Self, evt: ?*KeyEvent) void {
        _ = evt;
        _ = self;
        _ = Inheritance.call(StatusFactory.getInstance().?, "setStatus", .{ String.literal("Key Pressed3") });
    }
    

    pub fn keyPressed(self: *Self, keyEvent: ?*KeyEvent) void {
        _ = Inheritance.call(self.getCurrentFrame().?, "keyPressed", .{ keyEvent });
    }
    

    pub fn keyReleased(self: *Self, keyEvent: ?*KeyEvent) void {
        _ = keyEvent;
        _ = self;
    }
    

    pub fn keyTyped(self: *Self, keyEvent: ?*KeyEvent) void {
        _ = keyEvent;
        _ = self;
    }
    

    pub fn delete(self: *Self, evt: ?*MyCanvasEvent) void {
        const canvasJPanelHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, self.getCanvasHashMap());
        if (Inheritance.call(canvasJPanelHashMap.?, "containsKey", .{ evt.?.getTreeNode() })) {
            _ = self.canvasHolderJPanel.?.removeAll();
            const frameInt: ?*Integer = Inheritance.cast(?*Integer, Inheritance.call(canvasJPanelHashMap.?, "get", .{ evt.?.getTreeNode() }));
            _ = Inheritance.call(self.canvasJPanelList.?, "remove", .{ frameInt.?.intValue() });
            _ = Inheritance.call(self, "select", .{ frameInt.?.intValue() });
        }
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn duplicate(self: *Self, evt: ?*MyCanvasEvent) void {
        _ = Inheritance.call(self, "duplicate", .{ evt.?.getTreeNode() });
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn select1(self: *Self, evt: ?*MyCanvasEvent) void {
        _ = Inheritance.call(self, "select", .{ evt.?.getTreeNode() });
        _ = Inheritance.call(StatusFactory.getInstance().?, "setStatus", .{ String.literal("Frame Selected") });
    }
    

    pub fn rotate(self: *Self, evt: ?*MyCanvasEvent) void {
        const canvasJPanelHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, self.getCanvasHashMap());
        const treeNode: ?*MutableTreeNode = Inheritance.upcast(?*MutableTreeNode, evt.?.getTreeNode()); _ = treeNode;
        const frameInt: ?*Integer = Inheritance.cast(?*Integer, Inheritance.call(canvasJPanelHashMap.?, "get", .{ evt.?.getTreeNode() }));
        const canvasJPanel: ?*CanvasJPanel = Inheritance.cast(?*CanvasJPanel, Inheritance.call(self.canvasJPanelList.?, "get", .{ frameInt.?.intValue() }));
        if (canvasJPanel != null) {
            _ = Inheritance.call(canvasJPanel.?, "addAngle", .{ evt.?.getAngle() });
            _ = Inheritance.call(self, "select", .{ frameInt.?.intValue() });
        }
        _ = Inheritance.call(StatusFactory.getInstance().?, "setStatus", .{ String.literal("Canvas Rotated") });
    }
    

    pub fn explode(self: *Self, evt: ?*MyCanvasEvent) void {
        _ = evt;
        _ = self.explodeAll();
    }
    

    // throws Exception
    pub fn autoExplode(self: *Self, evt: ?*MyCanvasEvent) void {
        _ = evt;
        _ = Inheritance.call(self, "autoExplode", .{ 10, 0 });
    }
    

    // throws Exception
    pub fn center(self: *Self) void {
        const canvasJPanel: ?*CanvasJPanel = Inheritance.cast(?*CanvasJPanel, self.getCurrentFrame());
        _ = Inheritance.receiver(canvasJPanel.?, "center").center();
    }
    

    // throws Exception
    pub fn center1(self: *Self, evt: ?*MyCanvasEvent) void {
        _ = evt;
        _ = self.center();
    }
    

    pub fn run(self: *Self) void {
        { // try
            while (true) {
                if (self.isPlaying()) {
                    const size: i32 = self.canvasJPanelList.?.size();
                    {
                        var index: i32 = 0;
                        while (index < size) : (index += 1) {
                        if (!self.isPlaying()) {
                            break;
                        }
                        _ = Inheritance.call(self, "select", .{ index });
                        _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(100), .awake) catch {});
                        }
                    }
                } else {
                    _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(500), .awake) catch {});
                }
                _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(250), .awake) catch {});
            }
        }
        // catch (Exception e):
    }
};

