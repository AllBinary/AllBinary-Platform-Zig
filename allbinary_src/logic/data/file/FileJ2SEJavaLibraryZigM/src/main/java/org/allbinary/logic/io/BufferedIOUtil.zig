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
// package org.allbinary.logic.io

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const BufferedReader = @import("java/io/BufferedReader.zig").BufferedReader;
// const BufferedWriter = @import("java/io/BufferedWriter.zig").BufferedWriter;
// const FileReader = @import("java/io/FileReader.zig").FileReader;
// const FileWriter = @import("java/io/FileWriter.zig").FileWriter;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const AbFileNativeUtil = @import("org/allbinary/logic/io/file/AbFileNativeUtil.zig").AbFileNativeUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;

pub const BufferedIOUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.BufferedIOUtil";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn copy(backupFile: ?*AbFile, backupFileBak: ?*AbFile) void {
        var line: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        const tmpOut: ?*BufferedWriter = Inheritance.callStatic(BufferedWriter, "create1", .{ Inheritance.callStatic(FileWriter, "create1", .{ Inheritance.callStatic(AbFileNativeUtil, "get", .{ backupFileBak }) }) });
        const tmpIn: ?*BufferedReader = Inheritance.callStatic(BufferedReader, "create1", .{ Inheritance.callStatic(FileReader, "create1", .{ Inheritance.callStatic(AbFileNativeUtil, "get", .{ backupFile }) }) });
        while (true) {
            line = Inheritance.upcast(@TypeOf(line), tmpIn.?.readLine());
            if (line == null) {
                break;
            }
            _ = Inheritance.call(tmpOut.?, "write", .{ line, 0, line.?.length() });
            _ = tmpOut.?.newLine();
        }
        _ = tmpOut.?.flush();
    }
};

