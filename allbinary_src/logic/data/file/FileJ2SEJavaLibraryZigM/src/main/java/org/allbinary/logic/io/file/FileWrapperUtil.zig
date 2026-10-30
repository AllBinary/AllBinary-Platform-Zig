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
// package org.allbinary.logic.io.file

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const File = @import("java/io/File.zig").File;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;

pub const FileWrapperUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.FileWrapperUtil";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn wrapFiles(files: []?Object) []?*AbFile {
        { // try
            const abFileArray: []?*AbFile = array_N65677: { const array_N65677_array = allocator.alloc(?*AbFile, @intCast(@as(i32, @intCast(files.len)))) catch unreachable; @memset(array_N65677_array, null); break :array_N65677 array_N65677_array; };
            {
                var index: i32 = @as(i32, @intCast(files.len)) - 1;
                while (index >= 0) : (index -= 1) {
                abFileArray[@intCast(index)] = Inheritance.upcast(@TypeOf(abFileArray[@intCast(index)]), Inheritance.callStatic(AbFile, "create1", .{ Inheritance.cast(?*File, files[@intCast(index)]) }));
                }
            }
            return abFileArray;
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(PreLogUtil, "putSE", .{ String.literal("Exception Wrapping Files"), String.literal("FileWrapperUtil"), String.literal("wrapFiles"), e });
//             return array_N65970: { const array_N65970_array = allocator.alloc(?*AbFile, @intCast(0)) catch unreachable; @memset(array_N65970_array, null); break :array_N65970 array_N65970_array; };
    }
    

    pub fn wrapFile(file: ?*File) ?*AbFile {
        { // try
            return Inheritance.callStatic(AbFile, "create1", .{ file });
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(PreLogUtil, "putSE", .{ String.literal("Exception Wrapping File"), String.literal("FileWrapperUtil"), String.literal("wrapFile"), e });
//             return Inheritance.upcast(?*AbFile, AbFile.NULL_FILE);
    }
};

