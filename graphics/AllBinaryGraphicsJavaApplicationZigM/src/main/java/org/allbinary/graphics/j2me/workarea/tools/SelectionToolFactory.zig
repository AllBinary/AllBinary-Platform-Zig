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
const CanvasJPanel = @import("org/allbinary/graphics/j2me/workarea/canvas/CanvasJPanel.zig").CanvasJPanel;
const GraphicItemInterface = @import("org/allbinary/graphics/j2me/workarea/tools/GraphicItemInterface.zig").GraphicItemInterface;
const GraphicsItemInterfaceFactoryInterface = @import("org/allbinary/graphics/j2me/workarea/tools/GraphicsItemInterfaceFactoryInterface.zig").GraphicsItemInterfaceFactoryInterface;
const SelectionTool = @import("org/allbinary/graphics/j2me/workarea/tools/SelectionTool.zig").SelectionTool;

pub const SelectionToolFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.tools.SelectionToolFactory";
    pub const java_interfaces = .{ GraphicsItemInterfaceFactoryInterface };
    // Implements GraphicsItemInterfaceFactoryInterface

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance(self: *Self, canvasJPanel: ?*CanvasJPanel) ?*GraphicItemInterface {
        _ = self;
        return Inheritance.upcast(?*GraphicItemInterface, Inheritance.callStatic(SelectionTool, "create1", .{ canvasJPanel }));
    }
};

