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
// package org.allbinary.graphics.j2me.workarea.tools

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LinesGraphicItem = @import("org/allbinary/graphics/j2me/workarea/tools/LinesGraphicItem.zig").LinesGraphicItem;
const ToolFactory = @import("org/allbinary/graphics/j2me/workarea/tools/ToolFactory.zig").ToolFactory;

pub const ToolJPanel = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.tools.ToolJPanel";
    base: JPanel = undefined,
    arcJButton: ?*JButton = null,
    charJButton: ?*JButton = null,
    colorJList: ?*JList = null,
    colorJPanel: ?*JPanel = null,
    dottedArcJButton: ?*JButton = null,
    dottedFillArcJButton: ?*JButton = null,
    dottedFillRectJButton: ?*JButton = null,
    dottedFillRountRectJButton: ?*JButton = null,
    dottedLineJButton: ?*JButton = null,
    dottedRectButton: ?*JButton = null,
    fillArcJButton: ?*JButton = null,
    fillRectJButton: ?*JButton = null,
    fillRoundRectJButton: ?*JButton = null,
    imageJButton: ?*JButton = null,
    lineJButton: ?*JButton = null,
    rectJButton: ?*JButton = null,
    roundRectJButton: ?*JButton = null,
    stringJButton: ?*JButton = null,

    fn initFields(this: *Self) void {
        this.arcJButton = null;
        this.charJButton = null;
        this.colorJList = null;
        this.colorJPanel = null;
        this.dottedArcJButton = null;
        this.dottedFillArcJButton = null;
        this.dottedFillRectJButton = null;
        this.dottedFillRountRectJButton = null;
        this.dottedLineJButton = null;
        this.dottedRectButton = null;
        this.fillArcJButton = null;
        this.fillRectJButton = null;
        this.fillRoundRectJButton = null;
        this.imageJButton = null;
        this.lineJButton = null;
        this.rectJButton = null;
        this.roundRectJButton = null;
        this.stringJButton = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = JPanel.create().*;
        this.initFields();
        _ = this.initComponents();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initComponents(self: *Self) void {
        self.lineJButton = JButton.create();
        self.rectJButton = JButton.create();
        self.arcJButton = JButton.create();
        self.stringJButton = JButton.create();
        self.charJButton = JButton.create();
        self.roundRectJButton = JButton.create();
        self.imageJButton = JButton.create();
        self.fillArcJButton = JButton.create();
        self.fillRectJButton = JButton.create();
        self.fillRoundRectJButton = JButton.create();
        self.dottedLineJButton = JButton.create();
        self.dottedRectButton = JButton.create();
        self.dottedArcJButton = JButton.create();
        self.dottedFillRectJButton = JButton.create();
        self.dottedFillArcJButton = JButton.create();
        self.dottedFillRountRectJButton = JButton.create();
        self.colorJPanel = JPanel.create();
        self.colorJList = JList.create();
        _ = Inheritance.call(self, "setLayout", .{ Inheritance.callStatic(GridLayout, "create2", .{ 17, 1 }) });
        _ = Inheritance.call(self.lineJButton.?, "setFont", .{ Inheritance.callStatic(Font, "create3", .{ String.literal("Dialog"), 0, 10 }) });
        _ = Inheritance.call(self.lineJButton.?, "setText", .{ LinesGraphicItem.getStaticName() });
        _ = Inheritance.call(self.lineJButton.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mouseClicked(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "lineJButtonMouseClicked", .{ evt });
//             }
 });
        _ = Inheritance.call(self, "add", .{ self.lineJButton });
        _ = Inheritance.call(self.rectJButton.?, "setFont", .{ Inheritance.callStatic(Font, "create3", .{ String.literal("Dialog"), 0, 10 }) });
        _ = Inheritance.call(self.rectJButton.?, "setText", .{ String.literal("Rect") });
        _ = Inheritance.call(self.rectJButton.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mouseClicked(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "rectJButtonMouseClicked", .{ evt });
//             }
 });
        _ = Inheritance.call(self, "add", .{ self.rectJButton });
        _ = Inheritance.call(self.arcJButton.?, "setFont", .{ Inheritance.callStatic(Font, "create3", .{ String.literal("Dialog"), 0, 10 }) });
        _ = Inheritance.call(self.arcJButton.?, "setText", .{ String.literal("Arc") });
        _ = Inheritance.call(self.arcJButton.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mousePressed(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "arcJButtonMousePressed", .{ evt });
//             }
 });
        _ = Inheritance.call(self, "add", .{ self.arcJButton });
        _ = Inheritance.call(self.stringJButton.?, "setFont", .{ Inheritance.callStatic(Font, "create3", .{ String.literal("Dialog"), 0, 10 }) });
        _ = Inheritance.call(self.stringJButton.?, "setText", .{ String.literal("String") });
        _ = Inheritance.call(self.stringJButton.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mousePressed(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "stringJButtonMousePressed", .{ evt });
//             }
 });
        _ = Inheritance.call(self, "add", .{ self.stringJButton });
        _ = Inheritance.call(self.charJButton.?, "setFont", .{ Inheritance.callStatic(Font, "create3", .{ String.literal("Dialog"), 0, 10 }) });
        _ = Inheritance.call(self.charJButton.?, "setText", .{ String.literal("Char") });
        _ = Inheritance.call(self.charJButton.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mousePressed(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "charJButtonMousePressed", .{ evt });
//             }
 });
        _ = Inheritance.call(self, "add", .{ self.charJButton });
        _ = Inheritance.call(self.roundRectJButton.?, "setFont", .{ Inheritance.callStatic(Font, "create3", .{ String.literal("Dialog"), 0, 10 }) });
        _ = Inheritance.call(self.roundRectJButton.?, "setText", .{ String.literal("Round Rect") });
        _ = Inheritance.call(self.roundRectJButton.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mousePressed(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "roundRectJButtonMousePressed", .{ evt });
//             }
 });
        _ = Inheritance.call(self, "add", .{ self.roundRectJButton });
        _ = Inheritance.call(self.imageJButton.?, "setFont", .{ Inheritance.callStatic(Font, "create3", .{ String.literal("Dialog"), 0, 10 }) });
        _ = Inheritance.call(self.imageJButton.?, "setText", .{ String.literal("Image") });
        _ = Inheritance.call(self.imageJButton.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mousePressed(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "imageJButtonMousePressed", .{ evt });
//             }
 });
        _ = Inheritance.call(self, "add", .{ self.imageJButton });
        _ = Inheritance.call(self.fillArcJButton.?, "setFont", .{ Inheritance.callStatic(Font, "create3", .{ String.literal("Dialog"), 0, 10 }) });
        _ = Inheritance.call(self.fillArcJButton.?, "setText", .{ String.literal("Fill Arc") });
        _ = Inheritance.call(self.fillArcJButton.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mousePressed(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "fillArcJButtonMousePressed", .{ evt });
//             }
 });
        _ = Inheritance.call(self, "add", .{ self.fillArcJButton });
        _ = Inheritance.call(self.fillRectJButton.?, "setFont", .{ Inheritance.callStatic(Font, "create3", .{ String.literal("Dialog"), 0, 10 }) });
        _ = Inheritance.call(self.fillRectJButton.?, "setText", .{ String.literal("Fill Rect") });
        _ = Inheritance.call(self.fillRectJButton.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mousePressed(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "fillRectJButtonMousePressed", .{ evt });
//             }
 });
        _ = Inheritance.call(self, "add", .{ self.fillRectJButton });
        _ = Inheritance.call(self.fillRoundRectJButton.?, "setFont", .{ Inheritance.callStatic(Font, "create3", .{ String.literal("Dialog"), 0, 10 }) });
        _ = Inheritance.call(self.fillRoundRectJButton.?, "setText", .{ String.literal("Fill Rnd Rect") });
        _ = Inheritance.call(self.fillRoundRectJButton.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mousePressed(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "fillRoundRectJButtonMousePressed", .{ evt });
//             }
 });
        _ = Inheritance.call(self, "add", .{ self.fillRoundRectJButton });
        _ = Inheritance.call(self.dottedLineJButton.?, "setFont", .{ Inheritance.callStatic(Font, "create3", .{ String.literal("Dialog"), 0, 10 }) });
        _ = Inheritance.call(self.dottedLineJButton.?, "setText", .{ String.literal("Dot Line") });
        _ = Inheritance.call(self.dottedLineJButton.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mousePressed(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "dottedLineJButtonMousePressed", .{ evt });
//             }
 });
        _ = Inheritance.call(self, "add", .{ self.dottedLineJButton });
        _ = Inheritance.call(self.dottedRectButton.?, "setFont", .{ Inheritance.callStatic(Font, "create3", .{ String.literal("Dialog"), 0, 10 }) });
        _ = Inheritance.call(self.dottedRectButton.?, "setText", .{ String.literal("Dot Rect") });
        _ = Inheritance.call(self.dottedRectButton.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mousePressed(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "dottedRectButtonMousePressed", .{ evt });
//             }
 });
        _ = Inheritance.call(self, "add", .{ self.dottedRectButton });
        _ = Inheritance.call(self.dottedArcJButton.?, "setFont", .{ Inheritance.callStatic(Font, "create3", .{ String.literal("Dialog"), 0, 10 }) });
        _ = Inheritance.call(self.dottedArcJButton.?, "setText", .{ String.literal("Dot Arc") });
        _ = Inheritance.call(self.dottedArcJButton.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mousePressed(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "dottedArcJButtonMousePressed", .{ evt });
//             }
 });
        _ = Inheritance.call(self, "add", .{ self.dottedArcJButton });
        _ = Inheritance.call(self.dottedFillRectJButton.?, "setFont", .{ Inheritance.callStatic(Font, "create3", .{ String.literal("Dialog"), 0, 10 }) });
        _ = Inheritance.call(self.dottedFillRectJButton.?, "setText", .{ String.literal("Dot Fill Rect") });
        _ = Inheritance.call(self.dottedFillRectJButton.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mousePressed(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "dottedFillRectJButtonMousePressed", .{ evt });
//             }
 });
        _ = Inheritance.call(self, "add", .{ self.dottedFillRectJButton });
        _ = Inheritance.call(self.dottedFillArcJButton.?, "setFont", .{ Inheritance.callStatic(Font, "create3", .{ String.literal("Dialog"), 0, 10 }) });
        _ = Inheritance.call(self.dottedFillArcJButton.?, "setText", .{ String.literal("Dot Fill Arc") });
        _ = Inheritance.call(self.dottedFillArcJButton.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mousePressed(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "dottedFillArcJButtonMousePressed", .{ evt });
//             }
 });
        _ = Inheritance.call(self, "add", .{ self.dottedFillArcJButton });
        _ = Inheritance.call(self.dottedFillRountRectJButton.?, "setFont", .{ Inheritance.callStatic(Font, "create3", .{ String.literal("Dialog"), 0, 10 }) });
        _ = Inheritance.call(self.dottedFillRountRectJButton.?, "setText", .{ String.literal("Dot Fill Rnd Rect") });
        _ = Inheritance.call(self.dottedFillRountRectJButton.?, "addMouseListener", .{ MouseAdapter.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn mousePressed(self: *Self, evt: ?*MouseEvent) void {
//                 _ = Inheritance.call(self, "dottedFillRountRectJButtonMousePressed", .{ evt });
//             }
 });
        _ = Inheritance.call(self, "add", .{ self.dottedFillRountRectJButton });
        _ = Inheritance.call(self.colorJPanel.?, "setLayout", .{ Inheritance.callStatic(GridLayout, "create2", .{ 1, 1 }) });
        _ = Inheritance.call(self.colorJPanel.?, "add", .{ self.colorJList });
        _ = Inheritance.call(self, "add", .{ self.colorJPanel });
    }
    

    pub fn dottedFillRountRectJButtonMousePressed(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        _ = Inheritance.call(ToolFactory.getInstance().?, "setSelectedTool", .{ self.dottedFillRountRectJButton.?.getText() });
    }
    

    pub fn dottedFillArcJButtonMousePressed(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        _ = Inheritance.call(ToolFactory.getInstance().?, "setSelectedTool", .{ self.dottedFillArcJButton.?.getText() });
    }
    

    pub fn dottedFillRectJButtonMousePressed(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        _ = Inheritance.call(ToolFactory.getInstance().?, "setSelectedTool", .{ self.dottedFillRectJButton.?.getText() });
    }
    

    pub fn dottedArcJButtonMousePressed(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        _ = Inheritance.call(ToolFactory.getInstance().?, "setSelectedTool", .{ self.dottedArcJButton.?.getText() });
    }
    

    pub fn dottedRectButtonMousePressed(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        _ = Inheritance.call(ToolFactory.getInstance().?, "setSelectedTool", .{ self.dottedRectButton.?.getText() });
    }
    

    pub fn dottedLineJButtonMousePressed(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        _ = Inheritance.call(ToolFactory.getInstance().?, "setSelectedTool", .{ self.dottedLineJButton.?.getText() });
    }
    

    pub fn fillRoundRectJButtonMousePressed(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        _ = Inheritance.call(ToolFactory.getInstance().?, "setSelectedTool", .{ self.fillRoundRectJButton.?.getText() });
    }
    

    pub fn fillRectJButtonMousePressed(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        _ = Inheritance.call(ToolFactory.getInstance().?, "setSelectedTool", .{ self.fillRectJButton.?.getText() });
    }
    

    pub fn fillArcJButtonMousePressed(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        _ = Inheritance.call(ToolFactory.getInstance().?, "setSelectedTool", .{ self.fillArcJButton.?.getText() });
    }
    

    pub fn imageJButtonMousePressed(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        _ = Inheritance.call(ToolFactory.getInstance().?, "setSelectedTool", .{ self.imageJButton.?.getText() });
    }
    

    pub fn roundRectJButtonMousePressed(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        _ = Inheritance.call(ToolFactory.getInstance().?, "setSelectedTool", .{ self.roundRectJButton.?.getText() });
    }
    

    pub fn charJButtonMousePressed(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        _ = Inheritance.call(ToolFactory.getInstance().?, "setSelectedTool", .{ self.charJButton.?.getText() });
    }
    

    pub fn stringJButtonMousePressed(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        _ = Inheritance.call(ToolFactory.getInstance().?, "setSelectedTool", .{ self.stringJButton.?.getText() });
    }
    

    pub fn arcJButtonMousePressed(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        _ = Inheritance.call(ToolFactory.getInstance().?, "setSelectedTool", .{ self.arcJButton.?.getText() });
    }
    

    pub fn rectJButtonMouseClicked(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        _ = Inheritance.call(ToolFactory.getInstance().?, "setSelectedTool", .{ self.rectJButton.?.getText() });
    }
    

    pub fn lineJButtonMouseClicked(self: *Self, evt: ?*MouseEvent) void {
        _ = evt;
        _ = Inheritance.call(ToolFactory.getInstance().?, "setSelectedTool", .{ self.lineJButton.?.getText() });
    }
};

