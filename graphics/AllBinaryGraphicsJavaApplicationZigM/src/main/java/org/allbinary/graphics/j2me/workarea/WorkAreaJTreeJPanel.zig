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
// const DefaultMutableTreeNode = @import("javax/swing/tree/DefaultMutableTreeNode.zig").DefaultMutableTreeNode;
// const MutableTreeNode = @import("javax/swing/tree/MutableTreeNode.zig").MutableTreeNode;
// const TreePath = @import("javax/swing/tree/TreePath.zig").TreePath;
const CanvasTreeLabel = @import("org/allbinary/graphics/j2me/workarea/canvas/CanvasTreeLabel.zig").CanvasTreeLabel;
const MyCanvasEvent = @import("org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEvent.zig").MyCanvasEvent;
const MyCanvasEventService = @import("org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEventService.zig").MyCanvasEventService;
const MyCanvasEventSource = @import("org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEventSource.zig").MyCanvasEventSource;
const MyGraphicItemEvent = @import("org/allbinary/graphics/j2me/workarea/tools/event/MyGraphicItemEvent.zig").MyGraphicItemEvent;
const MyGraphicItemEventService = @import("org/allbinary/graphics/j2me/workarea/tools/event/MyGraphicItemEventService.zig").MyGraphicItemEventService;
const MyGraphicItemEventSource = @import("org/allbinary/graphics/j2me/workarea/tools/event/MyGraphicItemEventSource.zig").MyGraphicItemEventSource;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;

pub const WorkAreaJTreeJPanel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel";
    base: JPanel = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    rootTreeNode: ?*DefaultMutableTreeNode = null,
    workAreaJTree: ?*JTree = null,
    highlightedBasicArrayList: ?*BasicArrayList = null,
    copyJMenuItem: ?*JMenuItem = null,
    deleteJMenuItem: ?*JMenuItem = null,
    itemJPopupMenu: ?*JPopupMenu = null,
    itemJScrollPane1: ?*JScrollPane = null,
    rotateJMenuItem: ?*JMenuItem = null,
    workAreaPropertiesJPanel: ?*JPanel = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        this.workAreaJTree = null;
        
        this.copyJMenuItem = null;
        this.deleteJMenuItem = null;
        this.itemJPopupMenu = null;
        this.itemJScrollPane1 = null;
        this.rotateJMenuItem = null;
        this.workAreaPropertiesJPanel = null;
    }
    

    pub fn create1(workAreaName: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = JPanel.create().*;
        this.initFields();
        _ = this.initComponents();
        this.rootTreeNode = Inheritance.callStatic(DefaultMutableTreeNode, "create1", .{ workAreaName });
        _ = this.workAreaPropertiesJPanel.?.removeAll();
        _ = this.updateTree();
        this.highlightedBasicArrayList = Inheritance.upcast(@TypeOf(this.highlightedBasicArrayList), BasicArrayListD.create());
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn add(self: *Self, treeNode: ?*MutableTreeNode) void {
        _ = Inheritance.call(self.rootTreeNode.?, "add", .{ treeNode });
    }
    

    pub fn updateTree(self: *Self) void {
        self.workAreaJTree = Inheritance.callStatic(JTree, "create1", .{ self.rootTreeNode });
        _ = Inheritance.call(self.workAreaJTree.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mousePressed(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "workAreaJTreeMousePressed", .{ evt });
//             }
 });
        _ = self.workAreaPropertiesJPanel.?.removeAll();
        _ = Inheritance.call(self.workAreaPropertiesJPanel.?, "add", .{ self.workAreaJTree });
    }
    

    pub fn getNode(self: *Self, treePathArray: []?*TreePath) ?*BasicArrayList {
        const basicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        if (treePathArray != null) {
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(treePathArray.len))) : (index += 1) {
                _ = Inheritance.call(basicArrayList.?, "add", .{ Inheritance.call(self, "getNode", .{ treePathArray[@intCast(index)] }) });
                }
            }
        }
        return basicArrayList;
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getNode(self: *Self, treePath: ?*TreePath) ?*DefaultMutableTreeNode {
        _ = self;
        if (treePath != null) {
            const obj: []?Object = treePath.?.getPath();
            if (obj != null) {
                const node: ?*DefaultMutableTreeNode = Inheritance.cast(?*DefaultMutableTreeNode, obj[@intCast(@as(i32, @intCast(obj.len)) - 1)]);
                return node;
            }
        }
        return null;
    }
    

    // throws Exception
    pub fn deselectAll(self: *Self) void {
        const size: i32 = self.highlightedBasicArrayList.?.size();
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("size: "), size), self, String.literal("deselectAll") });
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const node: ?*DefaultMutableTreeNode = Inheritance.cast(?*DefaultMutableTreeNode, Inheritance.call(self.highlightedBasicArrayList.?, "get", .{ index }));
            _ = Inheritance.callStatic(MyGraphicItemEventService, "fire", .{ Inheritance.callStatic(MyGraphicItemEvent, "create1", .{ Inheritance.cast(?Object, Inheritance.callStatic(MyGraphicItemEventSource, "create2", .{ MyGraphicItemEventService.DESELECT, node })) }) });
            }
        }
        _ = self.highlightedBasicArrayList.?.clear();
    }
    

    // throws Exception
    pub fn selectGraphicItem(self: *Self, node: ?*DefaultMutableTreeNode) void {
        _ = Inheritance.call(self.highlightedBasicArrayList.?, "add", .{ node });
        _ = Inheritance.callStatic(MyGraphicItemEventService, "fire", .{ Inheritance.callStatic(MyGraphicItemEvent, "create1", .{ Inheritance.cast(?Object, Inheritance.callStatic(MyGraphicItemEventSource, "create2", .{ MyGraphicItemEventService.SELECT, node })) }) });
    }
    

    // throws Exception
    pub fn removeGraphicItem(self: *Self, node: ?*DefaultMutableTreeNode) void {
        _ = self;
        _ = Inheritance.callStatic(MyGraphicItemEventService, "fire", .{ Inheritance.callStatic(MyGraphicItemEvent, "create1", .{ Inheritance.cast(?Object, Inheritance.callStatic(MyGraphicItemEventSource, "create2", .{ MyGraphicItemEventService.DELETE, node })) }) });
    }
    

    // throws Exception
    pub fn removeCanvas(self: *Self, node: ?*DefaultMutableTreeNode) void {
        _ = self;
        _ = Inheritance.callStatic(MyCanvasEventService, "fire", .{ Inheritance.callStatic(MyCanvasEvent, "create1", .{ Inheritance.cast(?Object, Inheritance.callStatic(MyCanvasEventSource, "create2", .{ MyCanvasEventService.DELETE, node })) }) });
    }
    

    // throws Exception
    pub fn remove(self: *Self, treePath: ?*TreePath) void {
        const node: ?*DefaultMutableTreeNode = Inheritance.upcast(?*DefaultMutableTreeNode, Inheritance.call(self, "getNode", .{ treePath }));
        if (node != null) {
            if (Object.instanceOf(Object.of(node.?.getUserObject()), CanvasTreeLabel)) {
                _ = Inheritance.call(self, "removeCanvas", .{ node });
            } else {
                _ = Inheritance.call(self, "removeGraphicItem", .{ node });
            }
        }
        const parent: ?*DefaultMutableTreeNode = Inheritance.cast(?*DefaultMutableTreeNode, node.?.getParent());
        _ = Inheritance.call(parent.?, "remove", .{ node });
    }
    

    // throws Exception
    pub fn copy(self: *Self) void {
        const treePath: ?*TreePath = Inheritance.upcast(?*TreePath, self.workAreaJTree.?.getSelectionPath());
        _ = Inheritance.call(self, "copy", .{ treePath });
        _ = self.updateTree();
        _ = self.expand();
        _ = Inheritance.receiver(self, "repaint").repaint();
    }
    

    // throws Exception
    pub fn copy1(self: *Self, treePath: ?*TreePath) void {
        const node: ?*DefaultMutableTreeNode = Inheritance.upcast(?*DefaultMutableTreeNode, Inheritance.call(self, "getNode", .{ treePath }));
        if (node != null) {
            if (Object.instanceOf(Object.of(node.?.getUserObject()), CanvasTreeLabel)) {
                _ = Inheritance.callStatic(MyCanvasEventService, "fire", .{ Inheritance.callStatic(MyCanvasEvent, "create1", .{ Inheritance.cast(?Object, Inheritance.callStatic(MyCanvasEventSource, "create2", .{ MyCanvasEventService.DUPLICATE, node })) }) });
            } else {
                _ = Inheritance.callStatic(MyGraphicItemEventService, "fire", .{ Inheritance.callStatic(MyGraphicItemEvent, "create1", .{ Inheritance.cast(?Object, Inheritance.callStatic(MyGraphicItemEventSource, "create2", .{ MyGraphicItemEventService.DUPLICATE, node })) }) });
            }
        }
    }
    

    // throws Exception
    pub fn rotate(self: *Self, treePath: ?*TreePath, angle: f64) void {
        const node: ?*DefaultMutableTreeNode = Inheritance.upcast(?*DefaultMutableTreeNode, Inheritance.call(self, "getNode", .{ treePath }));
        if (node != null) {
            if (Object.instanceOf(Object.of(node.?.getUserObject()), CanvasTreeLabel)) {
                _ = Inheritance.callStatic(MyCanvasEventService, "fire", .{ Inheritance.callStatic(MyCanvasEvent, "create1", .{ Inheritance.cast(?Object, Inheritance.callStatic(MyCanvasEventSource, "create3", .{ MyCanvasEventService.ROTATE, angle, node })) }) });
            } else {
                _ = Inheritance.callStatic(MyGraphicItemEventService, "fire", .{ Inheritance.callStatic(MyGraphicItemEvent, "create1", .{ Inheritance.cast(?Object, Inheritance.callStatic(MyGraphicItemEventSource, "create3", .{ MyGraphicItemEventService.ROTATE, angle, node })) }) });
            }
        }
    }
    

    pub fn getRootTreeNode(self: *Self) ?*MutableTreeNode {
        return Inheritance.upcast(?*MutableTreeNode, self.rootTreeNode);
    }
    

    pub fn expand(self: *Self) void {
        _ = Inheritance.call(self.workAreaJTree.?, "expandRow", .{ 0 });
        _ = Inheritance.call(self.workAreaJTree.?, "expandRow", .{ 1 });
    }
    

    pub fn expand1(self: *Self, treePath: ?*TreePath) void {
        _ = Inheritance.call(self.workAreaJTree.?, "expandPath", .{ treePath });
    }
    

    pub fn initComponents(self: *Self) void {
        self.itemJPopupMenu = JPopupMenu.create();
        self.deleteJMenuItem = JMenuItem.create();
        self.copyJMenuItem = JMenuItem.create();
        self.rotateJMenuItem = JMenuItem.create();
        self.itemJScrollPane1 = JScrollPane.create();
        self.workAreaPropertiesJPanel = JPanel.create();
        _ = Inheritance.call(self.itemJPopupMenu.?, "addPopupMenuListener", .{ PopupMenuListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn popupMenuCanceled(self: *Self, evt: ?*PopupMenuEvent) void {
//                 _ = evt;
//                 _ = self;
//             }
//             
// 
//             pub fn popupMenuWillBecomeInvisible(self: *Self, evt: ?*PopupMenuEvent) void {
//                 _ = Inheritance.call(self, "itemJPopupMenuPopupMenuWillBecomeInvisible", .{ evt });
//             }
//             
// 
//             pub fn popupMenuWillBecomeVisible(self: *Self, evt: ?*PopupMenuEvent) void {
//                 _ = Inheritance.call(self, "itemJPopupMenuPopupMenuWillBecomeVisible", .{ evt });
//             }
 });
        _ = Inheritance.call(self.deleteJMenuItem.?, "setText", .{ String.literal("Delete") });
        _ = Inheritance.call(self.deleteJMenuItem.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mousePressed(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "deleteJMenuItemMousePressed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.itemJPopupMenu.?, "add", .{ self.deleteJMenuItem });
        _ = Inheritance.call(self.copyJMenuItem.?, "setText", .{ String.literal("Copy") });
        _ = Inheritance.call(self.copyJMenuItem.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mousePressed(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "copyJMenuItemMousePressed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.itemJPopupMenu.?, "add", .{ self.copyJMenuItem });
        _ = Inheritance.call(self.rotateJMenuItem.?, "setText", .{ String.literal("Rotate 45*") });
        _ = Inheritance.call(self.rotateJMenuItem.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mousePressed(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "rotateJMenuItemMousePressed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.itemJPopupMenu.?, "add", .{ self.rotateJMenuItem });
        _ = Inheritance.call(self, "setLayout", .{ Inheritance.callStatic(GridLayout, "create2", .{ 1, 1 }) });
        _ = Inheritance.call(self.workAreaPropertiesJPanel.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mousePressed(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "workAreaPropertiesJPanelMousePressed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.workAreaPropertiesJPanel.?, "setLayout", .{ Inheritance.callStatic(GridLayout, "create2", .{ 1, 0 }) });
        _ = Inheritance.call(self.itemJScrollPane1.?, "setViewportView", .{ self.workAreaPropertiesJPanel });
        _ = Inheritance.call(self, "add", .{ self.itemJScrollPane1 });
    }
    

    pub fn rotateJMenuItemMousePressed(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        { // try
            const treePath: ?*TreePath = Inheritance.upcast(?*TreePath, self.workAreaJTree.?.getSelectionPath());
            _ = Inheritance.call(self, "rotate", .{ treePath, 45 });
            _ = self.updateTree();
            _ = self.expand();
            _ = Inheritance.receiver(self, "repaint").repaint();
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("rotateJMenuItemMousePressed"), e });
    }
    

    pub fn workAreaJTreeMousePressed(self: *Self, evt: ?*MouseEvent) void {
        { // try
            const selectedTreePathArray: []?*TreePath = self.workAreaJTree.?.getSelectionPaths();
            const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "getNode", .{ selectedTreePathArray }));
            if (list.?.size() > 0) {
                if (Object.same((evt.?.getModifiers() & evt.?.BUTTON3_MASK), evt.?.BUTTON3_MASK)) {
                    {
                        var index: i32 = 0;
                        while (index < @as(i32, @intCast(selectedTreePathArray.len))) : (index += 1) {
                        const defaultMutableTreeNode: ?*DefaultMutableTreeNode = Inheritance.cast(?*DefaultMutableTreeNode, Inheritance.call(list.?, "get", .{ index }));
                        if (Object.instanceOf(Object.of(defaultMutableTreeNode.?.getUserObject()), CanvasTreeLabel)) {
                            _ = Inheritance.call(self.itemJPopupMenu.?, "show", .{ self, evt.?.getX(), evt.?.getY() });
                        } else {
                            _ = Inheritance.call(self.itemJPopupMenu.?, "show", .{ self, evt.?.getX(), evt.?.getY() });
                        }
                        }
                    }
                }
                if (Object.same((evt.?.getModifiers() & evt.?.BUTTON1_MASK), evt.?.BUTTON1_MASK)) {
                    _ = self.deselectAll();
                    {
                        var index: i32 = 0;
                        while (index < @as(i32, @intCast(selectedTreePathArray.len))) : (index += 1) {
                        const defaultMutableTreeNode: ?*DefaultMutableTreeNode = Inheritance.cast(?*DefaultMutableTreeNode, Inheritance.call(list.?, "get", .{ index }));
                        if (Object.instanceOf(Object.of(defaultMutableTreeNode.?.getUserObject()), CanvasTreeLabel)) {
                            _ = Inheritance.callStatic(MyCanvasEventService, "fire", .{ Inheritance.callStatic(MyCanvasEvent, "create1", .{ Inheritance.cast(?Object, Inheritance.callStatic(MyCanvasEventSource, "create2", .{ MyCanvasEventService.SELECT, defaultMutableTreeNode })) }) });
                        } else {
                            _ = Inheritance.call(self, "selectGraphicItem", .{ defaultMutableTreeNode });
                        }
                        }
                    }
                }
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("workAreaJTreeMousePressed"), e });
    }
    

    pub fn itemJPopupMenuPopupMenuWillBecomeInvisible(self: *Self, evt: ?*PopupMenuEvent) void {
        _ = evt;
        _ = self;
    }
    

    pub fn itemJPopupMenuPopupMenuWillBecomeVisible(self: *Self, evt: ?*PopupMenuEvent) void {
        _ = evt;
        _ = self;
    }
    

    pub fn copyJMenuItemMousePressed(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        { // try
            _ = self.copy();
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("copyJMenuItemMousePressed"), e });
    }
    

    pub fn deleteJMenuItemMousePressed(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        { // try
            const selectedTreePathArray: []?*TreePath = self.workAreaJTree.?.getSelectionPaths();
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(selectedTreePathArray.len))) : (index += 1) {
                const treePath: ?*TreePath = Inheritance.upcast(?*TreePath, selectedTreePathArray[@intCast(index)]);
                _ = Inheritance.call(self, "remove", .{ treePath });
                _ = self.updateTree();
                _ = self.expand();
                _ = Inheritance.receiver(self, "repaint").repaint();
                }
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("deleteJMenuItemMousePressed"), e });
    }
    

    pub fn workAreaPropertiesJPanelMousePressed(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        _ = self;
    }
};

