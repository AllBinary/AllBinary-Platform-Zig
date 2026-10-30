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
// const ActionEvent = @import("java/awt/event/ActionEvent.zig").ActionEvent;
// const ActionListener = @import("java/awt/event/ActionListener.zig").ActionListener;
const GraphicsException = @import("org/allbinary/graphics/j2me/GraphicsException.zig").GraphicsException;
const MyFrame = @import("org/allbinary/graphics/j2me/MyFrame.zig").MyFrame;
const WorkAreaJPanel = @import("org/allbinary/graphics/j2me/workarea/WorkAreaJPanel.zig").WorkAreaJPanel;
const WorkAreaJPanelInterface = @import("org/allbinary/graphics/j2me/workarea/WorkAreaJPanelInterface.zig").WorkAreaJPanelInterface;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const NewWorkAreaJDialog = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog";
    base: JDialog = undefined,
    parent: ?*MyFrame = null,
    dimension: ?*Dimension = null,
    xSizeJTextField: ?*JTextField = null,
    ySizeJTextField: ?*JTextField = null,
    nameJTextField: ?*JTextField = null,

    fn initFields(this: *Self) void {
        this.parent = null;
        this.dimension = null;
        this.xSizeJTextField = null;
        this.ySizeJTextField = null;
        this.nameJTextField = null;
    }
    

    pub fn create4(parent: ?*MyFrame, modal: bool, dimension: ?*Dimension, newName: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(JDialog, "create2", .{ Inheritance.cast(?*Frame, parent), modal }).*;
        this.initFields();
        { // try
            _ = this.initComponents();
            this.parent = parent;
            this.xSizeJTextField = Inheritance.callStatic(JTextField, "create1", .{ String.literal("12") });
            this.ySizeJTextField = Inheritance.callStatic(JTextField, "create1", .{ String.literal("12") });
            this.nameJTextField = Inheritance.callStatic(JTextField, "create1", .{ newName });
            this.dimension = dimension;
            const submitButton: ?*JButton = Inheritance.callStatic(JButton, "create1", .{ String.literal("Ok") });
            _ = Inheritance.call(submitButton.?, "addActionListener", .{ ActionListener.create() // Java anonymous class body: implement it as a named type
//                 
// 
//                 pub fn actionPerformed(self: *Self, evt: ?*ActionEvent) void {
//                     _ = evt;
//                     { // try
//                         _ = self.disposeNewDialog();
//                     }
//                     // catch (Exception e):
//                 }
 });
            _ = Inheritance.call(this, "setSize", .{ 150, 100 });
            _ = Inheritance.call(Inheritance.receiver(this, "getContentPane").getContentPane().?, "setLayout", .{ Inheritance.callStatic(GridLayout, "create2", .{ 5, 2 }) });
            _ = Inheritance.call(Inheritance.receiver(this, "getContentPane").getContentPane().?, "add", .{ Inheritance.callStatic(JLabel, "create1", .{ String.literal("Please enter") }) });
            _ = Inheritance.call(Inheritance.receiver(this, "getContentPane").getContentPane().?, "add", .{ Inheritance.callStatic(JLabel, "create1", .{ String.literal(" the size.") }) });
            _ = Inheritance.call(Inheritance.receiver(this, "getContentPane").getContentPane().?, "add", .{ Inheritance.callStatic(JLabel, "create1", .{ String.literal("Name:") }) });
            _ = Inheritance.call(Inheritance.receiver(this, "getContentPane").getContentPane().?, "add", .{ this.nameJTextField });
            _ = Inheritance.call(Inheritance.receiver(this, "getContentPane").getContentPane().?, "add", .{ Inheritance.callStatic(JLabel, "create1", .{ String.literal("X: ") }) });
            _ = Inheritance.call(Inheritance.receiver(this, "getContentPane").getContentPane().?, "add", .{ this.xSizeJTextField });
            _ = Inheritance.call(Inheritance.receiver(this, "getContentPane").getContentPane().?, "add", .{ Inheritance.callStatic(JLabel, "create1", .{ String.literal("Y: ") }) });
            _ = Inheritance.call(Inheritance.receiver(this, "getContentPane").getContentPane().?, "add", .{ this.ySizeJTextField });
            _ = Inheritance.call(Inheritance.receiver(this, "getContentPane").getContentPane().?, "add", .{ submitButton });
            _ = Inheritance.receiver(this, "show").show();
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn disposeNewDialog(self: *Self) void {
        { // try
            const canvasWidth: ?*Integer = Inheritance.callStatic(Integer, "create1", .{ self.xSizeJTextField.?.getText() });
            const canvasHeight: ?*Integer = Inheritance.callStatic(Integer, "create1", .{ self.ySizeJTextField.?.getText() });
            const newName: ?*String = Inheritance.upcast(?*String, self.nameJTextField.?.getText());
            if (newName == null) {
                std.debug.panic("{any}", .{exception: { _ = String.literal("No Name"); _ = self; _ = String.literal("disposeNewDialog"); break :exception error.GraphicsException; }});
            }
            const workAreaJPanel: ?*WorkAreaJPanel = Inheritance.callStatic(WorkAreaJPanel, "create4", .{ newName, self.dimension, canvasWidth.?.intValue(), canvasHeight.?.intValue() });
            _ = Inheritance.call(workAreaJPanel.?, "setLayout", .{ Inheritance.callStatic(GridLayout, "create2", .{ 1, 1 }) });
            _ = Inheritance.call(self.parent.?, "add", .{ Inheritance.cast(?*WorkAreaJPanelInterface, workAreaJPanel) });
            _ = Inheritance.receiver(self, "dispose").dispose();
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
    

    pub fn initComponents(self: *Self) void {
        _ = Inheritance.call(self, "addWindowListener", .{ WindowAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn windowClosing(self: *Self, evt: ?*WindowEvent) void {
//                 _ = Inheritance.call(self, "closeDialog", .{ evt });
//             }
 });
        _ = Inheritance.receiver(self, "pack").pack();
    }
    

    pub fn closeDialog(self: *Self, evt: ?*WindowEvent) void {
        _ = evt;
        _ = self;
        _ = Inheritance.call(self, "setVisible", .{ false });
        _ = Inheritance.receiver(self, "dispose").dispose();
    }
    

    pub fn main(args: []?*String) void {
        _ = args;
        { // try
            _ = Inheritance.receiver(Inheritance.callStatic(NewWorkAreaJDialog, "create4", .{ MyFrame.create(), true, Inheritance.callStatic(Dimension, "create2", .{ 100, 100 }), String.literal("testing") }), "show").show();
        }
        // catch (Exception e):
    }
};

