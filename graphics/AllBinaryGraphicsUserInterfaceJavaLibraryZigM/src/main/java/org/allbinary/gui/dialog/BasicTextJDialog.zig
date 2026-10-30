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
const CloseJDialogListenerInterface = @import("org/allbinary/gui/dialog/CloseJDialogListenerInterface.zig").CloseJDialogListenerInterface;
const Short = @import("java/lang/Short.zig").Short;

pub const BasicTextJDialog = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.gui.dialog.BasicTextJDialog";
    base: JDialog = undefined,
    closeListenerInterface: ?*CloseJDialogListenerInterface = null,
    jButton1: ?*JButton = null,
    textJLabel: ?*JLabel = null,

    fn initFields(this: *Self) void {
        this.closeListenerInterface = null;
        this.jButton1 = null;
        this.textJLabel = null;
    }
    

    pub fn create3(parent: ?*Frame, modal: bool, text: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(JDialog, "create2", .{ parent, modal }).*;
        this.initFields();
        _ = this.initComponents();
        _ = Inheritance.call(this, "setText", .{ text });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setText(self: *Self, text: ?*String) void {
        _ = Inheritance.call(self.textJLabel.?, "setText", .{ text });
    }
    

    pub fn addCloseListener(self: *Self, closeListenerInterface: ?*CloseJDialogListenerInterface) void {
        self.closeListenerInterface = closeListenerInterface;
    }
    

    pub fn create1(text: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = JDialog.create().*;
        this.initFields();
        _ = this.initComponents();
        _ = Inheritance.call(this.textJLabel.?, "setText", .{ text });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initComponents(self: *Self) void {
        self.jButton1 = JButton.create();
        self.textJLabel = JLabel.create();
        _ = Inheritance.call(self, "setDefaultCloseOperation", .{ javax.swing.?.WindowConstants.?.DISPOSE_ON_CLOSE });
        _ = Inheritance.call(self.jButton1.?, "setText", .{ String.literal("OK") });
        _ = Inheritance.call(self.jButton1.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "jButton1ActionPerformed", .{ evt });
//             }
 });
        _ = Inheritance.call(self.textJLabel.?, "setText", .{ String.literal("No Text Set") });
        const layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ Inheritance.receiver(self, "getContentPane").getContentPane() });
        _ = Inheritance.call(Inheritance.receiver(self, "getContentPane").getContentPane().?, "setLayout", .{ layout });
        _ = Inheritance.call(layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.receiverOf(Inheritance.call(layout.?.createSequentialGroup().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "addGap", .{ 80, 80, 80 }).?, "addComponent", .{ self.jButton1 }) }).?, "addGroup", .{ Inheritance.call(Inheritance.receiverOf(layout.?.createSequentialGroup().?, "addContainerGap").addContainerGap().?, "addComponent", .{ self.textJLabel, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 184, @as(i16, std.math.maxInt(i16)) }) }) }).?, "addContainerGap").addContainerGap() }) });
        _ = Inheritance.call(layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(layout.?.createSequentialGroup().?, "addGap", .{ 20, 20, 20 }).?, "addComponent", .{ self.textJLabel, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 20, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addGap", .{ 30, 30, 30 }).?, "addComponent", .{ self.jButton1 }) }) });
        _ = Inheritance.receiver(self, "pack").pack();
    }
    

    pub fn jButton1ActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        _ = Inheritance.call(self, "setVisible", .{ false });
        if (self.closeListenerInterface != null) {
            _ = self.closeListenerInterface.?.onClose();
        }
    }
    

    pub fn main(args: []?*String) void {
        _ = args;
        _ = Inheritance.call(java.awt.?.EventQueue.?, "invokeLater", .{ ARunnable.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn run(self: *Self) void {
//                 _ = self;
//                 _ = Inheritance.call(Inheritance.callStatic(BasicTextJDialog, "create3", .{ JFrame.create(), true, String.literal("Test") }), "setVisible", .{ true });
//             }
 });
    }
};

