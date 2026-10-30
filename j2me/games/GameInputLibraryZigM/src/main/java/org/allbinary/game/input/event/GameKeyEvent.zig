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
// package org.allbinary.game.input.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;

pub const GameKeyEvent = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.event.GameKeyEvent";
    base: AllBinaryEventObject = undefined,
    sourceId: i32 = 0,
    repeated: bool = false,
    key: i32 = 0,
    gameActionKey: i32 = 0,
    originalKey: i32 = 0,
    pub var NONE: ?*GameKeyEvent = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NONE = Inheritance.callStatic(GameKeyEvent, "create6", .{ NullUtil.getInstance().?.NULL_OBJECT, -1, -1, -1, -1, false });
    }

    fn initFields(this: *Self) void {
        
        this.repeated = false;
        
        this.gameActionKey = 0;
        this.originalKey = 0;
    }
    

    pub fn createEvent(anyType: ?Object, sourceId: i32, key: i32) ?*GameKeyEvent {
        return Inheritance.callStatic(GameKeyEvent, "create6", .{ anyType, sourceId, 0, 0, key, false });
    }
    

    pub fn create6(anyType: ?Object, sourceId: i32, originalKey: i32, gameActionKey: i32, key: i32, repeated: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryEventObject, "create1", .{ anyType }).*;
        this.initFields();
        this.sourceId = sourceId;
        _ = Inheritance.call(this, "setOriginalKey", .{ originalKey });
        this.key = key;
        _ = Inheritance.call(this, "setGameActionKey", .{ gameActionKey });
        _ = Inheritance.call(this, "setRepeatEvents", .{ repeated });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self, anyType: ?Object) void {
        _ = Inheritance.call(self, "setSource", .{ anyType });
    }
    

    pub fn setRepeatEvents(self: *Self, repeated: bool) void {
        self.repeated = repeated;
    }
    

    pub fn hasRepeatEvents(self: *Self) bool {
        return self.repeated;
    }
    

    pub fn getKey(self: *Self) i32 {
        return self.key;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nKey: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getKey() });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn getOriginalKey(self: *Self) i32 {
        return self.originalKey;
    }
    

    pub fn setOriginalKey(self: *Self, originalKey: i32) void {
        self.originalKey = originalKey;
    }
    

    pub fn getGameActionKey(self: *Self) i32 {
        return self.gameActionKey;
    }
    

    pub fn setGameActionKey(self: *Self, gameActionKey: i32) void {
        self.gameActionKey = gameActionKey;
    }
    

    pub fn getSourceId(self: *Self) i32 {
        return self.sourceId;
    }
};

