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
// const FileChannel = @import("java/nio/channels/FileChannel.zig").FileChannel;
// const FileLock = @import("java/nio/channels/FileLock.zig").FileLock;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbFileOutputStream = @import("org/allbinary/logic/io/AbFileOutputStream.zig").AbFileOutputStream;
const StreamUtil = @import("org/allbinary/logic/io/StreamUtil.zig").StreamUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;

pub const FileLockUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.FileLockUtil";
    logUtil: ?*LogUtil = null,
    var instance: ?*FileLockUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = FileLockUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*FileLockUtil {
        return Inheritance.upcast(?*FileLockUtil, FileLockUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getAll(self: *Self, vector: ?*BasicArrayList, isReturnOnFailure: bool) ?*BasicArrayList {
        const fileLockVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const size: i32 = vector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const file: ?*AbFile = Inheritance.cast(?*AbFile, Inheritance.call(vector.?, "get", .{ index }));
            const fileLock: ?*FileLock = Inheritance.upcast(?*FileLock, Inheritance.call(self, "getLock", .{ file }));
            if (fileLock != null) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("File Lock Obtained: "), file.?.getAbsolutePath()), self, String.literal("getAll") });
                _ = Inheritance.call(fileLockVector.?, "add", .{ fileLock });
            } else if (isReturnOnFailure) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Total Locks Obtained: "), fileLockVector.?.size()), self, String.literal("getAll") });
                return fileLockVector;
            }
            }
        }
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Total Locks Obtained: "), fileLockVector.?.size()), self, String.literal("getAll") });
        return fileLockVector;
    }
    

    // throws Exception
    pub fn getAllPossible(self: *Self, vector: ?*BasicArrayList) ?*BasicArrayList {
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "getAll", .{ vector, false }));
    }
    

    // throws Exception
    pub fn getAllOrNone(self: *Self, vector: ?*BasicArrayList) ?*BasicArrayList {
        const fileLockVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "getAll", .{ vector, true }));
        if (vector.?.size() != fileLockVector.?.size()) {
            return Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        } else {
            return fileLockVector;
        }
    }
    

    // throws Exception
    pub fn getLock(self: *Self, file: ?*AbFile) ?*FileLock {
        { // try
            return Inheritance.upcast(?*FileLock, Inheritance.call(self, "getLock", .{ Inheritance.callStatic(AbFileOutputStream, "createFromAbFileAppend", .{ file, true }) }));
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Exception returns null"), self, String.literal("getLock"), e });
//             return null;
        { // finally
        }
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getLock(self: *Self, fileOutputStream: ?*AbFileOutputStream) ?*FileLock {
        { // try
            const fileLock: ?*FileLock = Inheritance.upcast(?*FileLock, Inheritance.call(self, "getLock", .{ Inheritance.receiver(fileOutputStream.?, "getChannel").getChannel() }));
            return fileLock;
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Exception returns null"), self, String.literal("getLock"), e });
//             return null;
        { // finally
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Finally - Closing FileOutputStream"), self, String.literal("getLock") });
            _ = Inheritance.call(StreamUtil.getInstance().?, "close", .{ fileOutputStream });
        }
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getLock(self: *Self, fileChannel: ?*FileChannel) ?*FileLock {
        { // try
            const fileLock: ?*FileLock = Inheritance.upcast(?*FileLock, fileChannel.?.tryLock());
            return fileLock;
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Exception returns null"), self, String.literal("getLock"), e });
//             return null;
        { // finally
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Finally - Closing FileChannel"), self, String.literal("getLock") });
            _ = fileChannel.?.close();
        }
    }
};

