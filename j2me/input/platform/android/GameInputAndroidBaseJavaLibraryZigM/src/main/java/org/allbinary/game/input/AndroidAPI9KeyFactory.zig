// Generated Code Do Not Modify
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const KeyEvent = @import("android/view/KeyEvent.zig").KeyEvent;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const AndroidGameKey = @import("org/allbinary/game/input/AndroidGameKey.zig").AndroidGameKey;
const AndroidKeyFactory = @import("org/allbinary/game/input/AndroidKeyFactory.zig").AndroidKeyFactory;

pub const AndroidAPI9KeyFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.AndroidAPI9KeyFactory";
    base: AndroidKeyFactory = undefined,
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }
    

    pub fn getInstance() ?*AndroidAPI9KeyFactory {
        if (Object.same(AndroidAPI9KeyFactory.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            AndroidAPI9KeyFactory.instance = Inheritance.upcast(@TypeOf(AndroidAPI9KeyFactory.instance), AndroidAPI9KeyFactory.create());
        }
        return Inheritance.cast(?*AndroidAPI9KeyFactory, AndroidAPI9KeyFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = AndroidKeyFactory.create().*;
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_L1").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_L1").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_L1, String.literal("BUTTON L1") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_R1").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_R1").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_R1, String.literal("BUTTON R1") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_THUMBR").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_THUMBR").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_THUMBR, String.literal("BUTTON THUMBR") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_THUMBL").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_THUMBL").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_THUMBL, String.literal("BUTTON THUMBL") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_START").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_START").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_START, String.literal("BUTTON START") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_MODE").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_MODE").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_MODE, String.literal("BUTTON MODE") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_B").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_B").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_B, String.literal("BUTTON B") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_A").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_A").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_A, String.literal("BUTTON A") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_X").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_X").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_X, String.literal("BUTTON X") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_Y").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_Y").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_Y, String.literal("BUTTON Y") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_L2").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_L2").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_L2, String.literal("BUTTON L2") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_R2").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_R2").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_R2, String.literal("BUTTON R2") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_SELECT").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_SELECT").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_SELECT, String.literal("BUTTON SELECT") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_C").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_C").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_C, String.literal("BUTTON C") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_Z").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_Z").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_Z, String.literal("BUTTON Z") }));
        Inheritance.bindOverrides(this);
        return this;
    }
};

