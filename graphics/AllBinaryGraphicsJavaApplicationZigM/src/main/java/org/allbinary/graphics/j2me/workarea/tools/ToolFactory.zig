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
const StatusFactory = @import("org/allbinary/graphics/j2me/StatusFactory.zig").StatusFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const GraphicItemFactory = @import("org/allbinary/graphics/j2me/workarea/tools/GraphicItemFactory.zig").GraphicItemFactory;
const GraphicsItemInterfaceFactoryInterface = @import("org/allbinary/graphics/j2me/workarea/tools/GraphicsItemInterfaceFactoryInterface.zig").GraphicsItemInterfaceFactoryInterface;

pub const ToolFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.tools.ToolFactory";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    selectedTool: ?*GraphicsItemInterfaceFactoryInterface = null,
    tool: ?*String = null,
    SELECTED_LABEL: ?*String = null,
    var instance: ?*ToolFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ToolFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.selectedTool = null;
        this.tool = null;
        this.SELECTED_LABEL = String.literal("Selected: ");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ToolFactory {
        return Inheritance.upcast(?*ToolFactory, ToolFactory.instance);
    }
    

    pub fn setSelectedTool(self: *Self, tool: ?*String) void {
        { // try
            _ = Inheritance.call(StatusFactory.getInstance().?, "setStatus", .{ String.plus(self.SELECTED_LABEL, tool) });
            self.tool = tool;
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("setSelectionTool"), e });
    }
    

    pub fn getSelectedToolFactory(self: *Self) ?*GraphicsItemInterfaceFactoryInterface {
        _ = Inheritance.call(StatusFactory.getInstance().?, "setStatus", .{ String.plus(String.literal("Tool In Use: "), self.tool) });
        if (self.tool != null) {
            self.selectedTool = Inheritance.upcast(@TypeOf(self.selectedTool), Inheritance.call(GraphicItemFactory.getInstance().?, "getInstance", .{ self.tool }));
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("New Tool: "), self.selectedTool), self, String.literal("getSelectedToolFactory") });
            return self.selectedTool;
        } else {
            return null;
        }
    }
};

