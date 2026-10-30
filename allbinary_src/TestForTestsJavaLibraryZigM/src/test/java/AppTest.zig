// Generated Code Do Not Modify

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Assertions = @import("org/junit/jupiter/api/Assertions.zig").Assertions;
const DisplayName = @import("org/junit/jupiter/api/DisplayName.zig").DisplayName;
const Test = @import("org/junit/jupiter/api/Test.zig").Test;

pub const AppTest = struct {
    const Self = @This();
    pub const java_name = "AppTest";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn testAddition(self: *Self) void {
        _ = self;
        _ = Inheritance.callStatic(Assertions, "assertEquals", .{ 2, 1 + 1 });
    }
    

    pub fn testStringEquality(self: *Self) void {
        _ = self;
        const expected: ?*String = String.literal("Hello World!");
        const actual: ?*String = String.literal("Hello World!");
        _ = Inheritance.callStatic(Assertions, "assertEquals", .{ expected, actual });
    }
    

    pub fn testBooleanAssertions(self: *Self) void {
        _ = self;
        _ = Inheritance.callStatic(Assertions, "assertTrue", .{ true });
        _ = Inheritance.callStatic(Assertions, "assertFalse", .{ false });
    }
};

