// 
// AllBinary Open License Version 1 
// Copyright (c) 2002 AllBinary 
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
const File = @import("java/io/File.zig").File;
// const FileFilter = @import("java/io/FileFilter.zig").FileFilter;
const VisitorInterface = @import("org/allbinary/logic/util/visitor/VisitorInterface.zig").VisitorInterface;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const DirectoryFileVisitor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.directory.DirectoryFileVisitor";
    // Implements VisitorInterface
    // Implements FileFilter
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn accept(self: *Self, arg0: ?*File) bool {
        return Inheritance.receiverOf((Inheritance.cast(?*Boolean, Inheritance.call(self, "visit", .{ Inheritance.cast(?Object, arg0) }))).?, "booleanValue").booleanValue();
    }
    

    pub fn visit(self: *Self, anyType: ?Object) ?Object {
        _ = self;
        const file: ?*File = Inheritance.cast(?*File, anyType);
        var index: i32 = 1;
        var aFile: ?*File = Inheritance.upcast(?*File, file.?.getParentFile());
        while ((value_N65988: { aFile = Inheritance.upcast(@TypeOf(aFile), aFile.?.getParentFile()); break :value_N65988 aFile; }) != null) {
            index += 1;
        }
        if (file.?.isDirectory() and index < 5) {
            return Inheritance.upcast(?Object, Boolean.TRUE);
        }
        return Inheritance.upcast(?Object, Boolean.FALSE);
    }
};

