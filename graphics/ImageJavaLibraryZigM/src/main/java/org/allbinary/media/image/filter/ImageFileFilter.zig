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
// package org.allbinary.media.image.filter

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const File = @import("java/io/File.zig").File;
// const FileFilter = @import("javax/swing/filechooser/FileFilter.zig").FileFilter;

//TWB - replace with file visitor version
pub const ImageFileFilter = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.filter.ImageFileFilter";
    base: FileFilter = undefined,

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = FileFilter.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn accept(self: *Self, f: ?*File) bool {
        _ = self;
        if (f.?.isDirectory()) {
            return true;
        }
        const s: ?*String = Inheritance.upcast(?*String, f.?.getName());
        const i: i32 = Inheritance.call(s.?, "lastIndexOf", .{ '.' });
        if (i > 0 and i < s.?.length() - 1) {
            const ext: ?*String = Inheritance.upcast(?*String, Inheritance.call(s.?, "substring", .{ i + 1 }).?.toLowerCase());
            if (Inheritance.call(ext.?, "equals", .{ String.literal("jpg") }) or Inheritance.call(ext.?, "equals", .{ String.literal("jpeg") })) {
                return true;
            }
        }
        return false;
    }
    

    pub fn getDescription(self: *Self) ?*String {
        _ = self;
        return String.literal("Accepts .jpg and .jpeg files");
    }
};

