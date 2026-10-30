// Generated Code Do Not Modify

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Assertions = @import("org/junit/jupiter/api/Assertions.zig").Assertions;
const DisplayName = @import("org/junit/jupiter/api/DisplayName.zig").DisplayName;
const Test = @import("org/junit/jupiter/api/Test.zig").Test;

pub const BooleanTest = struct {
    const Self = @This();
    pub const java_name = "BooleanTest";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

