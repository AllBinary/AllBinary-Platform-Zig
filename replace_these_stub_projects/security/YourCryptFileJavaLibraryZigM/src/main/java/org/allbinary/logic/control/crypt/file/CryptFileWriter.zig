// Generated Code Do Not Modify
// package org.allbinary.logic.control.crypt.file

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const Document = @import("org/w3c/dom/Document.zig").Document;

pub const CryptFileWriter = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.control.crypt.file.CryptFileWriter";
    

    pub fn create2(decryptedExtension: ?*String, encryptedExtension: ?*String) *Self {
        _ = decryptedExtension;
        _ = encryptedExtension;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn write(self: *Self, fileAbPath: ?*AbPath, document: ?*Document) void {
        _ = fileAbPath;
        _ = document;
        _ = self;
    }
};

