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
// package org.allbinary.gui.dialog

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ARunnable = @import("org/allbinary/thread/ARunnable.zig").ARunnable;
const File = @import("java/io/File.zig").File;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const FileJDialogListenerInterface = @import("org/allbinary/gui/dialog/FileJDialogListenerInterface.zig").FileJDialogListenerInterface;
const Short = @import("java/lang/Short.zig").Short;

pub const FileJDialog = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.gui.dialog.FileJDialog";
    base: JDialog = undefined,
    logUtil: ?*LogUtil = null,
    finishedListenerInterface: ?*FileJDialogListenerInterface = null,
    jFileChooser1: ?*JFileChooser = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.finishedListenerInterface = null;
        this.jFileChooser1 = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(JDialog, "create", .{  }).*;
        this.initFields();
        _ = this.initComponents();
        _ = Inheritance.call(this.getJFileChooser1().?, "setMultiSelectionEnabled", .{ true });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create2(parent: ?*Frame, modal: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(JDialog, "create2", .{ parent, modal }).*;
        this.initFields();
        _ = this.initComponents();
        _ = Inheritance.call(this.getJFileChooser1().?, "setMultiSelectionEnabled", .{ true });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn addFinishedListener(self: *Self, finishedListenerInterface: ?*FileJDialogListenerInterface) void {
        self.finishedListenerInterface = finishedListenerInterface;
    }
    

    pub fn initComponents(self: *Self) void {
        self.jFileChooser1 = JFileChooser.create();
        _ = Inheritance.call(self, "setDefaultCloseOperation", .{ javax.swing.?.WindowConstants.?.DISPOSE_ON_CLOSE });
        _ = Inheritance.call(self.jFileChooser1.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "jFileChooser1ActionPerformed", .{ evt });
//             }
 });
        const layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ Inheritance.receiver(self, "getContentPane").getContentPane() });
        _ = Inheritance.call(Inheritance.receiver(self, "getContentPane").getContentPane().?, "setLayout", .{ layout });
        _ = Inheritance.call(layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING }).?, "add", .{ org.jdesktop.?.layout.?.GroupLayout.?.TRAILING, Inheritance.receiverOf(Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "addContainerGap", .{ org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }).?, "add", .{ self.jFileChooser1, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE }).?, "addContainerGap").addContainerGap() }) });
        _ = Inheritance.call(layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ org.jdesktop.?.layout.?.GroupLayout.?.LEADING }).?, "add", .{ Inheritance.call(Inheritance.call(Inheritance.receiverOf(layout.?.createSequentialGroup().?, "addContainerGap").addContainerGap().?, "add", .{ self.jFileChooser1, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE, 357, org.jdesktop.?.layout.?.GroupLayout.?.PREFERRED_SIZE }).?, "addContainerGap", .{ org.jdesktop.?.layout.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }) }) });
        _ = Inheritance.receiver(self, "pack").pack();
    }
    

    pub fn jFileChooser1ActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Starting Action Command: "), evt.?.getActionCommand()), self, String.literal("ActionPerformed") });
        const files: []?*File = Inheritance.receiverOf(self.getJFileChooser1().?, "getSelectedFiles").getSelectedFiles();
        if (Object.same(evt.?.getActionCommand(), self.getJFileChooser1().?.CANCEL_SELECTION)) {
            _ = Inheritance.call(self, "setVisible", .{ false });
        }
        if (Object.same(evt.?.getActionCommand(), self.getJFileChooser1().?.APPROVE_SELECTION)) {
            if (files != null and @as(i32, @intCast(files.len)) > 0) {
                _ = Inheritance.call(self.finishedListenerInterface.?, "onFiles", .{ files });
            }
        }
    }
    

    pub fn main(args: []?*String) void {
        _ = args;
        _ = Inheritance.call(java.awt.?.EventQueue.?, "invokeLater", .{ ARunnable.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn run(self: *Self) void {
//                 _ = self;
//                 _ = Inheritance.call(Inheritance.callStatic(FileJDialog, "create2", .{ JFrame.create(), true }), "setVisible", .{ true });
//             }
 });
    }
    

    pub fn getJFileChooser1(self: *Self) ?*JFileChooser {
        return self.jFileChooser1;
    }
    

    pub fn setJFileChooser1(self: *Self, jFileChooser1: ?*JFileChooser) void {
        self.jFileChooser1 = jFileChooser1;
    }
};

