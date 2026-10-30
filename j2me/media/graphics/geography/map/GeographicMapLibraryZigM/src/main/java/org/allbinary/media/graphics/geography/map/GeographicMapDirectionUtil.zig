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
// package org.allbinary.media.graphics.geography.map

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const Direction = @import("org/allbinary/direction/Direction.zig").Direction;
const DirectionFactory = @import("org/allbinary/direction/DirectionFactory.zig").DirectionFactory;
const CellPosition = @import("org/allbinary/graphics/CellPosition.zig").CellPosition;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;

pub const GeographicMapDirectionUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil";
    MESSAGE: ?*String = null,
    ERROR: ?*String = null,
    EQUAL: ?*String = null,
    var instance: ?*GeographicMapDirectionUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GeographicMapDirectionUtil.create();
    }

    fn initFields(this: *Self) void {
        this.MESSAGE = String.literal("Cell Position should have been cached!!!");
        this.ERROR = String.literal("Error: ");
        this.EQUAL = String.literal(" == ");
    }
    

    pub fn getInstance() ?*GeographicMapDirectionUtil {
        return Inheritance.upcast(?*GeographicMapDirectionUtil, GeographicMapDirectionUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getDirectionFromCellPositionToAdjacentCellPosition(self: *Self, fromGeographicMapCellPosition: ?*GeographicMapCellPosition, toGeographicMapCellPosition: ?*GeographicMapCellPosition) ?*Direction {
        const fromColumn: i32 = Inheritance.receiver(fromGeographicMapCellPosition.?, "getColumn").getColumn();
        const fromRow: i32 = Inheritance.receiver(fromGeographicMapCellPosition.?, "getRow").getRow();
        const goColumn: i32 = Inheritance.receiver(toGeographicMapCellPosition.?, "getColumn").getColumn();
        const goRow: i32 = Inheritance.receiver(toGeographicMapCellPosition.?, "getRow").getRow();
        const directionFactory: ?*DirectionFactory = Inheritance.upcast(?*DirectionFactory, DirectionFactory.getInstance());
        if (fromColumn - 1 == goColumn) {
            return Inheritance.upcast(?*Direction, directionFactory.?.LEFT);
        } else if (fromColumn + 1 == goColumn) {
            return Inheritance.upcast(?*Direction, directionFactory.?.RIGHT);
        } else if (fromRow - 1 == goRow) {
            return Inheritance.upcast(?*Direction, directionFactory.?.UP);
        } else if (fromRow + 1 == goRow) {
            return Inheritance.upcast(?*Direction, directionFactory.?.DOWN);
        } else if (Object.same(fromGeographicMapCellPosition, toGeographicMapCellPosition)) {
            return Inheritance.upcast(?*Direction, directionFactory.?.NO_DIRECTION);
        } else if (fromRow == goRow and fromColumn == goColumn) {
            std.debug.panic("{any}", .{exception: { _ = self.MESSAGE; break :exception error.Exception; }});
        }
        return Inheritance.upcast(?*Direction, directionFactory.?.NOT_BORDERED_WITH);
    }
    

    // throws Exception
    pub fn getEightDirectionFromCellPositionToAdjacentCellPosition(self: *Self, fromGeographicMapCellPosition: ?*GeographicMapCellPosition, toGeographicMapCellPosition: ?*GeographicMapCellPosition) ?*Direction {
        const fromColumn: i32 = Inheritance.receiver(fromGeographicMapCellPosition.?, "getColumn").getColumn();
        const fromRow: i32 = Inheritance.receiver(fromGeographicMapCellPosition.?, "getRow").getRow();
        const goColumn: i32 = Inheritance.receiver(toGeographicMapCellPosition.?, "getColumn").getColumn();
        const goRow: i32 = Inheritance.receiver(toGeographicMapCellPosition.?, "getRow").getRow();
        const directionFactory: ?*DirectionFactory = Inheritance.upcast(?*DirectionFactory, DirectionFactory.getInstance());
        if (fromRow == goRow) {
            if (fromColumn - 1 == goColumn) {
                return Inheritance.upcast(?*Direction, directionFactory.?.LEFT);
            } else if (fromColumn + 1 == goColumn) {
                return Inheritance.upcast(?*Direction, directionFactory.?.RIGHT);
            }
        } else if (fromRow - 1 == goRow) {
            if (fromColumn == goColumn) {
                return Inheritance.upcast(?*Direction, directionFactory.?.UP);
            }
            if (fromColumn - 1 == goColumn) {
                return Inheritance.upcast(?*Direction, directionFactory.?.UP_LEFT);
            } else if (fromColumn + 1 == goColumn) {
                return Inheritance.upcast(?*Direction, directionFactory.?.UP_RIGHT);
            }
        } else if (fromRow + 1 == goRow) {
            if (fromColumn == goColumn) {
                return Inheritance.upcast(?*Direction, directionFactory.?.DOWN);
            }
            if (fromColumn - 1 == goColumn) {
                return Inheritance.upcast(?*Direction, directionFactory.?.DOWN_LEFT);
            } else if (fromColumn + 1 == goColumn) {
                return Inheritance.upcast(?*Direction, directionFactory.?.DOWN_RIGHT);
            }
        } else if (Object.same(fromGeographicMapCellPosition, toGeographicMapCellPosition)) {
            return Inheritance.upcast(?*Direction, directionFactory.?.NO_DIRECTION);
        } else if (fromRow == goRow and fromColumn == goColumn) {
            std.debug.panic("{any}", .{exception: { _ = self.MESSAGE; break :exception error.Exception; }});
        }
        return Inheritance.upcast(?*Direction, directionFactory.?.NOT_BORDERED_WITH);
    }
    

    // throws Exception
    pub fn getDirectionFromCellPositionToCellPosition(self: *Self, fromGeographicMapCellPosition: ?*GeographicMapCellPosition, toGeographicMapCellPosition: ?*GeographicMapCellPosition) ?*Direction {
        _ = self;
        const fromColumn: i32 = Inheritance.receiver(fromGeographicMapCellPosition.?, "getColumn").getColumn();
        const fromRow: i32 = Inheritance.receiver(fromGeographicMapCellPosition.?, "getRow").getRow();
        const goColumn: i32 = Inheritance.receiver(toGeographicMapCellPosition.?, "getColumn").getColumn();
        const goRow: i32 = Inheritance.receiver(toGeographicMapCellPosition.?, "getRow").getRow();
        const directionFactory: ?*DirectionFactory = Inheritance.upcast(?*DirectionFactory, DirectionFactory.getInstance());
        if (fromColumn > goColumn) {
            return Inheritance.upcast(?*Direction, directionFactory.?.LEFT);
        } else if (fromColumn < goColumn) {
            return Inheritance.upcast(?*Direction, directionFactory.?.RIGHT);
        } else if (fromRow > goRow) {
            return Inheritance.upcast(?*Direction, directionFactory.?.UP);
        } else if (fromRow < goRow) {
            return Inheritance.upcast(?*Direction, directionFactory.?.DOWN);
        }
        const stringMaker: ?*StringMaker = StringMaker.create();
        const string: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ Inheritance.callStatic(CellPosition, "toStringCellPosition", .{ fromGeographicMapCellPosition }) }).?, "append", .{ String.literal(" == ") }).?, "append", .{ Inheritance.callStatic(CellPosition, "toStringCellPosition", .{ toGeographicMapCellPosition }) }))));
        _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
        std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ String.literal("Error: ") }).?, "append", .{ string }))); break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn getEightDirectionFromCellPositionToCellPosition(self: *Self, fromGeographicMapCellPosition: ?*GeographicMapCellPosition, toGeographicMapCellPosition: ?*GeographicMapCellPosition) ?*Direction {
        const fromColumn: i32 = Inheritance.receiver(fromGeographicMapCellPosition.?, "getColumn").getColumn();
        const fromRow: i32 = Inheritance.receiver(fromGeographicMapCellPosition.?, "getRow").getRow();
        const goColumn: i32 = Inheritance.receiver(toGeographicMapCellPosition.?, "getColumn").getColumn();
        const goRow: i32 = Inheritance.receiver(toGeographicMapCellPosition.?, "getRow").getRow();
        const directionFactory: ?*DirectionFactory = Inheritance.upcast(?*DirectionFactory, DirectionFactory.getInstance());
        if (Object.same(fromGeographicMapCellPosition, toGeographicMapCellPosition)) {
            return Inheritance.upcast(?*Direction, directionFactory.?.NO_DIRECTION);
        } else if (fromRow == goRow) {
            if (fromColumn > goColumn) {
                return Inheritance.upcast(?*Direction, directionFactory.?.LEFT);
            } else if (fromColumn < goColumn) {
                return Inheritance.upcast(?*Direction, directionFactory.?.RIGHT);
            }
        } else if (fromRow > goRow) {
            if (fromColumn > goColumn) {
                return Inheritance.upcast(?*Direction, directionFactory.?.UP_LEFT);
            } else if (fromColumn < goColumn) {
                return Inheritance.upcast(?*Direction, directionFactory.?.UP_RIGHT);
            } else if (fromColumn == goColumn) {
                return Inheritance.upcast(?*Direction, directionFactory.?.UP);
            }
        } else if (fromRow < goRow) {
            if (fromColumn > goColumn) {
                return Inheritance.upcast(?*Direction, directionFactory.?.DOWN_LEFT);
            } else if (fromColumn < goColumn) {
                return Inheritance.upcast(?*Direction, directionFactory.?.DOWN_RIGHT);
            } else if (fromColumn == goColumn) {
                return Inheritance.upcast(?*Direction, directionFactory.?.DOWN);
            }
        }
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.ERROR });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.callStatic(CellPosition, "toStringCellPosition", .{ fromGeographicMapCellPosition }) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.EQUAL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.callStatic(CellPosition, "toStringCellPosition", .{ toGeographicMapCellPosition }) });
        std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(stringBuffer)); break :exception error.Exception; }});
    }
};

