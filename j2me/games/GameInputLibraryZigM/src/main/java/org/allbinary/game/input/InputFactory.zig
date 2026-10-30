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
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Input = @import("org/allbinary/game/input/Input.zig").Input;

pub const InputFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.InputFactory";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    KEY_CODE_LABEL: ?*String = null,
    DEVICE_ID_LABEL: ?*String = null,
    MAX: i32 = 0,
    inputIntegerArray: []?*Input = &.{},
    NO_INPUT: ?*Input = null,
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.KEY_CODE_LABEL = String.literal("KeyCode: ");
        this.DEVICE_ID_LABEL = String.literal("DeviceId: ");
        this.MAX = Inheritance.receiverOf(SmallIntegerSingletonFactory.getInstance().?, "getMin").getMin();
        this.inputIntegerArray = array_N66202: { const array_N66202_array = allocator.alloc(?*Input, @intCast(this.MAX)) catch unreachable; @memset(array_N66202_array, null); break :array_N66202 array_N66202_array; };
        this.NO_INPUT = Inheritance.callStatic(Input, "create2", .{ 0, this.commonStrings.?.UNKNOWN });
    }
    

    pub fn getInstance() ?*InputFactory {
        if (Object.same(InputFactory.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            InputFactory.instance = Inheritance.upcast(@TypeOf(InputFactory.instance), InputFactory.create());
        }
        return Inheritance.cast(?*InputFactory, InputFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const size: i32 = @as(i32, @intCast(this.inputIntegerArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            this.inputIntegerArray[@intCast(index)] = Inheritance.upcast(@TypeOf(this.inputIntegerArray[@intCast(index)]), this.NO_INPUT);
            }
        }
        return this;
    }
    

    pub fn add(self: *Self, id: i32, input: ?*Input) void {
        self.inputIntegerArray[@intCast(id)] = Inheritance.upcast(@TypeOf(self.inputIntegerArray[@intCast(id)]), input);
    }
    

    pub fn getInstanceById(self: *Self, idParameter: i32) ?*Input {
        var id = idParameter;
        if (id < 0) {
            id = -id;
        }
        if (id > @as(i32, @intCast(self.inputIntegerArray.len))) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Warning id: ") }).?, "appendint", .{ id }))), self, self.commonStrings.?.GET_INSTANCE });
            return self.NO_INPUT;
        }
        return Inheritance.upcast(?*Input, self.inputIntegerArray[@intCast(id)]);
    }
};

