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
// package org.allbinary.graphics

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const CellPosition = @import("org/allbinary/graphics/CellPosition.zig").CellPosition;

pub const CellPositionFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.CellPositionFactory";
    logUtil: ?*LogUtil = null,
    NONE: ?*CellPosition = null,
    cellPositionArray: [][]?*CellPosition = &.{},
    columns: i32 = 0,
    rows: i32 = 0,
    var SINGLETON: ?*CellPositionFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = CellPositionFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.NONE = Inheritance.callStatic(CellPosition, "create4", .{ -1, -1, -1, -1 });
        this.cellPositionArray = array_N65864: { const array_N65864_array = allocator.alloc([]?*CellPosition, @intCast(0)) catch unreachable; for (array_N65864_array) |*array_N65864_row| { array_N65864_row.* = allocator.alloc(?*CellPosition, @intCast(0)) catch unreachable; @memset(array_N65864_row.*, null); } break :array_N65864 array_N65864_array; };
        this.columns = 0;
        this.rows = 0;
    }
    

    pub fn getInstance() ?*CellPositionFactory {
        return Inheritance.upcast(?*CellPositionFactory, CellPositionFactory.SINGLETON);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn init(self: *Self, columns: i32, rows: i32) void {
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Init: columns: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ columns });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" rows: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ rows });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, commonStrings.?.INIT });
        self.cellPositionArray = Inheritance.upcast(@TypeOf(self.cellPositionArray), array_N66343: { const array_N66343_array = allocator.alloc([]?*CellPosition, @intCast(columns)) catch unreachable; for (array_N66343_array) |*array_N66343_row| { array_N66343_row.* = allocator.alloc(?*CellPosition, @intCast(rows)) catch unreachable; @memset(array_N66343_row.*, null); } break :array_N66343 array_N66343_array; });
        self.columns = columns;
        self.rows = rows;
        {
            var column: i32 = 0;
            while (column < columns) : (column += 1) {
            {
                var row: i32 = 0;
                while (row < rows) : (row += 1) {
                _ = Inheritance.call(self, "createInstance", .{ column, row });
                }
            }
            }
        }
    }
    

    pub fn getInstanceColRow(self: *Self, i_column: i32, i_row: i32) ?*CellPosition {
        { // try
            return Inheritance.upcast(?*CellPosition, self.cellPositionArray[@intCast(i_column)][@intCast(i_row)]);
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("columns: ") }).?, "appendint", .{ self.getColumns() }).?, "append", .{ String.literal(" rows: ") }).?, "appendint", .{ self.getRows() }).?, "append", .{ String.literal(" col: ") }).?, "appendint", .{ i_column }).?, "append", .{ String.literal(" row: ") }).?, "appendint", .{ i_row }))), self, commonStrings.?.GET_INSTANCE, e });
//             return self.NONE;
    }
    

    pub fn createInstance(self: *Self, i_column: i32, i_row: i32) ?*CellPosition {
        var cellPositionCanBeNull: ?*CellPosition = Inheritance.upcast(?*CellPosition, self.cellPositionArray[@intCast(i_column)][@intCast(i_row)]);
        if (cellPositionCanBeNull == null) {
            cellPositionCanBeNull = Inheritance.callStatic(CellPosition, "create4", .{ i_column, i_row, self.columns, self.rows });
            self.cellPositionArray[@intCast(i_column)][@intCast(i_row)] = Inheritance.upcast(@TypeOf(self.cellPositionArray[@intCast(i_column)][@intCast(i_row)]), cellPositionCanBeNull);
        }
        return cellPositionCanBeNull;
    }
    

    pub fn getColumns(self: *Self) i32 {
        return self.columns;
    }
    

    pub fn getRows(self: *Self) i32 {
        return self.rows;
    }
};

