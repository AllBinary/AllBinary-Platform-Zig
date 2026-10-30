// Generated Code Do Not Modify
// package javax.microedition.lcdui

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Displayable = @import("javax/microedition/lcdui/Displayable.zig").Displayable;

pub const NullCommandListener = struct {
    const Self = @This();
    pub const java_name = "javax.microedition.lcdui.NullCommandListener";
    // Implements CommandListener
    pub var NULL_COMMAND_LISTENER: ?*NullCommandListener = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_COMMAND_LISTENER = NullCommandListener.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn commandAction(self: *Self, c: ?*Command, d: ?*Displayable) void {
        _ = c;
        _ = d;
        _ = self;
    }
};

