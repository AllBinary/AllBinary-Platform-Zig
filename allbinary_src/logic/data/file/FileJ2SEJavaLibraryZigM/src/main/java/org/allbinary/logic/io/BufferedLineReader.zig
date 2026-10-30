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
// const FileReader = @import("java/io/FileReader.zig").FileReader;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const AbFileNativeUtil = @import("org/allbinary/logic/io/file/AbFileNativeUtil.zig").AbFileNativeUtil;

pub const BufferedLineReader = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.BufferedLineReader";
    tmpIn: ?*BufferedReader = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(file: ?*AbFile) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.tmpIn = Inheritance.callStatic(BufferedReader, "create1", .{ Inheritance.callStatic(FileReader, "create1", .{ Inheritance.callStatic(AbFileNativeUtil, "get", .{ file }) }) });
        return this;
    }
    

    pub fn readUpToLines(self: *Self, readAheadIndex: i64) void {
        _ = readAheadIndex;
        _ = self;
    }
    

    // throws Exception
    pub fn readLine(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.tmpIn.?.readLine());
    }
    

    pub fn getSize(self: *Self) i64 {
        _ = self;
        return 0;
    }
    

    pub fn getCurrent(self: *Self) i32 {
        _ = self;
        return 0;
    }
};

