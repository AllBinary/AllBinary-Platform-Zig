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
// package org.allbinary.media.graphics.geography.map.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CellPosition = @import("org/allbinary/graphics/CellPosition.zig").CellPosition;
const CellPositionFactory = @import("org/allbinary/graphics/CellPositionFactory.zig").CellPositionFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;

pub const GeographicMapCellPositionEvent = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent";
    base: AllBinaryEventObject = undefined,
    geographicMapCellPosition: ?*CellPosition = null,

    fn initFields(this: *Self) void {
        this.geographicMapCellPosition = Inheritance.upcast(?*CellPosition, CellPositionFactory.getInstance().?.NONE);
    }
    

    pub fn create2(anyType: ?Object, geographicMapCellPosition: ?*CellPosition) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryEventObject, "create1", .{ anyType }).*;
        this.initFields();
        this.geographicMapCellPosition = geographicMapCellPosition;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self, anyType: ?Object) void {
        _ = Inheritance.call(self, "setSource", .{ anyType });
    }
    

    pub fn setGeographicMapCellPosition(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) void {
        self.geographicMapCellPosition = geographicMapCellPosition;
    }
    

    pub fn getGeographicMapCellPosition(self: *Self) ?*GeographicMapCellPosition {
        return Inheritance.cast(?*GeographicMapCellPosition, self.geographicMapCellPosition);
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("CellPositionEvent: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nGeographicMapCellPosition: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ self.getGeographicMapCellPosition() }) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

