//
// AllBinary Open License Version 1
// Copyright (c) 2011 AllBinary
// 
// By agreeing to this license you and any business entity you represent are
// legally bound to the AllBinary Open License Version 1 legal agreement.
// 
// You may obtain the AllBinary Open License Version 1 legal agreement from
// AllBinary or the root directory of AllBinary's AllBinary Platform repository.
// 
// Created By: Travis Berthelot
//   
// Generated Code Do Not Modify
// package org.allbinary.logic.io.file.directory

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const VisitorInterface = @import("org/allbinary/logic/util/visitor/VisitorInterface.zig").VisitorInterface;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const DirectoryBooleanFileVisitor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor";
    // Implements VisitorInterface
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn visit(self: *Self, anyType: ?Object) ?Object {
        return Inheritance.cast(?Object, Inheritance.call(self, "visit", .{ Inheritance.cast(?*AbFile, anyType) }));
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn visit(self: *Self, file: ?*AbFile) ?*Boolean {
        _ = self;
        if (file.?.isDirectory()) {
            return Inheritance.upcast(?*Boolean, Boolean.TRUE);
        }
        return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
};

