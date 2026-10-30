// Generated Code Do Not Modify
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const KeyEvent = @import("android/view/KeyEvent.zig").KeyEvent;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const AndroidAPI9KeyFactory = @import("org/allbinary/game/input/AndroidAPI9KeyFactory.zig").AndroidAPI9KeyFactory;
const AndroidGameKey = @import("org/allbinary/game/input/AndroidGameKey.zig").AndroidGameKey;

pub const AndroidAPI12KeyFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.AndroidAPI12KeyFactory";
    base: AndroidAPI9KeyFactory = undefined,
    var instance12: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance12 = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }
    

    pub fn getAPI12Instance() ?*AndroidAPI12KeyFactory {
        if (Object.same(AndroidAPI12KeyFactory.instance12, NullUtil.getInstance().?.NULL_OBJECT)) {
            AndroidAPI12KeyFactory.instance12 = Inheritance.upcast(@TypeOf(AndroidAPI12KeyFactory.instance12), AndroidAPI12KeyFactory.create());
        }
        return Inheritance.cast(?*AndroidAPI12KeyFactory, AndroidAPI12KeyFactory.instance12);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = AndroidAPI9KeyFactory.create().*;
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_1").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_1").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_1, String.literal("BUTTON 1") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_10").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_10").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_10, String.literal("BUTTON 10") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_11").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_11").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_11, String.literal("BUTTON 11") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_12").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_12").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_12, String.literal("BUTTON 12") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_13").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_13").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_13, String.literal("BUTTON 13") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_14").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_14").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_14, String.literal("BUTTON 14") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_15").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_15").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_15, String.literal("BUTTON 15") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_16").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_16").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_16, String.literal("BUTTON 16") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_2").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_2").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_2, String.literal("BUTTON 2") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_3").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_3").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_3, String.literal("BUTTON 3") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_4").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_4").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_4, String.literal("BUTTON 4") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_5").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_5").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_5, String.literal("BUTTON 5") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_6").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_6").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_6, String.literal("BUTTON 6") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_7").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_7").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_7, String.literal("BUTTON 7") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_8").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_8").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_8, String.literal("BUTTON 8") }));
        Inheritance.fieldPointer(this, "KEYCODE_BUTTON_9").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "KEYCODE_BUTTON_9").*), Inheritance.callStatic(AndroidGameKey, "create2", .{ KeyEvent.KEYCODE_BUTTON_9, String.literal("BUTTON 9") }));
        Inheritance.bindOverrides(this);
        return this;
    }
};

