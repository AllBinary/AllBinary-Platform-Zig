// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
const ByteArrayOutputStream = @import("java/io/ByteArrayOutputStream.zig").ByteArrayOutputStream;
// const IOException = @import("java/io/IOException.zig").IOException;
// const InputStream = @import("java/io/InputStream.zig").InputStream;
// const OutputStream = @import("java/io/OutputStream.zig").OutputStream;
// const Reader = @import("java/io/Reader.zig").Reader;
// const Writer = @import("java/io/Writer.zig").Writer;
// const CharBuffer = @import("java/nio/CharBuffer.zig").CharBuffer;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StreamUtil = @import("org/allbinary/logic/io/StreamUtil.zig").StreamUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;

pub const SimpleFileUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.SimpleFileUtil";
    logUtil: ?*LogUtil = null,
    NULL_WRITER: ?*Writer = null,
    NULL_READER: ?*Reader = null,
    commonStrings: ?*CommonStrings = null,
    nullUtil: ?*NullUtil = null,
    streamUtil: ?*StreamUtil = null,
    var instance: ?*SimpleFileUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = SimpleFileUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.NULL_WRITER = Inheritance.upcast(?*Writer, SimpleFileUtil.nullWriter());
        this.NULL_READER = Inheritance.upcast(?*Reader, SimpleFileUtil.nullReader());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.nullUtil = Inheritance.upcast(?*NullUtil, NullUtil.getInstance());
        this.streamUtil = Inheritance.upcast(?*StreamUtil, StreamUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*SimpleFileUtil {
        return Inheritance.upcast(?*SimpleFileUtil, SimpleFileUtil.instance);
    }
    

    pub fn nullOutputStream() ?*OutputStream {
        return OutputStream.create() // Java anonymous class body: implement it as a named type
//             
// 
//             // throws IOException
//             pub fn write(self: *Self, b: i32) void {
//                 _ = b;
//                 _ = self;
//             }
//             
// 
//             // throws IOException
//             pub fn write(self: *Self, b: []i8, off: i32, len: i32) void {
//                 _ = b;
//                 _ = off;
//                 _ = len;
//                 _ = self;
//             }
//             
// 
//             pub fn close(self: *Self) void {
//                 _ = self;
//             }
;
    }
    

    pub fn nullWriter() ?*Writer {
        return Writer.create() // Java anonymous class body: implement it as a named type
//             this.closed = false;
//             
// 
//             // throws IOException
//             pub fn append(self: *Self, c: u16) ?*Writer {
//                 _ = c;
//                 return Inheritance.upcast(?*Writer, self);
//             }
//             
// 
//             // throws IOException
//             pub fn append(self: *Self, csq: ?*CharSequence) ?*Writer {
//                 _ = csq;
//                 return Inheritance.upcast(?*Writer, self);
//             }
//             
// 
//             // throws IOException
//             pub fn append(self: *Self, csq: ?*CharSequence, start: i32, end: i32) ?*Writer {
//                 _ = csq;
//                 _ = start;
//                 _ = end;
//                 return Inheritance.upcast(?*Writer, self);
//             }
//             
// 
//             // throws IOException
//             pub fn write(self: *Self, c: i32) void {
//                 _ = c;
//                 _ = self;
//             }
//             
// 
//             // throws IOException
//             pub fn write(self: *Self, cbuf: []u16, off: i32, len: i32) void {
//                 _ = cbuf;
//                 _ = off;
//                 _ = len;
//                 _ = self;
//             }
//             
// 
//             // throws IOException
//             pub fn write(self: *Self, str: ?*String) void {
//                 _ = str;
//                 _ = self;
//             }
//             
// 
//             // throws IOException
//             pub fn write(self: *Self, str: ?*String, off: i32, len: i32) void {
//                 _ = str;
//                 _ = off;
//                 _ = len;
//                 _ = self;
//             }
//             
// 
//             // throws IOException
//             pub fn flush(self: *Self) void {
//                 _ = self;
//             }
//             
// 
//             // throws IOException
//             pub fn close(self: *Self) void {
//                 _ = self;
//             }
;
    }
    

    pub fn nullReader() ?*Reader {
        return Reader.create() // Java anonymous class body: implement it as a named type
//             
// 
//             // throws IOException
//             pub fn read(self: *Self) i32 {
//                 _ = self;
//                 return Inheritance.upcast(?*Reader, -1);
//             }
//             
// 
//             // throws IOException
//             pub fn read(self: *Self, cbuf: []u16, off: i32, len: i32) i32 {
//                 _ = cbuf;
//                 _ = off;
//                 _ = len;
//                 _ = self;
//                 return Inheritance.upcast(?*Reader, -1);
//             }
//             
// 
//             // throws IOException
//             pub fn read(self: *Self, target: ?*CharBuffer) i32 {
//                 _ = target;
//                 _ = self;
//                 return Inheritance.upcast(?*Reader, -1);
//             }
//             
// 
//             // throws IOException
//             pub fn ready(self: *Self) bool {
//                 _ = self;
//                 return false;
//             }
//             
// 
//             // throws IOException
//             pub fn skip(self: *Self, n: i64) i64 {
//                 _ = n;
//                 _ = self;
//                 return 0;
//             }
//             
// 
//             pub fn close(self: *Self) void {
//                 _ = self;
//             }
;
    }
    

    pub fn loadFileAsList(self: *Self, inputStream: ?*InputStream, max: i32, byteArray1: []i8) ?*BasicArrayList {
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "loadFileAsListReturnLine", .{ inputStream, max, byteArray1, 0 }));
    }
    

    pub fn loadFileAsListReturnLine(self: *Self, inputStream: ?*InputStream, max: i32, byteArray1: []i8, includeReturnLine: i32) ?*BasicArrayList {
        const stringList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        if (inputStream == null) {
            return stringList;
        }
        var byteArray: []i8 = self.nullUtil.?.NULL_BYTE_ARRAY;
        { // try
            const outputStream2: ?*ByteArrayOutputStream = Inheritance.callStatic(ByteArrayOutputStream, "create1", .{ max });
            byteArray = Inheritance.upcast(@TypeOf(byteArray), Inheritance.call(self.streamUtil.?, "getByteArray", .{ inputStream, outputStream2, byteArray1 }));
            _ = Inheritance.call(self.streamUtil.?, "close", .{ inputStream });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.streamUtil.?, "close", .{ inputStream });
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.ADD, e });
        if (byteArray == null) {
            return stringList;
        }
        const size: i32 = @as(i32, @intCast(byteArray.len));
        var index: i32 = 0;
        var startIndex: i32 = 0;
        var returnLine: i32 = 0;
        while (index < size) {
            startIndex = index;
            while (index < size - 1 and byteArray[@intCast(index)] != @as(i8, @intCast('\n'))) {
                index += 1;
            }
            if (includeReturnLine == 0) {
                if (index > 0 and byteArray[@intCast(index - 1)] == @as(i8, @intCast('\r'))) {
                    returnLine = 1;
                } else {
                    returnLine = 0;
                }
            }
            const s: ?*String = Inheritance.callStatic(String, "create3", .{ byteArray, startIndex, (index + includeReturnLine - returnLine - startIndex) });
            _ = Inheritance.call(stringList.?, "add", .{ s });
            index += 1;
        }
        return stringList;
    }
    

    pub fn createStringFromArrayOfStrings(self: *Self, stringArray: []?*String) ?*String {
        _ = self;
        const stringMaker: ?*StringMaker = StringMaker.create();
        const size: i32 = @as(i32, @intCast(stringArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(stringMaker.?, "append", .{ stringArray[@intCast(index)] });
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringMaker)));
    }
};

