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
const ByteArrayOutputStream = @import("java/io/ByteArrayOutputStream.zig").ByteArrayOutputStream;
// const Closeable = @import("java/io/Closeable.zig").Closeable;
// const InputStream = @import("java/io/InputStream.zig").InputStream;
// const OutputStream = @import("java/io/OutputStream.zig").OutputStream;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const StreamUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.StreamUtil";
    logUtil: ?*LogUtil = null,
    var instance: ?*StreamUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = StreamUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*StreamUtil {
        return Inheritance.upcast(?*StreamUtil, StreamUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn get(self: *Self, inputStream: ?*InputStream, outputStream: ?*OutputStream, buffer: []i8) ?*OutputStream {
        _ = self;
        var len: i32 = 0;
        while (true) {
            len = Inheritance.call(inputStream.?, "read", .{ buffer, 0, @as(i32, @intCast(buffer.len)) });
            if (len != -1) {
            } else {
                break;
            }
            _ = Inheritance.call(outputStream.?, "write", .{ buffer, 0, len });
        }
        return outputStream;
    }
    

    // throws Exception
    pub fn getByteArray(self: *Self, inputStream: ?*InputStream, outputStream2: ?*ByteArrayOutputStream, byteArray: []i8) []i8 {
        const outputStream: ?*ByteArrayOutputStream = outputStream2;
        { // try
            _ = Inheritance.call(self, "get", .{ inputStream, outputStream, byteArray });
            return outputStream.?.toByteArray();
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
        { // finally
            _ = Inheritance.call(self, "close", .{ outputStream });
        }
    }
    

    pub fn close(self: *Self, closeable: ?*Closeable) bool {
        _ = self;
        { // try
            if (closeable != null) {
                _ = closeable.?.close();
            }
            return true;
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.CLOSE, e });
//             return false;
    }
};

