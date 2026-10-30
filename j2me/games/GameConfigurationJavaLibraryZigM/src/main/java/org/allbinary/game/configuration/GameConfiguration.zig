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
// package org.allbinary.game.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameFeatureEvent = @import("org/allbinary/game/configuration/event/GameFeatureEvent.zig").GameFeatureEvent;
const GameFeatureEventHandler = @import("org/allbinary/game/configuration/event/GameFeatureEventHandler.zig").GameFeatureEventHandler;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const GameConfigurationSingleton = @import("org/allbinary/game/configuration/GameConfigurationSingleton.zig").GameConfigurationSingleton;
const Integer = @import("java/lang/Integer.zig").Integer;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const GameConfiguration = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.GameConfiguration";
    name: ?*String = null,
    defaultValue: ?*Integer = null,
    value: ?*Integer = null,
    minValue: ?*Integer = null,
    maxValue: ?*Integer = null,
    modifiable: ?*Boolean = null,
    var MIN_VALUE: ?*Integer = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        MIN_VALUE = Inheritance.callStatic(Integer, "create1", .{ @as(i32, std.math.minInt(i32)) });
    }

    fn initFields(this: *Self) void {
        this.name = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.defaultValue = Inheritance.upcast(?*Integer, Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 0 }));
        this.value = Inheritance.upcast(?*Integer, GameConfiguration.MIN_VALUE);
        this.minValue = this.defaultValue;
        this.maxValue = this.defaultValue;
        this.modifiable = Inheritance.upcast(?*Boolean, BooleanFactory.getInstance().?.TRUE);
    }
    

    pub fn create4(name: ?*String, defaultValue: ?*Integer, minValue: ?*Integer, maxValue: ?*Integer) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setName", .{ name });
        _ = Inheritance.call(this, "setDefaultValue", .{ defaultValue });
        this.value = Inheritance.upcast(@TypeOf(this.value), this.getDefaultValue());
        _ = Inheritance.call(this, "setMinValue", .{ minValue });
        _ = Inheritance.call(this, "setMaxValue", .{ maxValue });
        _ = Inheritance.call(Inheritance.receiverOf(GameConfigurationSingleton.getInstance().?, "getHashtable").getHashtable().?, "put", .{ this.getName(), this });
        return this;
    }
    

    // throws Exception
    pub fn setValue(self: *Self, value: ?*Integer) void {
        if (!Object.same(self.value, value)) {
            const oldValue: ?*Integer = self.value;
            self.value = value;
            _ = Inheritance.call(GameFeatureEventHandler.getInstance().?, "fireEvent", .{ Inheritance.callStatic(GameFeatureEvent, "create2", .{ self, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.name }).?, "append", .{ String.literal(" value: from: ") }).?, "appendint", .{ @as(i32, @intCast(oldValue.?.intValue())) }).?, "append", .{ String.literal(" to ") }).?, "appendint", .{ @as(i32, @intCast(self.value.?.intValue())) }))) }) });
        }
    }
    

    pub fn getValue(self: *Self) ?*Integer {
        return self.value;
    }
    

    pub fn setMaxValue(self: *Self, maxValue: ?*Integer) void {
        self.maxValue = maxValue;
    }
    

    pub fn getMaxValue(self: *Self) ?*Integer {
        return self.maxValue;
    }
    

    pub fn setMinValue(self: *Self, minValue: ?*Integer) void {
        self.minValue = minValue;
    }
    

    pub fn getMinValue(self: *Self) ?*Integer {
        return self.minValue;
    }
    

    pub fn setName(self: *Self, name: ?*String) void {
        self.name = name;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn setDefaultValue(self: *Self, defaultValue: ?*Integer) void {
        self.defaultValue = defaultValue;
    }
    

    pub fn getDefaultValue(self: *Self) ?*Integer {
        return self.defaultValue;
    }
    

    // throws Exception
    pub fn setDefault(self: *Self) void {
        _ = Inheritance.call(self, "setValue", .{ self.getDefaultValue() });
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Name: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.name });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Min: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiverOf(self.getMinValue().?, "intValue").intValue())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Max: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiverOf(self.getMaxValue().?, "intValue").intValue())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Value: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiverOf(self.getValue().?, "intValue").intValue())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Default: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiverOf(self.getDefaultValue().?, "intValue").intValue())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Modifiable: ") });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ Inheritance.receiverOf(self.isModifiable().?, "booleanValue").booleanValue() });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn setModifiable(self: *Self, modifiable: ?*Boolean) void {
        self.modifiable = modifiable;
    }
    

    pub fn isModifiable(self: *Self) ?*Boolean {
        return self.modifiable;
    }
};

