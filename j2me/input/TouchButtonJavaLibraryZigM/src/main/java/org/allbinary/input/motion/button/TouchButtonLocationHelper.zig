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
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonButtons = @import("org/allbinary/input/motion/button/CommonButtons.zig").CommonButtons;

pub const TouchButtonLocationHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.TouchButtonLocationHelper";
    totalColumns: i32 = 0,
    totalRows: i32 = 0,
    columnsRemainder: i32 = 0,
    rowsRemainder: i32 = 0,
    columnsRemainderHalf: i32 = 0,
    rowsRemainderHalf: i32 = 0,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const buttonSize: i32 = CommonButtons.getInstance().?.STANDARD_BUTTON_SIZE;
        const displayInfo: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        this.totalColumns = @round(@as(f32, @floatCast(displayInfo.?.getLastWidth())) / @as(f32, @floatFromInt(buttonSize)));
        this.totalRows = @round(@as(f32, @floatCast(displayInfo.?.getLastHeight())) / @as(f32, @floatFromInt(buttonSize)));
        this.columnsRemainder = @rem(displayInfo.?.getLastWidth(), buttonSize);
        this.columnsRemainderHalf = (this.columnsRemainder >> @intCast(1));
        this.rowsRemainder = @rem(displayInfo.?.getLastHeight(), buttonSize);
        this.rowsRemainderHalf = (this.rowsRemainder >> @intCast(1));
        return this;
    }
    

    pub fn getTotalColumns(self: *Self) i32 {
        return self.totalColumns;
    }
    

    pub fn getTotalRows(self: *Self) i32 {
        return self.totalRows;
    }
    

    pub fn getColumnsRemainder(self: *Self) i32 {
        return self.columnsRemainder;
    }
    

    pub fn getRowsRemainder(self: *Self) i32 {
        return self.rowsRemainder;
    }
    

    pub fn getColumnsRemainderHalf(self: *Self) i32 {
        return self.columnsRemainderHalf;
    }
    

    pub fn getRowsRemainderHalf(self: *Self) i32 {
        return self.rowsRemainderHalf;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("totalColumns: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.totalColumns });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" totalRows: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.totalRows });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" columnsRemainder: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.columnsRemainder });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" rowsRemainder: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.rowsRemainder });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" columnsRemainderHalf: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.columnsRemainderHalf });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" rowsRemainderHalf: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.rowsRemainderHalf });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

