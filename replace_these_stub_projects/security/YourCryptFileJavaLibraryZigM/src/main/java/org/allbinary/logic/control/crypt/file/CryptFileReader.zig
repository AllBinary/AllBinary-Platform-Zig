// Generated Code Do Not Modify
// package org.allbinary.logic.control.crypt.file

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const InputStream = @import("java/io/InputStream.zig").InputStream;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;

pub const CryptFileReader = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.control.crypt.file.CryptFileReader";
    

    pub fn create2(decryptedExtension: ?*String, encryptedExtension: ?*String) *Self {
        _ = decryptedExtension;
        _ = encryptedExtension;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn get(self: *Self, fileAbPath: ?*AbPath) ?*String {
        _ = fileAbPath;
        _ = self;
        return null;
    }
    

    // throws Exception
    pub fn getInputStream(self: *Self, fileAbPath: ?*AbPath) ?*InputStream {
        _ = fileAbPath;
        _ = self;
        return null;
    }
};

