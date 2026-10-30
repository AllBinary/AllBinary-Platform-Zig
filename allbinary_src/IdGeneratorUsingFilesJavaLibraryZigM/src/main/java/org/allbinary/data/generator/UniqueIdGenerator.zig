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
// package org.allbinary.data.generator

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const IOException = @import("java/io/IOException.zig").IOException;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbDataInputStream = @import("org/allbinary/logic/io/AbDataInputStream.zig").AbDataInputStream;
const AbDataOutputStream = @import("org/allbinary/logic/io/AbDataOutputStream.zig").AbDataOutputStream;
const AbFileInputStream = @import("org/allbinary/logic/io/AbFileInputStream.zig").AbFileInputStream;
const AbFileOutputStream = @import("org/allbinary/logic/io/AbFileOutputStream.zig").AbFileOutputStream;
const DataOutputStreamFactory = @import("org/allbinary/logic/io/DataOutputStreamFactory.zig").DataOutputStreamFactory;
const StreamUtil = @import("org/allbinary/logic/io/StreamUtil.zig").StreamUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const IdGeneratorInterface = @import("org/allbinary/data/generator/IdGeneratorInterface.zig").IdGeneratorInterface;
const Long = @import("java/lang/Long.zig").Long;

pub const UniqueIdGenerator = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.generator.UniqueIdGenerator";
    pub const java_interfaces = .{ IdGeneratorInterface };
    logUtil: ?*LogUtil = null,
    newFile: ?*AbFile = null,
    id: i64 = 0,
    // Implements IdGeneratorInterface
    pub const EXT: ?*String = String.literal(".unq");

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.newFile = null;
        this.id = 0;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn initialize(self: *Self, value: i32) void {
        { // try
            _ = self.newFile.?.createNewFile();
            const idData: ?*AbDataOutputStream = Inheritance.upcast(?*AbDataOutputStream, Inheritance.call(DataOutputStreamFactory.getInstance().?, "getInstanceForAbFile", .{ self.newFile }));
            _ = Inheritance.call(idData.?, "writeLong", .{ value });
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.IDLOGGING })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("initialize"), e });
//             }
    }
    

    // throws Exception
    pub fn setFile(self: *Self, filePathName: ?*String, name: ?*String) void {
        _ = name;
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        self.newFile = Inheritance.upcast(@TypeOf(self.newFile), Inheritance.callStatic(AbFile, "createAbFile", .{ filePathName }));
    }
    

    // throws IOException
    pub fn getNext(self: *Self) ?*String {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        var idData: ?*AbDataInputStream = null;
        var idOutData: ?*AbDataOutputStream = null;
        { // try
            const idFile: ?*AbFileInputStream = Inheritance.callStatic(AbFileInputStream, "create1", .{ self.newFile });
            idData = Inheritance.upcast(@TypeOf(idData), Inheritance.callStatic(AbDataInputStream, "create1", .{ idFile }));
            self.id = Inheritance.receiver(idData.?, "readLong").readLong();
            const idOutFile: ?*AbFileOutputStream = Inheritance.upcast(?*AbFileOutputStream, Inheritance.callStatic(AbFileOutputStream, "createFromAbFile", .{ self.newFile }));
            idOutData = Inheritance.callStatic(AbDataOutputStream, "create1", .{ idOutFile });
            _ = Inheritance.call(idOutData.?, "writeLong", .{ self.id + 1 });
            const idLong: ?*Long = Inheritance.callStatic(Long, "create1", .{ self.id });
            return Inheritance.upcast(?*String, String.valueOf(idLong.?));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.IDLOGGING })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("getNext"), e });
//             }
//             return String.literal("Error");
        { // finally
            _ = Inheritance.call(StreamUtil.getInstance().?, "close", .{ idData });
            _ = Inheritance.call(StreamUtil.getInstance().?, "close", .{ idOutData });
        }
    }
};

