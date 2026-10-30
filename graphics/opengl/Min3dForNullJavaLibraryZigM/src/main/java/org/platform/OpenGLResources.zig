// Generated Code Do Not Modify
// package org.platform

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const InputStream = @import("java/io/InputStream.zig").InputStream;

pub const OpenGLResources = struct {
    const Self = @This();
    pub const java_name = "org.platform.OpenGLResources";
    var instance: ?*OpenGLResources = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OpenGLResources.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*OpenGLResources {
        return Inheritance.upcast(?*OpenGLResources, OpenGLResources.instance);
    }
    

    pub fn init(self: *Self) void {
        _ = self;
    }
    

    pub fn isExcluded(self: *Self, name: ?*String) bool {
        _ = name;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getIdentifier(self: *Self, name: ?*String, defType: ?*String, defPackage: ?*String) i32 {
        _ = name;
        _ = defType;
        _ = defPackage;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn openRawResource(self: *Self, id: i32) ?*InputStream {
        _ = id;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn openRawResourceFromName(self: *Self, resourceName: ?*String) ?*InputStream {
        _ = resourceName;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn getResourceAsStream(self: *Self, resourceName: ?*String) ?*InputStream {
        _ = resourceName;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getPackageName(self: *Self) ?*String {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};

