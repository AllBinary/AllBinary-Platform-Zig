// Generated Code Do Not Modify
// package org.allbinary

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const R = @import("org/allbinary/game/testgamedemo/R.zig").R;

pub const AndroidResources = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.AndroidResources";
    drawable: ?*drawable = null,
    id: ?*id = null,
    layout: ?*layout = null,
    raw: ?*raw = null,
    string: ?*string = null,
    var instance: ?*AndroidResources = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AndroidResources.create();
    }

    fn initFields(this: *Self) void {
        this.drawable = drawable.create();
        this.id = id.create();
        this.layout = layout.create();
        this.raw = raw.create();
        this.string = string.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*AndroidResources {
        return Inheritance.upcast(?*AndroidResources, AndroidResources.instance);
    }
};

