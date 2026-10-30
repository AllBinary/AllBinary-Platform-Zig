// Generated Code Do Not Modify
// package org.allbinary.business.context.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;

pub const ContextConfigurationPathUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.context.configuration.ContextConfigurationPathUtil";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getAbFile(contextName: ?*String) ?*AbFile {
        _ = contextName;
        return null;
    }
    

    // throws Exception
    pub fn getAbPath(contextName: ?*String) ?*AbPath {
        _ = contextName;
        return null;
    }
    

    // throws Exception
    pub fn getPath() ?*String {
        return null;
    }
    

    pub fn getFileName(contextName: ?*String) ?*String {
        _ = contextName;
        return null;
    }
};

