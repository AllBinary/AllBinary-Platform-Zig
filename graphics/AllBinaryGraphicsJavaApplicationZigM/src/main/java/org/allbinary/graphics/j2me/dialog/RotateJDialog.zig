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
// package org.allbinary.graphics.j2me.dialog

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ARunnable = @import("org/allbinary/thread/ARunnable.zig").ARunnable;
const HashMap = @import("java/util/HashMap.zig").HashMap;
const HashMapJDialogListenerInterface = @import("org/allbinary/gui/dialog/HashMapJDialogListenerInterface.zig").HashMapJDialogListenerInterface;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const System = @import("java/lang/System.zig").System;
const Integer = @import("java/lang/Integer.zig").Integer;
const Short = @import("java/lang/Short.zig").Short;

pub const RotateJDialog = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.dialog.RotateJDialog";
    base: JDialog = undefined,
    logUtil: ?*LogUtil = null,
    hashMap: ?*HashMap = null,
    angleIncrementJTextField: ?*JTextField = null,
    jButton1: ?*JButton = null,
    jLabel1: ?*JLabel = null,
    jLabel2: ?*JLabel = null,
    jPanel1: ?*JPanel = null,
    totalRotationJTextField: ?*JTextField = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.hashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        this.angleIncrementJTextField = null;
        this.jButton1 = null;
        this.jLabel1 = null;
        this.jLabel2 = null;
        this.jPanel1 = null;
        this.totalRotationJTextField = null;
    }
    

    pub fn create2(parent: ?*Frame, modal: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(JDialog, "create2", .{ parent, modal }).*;
        this.initFields();
        _ = this.initComponents();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initComponents(self: *Self) void {
        self.angleIncrementJTextField = JTextField.create();
        self.jLabel1 = JLabel.create();
        self.totalRotationJTextField = JTextField.create();
        self.jLabel2 = JLabel.create();
        self.jPanel1 = JPanel.create();
        self.jButton1 = JButton.create();
        _ = Inheritance.call(self, "setDefaultCloseOperation", .{ javax.swing.?.WindowConstants.?.DISPOSE_ON_CLOSE });
        _ = Inheritance.call(self.angleIncrementJTextField.?, "setText", .{ String.literal("36") });
        _ = Inheritance.call(self.jLabel1.?, "setText", .{ String.literal("Angle Increment:") });
        _ = Inheritance.call(self.totalRotationJTextField.?, "setText", .{ String.literal("360") });
        _ = Inheritance.call(self.jLabel2.?, "setText", .{ String.literal("Total Angular Rotation:") });
        _ = Inheritance.call(self.jButton1.?, "setText", .{ String.literal("OK") });
        _ = Inheritance.call(self.jButton1.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                 _ = Inheritance.call(self, "jButton1ActionPerformed", .{ evt });
//             }
 });
        const jPanel1Layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ self.jPanel1 });
        _ = Inheritance.call(self.jPanel1.?, "setLayout", .{ jPanel1Layout });
        _ = Inheritance.call(jPanel1Layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(jPanel1Layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(jPanel1Layout.?.createSequentialGroup().?, "addGap", .{ 62, 62, 62 }).?, "addComponent", .{ self.jButton1 }).?, "addContainerGap", .{ 62, @as(i16, std.math.maxInt(i16)) }) }) });
        _ = Inheritance.call(jPanel1Layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(jPanel1Layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addComponent", .{ self.jButton1 }) });
        const layout: ?*GroupLayout = Inheritance.callStatic(GroupLayout, "create1", .{ Inheritance.receiver(self, "getContentPane").getContentPane() });
        _ = Inheritance.call(Inheritance.receiver(self, "getContentPane").getContentPane().?, "setLayout", .{ layout });
        _ = Inheritance.call(layout.?, "setHorizontalGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.receiverOf(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.receiverOf(layout.?.createSequentialGroup().?, "addContainerGap").addContainerGap().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.TRAILING }).?, "addComponent", .{ self.jLabel1 }).?, "addComponent", .{ self.jLabel2 }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.UNRELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addComponent", .{ self.totalRotationJTextField, javax.swing.?.GroupLayout.?.Alignment.?.TRAILING, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, 31, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.angleIncrementJTextField, javax.swing.?.GroupLayout.?.Alignment.?.TRAILING, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, 31, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }) }).?, "addContainerGap").addContainerGap() }).?, "addComponent", .{ self.jPanel1, javax.swing.?.GroupLayout.?.Alignment.?.TRAILING, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, @as(i16, std.math.maxInt(i16)) }) });
        _ = Inheritance.call(layout.?, "setVerticalGroup", .{ Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.LEADING }).?, "addGroup", .{ Inheritance.receiverOf(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.receiverOf(layout.?.createSequentialGroup().?, "addContainerGap").addContainerGap().?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.angleIncrementJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.jLabel1 }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED }).?, "addGroup", .{ Inheritance.call(Inheritance.call(Inheritance.call(layout.?, "createParallelGroup", .{ javax.swing.?.GroupLayout.?.Alignment.?.BASELINE }).?, "addComponent", .{ self.totalRotationJTextField, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addComponent", .{ self.jLabel2 }) }).?, "addPreferredGap", .{ javax.swing.?.LayoutStyle.?.ComponentPlacement.?.RELATED, 16, @as(i16, std.math.maxInt(i16)) }).?, "addComponent", .{ self.jPanel1, javax.swing.?.GroupLayout.?.PREFERRED_SIZE, javax.swing.?.GroupLayout.?.DEFAULT_SIZE, javax.swing.?.GroupLayout.?.PREFERRED_SIZE }).?, "addContainerGap").addContainerGap() }) });
        _ = Inheritance.receiver(self, "pack").pack();
    }
    

    pub fn jButton1ActionPerformed(self: *Self, evt: ?*ActionEvent) void {
        _ = evt;
        { // try
            _ = Inheritance.call(self.hashMap.?, "put", .{ Inheritance.callStatic(Integer, "valueOf", .{ 0 }), Inheritance.callStatic(Integer, "valueOf", .{ self.angleIncrementJTextField.?.getText() }) });
            _ = Inheritance.call(self.hashMap.?, "put", .{ Inheritance.callStatic(Integer, "valueOf", .{ 1 }), Inheritance.callStatic(Integer, "valueOf", .{ self.totalRotationJTextField.?.getText() }) });
            _ = Inheritance.call((Inheritance.cast(?*HashMapJDialogListenerInterface, Inheritance.receiver(self, "getParent").getParent())).?, "onHashMap", .{ self.hashMap });
            _ = Inheritance.call(self, "setVisible", .{ false });
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "putF", .{ commonStrings.?.EXCEPTION, self, String.literal("jButton1ActionPerformed") });
    }
    

    pub fn main(args: []?*String) void {
        _ = args;
        _ = Inheritance.call(java.awt.?.EventQueue.?, "invokeLater", .{ ARunnable.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn run(self: *Self) void {
//                 _ = self;
//                 const dialog: ?*RotateJDialog = Inheritance.callStatic(RotateJDialog, "create2", .{ JFrame.create(), true });
//                 _ = Inheritance.call(dialog.?, "addWindowListener", .{ WindowAdapter.create() // Java anonymous class body: implement it as a named type
// //                     
// // 
// //                     pub fn windowClosing(self: *Self, e: ?*WindowEvent) void {
// //                         _ = e;
// //                         _ = self;
// //                         _ = std.process.exit(@intCast(0));
// //                     }
//  });
//                 _ = Inheritance.call(dialog.?, "setVisible", .{ true });
//             }
 });
    }
};

