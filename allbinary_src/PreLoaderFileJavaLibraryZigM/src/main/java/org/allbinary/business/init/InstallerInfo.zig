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
// package org.allbinary.business.init

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PATH_GLOBALS = @import("org/allbinary/globals/PATH_GLOBALS.zig").PATH_GLOBALS;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbDataInputStream = @import("org/allbinary/logic/io/AbDataInputStream.zig").AbDataInputStream;
const AbDataOutputStream = @import("org/allbinary/logic/io/AbDataOutputStream.zig").AbDataOutputStream;
const AbFileLocalInputStream = @import("org/allbinary/logic/io/AbFileLocalInputStream.zig").AbFileLocalInputStream;
const DataOutputStreamFactory = @import("org/allbinary/logic/io/DataOutputStreamFactory.zig").DataOutputStreamFactory;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const DatabaseEncoder = @import("org/allbinary/logic/system/security/crypt/DatabaseEncoder.zig").DatabaseEncoder;
const WeakCrypt = @import("org/allbinary/logic/system/security/crypt/WeakCrypt.zig").WeakCrypt;

pub const InstallerInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.init.InstallerInfo";
    logUtil: ?*LogUtil = null,
    var instance: ?*InstallerInfo = undefined;
    const INITFILENAME: ?*String = String.literal("installerdata.dat");
    var PACKAGE: ?*String = undefined;
    var userName: ?*String = undefined;
    var password: ?*String = undefined;
    var hasRead: bool = false;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = InstallerInfo.create();
        PACKAGE = Inheritance.upcast(?*String, PATH_GLOBALS.getInstance().?.INIT_PATH);
        userName = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        password = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
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
    

    // throws Exception
    pub fn write(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const FILEABPATH: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ URLGLOBALS.getMainPath() + InstallerInfo.PACKAGE, InstallerInfo.INITFILENAME });
        { // try
            const newFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFileFromAbPath", .{ FILEABPATH }));
            _ = newFile.?.createNewFile();
            const dataOutputStream: ?*AbDataOutputStream = Inheritance.upcast(?*AbDataOutputStream, Inheritance.call(DataOutputStreamFactory.getInstance().?, "getInstanceForAbFile", .{ newFile }));
            const cryptedUserName: []i8 = Inheritance.receiverOf(Inheritance.call(Inheritance.callStatic(WeakCrypt, "create1", .{ 1 }), "encrypt", .{ self.getUserName() }).?, "getBytes").getBytes();
            const cryptedPassword: []i8 = Inheritance.receiverOf(Inheritance.call(Inheritance.callStatic(WeakCrypt, "create1", .{ 2 }), "encrypt", .{ self.getPassword() }).?, "getBytes").getBytes();
            _ = Inheritance.call(dataOutputStream.?, "writeUTF", .{ Inheritance.callStatic(DatabaseEncoder, "encode", .{ cryptedUserName }) });
            _ = Inheritance.call(dataOutputStream.?, "writeUTF", .{ Inheritance.callStatic(DatabaseEncoder, "encode", .{ cryptedPassword }) });
            InstallerInfo.hasRead = false;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PRELOADERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Failed"), self, String.literal("write") });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn read(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const FILEABPATH: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ URLGLOBALS.getMainPath() + InstallerInfo.PACKAGE, InstallerInfo.INITFILENAME });
        { // try
            const file: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFileFromAbPath", .{ FILEABPATH }));
            if (file.?.isFile()) {
                const iFile: ?*AbFileLocalInputStream = Inheritance.callStatic(AbFileLocalInputStream, "create1", .{ file });
                const iData: ?*AbDataInputStream = Inheritance.callStatic(AbDataInputStream, "create1", .{ iFile });
                const decryptedUserName: ?*String = Inheritance.callStatic(String, "create1", .{ Inheritance.callStatic(DatabaseEncoder, "decode", .{ Inheritance.receiver(iData.?, "readUTF").readUTF() }) });
                const decryptedPassword: ?*String = Inheritance.callStatic(String, "create1", .{ Inheritance.callStatic(DatabaseEncoder, "decode", .{ Inheritance.receiver(iData.?, "readUTF").readUTF() }) });
                _ = Inheritance.call(self, "setUserName", .{ Inheritance.call(Inheritance.callStatic(WeakCrypt, "create1", .{ 1 }), "decrypt", .{ decryptedUserName }) });
                _ = Inheritance.call(self, "setPassword", .{ Inheritance.call(Inheritance.callStatic(WeakCrypt, "create1", .{ 2 }), "decrypt", .{ decryptedPassword }) });
            } else {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PRELOADER })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Not a File - Failed Loading: "), Object.toString(Object.of(FILEABPATH))), self, String.literal("read") });
                }
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PRELOADERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Failed"), self, String.literal("read") });
//             }
    }
    

    pub fn setHasRead(value: bool) void {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        InstallerInfo.hasRead = Inheritance.upcast(@TypeOf(InstallerInfo.hasRead), value);
    }
    

    pub fn setUserName(self: *Self, userName_: ?*String) void {
        _ = self;
        InstallerInfo.userName = Inheritance.upcast(@TypeOf(InstallerInfo.userName), userName_);
    }
    

    pub fn setPassword(self: *Self, password_: ?*String) void {
        _ = self;
        InstallerInfo.password = Inheritance.upcast(@TypeOf(InstallerInfo.password), password_);
    }
    

    // throws Exception
    pub fn updateIfNeeded(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        if (!InstallerInfo.hasRead) {
            InstallerInfo.hasRead = true;
            _ = self.read();
            if (InstallerInfo.userName == null or InstallerInfo.password == null) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PRELOADER })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Failed"), self, String.literal("updateIfNeeded") });
                }
            }
        }
    }
    

    // throws Exception
    pub fn getUserName(self: *Self) ?*String {
        _ = self.updateIfNeeded();
        return Inheritance.upcast(?*String, InstallerInfo.userName);
    }
    

    // throws Exception
    pub fn getPassword(self: *Self) ?*String {
        _ = self.updateIfNeeded();
        return Inheritance.upcast(?*String, InstallerInfo.password);
    }
    

    // throws Exception
    pub fn isValid(self: *Self, userName_: ?*String, password_: ?*String) bool {
        _ = self.updateIfNeeded();
        if (self.userName != null and Inheritance.call(self.userName.?, "compareTo", .{ userName_ }) == 0 and self.password != null and Inheritance.call(self.password.?, "compareTo", .{ password_ }) == 0) {
            return true;
        }
        return false;
    }
};

