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
const CellPosition = @import("org/allbinary/graphics/CellPosition.zig").CellPosition;
const CellPositionFactory = @import("org/allbinary/graphics/CellPositionFactory.zig").CellPositionFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const TouchButtonLocationHelper = @import("org/allbinary/input/motion/button/TouchButtonLocationHelper.zig").TouchButtonLocationHelper;

pub const BasicTouchButtonCellPositionFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    TOP_RIGHT: ?*CellPosition = null,
    TOP_LEFT: ?*CellPosition = null,
    SECOND_FROM_TOP_LEFT: ?*CellPosition = null,
    SECOND_FROM_TOP_RIGHT: ?*CellPosition = null,
    TOP_SECOND_FROM_LEFT: ?*CellPosition = null,
    TOP_SECOND_FROM_RIGHT: ?*CellPosition = null,
    BOTTOM_RIGHT: ?*CellPosition = null,
    BOTTOM_SECOND_FROM_RIGHT: ?*CellPosition = null,
    SECOND_FROM_BOTTOM_RIGHT: ?*CellPosition = null,
    THIRD_FROM_BOTTOM_RIGHT: ?*CellPosition = null,
    FOURTH_FROM_BOTTOM_RIGHT: ?*CellPosition = null,
    SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT: ?*CellPosition = null,
    SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT: ?*CellPosition = null,
    SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT: ?*CellPosition = null,
    BOTTOM_THIRD_FROM_RIGHT: ?*CellPosition = null,
    BOTTOM_FOURTH_FROM_RIGHT: ?*CellPosition = null,
    BOTTOM_SECOND_FROM_LEFT: ?*CellPosition = null,
    SECOND_FROM_BOTTOM_LEFT: ?*CellPosition = null,
    THIRD_FROM_BOTTOM_LEFT: ?*CellPosition = null,
    BOTTOM_LEFT: ?*CellPosition = null,
    SECOND_FROM_BOTTOM_SECOND_FROM_LEFT: ?*CellPosition = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        
        this.SECOND_FROM_TOP_LEFT = null;
        this.SECOND_FROM_TOP_RIGHT = null;
        this.TOP_SECOND_FROM_LEFT = null;
        this.TOP_SECOND_FROM_RIGHT = null;
        
        
        
        this.THIRD_FROM_BOTTOM_RIGHT = null;
        this.FOURTH_FROM_BOTTOM_RIGHT = null;
        
        this.SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT = null;
        this.SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT = null;
        this.BOTTOM_THIRD_FROM_RIGHT = null;
        this.BOTTOM_FOURTH_FROM_RIGHT = null;
        
        
        this.THIRD_FROM_BOTTOM_LEFT = null;
        
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.START, this, this.commonStrings.?.CONSTRUCTOR });
        const touchButtonLocationHelper: ?*TouchButtonLocationHelper = TouchButtonLocationHelper.create();
        const cellPositionFactory: ?*CellPositionFactory = Inheritance.upcast(?*CellPositionFactory, CellPositionFactory.getInstance());
        _ = Inheritance.call(cellPositionFactory.?, "init", .{ touchButtonLocationHelper.?.getTotalColumns(), touchButtonLocationHelper.?.getTotalRows() });
        this.TOP_LEFT = Inheritance.upcast(@TypeOf(this.TOP_LEFT), Inheritance.call(cellPositionFactory.?, "getInstanceColRow", .{ 0, 0 }));
        this.TOP_RIGHT = Inheritance.upcast(@TypeOf(this.TOP_RIGHT), Inheritance.call(cellPositionFactory.?, "getInstanceColRow", .{ touchButtonLocationHelper.?.getTotalColumns() - 1, 0 }));
        this.BOTTOM_LEFT = Inheritance.upcast(@TypeOf(this.BOTTOM_LEFT), Inheritance.call(cellPositionFactory.?, "getInstanceColRow", .{ 0, touchButtonLocationHelper.?.getTotalRows() - 1 }));
        this.BOTTOM_RIGHT = Inheritance.upcast(@TypeOf(this.BOTTOM_RIGHT), Inheritance.call(cellPositionFactory.?, "getInstanceColRow", .{ touchButtonLocationHelper.?.getTotalColumns() - 1, touchButtonLocationHelper.?.getTotalRows() - 1 }));
        this.BOTTOM_SECOND_FROM_RIGHT = Inheritance.upcast(@TypeOf(this.BOTTOM_SECOND_FROM_RIGHT), Inheritance.call(cellPositionFactory.?, "getInstanceColRow", .{ touchButtonLocationHelper.?.getTotalColumns() - 2, touchButtonLocationHelper.?.getTotalRows() - 1 }));
        this.SECOND_FROM_BOTTOM_RIGHT = Inheritance.upcast(@TypeOf(this.SECOND_FROM_BOTTOM_RIGHT), Inheritance.call(cellPositionFactory.?, "getInstanceColRow", .{ touchButtonLocationHelper.?.getTotalColumns() - 1, touchButtonLocationHelper.?.getTotalRows() - 2 }));
        this.SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT = Inheritance.upcast(@TypeOf(this.SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT), Inheritance.call(cellPositionFactory.?, "getInstanceColRow", .{ touchButtonLocationHelper.?.getTotalColumns() - 2, touchButtonLocationHelper.?.getTotalRows() - 2 }));
        this.BOTTOM_SECOND_FROM_LEFT = Inheritance.upcast(@TypeOf(this.BOTTOM_SECOND_FROM_LEFT), Inheritance.call(cellPositionFactory.?, "getInstanceColRow", .{ 1, touchButtonLocationHelper.?.getTotalRows() - 1 }));
        this.SECOND_FROM_BOTTOM_LEFT = Inheritance.upcast(@TypeOf(this.SECOND_FROM_BOTTOM_LEFT), Inheritance.call(cellPositionFactory.?, "getInstanceColRow", .{ 0, touchButtonLocationHelper.?.getTotalRows() - 2 }));
        this.SECOND_FROM_BOTTOM_SECOND_FROM_LEFT = Inheritance.upcast(@TypeOf(this.SECOND_FROM_BOTTOM_SECOND_FROM_LEFT), Inheritance.call(cellPositionFactory.?, "getInstanceColRow", .{ 1, touchButtonLocationHelper.?.getTotalRows() - 2 }));
        if (touchButtonLocationHelper.?.getTotalRows() > 2) {
            this.SECOND_FROM_TOP_LEFT = Inheritance.upcast(@TypeOf(this.SECOND_FROM_TOP_LEFT), Inheritance.call(cellPositionFactory.?, "getInstanceColRow", .{ 0, 1 }));
            this.SECOND_FROM_TOP_RIGHT = Inheritance.upcast(@TypeOf(this.SECOND_FROM_TOP_RIGHT), Inheritance.call(cellPositionFactory.?, "getInstanceColRow", .{ touchButtonLocationHelper.?.getTotalColumns() - 1, 1 }));
        } else {
            this.SECOND_FROM_TOP_LEFT = Inheritance.upcast(@TypeOf(this.SECOND_FROM_TOP_LEFT), cellPositionFactory.?.NONE);
            this.SECOND_FROM_TOP_RIGHT = Inheritance.upcast(@TypeOf(this.SECOND_FROM_TOP_RIGHT), cellPositionFactory.?.NONE);
        }
        if (touchButtonLocationHelper.?.getTotalRows() >= 4) {
            this.THIRD_FROM_BOTTOM_RIGHT = Inheritance.upcast(@TypeOf(this.THIRD_FROM_BOTTOM_RIGHT), Inheritance.call(cellPositionFactory.?, "getInstanceColRow", .{ touchButtonLocationHelper.?.getTotalColumns() - 1, touchButtonLocationHelper.?.getTotalRows() - 3 }));
            this.FOURTH_FROM_BOTTOM_RIGHT = Inheritance.upcast(@TypeOf(this.FOURTH_FROM_BOTTOM_RIGHT), Inheritance.call(cellPositionFactory.?, "getInstanceColRow", .{ touchButtonLocationHelper.?.getTotalColumns() - 1, touchButtonLocationHelper.?.getTotalRows() - 4 }));
            this.THIRD_FROM_BOTTOM_LEFT = Inheritance.upcast(@TypeOf(this.THIRD_FROM_BOTTOM_LEFT), Inheritance.call(cellPositionFactory.?, "getInstanceColRow", .{ 0, touchButtonLocationHelper.?.getTotalRows() - 3 }));
        } else {
            this.THIRD_FROM_BOTTOM_RIGHT = Inheritance.upcast(@TypeOf(this.THIRD_FROM_BOTTOM_RIGHT), cellPositionFactory.?.NONE);
            this.FOURTH_FROM_BOTTOM_RIGHT = Inheritance.upcast(@TypeOf(this.FOURTH_FROM_BOTTOM_RIGHT), cellPositionFactory.?.NONE);
            this.THIRD_FROM_BOTTOM_LEFT = Inheritance.upcast(@TypeOf(this.THIRD_FROM_BOTTOM_LEFT), cellPositionFactory.?.NONE);
        }
        if (touchButtonLocationHelper.?.getTotalColumns() >= 4) {
            this.SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT = Inheritance.upcast(@TypeOf(this.SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT), Inheritance.call(cellPositionFactory.?, "getInstanceColRow", .{ touchButtonLocationHelper.?.getTotalColumns() - 3, touchButtonLocationHelper.?.getTotalRows() - 2 }));
            this.SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT = Inheritance.upcast(@TypeOf(this.SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT), Inheritance.call(cellPositionFactory.?, "getInstanceColRow", .{ touchButtonLocationHelper.?.getTotalColumns() - 4, touchButtonLocationHelper.?.getTotalRows() - 2 }));
            this.BOTTOM_THIRD_FROM_RIGHT = Inheritance.upcast(@TypeOf(this.BOTTOM_THIRD_FROM_RIGHT), Inheritance.call(cellPositionFactory.?, "getInstanceColRow", .{ touchButtonLocationHelper.?.getTotalColumns() - 3, touchButtonLocationHelper.?.getTotalRows() - 1 }));
            this.BOTTOM_FOURTH_FROM_RIGHT = Inheritance.upcast(@TypeOf(this.BOTTOM_FOURTH_FROM_RIGHT), Inheritance.call(cellPositionFactory.?, "getInstanceColRow", .{ touchButtonLocationHelper.?.getTotalColumns() - 4, touchButtonLocationHelper.?.getTotalRows() - 1 }));
            this.TOP_SECOND_FROM_LEFT = Inheritance.upcast(@TypeOf(this.TOP_SECOND_FROM_LEFT), Inheritance.call(cellPositionFactory.?, "getInstanceColRow", .{ 1, 0 }));
            this.TOP_SECOND_FROM_RIGHT = Inheritance.upcast(@TypeOf(this.TOP_SECOND_FROM_RIGHT), Inheritance.call(cellPositionFactory.?, "getInstanceColRow", .{ touchButtonLocationHelper.?.getTotalColumns() - 2, 0 }));
        } else {
            this.SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT = Inheritance.upcast(@TypeOf(this.SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT), cellPositionFactory.?.NONE);
            this.SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT = Inheritance.upcast(@TypeOf(this.SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT), cellPositionFactory.?.NONE);
            this.BOTTOM_THIRD_FROM_RIGHT = Inheritance.upcast(@TypeOf(this.BOTTOM_THIRD_FROM_RIGHT), cellPositionFactory.?.NONE);
            this.BOTTOM_FOURTH_FROM_RIGHT = Inheritance.upcast(@TypeOf(this.BOTTOM_FOURTH_FROM_RIGHT), cellPositionFactory.?.NONE);
            this.TOP_SECOND_FROM_LEFT = Inheritance.upcast(@TypeOf(this.TOP_SECOND_FROM_LEFT), cellPositionFactory.?.NONE);
            this.TOP_SECOND_FROM_RIGHT = Inheritance.upcast(@TypeOf(this.TOP_SECOND_FROM_RIGHT), cellPositionFactory.?.NONE);
        }
        return this;
    }
};

