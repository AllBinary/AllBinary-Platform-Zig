// Generated Code Do Not Modify
// package javax.microedition.lcdui

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Stack = @import("java/util/Stack.zig").Stack;

pub const NullCanvas = struct {
    const Self = @This();
    pub const java_name = "javax.microedition.lcdui.NullCanvas";
    base: Canvas = undefined,
    pub var NULL_CANVAS: ?*NullCanvas = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_CANVAS = NullCanvas.create();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Canvas.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setFullScreenMode(self: *Self, mode: bool) void {
        _ = mode;
        _ = self;
    }
    

    pub fn sizeChanged(self: *Self, w: i32, h: i32) void {
        _ = w;
        _ = h;
        _ = self;
    }
    

    pub fn getCommandStack(self: *Self) ?*Stack {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn isCommand(self: *Self, command: ?*Command) bool {
        _ = command;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn addCommand(self: *Self, command: ?*Command) void {
        _ = command;
        _ = self;
    }
    

    pub fn removeCommand(self: *Self, command: ?*Command) void {
        _ = command;
        _ = self;
    }
    

    pub fn removeAllCommands(self: *Self) void {
        _ = self;
    }
    

    pub fn setCommandListener(self: *Self, l: ?*CommandListener) void {
        _ = l;
        _ = self;
    }
    

    pub fn getCustomCommandListener(self: *Self) ?*CommandListener {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn isPaused(self: *Self) bool {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn removePauseCommand(self: *Self) void {
        _ = self;
    }
    

    pub fn pause(self: *Self) void {
        _ = self;
    }
    

    pub fn unPause(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn process(self: *Self) void {
        _ = self;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
    

    pub fn destroy(self: *Self) void {
        _ = self;
    }
    

    pub fn setPaused(self: *Self, isPaused_: bool) void {
        _ = isPaused_;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn pointerDragged(self: *Self, x: i32, y: i32) void {
        _ = x;
        _ = y;
        _ = self;
    }
    

    pub fn pointerPressed(self: *Self, x: i32, y: i32) void {
        _ = x;
        _ = y;
        _ = self;
    }
    

    pub fn pointerReleased(self: *Self, x: i32, y: i32) void {
        _ = x;
        _ = y;
        _ = self;
    }
};

