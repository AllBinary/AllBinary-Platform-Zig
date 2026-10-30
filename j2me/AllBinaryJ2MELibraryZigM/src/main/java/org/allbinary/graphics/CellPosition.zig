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
const V = @import("org/allbinary/graph/V.zig").V;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;

pub const CellPosition = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.CellPosition";
    base: V = undefined,
    id: i32 = 0,
    column: i32 = 0,
    row: i32 = 0,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
    }
    

    pub fn create4(column: i32, row: i32, columns: i32, rows: i32) *Self {
        _ = rows;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = V.create().*;
        this.initFields();
        this.column = column;
        this.row = row;
        this.id = (row * columns) + column;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getColumn(self: *Self) i32 {
        return self.column;
    }
    

    pub fn getRow(self: *Self) i32 {
        return self.row;
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Inheritance.callStatic(CellPosition, "toStringColRow", .{ self.getColumn(), self.getRow() }));
    }
    

    pub fn toStringCellPosition(basicGeographicMapCellPosition: ?*CellPosition) ?*String {
        return Inheritance.upcast(?*String, Inheritance.callStatic(CellPosition, "toStringColRow", .{ Inheritance.receiver(basicGeographicMapCellPosition.?, "getColumn").getColumn(), Inheritance.receiver(basicGeographicMapCellPosition.?, "getRow").getRow() }));
    }
    

    pub fn toStringColRow(i_column: i32, i_row: i32) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.PARENTHESIS_OPEN });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ i_column });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.COMMA });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ i_row });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.PARENTHESIS_CLOSE });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn getId(self: *Self) i32 {
        return self.id;
    }
};

