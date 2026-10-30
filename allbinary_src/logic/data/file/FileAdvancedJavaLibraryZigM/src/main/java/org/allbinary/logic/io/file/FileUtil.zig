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
// const InputStream = @import("java/io/InputStream.zig").InputStream;
// const OutputStream = @import("java/io/OutputStream.zig").OutputStream;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const LogConfigTypeFactory = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.zig").LogConfigTypeFactory;
const AbDataOutputStream = @import("org/allbinary/logic/io/AbDataOutputStream.zig").AbDataOutputStream;
const AbFileInputStream = @import("org/allbinary/logic/io/AbFileInputStream.zig").AbFileInputStream;
const AbFileLocalInputStream = @import("org/allbinary/logic/io/AbFileLocalInputStream.zig").AbFileLocalInputStream;
const AbIOSystem = @import("org/allbinary/logic/io/AbIOSystem.zig").AbIOSystem;
const DataOutputStreamFactory = @import("org/allbinary/logic/io/DataOutputStreamFactory.zig").DataOutputStreamFactory;
const FileStreamFactory = @import("org/allbinary/logic/io/FileStreamFactory.zig").FileStreamFactory;
const StreamUtil = @import("org/allbinary/logic/io/StreamUtil.zig").StreamUtil;
const Directory = @import("org/allbinary/logic/io/file/directory/Directory.zig").Directory;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const FilePathData = @import("org/allbinary/logic/io/file/FilePathData.zig").FilePathData;
const FileUtil2 = @import("org/allbinary/logic/io/file/FileUtil2.zig").FileUtil2;
const FileWrapperUtil = @import("org/allbinary/logic/io/file/FileWrapperUtil.zig").FileWrapperUtil;

//data/init/views/TestStore/template/type/genericTemplateObjectConfig.xml
pub const FileUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.FileUtil";
    logUtil: ?*LogUtil = null,
    directory: ?*Directory = null,
    logConfigTypeFactory: ?*LogConfigTypeFactory = null,
    commonStrings: ?*CommonStrings = null,
    streamUtil: ?*StreamUtil = null,
    WRITE_LABEL: ?*String = null,
    DATA_LABEL: ?*String = null,
    WRITE_METHOD: ?*String = null,
    var instance: ?*FileUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = FileUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.directory = Inheritance.upcast(?*Directory, Directory.getInstance());
        this.logConfigTypeFactory = Inheritance.upcast(?*LogConfigTypeFactory, LogConfigTypeFactory.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.streamUtil = Inheritance.upcast(?*StreamUtil, StreamUtil.getInstance());
        this.WRITE_LABEL = String.literal("Write file: ");
        this.DATA_LABEL = String.literal(" data: ");
        this.WRITE_METHOD = String.literal("write");
    }
    

    pub fn getInstance() ?*FileUtil {
        return Inheritance.upcast(?*FileUtil, FileUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn write(self: *Self, inputStream: ?*InputStream, file: ?*AbFile) void {
        const dataOutputStream: ?*AbDataOutputStream = Inheritance.upcast(?*AbDataOutputStream, Inheritance.call(DataOutputStreamFactory.getInstance().?, "getInstanceForAbFile", .{ file }));
        _ = Inheritance.call(self, "write", .{ inputStream, dataOutputStream });
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn write(self: *Self, inputStream: ?*InputStream, dataOutputStreamParameter: ?*AbDataOutputStream) void {
        var dataOutputStream = dataOutputStreamParameter;
        _ = self;
        { // try
            dataOutputStream = Inheritance.cast(?*AbDataOutputStream, Inheritance.call(StreamUtil.getInstance().?, "get", .{ inputStream, dataOutputStream, array_N66897: { const array_N66897_array = allocator.alloc(i8, @intCast(16384)) catch unreachable; @memset(array_N66897_array, 0); break :array_N66897 array_N66897_array; } }));
            _ = Inheritance.receiver(dataOutputStream.?, "flush").flush();
        }
        { // finally
            _ = Inheritance.call(StreamUtil.getInstance().?, "close", .{ dataOutputStream });
        }
    }
    

    // throws Exception
    pub fn write3(self: *Self, inputStream: ?*InputStream, dataOutputStreamParameter: ?*AbDataOutputStream, buffer: []i8) void {
        var dataOutputStream = dataOutputStreamParameter;
        _ = self;
        { // try
            dataOutputStream = Inheritance.cast(?*AbDataOutputStream, Inheritance.call(StreamUtil.getInstance().?, "get", .{ inputStream, dataOutputStream, buffer }));
            _ = Inheritance.receiver(dataOutputStream.?, "flush").flush();
        }
        { // finally
            _ = Inheritance.call(StreamUtil.getInstance().?, "close", .{ dataOutputStream });
        }
    }
    

    // throws Exception
    pub fn copy(self: *Self, dataInputStream: ?*AbFileInputStream, dataOutputStreamParameter: ?*AbDataOutputStream) void {
        var dataOutputStream = dataOutputStreamParameter;
        _ = self;
        { // try
            dataOutputStream = Inheritance.cast(?*AbDataOutputStream, Inheritance.call(StreamUtil.getInstance().?, "get", .{ dataInputStream, dataOutputStream, array_N67425: { const array_N67425_array = allocator.alloc(i8, @intCast(16384)) catch unreachable; @memset(array_N67425_array, 0); break :array_N67425 array_N67425_array; } }));
            _ = Inheritance.receiver(dataOutputStream.?, "flush").flush();
        }
        { // finally
            _ = Inheritance.call(StreamUtil.getInstance().?, "close", .{ dataOutputStream });
            _ = Inheritance.call(StreamUtil.getInstance().?, "close", .{ dataInputStream });
        }
    }
    

    // throws Exception
    pub fn fixPath(self: *Self, file: ?*AbFile, path: ?*AbPath, realPath: ?*AbPath, cloud: ?*String) ?*AbPath {
        _ = path;
        const beginIndex: i32 = Inheritance.call(file.?.getPath().?, "indexOf", .{ cloud }) + cloud.?.length();
        const endIndex: i32 = Inheritance.call(file.?.getPath().?, "indexOf", .{ file.?.getName() });
        const fixedPathString: ?*String = Inheritance.upcast(?*String, String.plus(realPath.?.toFileSystemString(), Inheritance.call(file.?.getPath().?, "substring", .{ beginIndex, endIndex })));
        const fixedPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ fixedPathString, StringUtil.getInstance().?.EMPTY_STRING });
        _ = Inheritance.call(self.directory.?, "create", .{ fixedPath });
        const string: ?*String = Inheritance.upcast(?*String, fixedPath.?.toFileSystemString());
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ self.logConfigTypeFactory.?.FILE })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ string, self, String.literal("fixPath") });
        }
        const outPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ string, file.?.getName() });
        return outPath;
    }
    

    // throws Exception
    pub fn copyToCloud4(self: *Self, file: ?*AbFile, path: ?*AbPath, realPath: ?*AbPath, cloud: ?*String) void {
        _ = Inheritance.call(self, "copyToCloud", .{ file, path, realPath, cloud, false, false });
    }
    

    // throws Exception
    pub fn copyToCloud6(self: *Self, file: ?*AbFile, path: ?*AbPath, realPath: ?*AbPath, cloud: ?*String, overwriteNewer: bool, overwriteAll: bool) void {
        { // try
            const outPath: ?*AbPath = Inheritance.upcast(?*AbPath, Inheritance.call(self, "fixPath", .{ file, path, realPath, cloud }));
            const outFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFileFromAbPath", .{ outPath }));
            if (!Inheritance.call(self, "copyPrepare", .{ file, outFile, overwriteNewer, overwriteAll })) {
                return;
            } else {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ self.logConfigTypeFactory.?.FILE })) {
                    const stringBuffer: ?*StringMaker = StringMaker.create();
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Out File: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ outFile.?.getPath() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" In File: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ file.?.getPath() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" to cloud.") });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), FileUtil.getInstance(), String.literal("copyToCloud") });
                }
            }
            const dataOutputStream: ?*AbDataOutputStream = Inheritance.upcast(?*AbDataOutputStream, Inheritance.call(DataOutputStreamFactory.getInstance().?, "getInstanceForAbFile", .{ outFile }));
            const fileInputStream: ?*AbFileInputStream = Inheritance.upcast(?*AbFileInputStream, Inheritance.callStatic(AbFileLocalInputStream, "create1", .{ file }));
            _ = Inheritance.call(self, "copy", .{ fileInputStream, dataOutputStream });
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ self.logConfigTypeFactory.?.FILEERROR })) {
//                 const stringBuffer: ?*StringMaker = StringMaker.create();
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Error Copying File File: ") });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(file)) });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" to cloud.") });
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Object.toString(Object.of(stringBuffer)), FileUtil.getInstance(), String.literal("copyToCloud"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn copyToCloud(self: *Self, file: ?*AbFile, outFile: ?*AbFile) void {
        _ = Inheritance.call(self, "copyToCloud", .{ file, outFile, false, false });
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn copyToCloud4(self: *Self, file: ?*AbFile, outFile: ?*AbFile, overwriteNewer: bool, overwriteAll: bool) void {
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            if (!Inheritance.call(self, "copyPrepare", .{ file, outFile, overwriteNewer, overwriteAll })) {
                return;
            } else {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ self.logConfigTypeFactory.?.FILE })) {
                    _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Out File: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ outFile.?.getPath() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" In File: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ file.?.getPath() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" to cloud.") });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), FileUtil.getInstance(), String.literal("copyToCloud") });
                }
            }
            const dataOutputStream: ?*AbDataOutputStream = Inheritance.upcast(?*AbDataOutputStream, Inheritance.call(DataOutputStreamFactory.getInstance().?, "getInstanceForAbFile", .{ outFile }));
            const fileInputStream: ?*AbFileInputStream = Inheritance.upcast(?*AbFileInputStream, Inheritance.callStatic(AbFileLocalInputStream, "create1", .{ file }));
            _ = Inheritance.call(self, "copy", .{ fileInputStream, dataOutputStream });
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ self.logConfigTypeFactory.?.FILEERROR })) {
//                 const stringBuffer: ?*StringMaker = StringMaker.create();
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Error Copying File File: ") });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(file)) });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" to cloud.") });
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Object.toString(Object.of(stringBuffer)), FileUtil.getInstance(), String.literal("copyToCloud"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn copyPrepare(self: *Self, fromFile: ?*AbFile, toFile: ?*AbFile, overwriteNewer: bool, overwriteAll: bool) bool {
        if (toFile.?.exists()) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            if (overwriteAll) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ self.logConfigTypeFactory.?.FILE })) {
                    _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Overwriting File: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ toFile.?.getPath() });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), FileUtil.getInstance(), String.literal("copyFile") });
                }
                _ = toFile.?.delete();
                _ = toFile.?.createNewFile();
            } else if (toFile.?.lastModified() < fromFile.?.lastModified() and overwriteNewer) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ self.logConfigTypeFactory.?.FILE })) {
                    _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Newer by: ") });
                    _ = Inheritance.call(stringBuffer.?, "appendlong", .{ @as(i64, @intCast(fromFile.?.lastModified() - toFile.?.lastModified())) });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("ms ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Copying File: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ toFile.?.getPath() });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), FileUtil.getInstance(), String.literal("copyFile") });
                }
                _ = toFile.?.delete();
                _ = toFile.?.createNewFile();
            } else {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ self.logConfigTypeFactory.?.FILE })) {
                    _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("File Already Exists") });
                    if (overwriteNewer) {
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" And Is Not Older") });
                    } else {
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" And Not A In Overwrite Mode") });
                    }
                    _ = Inheritance.call(stringBuffer.?, "append", .{ CommonLabels.getInstance().?.COLON_SEP });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ toFile.?.getPath() });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), FileUtil.getInstance(), String.literal("copyFile") });
                }
                return false;
            }
        } else {
            _ = toFile.?.createNewFile();
        }
        return true;
    }
    

    // throws Exception
    pub fn copyFile(self: *Self, fromFile: ?*AbFile, toFile: ?*AbFile) void {
        _ = Inheritance.call(self, "copyFile", .{ fromFile, toFile, false, false });
    }
    

    // throws Exception
    pub fn copyFile4(self: *Self, fromFile: ?*AbFile, toFile: ?*AbFile, overwriteNewer: bool, overwriteAll: bool) void {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ self.logConfigTypeFactory.?.FILE })) {
                const stringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Copying ") });
                _ = Inheritance.call(stringBuffer.?, "appendlong", .{ @as(i64, @intCast(fromFile.?.length())) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" bytes from File: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ fromFile.?.getPath() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" to: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ toFile.?.getPath() });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), FileUtil.getInstance(), String.literal("copyFile") });
            }
            if (!Inheritance.call(self, "copyPrepare", .{ fromFile, toFile, overwriteNewer, overwriteAll })) {
                return;
            }
            const dataOutputStream: ?*AbDataOutputStream = Inheritance.upcast(?*AbDataOutputStream, Inheritance.call(DataOutputStreamFactory.getInstance().?, "getInstanceForAbFile", .{ toFile }));
            const fileInputStream: ?*AbFileInputStream = Inheritance.callStatic(AbFileInputStream, "create1", .{ fromFile });
            _ = Inheritance.call(self, "copy", .{ fileInputStream, dataOutputStream });
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ self.logConfigTypeFactory.?.FILEERROR })) {
//                 const stringBuffer: ?*StringMaker = StringMaker.create();
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Error Copying File fromFile: ") });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(fromFile)) });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" to: ") });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(toFile)) });
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Object.toString(Object.of(stringBuffer)), FileUtil.getInstance(), String.literal("copyFile"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    pub fn getNewDirectory(fromFile: ?*AbFile) ?*String {
        var newDirectory: ?*String = Inheritance.upcast(?*String, fromFile.?.getPath());
        var separatorChar: ?*String = Inheritance.upcast(?*String, FilePathData.getInstance().?.PATH_START);
        if (Inheritance.call(AbIOSystem.getInstance().?, "isType", .{ String.literal("com.vobject.appengine.java.io") })) {
            separatorChar = Inheritance.upcast(@TypeOf(separatorChar), AbPathData.getInstance().?.SEPARATOR);
        }
        var lastIndex: i32 = Inheritance.call(newDirectory.?, "lastIndexOf", .{ separatorChar });
        if (lastIndex >= newDirectory.?.length()) {
            newDirectory = Inheritance.upcast(@TypeOf(newDirectory), newDirectory.?.substring2(0, newDirectory.?.length() - 1));
            lastIndex = Inheritance.call(newDirectory.?, "lastIndexOf", .{ separatorChar });
        }
        return Inheritance.upcast(?*String, newDirectory.?.substring2(lastIndex, newDirectory.?.length()));
    }
    

    // throws Exception
    pub fn copyDirectoryPortion(self: *Self, fromDirectoryAbPath: ?*AbPath, toDirectoryAbPath: ?*AbPath, overwriteNewer: bool, overwriteAll: bool, current: i32, total: i32) void {
        const file: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFileFromAbPath", .{ fromDirectoryAbPath }));
        if (!file.?.isDirectory()) {
            std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Not a directory: "), file.?.getPath()); break :exception error.Exception; }});
        }
        const fileList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self.directory.?, "search", .{ file, true }));
        const size: i32 = fileList.?.size();
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Searched: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ file.?.getPath() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Total: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ size });
        const portion: i32 = @divTrunc(size, total) + 1;
        const start: i32 = portion * current;
        var end: i32 = start + portion;
        if (end > size) {
            end = size;
        }
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Section: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ start });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" - ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ end });
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ self.logConfigTypeFactory.?.FILE })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), FileUtil.getInstance(), String.literal("copySomeFilesToDirectory()") });
        }
        var nextFile: ?*AbFile = null;
        {
            var index: i32 = start;
            while (index < end) : (index += 1) {
            nextFile = Inheritance.cast(?*AbFile, Inheritance.call(fileList.?, "get", .{ index }));
            if (nextFile.?.isDirectory()) {
            } else {
                const path: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(AbPath, "create2", .{ nextFile.?.getPath(), StringUtil.getInstance().?.EMPTY_STRING }).getPath());
                var beginIndex: i32 = Inheritance.receiverOf(fromDirectoryAbPath.?.getPath().?, "length").length();
                if (Inheritance.call(path.?, "indexOf", .{ URLGLOBALS.getWebappPath() }) < 0) {
                    beginIndex -= Inheritance.receiverOf(Inheritance.callStatic(AbPath, "create2", .{ URLGLOBALS.getWebappPath(), StringUtil.getInstance().?.EMPTY_STRING }).getPath().?, "length").length();
                }
                const newPath: ?*String = Inheritance.upcast(?*String, String.plus(toDirectoryAbPath.?.toFileSystemString(), Inheritance.call(path.?, "substring", .{ beginIndex })));
                const toFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFileFromAbPath", .{ Inheritance.callStatic(AbPath, "create2", .{ newPath, StringUtil.getInstance().?.EMPTY_STRING }) }));
                _ = Inheritance.call(self, "copyFile", .{ nextFile, toFile, overwriteNewer, overwriteAll });
            }
            }
        }
    }
    

    // throws Exception
    pub fn copyDirectory(self: *Self, fromFile: ?*AbFile, to: ?*AbFile) void {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ self.logConfigTypeFactory.?.FILE })) {
                const stringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Copying Directory from: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ fromFile.?.getPath() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" to: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ to.?.getPath() });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), FileUtil.getInstance(), String.literal("copyDirectory") });
            }
            const newDirectory: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(FileUtil, "getNewDirectory", .{ fromFile }));
            const newDirectoryAbPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ String.plus(to.?.getPath() + AbPathData.getInstance().?.SEPARATOR, newDirectory), StringUtil.getInstance().?.EMPTY_STRING });
            if (!Inheritance.call(self.directory.?, "create", .{ newDirectoryAbPath })) {
                std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Failed to create directory: "), newDirectoryAbPath); break :exception error.Exception; }});
            }
            const fileArray: []?*AbFile = Inheritance.callStatic(FileWrapperUtil, "wrapFiles", .{ fromFile.?.listFiles() });
            const size: i32 = @as(i32, @intCast(fileArray.len));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ self.logConfigTypeFactory.?.FILE })) {
                const stringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Copying ") });
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ size });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" files from: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ fromFile.?.getPath() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" to: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ to.?.getPath() });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), FileUtil.getInstance(), String.literal("copyDirectory") });
            }
            var file: ?*AbFile = null;
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                file = Inheritance.upcast(@TypeOf(file), fileArray[@intCast(index)]);
                if (file.?.isFile()) {
                    _ = Inheritance.call(self, "copyFile", .{ file, Inheritance.callStatic(AbFile, "createAbFilePathAndName", .{ Object.toString(Object.of(newDirectoryAbPath)), file.?.getName() }) });
                } else if (file.?.isDirectory()) {
                    _ = Inheritance.call(self, "copyDirectory", .{ file, Inheritance.callStatic(AbFile, "createAbFileFromAbPath", .{ newDirectoryAbPath }) });
                } else {
                    std.debug.panic("{any}", .{exception: { _ = String.literal("File Copy Error"); break :exception error.Exception; }});
                }
                }
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ self.logConfigTypeFactory.?.FILEERROR })) {
//                 const stringBuffer: ?*StringMaker = StringMaker.create();
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Error Copying Directory fromFile: ") });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(fromFile)) });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" to: ") });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(to)) });
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Object.toString(Object.of(stringBuffer)), FileUtil.getInstance(), String.literal("copyDirectory"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn copy(self: *Self, fromAbPath: ?*AbPath, to: ?*AbPath) bool {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const COPY: ?*String = String.literal("copy");
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ self.logConfigTypeFactory.?.FILE })) {
                const stringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Copying AbPaths from: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(fromAbPath)) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" to: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(to)) });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), FileUtil.getInstance(), COPY });
            }
            if (fromAbPath == null) {
                std.debug.panic("{any}", .{exception: { _ = String.literal("Cannot Copy From A Null Location"); break :exception error.Exception; }});
            }
            if (to == null) {
                std.debug.panic("{any}", .{exception: { _ = String.literal("Cannot Copy To A Null Location"); break :exception error.Exception; }});
            }
            const fromLocationFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFileFromAbPath", .{ fromAbPath }));
            const toLocationFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFileFromAbPath", .{ to }));
            if (fromLocationFile.?.isFile()) {
                if (toLocationFile.?.isDirectory()) {
                    const file: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFileWithChild", .{ toLocationFile, fromLocationFile.?.getName() }));
                    _ = Inheritance.call(self, "copyFile", .{ fromLocationFile, file });
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ self.logConfigTypeFactory.?.FILE })) {
                        const stringBuffer: ?*StringMaker = StringMaker.create();
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Copied file=") });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ fromLocationFile.?.getName() });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" from: ") });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ fromLocationFile.?.getPath() });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" to: ") });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ toLocationFile.?.getPath() });
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), FileUtil.getInstance(), COPY });
                    }
                } else {
                    _ = Inheritance.call(self, "copyFile", .{ fromLocationFile, toLocationFile });
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ self.logConfigTypeFactory.?.FILE })) {
                        const stringBuffer: ?*StringMaker = StringMaker.create();
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Copied file with new name ") });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" from: ") });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ fromLocationFile.?.getPath() });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" to: ") });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ toLocationFile.?.getPath() });
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), FileUtil.getInstance(), COPY });
                    }
                }
            } else if (fromLocationFile.?.isDirectory() and toLocationFile.?.isDirectory()) {
                if (Object.same(Inheritance.call(fromAbPath.?.toFileSystemString().?, "charAt", .{ Inheritance.receiverOf(fromAbPath.?.toFileSystemString().?, "length").length() - 1 }), java.io.?.File.?.separatorChar)) {
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ self.logConfigTypeFactory.?.FILE })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Copying subdirectories"), FileUtil.getInstance(), COPY });
                    }
                    const fileArray: []?*AbFile = Inheritance.callStatic(FileWrapperUtil, "wrapFiles", .{ fromLocationFile.?.listFiles() });
                    {
                        var index: i32 = 0;
                        while (index < @as(i32, @intCast(fileArray.len))) : (index += 1) {
                        const file: ?*AbFile = Inheritance.upcast(?*AbFile, fileArray[@intCast(index)]);
                        if (file.?.isFile()) {
                            const aFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFileWithChild", .{ toLocationFile, file.?.getName() }));
                            _ = Inheritance.call(self, "copyFile", .{ file, aFile });
                        } else if (file.?.isDirectory()) {
                            _ = Inheritance.call(self, "copyDirectory", .{ file, toLocationFile });
                        } else {
                            std.debug.panic("{any}", .{exception: { _ = String.literal("File Copy Error"); break :exception error.Exception; }});
                        }
                        }
                    }
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ self.logConfigTypeFactory.?.FILE })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Copied subdirectories"), FileUtil.getInstance(), COPY });
                    }
                } else {
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ self.logConfigTypeFactory.?.FILE })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Copyinhg directory"), FileUtil.getInstance(), COPY });
                    }
                    _ = Inheritance.call(self, "copyDirectory", .{ fromLocationFile, toLocationFile });
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ self.logConfigTypeFactory.?.FILE })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Copied directory"), FileUtil.getInstance(), COPY });
                    }
                }
            }
            return true;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ self.logConfigTypeFactory.?.FILEERROR })) {
//                 const stringBuffer: ?*StringMaker = StringMaker.create();
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Error Copying fromAbPath: ") });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(fromAbPath)) });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" to: ") });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(to)) });
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Object.toString(Object.of(stringBuffer)), FileUtil.getInstance(), COPY, e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    pub fn shouldSkip(self: *Self, file: ?*AbFile, skipFiles: []?*String) bool {
        _ = self;
        const size: i32 = @as(i32, @intCast(skipFiles.len));
        var skipFile: ?*String = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            skipFile = Inheritance.upcast(@TypeOf(skipFile), skipFiles[@intCast(index)]);
            if (Inheritance.call(file.?.getPath().?, "compareTo", .{ skipFile }) == 0) {
                return true;
            }
            }
        }
        return false;
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn write(self: *Self, filePath: ?*String, string: ?*String) void {
        var dataOutputStream: ?*AbDataOutputStream = null;
        { // try
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.WRITE_LABEL }).?, "append", .{ filePath }).?, "append", .{ self.DATA_LABEL }).?, "append", .{ string }))), self, self.WRITE_METHOD });
            const fileInputStreamFactory: ?*FileStreamFactory = Inheritance.upcast(?*FileStreamFactory, FileStreamFactory.getInstance());
            const fileOutputStream: ?*OutputStream = Inheritance.upcast(?*OutputStream, Inheritance.call(fileInputStreamFactory.?, "getFileOutputStreamInstance", .{ StringUtil.getInstance().?.EMPTY_STRING, filePath }));
            dataOutputStream = Inheritance.callStatic(AbDataOutputStream, "create1", .{ fileOutputStream });
            _ = Inheritance.call(dataOutputStream.?, "write", .{ string.?.getBytes(), 0, string.?.length() });
            _ = Inheritance.receiver(dataOutputStream.?, "flush").flush();
        }
        { // finally
            _ = Inheritance.call(StreamUtil.getInstance().?, "close", .{ dataOutputStream });
        }
    }
    

    pub fn loadFileAsList(self: *Self, file: ?*AbFile, max: i32, byteArray1: []i8) ?*BasicArrayList {
        _ = self;
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(FileUtil2.getInstance().?, "loadFileAsList", .{ file, max, byteArray1 }));
    }
};

