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
// package org.allbinary.direction

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonPhoneStrings = @import("org/allbinary/string/CommonPhoneStrings.zig").CommonPhoneStrings;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const Direction = @import("org/allbinary/direction/Direction.zig").Direction;

pub const DirectionFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.direction.DirectionFactory";
    NAME: ?*String = null,
    LEFT: ?*Direction = null,
    RIGHT: ?*Direction = null,
    DOWN: ?*Direction = null,
    UP: ?*Direction = null,
    UP_LEFT: ?*Direction = null,
    UP_RIGHT: ?*Direction = null,
    DOWN_LEFT: ?*Direction = null,
    DOWN_RIGHT: ?*Direction = null,
    NOT_BORDERED_WITH: ?*Direction = null,
    NO_DIRECTION: ?*Direction = null,
    TOP: ?*Direction = null,
    BOTTOM: ?*Direction = null,
    ALL_DIRECTION: ?*Direction = null,
    var instance: ?*DirectionFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = DirectionFactory.create();
    }

    fn initFields(this: *Self) void {
        this.NAME = String.literal("DIRECTION");
        this.LEFT = Inheritance.callStatic(Direction, "create4", .{ CommonPhoneStrings.getInstance().?.LEFT, String.literal("WEST"), 0, 1 });
        this.RIGHT = Inheritance.callStatic(Direction, "create4", .{ CommonPhoneStrings.getInstance().?.RIGHT, String.literal("EAST"), 1, 0 });
        this.DOWN = Inheritance.callStatic(Direction, "create4", .{ CommonPhoneStrings.getInstance().?.DOWN, String.literal("SOUTH"), 2, 0 });
        this.UP = Inheritance.callStatic(Direction, "create4", .{ CommonPhoneStrings.getInstance().?.UP, String.literal("NORTH"), 3, 0 });
        
        
        
        
        this.NOT_BORDERED_WITH = Inheritance.callStatic(Direction, "create4", .{ String.literal("NOT_BORDERED_WITH"), String.literal("NOT_BORDERED_WITH"), 8, 0 });
        this.NO_DIRECTION = Inheritance.callStatic(Direction, "create4", .{ String.literal("NO_DIRECTION"), String.literal("NO_DIRECTION"), 9, 0 });
        this.TOP = Inheritance.callStatic(Direction, "create4", .{ String.literal("TOP"), String.literal("TOP"), 10, 0 });
        this.BOTTOM = Inheritance.callStatic(Direction, "create4", .{ String.literal("BOTTOM"), String.literal("BOTTOM"), 11, 0 });
        this.ALL_DIRECTION = Inheritance.callStatic(Direction, "create4", .{ String.literal("ALL_DIRECTION"), String.literal("ALL_DIRECTION"), 12, 0 });
    }
    

    pub fn getInstance() ?*DirectionFactory {
        return Inheritance.upcast(?*DirectionFactory, DirectionFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        this.UP_LEFT = Inheritance.callStatic(Direction, "create4", .{ String.literal("UP LEFT"), Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ this.UP.?.getOtherName() }).?, "append", .{ commonSeps.?.SPACE }).?, "append", .{ this.LEFT.?.getOtherName() }))), 4, 0 });
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        this.UP_RIGHT = Inheritance.callStatic(Direction, "create4", .{ String.literal("UP RIGHT"), Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ this.UP.?.getOtherName() }).?, "append", .{ commonSeps.?.SPACE }).?, "append", .{ this.RIGHT.?.getOtherName() }))), 5, 0 });
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        this.DOWN_LEFT = Inheritance.callStatic(Direction, "create4", .{ String.literal("DOWN LEFT"), Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ this.DOWN.?.getOtherName() }).?, "append", .{ commonSeps.?.SPACE }).?, "append", .{ this.LEFT.?.getOtherName() }))), 6, 0 });
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        this.DOWN_RIGHT = Inheritance.callStatic(Direction, "create4", .{ String.literal("DOWN RIGHT"), Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ this.DOWN.?.getOtherName() }).?, "append", .{ commonSeps.?.SPACE }).?, "append", .{ this.RIGHT.?.getOtherName() }))), 7, 0 });
        return this;
    }
};

