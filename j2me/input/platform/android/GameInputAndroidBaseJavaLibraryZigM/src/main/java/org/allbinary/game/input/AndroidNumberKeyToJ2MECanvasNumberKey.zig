// Generated Code Do Not Modify
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
const KeyEvent = @import("android/view/KeyEvent.zig").KeyEvent;

pub const AndroidNumberKeyToJ2MECanvasNumberKey = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.AndroidNumberKeyToJ2MECanvasNumberKey";
    var androidtoJavaMicroEditionKeyMap: []i32 = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        androidtoJavaMicroEditionKeyMap = array_N65651: { const array_N65651_array = allocator.alloc(i32, @intCast(17)) catch unreachable; @memset(array_N65651_array, 0); break :array_N65651 array_N65651_array; };
    }
    

    pub fn init() void {
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[@intCast(KeyEvent.KEYCODE_0)] = Inheritance.upcast(@TypeOf(AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[@intCast(KeyEvent.KEYCODE_0)]), Canvas.KEY_NUM0);
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[@intCast(KeyEvent.KEYCODE_1)] = Inheritance.upcast(@TypeOf(AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[@intCast(KeyEvent.KEYCODE_1)]), Canvas.KEY_NUM1);
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[@intCast(KeyEvent.KEYCODE_2)] = Inheritance.upcast(@TypeOf(AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[@intCast(KeyEvent.KEYCODE_2)]), Canvas.KEY_NUM2);
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[@intCast(KeyEvent.KEYCODE_3)] = Inheritance.upcast(@TypeOf(AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[@intCast(KeyEvent.KEYCODE_3)]), Canvas.KEY_NUM3);
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[@intCast(KeyEvent.KEYCODE_4)] = Inheritance.upcast(@TypeOf(AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[@intCast(KeyEvent.KEYCODE_4)]), Canvas.KEY_NUM4);
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[@intCast(KeyEvent.KEYCODE_5)] = Inheritance.upcast(@TypeOf(AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[@intCast(KeyEvent.KEYCODE_5)]), Canvas.KEY_NUM5);
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[@intCast(KeyEvent.KEYCODE_6)] = Inheritance.upcast(@TypeOf(AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[@intCast(KeyEvent.KEYCODE_6)]), Canvas.KEY_NUM6);
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[@intCast(KeyEvent.KEYCODE_7)] = Inheritance.upcast(@TypeOf(AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[@intCast(KeyEvent.KEYCODE_7)]), Canvas.KEY_NUM7);
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[@intCast(KeyEvent.KEYCODE_8)] = Inheritance.upcast(@TypeOf(AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[@intCast(KeyEvent.KEYCODE_8)]), Canvas.KEY_NUM8);
        AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[@intCast(KeyEvent.KEYCODE_9)] = Inheritance.upcast(@TypeOf(AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[@intCast(KeyEvent.KEYCODE_9)]), Canvas.KEY_NUM9);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getKey(key: i32) i32 {
        if (key < @as(i32, @intCast(AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap.len))) {
            const value: i32 = AndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[@intCast(key)];
            if (value != 0) {
                return value;
            }
        }
        return key;
    }
};

