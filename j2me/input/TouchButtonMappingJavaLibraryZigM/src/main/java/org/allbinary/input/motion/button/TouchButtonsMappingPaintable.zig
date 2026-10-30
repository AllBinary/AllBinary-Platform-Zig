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
// package org.allbinary.input.motion.button

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const CellPositionFactory = @import("org/allbinary/graphics/CellPositionFactory.zig").CellPositionFactory;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicTouchInputFactory = @import("org/allbinary/input/motion/button/BasicTouchInputFactory.zig").BasicTouchInputFactory;
const CommonButtons = @import("org/allbinary/input/motion/button/CommonButtons.zig").CommonButtons;
const TouchButton = @import("org/allbinary/input/motion/button/TouchButton.zig").TouchButton;
const TouchButtonBlankResource = @import("org/allbinary/input/motion/button/TouchButtonBlankResource.zig").TouchButtonBlankResource;
const TouchButtonLocationHelper = @import("org/allbinary/input/motion/button/TouchButtonLocationHelper.zig").TouchButtonLocationHelper;

pub const TouchButtonsMappingPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.TouchButtonsMappingPaintable";
    base: Paintable = undefined,
    logUtil: ?*LogUtil = null,
    foregroundColor: i32 = 0,
    paintableTable: [][]?*Paintable = &.{},
    touchButtonLocationHelper: ?*TouchButtonLocationHelper = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        this.paintableTable = array_N65860: { const array_N65860_array = allocator.alloc([]?*Paintable, @intCast(0)) catch unreachable; for (array_N65860_array) |*array_N65860_row| { array_N65860_row.* = allocator.alloc(?*Paintable, @intCast(0)) catch unreachable; @memset(array_N65860_row.*, null); } break :array_N65860 array_N65860_array; };
        this.touchButtonLocationHelper = TouchButtonLocationHelper.create();
    }
    

    pub fn create1(basicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Paintable.create().*;
        this.initFields();
        this.foregroundColor = basicColor.?.intValue();
        _ = this.init();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self) void {
        { // try
            self.paintableTable = Inheritance.upcast(@TypeOf(self.paintableTable), self.createPaintableTable());
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("updateRectangle"), e });
    }
    

    // throws Exception
    pub fn createPaintableTable(self: *Self) [][]?*Paintable {
        const totalColumns: i32 = self.touchButtonLocationHelper.?.getTotalColumns();
        const totalRows: i32 = self.touchButtonLocationHelper.?.getTotalRows();
        const paintableTable: [][]?*Paintable = array_N66359: { const array_N66359_array = allocator.alloc([]?*Paintable, @intCast(totalColumns)) catch unreachable; for (array_N66359_array) |*array_N66359_row| { array_N66359_row.* = allocator.alloc(?*Paintable, @intCast(totalRows)) catch unreachable; @memset(array_N66359_row.*, null); } break :array_N66359 array_N66359_array; };
        const cellPositionFactory: ?*CellPositionFactory = Inheritance.upcast(?*CellPositionFactory, CellPositionFactory.getInstance());
        const commonButtons: ?*CommonButtons = Inheritance.upcast(?*CommonButtons, CommonButtons.getInstance());
        {
            var index: i32 = totalColumns - 1;
            while (index >= 0) : (index -= 1) {
            {
                var rowIndex: i32 = totalRows - 1;
                while (rowIndex >= 0) : (rowIndex -= 1) {
                self.paintableTable[@intCast(index)][@intCast(rowIndex)] = Inheritance.upcast(@TypeOf(self.paintableTable[@intCast(index)][@intCast(rowIndex)]), Inheritance.callStatic(TouchButton, "createButton", .{ BasicTouchInputFactory.getInstance().?.NONE, TouchButtonBlankResource.getInstance(), commonButtons.?.NORMAL_BUTTON, Inheritance.call(cellPositionFactory.?, "getInstanceColRow", .{ index, rowIndex }), self.touchButtonLocationHelper.?.getColumnsRemainderHalf(), self.touchButtonLocationHelper.?.getRowsRemainderHalf() }));
                }
            }
            }
        }
        return paintableTable;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        const totalColumns: i32 = self.touchButtonLocationHelper.?.getTotalColumns();
        const totalRows: i32 = self.touchButtonLocationHelper.?.getTotalRows();
        {
            var index: i32 = totalColumns - 1;
            while (index >= 0) : (index -= 1) {
            {
                var rowIndex: i32 = totalRows - 1;
                while (rowIndex >= 0) : (rowIndex -= 1) {
                _ = Inheritance.call(self.paintableTable[@intCast(index)][@intCast(rowIndex)].?, "paint", .{ graphics });
                }
            }
            }
        }
    }
};

