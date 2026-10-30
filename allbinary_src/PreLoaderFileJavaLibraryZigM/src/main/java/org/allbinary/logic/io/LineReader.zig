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
// const DataInputStream = @import("java/io/DataInputStream.zig").DataInputStream;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const AbFileInputStream = @import("org/allbinary/logic/io/AbFileInputStream.zig").AbFileInputStream;

pub const LineReader = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.LineReader";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    fileName: ?*String = null,
    string: ?*String = null,
    index: i32 = 0,
    idFile: ?*AbFileInputStream = null,
    idData: ?*DataInputStream = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.fileName = null;
        this.string = null;
        this.index = 0;
        this.idFile = null;
        this.idData = null;
    }
    

    pub fn create1(fileName: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        { // try
            const bytes: []i8 = array_N65965: { const array_N65965_array = allocator.alloc(i8, @intCast(100000)) catch unreachable; @memset(array_N65965_array, 0); break :array_N65965 array_N65965_array; };
            this.fileName = fileName;
            this.idFile = Inheritance.callStatic(AbFileInputStream, "create1", .{ fileName });
            _ = Inheritance.call(this.idFile.?, "read", .{ bytes });
            this.string = Inheritance.callStatic(String, "create1", .{ bytes });
        }
        // catch (Exception e):
//             _ = Inheritance.call(this.logUtil.?, "put", .{ String.plus(String.literal("File: "), fileName), this, String.literal("LineReader"), e });
//             {
//             }
        return this;
    }
    

    pub fn hasNext(self: *Self) bool {
        { // try
            const nextIndex: i32 = self.string.?.indexOf2(CommonSeps.getInstance().?.NEW_LINE, self.index);
            if (nextIndex == -1) {
                return false;
            }
            return true;
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("hasNext"), e });
//             {
//             }
//             return false;
    }
    

    // throws Exception
    pub fn next(self: *Self) ?*String {
        { // try
            const nextIndex: i32 = self.string.?.indexOf2(CommonSeps.getInstance().?.NEW_LINE, self.index);
            if (nextIndex == -1) {
                std.debug.panic("{any}", .{exception: { _ = String.literal("next() should have been called first"); break :exception error.Exception; }});
            }
            const temp: ?*String = Inheritance.upcast(?*String, self.string.?.substring2(self.index, nextIndex));
            self.index = nextIndex + 1;
            return temp;
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("next"), e });
//             {
//             }
//             std.debug.panic("{any}", .{e});
    }
};

