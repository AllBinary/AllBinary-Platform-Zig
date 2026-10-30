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
// package org.allbinary.logic.io.file.zip

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const ZipEntry = @import("java/util/zip/ZipEntry.zig").ZipEntry;
// const ZipInputStream = @import("java/util/zip/ZipInputStream.zig").ZipInputStream;
// const ZipOutputStream = @import("java/util/zip/ZipOutputStream.zig").ZipOutputStream;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbDataOutputStream = @import("org/allbinary/logic/io/AbDataOutputStream.zig").AbDataOutputStream;
const AbFileInputStream = @import("org/allbinary/logic/io/AbFileInputStream.zig").AbFileInputStream;
const AbFileOutputStream = @import("org/allbinary/logic/io/AbFileOutputStream.zig").AbFileOutputStream;
const DataOutputStreamFactory = @import("org/allbinary/logic/io/DataOutputStreamFactory.zig").DataOutputStreamFactory;
const StreamUtil = @import("org/allbinary/logic/io/StreamUtil.zig").StreamUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const FileUtil = @import("org/allbinary/logic/io/file/FileUtil.zig").FileUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;

pub const ZipFileUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.zip.ZipFileUtil";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    var instance: ?*ZipFileUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ZipFileUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ZipFileUtil {
        return Inheritance.upcast(?*ZipFileUtil, ZipFileUtil.instance);
    }
    

    pub fn create(self: *Self, outFilename: ?*String, fileBasicArrayList: ?*BasicArrayList) void {
        { // try
            const zipFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ outFilename }));
            if (zipFile.?.exists()) {
                _ = zipFile.?.delete();
            }
            _ = zipFile.?.createNewFile();
            const outputStream: ?*ZipOutputStream = Inheritance.callStatic(ZipOutputStream, "create1", .{ Inheritance.callStatic(AbFileOutputStream, "createFromAbFile", .{ zipFile }) });
            const streamUtil: ?*StreamUtil = Inheritance.upcast(?*StreamUtil, StreamUtil.getInstance());
            const stringBuffer: ?*StringMaker = StringMaker.create();
            const byteArray: []i8 = array_N66549: { const array_N66549_array = allocator.alloc(i8, @intCast(16384)) catch unreachable; @memset(array_N66549_array, 0); break :array_N66549 array_N66549_array; };
            var fileInputStream: ?*AbFileInputStream = null;
            const size: i32 = fileBasicArrayList.?.size();
            var current: i32 = 0;
            {
                var i: i32 = 0;
                while (i < size) : (i += 1) {
                const file: ?*AbFile = Inheritance.cast(?*AbFile, Inheritance.call(fileBasicArrayList.?, "get", .{ i }));
                if (file.?.isDirectory()) {
                } else if (file.?.isFile()) {
                    _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                    _ = Inheritance.call(stringBuffer.?, "appendint", .{ current });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Creating Zip File Entry: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ file.?.getPath() });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("create()") });
                    { // try
                        fileInputStream = Inheritance.callStatic(AbFileInputStream, "create1", .{ file });
                        _ = Inheritance.call(outputStream.?, "putNextEntry", .{ Inheritance.callStatic(ZipEntry, "create1", .{ file.?.getPath() }) });
                        _ = Inheritance.call(streamUtil.?, "get", .{ fileInputStream, outputStream, byteArray });
                        _ = outputStream.?.closeEntry();
                        _ = Inheritance.call(streamUtil.?, "close", .{ fileInputStream });
                    }
                    // catch (Exception e):
//                         _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Skipping File (Probably Local): "), file.?.getPath()), self, String.literal("create()") });
                }
                current += 1;
                }
            }
            _ = Inheritance.call(streamUtil.?, "close", .{ outputStream });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("create"), e });
    }
    

    // throws Exception
    pub fn unzip(self: *Self, path: ?*String, zipFile: ?*AbFile, fileName: ?*String) void {
        _ = fileName;
        const buffer: []i8 = array_N67571: { const array_N67571_array = allocator.alloc(i8, @intCast(16384)) catch unreachable; @memset(array_N67571_array, 0); break :array_N67571 array_N67571_array; };
        var inputStream: ?*ZipInputStream = null;
        { // try
            inputStream = Inheritance.callStatic(ZipInputStream, "create1", .{ Inheritance.callStatic(AbFileInputStream, "create1", .{ zipFile }) });
            var zipEntry: ?*ZipEntry = null;
            const stringBuffer: ?*StringMaker = StringMaker.create();
            const fileUtil: ?*FileUtil = Inheritance.upcast(?*FileUtil, FileUtil.getInstance());
            while ((value_N68503: { zipEntry = Inheritance.upcast(@TypeOf(zipEntry), inputStream.?.getNextEntry()); break :value_N68503 zipEntry; }) != null) {
                const entryName: ?*String = Inheritance.upcast(?*String, zipEntry.?.getName());
                if (zipEntry.?.isDirectory()) {
                } else {
                    const entryFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ String.plus(path, entryName) }));
                    _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("ZipEntry Name: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ entryName });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" isFile: ") });
                    _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ entryFile.?.isFile() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" isDirectory: ") });
                    _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ entryFile.?.isDirectory() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" getParent: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ entryFile.?.getParent() });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("unzip") });
                    const dataOutputStream: ?*AbDataOutputStream = Inheritance.upcast(?*AbDataOutputStream, Inheritance.call(DataOutputStreamFactory.getInstance().?, "getInstanceForAbFile", .{ entryFile }));
                    _ = Inheritance.call(fileUtil.?, "write", .{ inputStream, dataOutputStream, buffer });
                }
                _ = inputStream.?.closeEntry();
            }
        }
        { // finally
            _ = Inheritance.call(StreamUtil.getInstance().?, "close", .{ inputStream });
        }
    }
};

