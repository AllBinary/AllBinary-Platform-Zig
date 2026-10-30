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
// const InputStream = @import("java/io/InputStream.zig").InputStream;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;

pub const CloudStreamUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.CloudStreamUtil";
    logUtil: ?*LogUtil = null,
    var instance: ?*CloudStreamUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = CloudStreamUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*CloudStreamUtil {
        return Inheritance.upcast(?*CloudStreamUtil, CloudStreamUtil.instance);
    }
    

    // throws Exception
    pub fn getFile(self: *Self, file: ?*AbFile) ?*InputStream {
        const inputStream: ?*InputStream = Inheritance.upcast(?*InputStream, Inheritance.callStatic(AbFileInputStream, "create1", .{ file }));
        const available: i32 = inputStream.?.available();
        if (available > 0) {
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Cloud File Bytes: "), available), self, String.literal("processRequest()") });
            }
        }
        return inputStream;
    }
    

    // throws Exception
    pub fn getFileAnyWhere(self: *Self, file: ?*AbFile) ?*InputStream {
        var inputStream: ?*InputStream = Inheritance.upcast(?*InputStream, Inheritance.callStatic(AbFileLocalInputStream, "create1", .{ file }));
        var available: i32 = inputStream.?.available();
        if (available > 0) {
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Local File Bytes: "), available), self, String.literal("processRequest()") });
            }
        } else {
            inputStream = Inheritance.upcast(@TypeOf(inputStream), Inheritance.callStatic(AbFileInputStream, "create1", .{ file }));
            available = inputStream.?.available();
            if (available > 0) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Cloud File Bytes: "), available), self, String.literal("processRequest()") });
                }
            }
        }
        return inputStream;
    }
    

    // throws Exception
    pub fn getFileLocal(self: *Self, file: ?*AbFile) ?*InputStream {
        const inputStream: ?*InputStream = Inheritance.upcast(?*InputStream, Inheritance.callStatic(AbFileLocalInputStream, "create1", .{ file }));
        const available: i32 = inputStream.?.available();
        if (available > 0) {
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Local File Bytes: "), available), self, String.literal("processRequest()") });
            }
        }
        return inputStream;
    }
};

