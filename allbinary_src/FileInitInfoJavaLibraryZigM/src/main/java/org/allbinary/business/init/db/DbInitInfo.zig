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
// package org.allbinary.business.init.db

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const FREEBLISKET_PATH_GLOBALS = @import("org/allbinary/globals/FREEBLISKET_PATH_GLOBALS.zig").FREEBLISKET_PATH_GLOBALS;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const HttpData = @import("org/allbinary/logic/communication/http/HttpData.zig").HttpData;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const LogConfigTypeFactory = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.zig").LogConfigTypeFactory;
const LogConfigTypes = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypes.zig").LogConfigTypes;
const AbDataInputStream = @import("org/allbinary/logic/io/AbDataInputStream.zig").AbDataInputStream;
const AbDataOutputStream = @import("org/allbinary/logic/io/AbDataOutputStream.zig").AbDataOutputStream;
const AbFileInputStream = @import("org/allbinary/logic/io/AbFileInputStream.zig").AbFileInputStream;
const DataOutputStreamFactory = @import("org/allbinary/logic/io/DataOutputStreamFactory.zig").DataOutputStreamFactory;
const StreamUtil = @import("org/allbinary/logic/io/StreamUtil.zig").StreamUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const Directory = @import("org/allbinary/logic/io/file/directory/Directory.zig").Directory;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const DatabaseEncoder = @import("org/allbinary/logic/system/security/crypt/DatabaseEncoder.zig").DatabaseEncoder;
const WeakCrypt = @import("org/allbinary/logic/system/security/crypt/WeakCrypt.zig").WeakCrypt;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const DbConnectionInfo = @import("org/allbinary/business/init/db/DbConnectionInfo.zig").DbConnectionInfo;

pub const DbInitInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.init.db.DbInitInfo";
    base: DbConnectionInfo = undefined,
    commonStrings: ?*CommonStrings = null,
    directory: ?*Directory = null,
    httpData: ?*HttpData = null,
    GET_URL: ?*String = null,
    PACKAGE: ?*String = null,
    initFileName: ?*String = null,
    hasRead: bool = false,

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.directory = Inheritance.upcast(?*Directory, Directory.getInstance());
        this.httpData = Inheritance.upcast(?*HttpData, HttpData.getInstance());
        this.GET_URL = String.literal("getUrl");
        this.PACKAGE = Inheritance.upcast(?*String, FREEBLISKET_PATH_GLOBALS.getInstance().?.DBINITPATH);
        
        this.hasRead = false;
    }
    

    pub fn create2(initFileName: ?*String, read: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(DbConnectionInfo, "create", .{  }).*;
        this.initFields();
        this.initFileName = initFileName;
        if (read) {
            _ = this.updateIfNeeded();
        } else {
            _ = Inheritance.call(this, "setHasRead", .{ true });
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getUrl(self: *Self) ?*String {
        const url: ?*String = Inheritance.upcast(?*String, self.base.getUrl());
        if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.PRELOADER })) {
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(self.httpData.?.URL_LABEL, url), self, self.GET_URL });
        }
        return url;
    }
    

    // throws Exception
    pub fn write(self: *Self) void {
        const PATH: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ String.plus(URLGLOBALS.getWebappPath(), self.PACKAGE), StringUtil.getInstance().?.EMPTY_STRING });
        _ = Inheritance.call(self.directory.?, "create", .{ PATH });
        const FILEABPATH: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ String.plus(URLGLOBALS.getWebappPath(), self.PACKAGE), self.initFileName });
        { // try
            const newFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFileFromAbPath", .{ FILEABPATH }));
            _ = newFile.?.createNewFile();
            const dataOutputStream: ?*AbDataOutputStream = Inheritance.upcast(?*AbDataOutputStream, Inheritance.call(DataOutputStreamFactory.getInstance().?, "getInstanceForAbFile", .{ newFile }));
            { // try
                const cryptedJdbcDriver: []i8 = Inheritance.receiverOf(Inheritance.call(Inheritance.callStatic(WeakCrypt, "create1", .{ 1 }), "encrypt", .{ Inheritance.receiver(self, "getJdbcDriver").getJdbcDriver() }).?, "getBytes").getBytes();
                const cryptedName: []i8 = Inheritance.receiverOf(Inheritance.call(Inheritance.callStatic(WeakCrypt, "create1", .{ 2 }), "encrypt", .{ self.getName() }).?, "getBytes").getBytes();
                const cryptedUserName: []i8 = Inheritance.receiverOf(Inheritance.call(Inheritance.callStatic(WeakCrypt, "create1", .{ 3 }), "encrypt", .{ self.getUserName() }).?, "getBytes").getBytes();
                const cryptedPassword: []i8 = Inheritance.receiverOf(Inheritance.call(Inheritance.callStatic(WeakCrypt, "create1", .{ 4 }), "encrypt", .{ self.getPassword() }).?, "getBytes").getBytes();
                const cryptedSchema: []i8 = Inheritance.receiverOf(Inheritance.call(Inheritance.callStatic(WeakCrypt, "create1", .{ 5 }), "encrypt", .{ self.getSchema() }).?, "getBytes").getBytes();
                const cryptedServer: []i8 = Inheritance.receiverOf(Inheritance.call(Inheritance.callStatic(WeakCrypt, "create1", .{ 6 }), "encrypt", .{ self.getServer() }).?, "getBytes").getBytes();
                const cryptedPort: []i8 = Inheritance.receiverOf(Inheritance.call(Inheritance.callStatic(WeakCrypt, "create1", .{ 7 }), "encrypt", .{ self.getPort() }).?, "getBytes").getBytes();
                _ = Inheritance.call(dataOutputStream.?, "writeUTF", .{ Inheritance.callStatic(DatabaseEncoder, "encode", .{ cryptedJdbcDriver }) });
                _ = Inheritance.call(dataOutputStream.?, "writeUTF", .{ Inheritance.callStatic(DatabaseEncoder, "encode", .{ cryptedName }) });
                _ = Inheritance.call(dataOutputStream.?, "writeUTF", .{ Inheritance.callStatic(DatabaseEncoder, "encode", .{ cryptedUserName }) });
                _ = Inheritance.call(dataOutputStream.?, "writeUTF", .{ Inheritance.callStatic(DatabaseEncoder, "encode", .{ cryptedPassword }) });
                _ = Inheritance.call(dataOutputStream.?, "writeUTF", .{ Inheritance.callStatic(DatabaseEncoder, "encode", .{ cryptedSchema }) });
                _ = Inheritance.call(dataOutputStream.?, "writeUTF", .{ Inheritance.callStatic(DatabaseEncoder, "encode", .{ cryptedServer }) });
                _ = Inheritance.call(dataOutputStream.?, "writeUTF", .{ Inheritance.callStatic(DatabaseEncoder, "encode", .{ cryptedPort }) });
                self.hasRead = false;
            }
            { // finally
                _ = Inheritance.call(StreamUtil.getInstance().?, "close", .{ dataOutputStream });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.PRELOADERERROR })) {
//                 _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ String.plus(String.literal("Failed Write: "), Object.toString(Object.of(FILEABPATH))), self, String.literal("write"), e });
//             }
    }
    

    // throws Exception
    pub fn load(self: *Self) void {
        const FILEABPATH: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ String.plus(URLGLOBALS.getWebappPath(), self.PACKAGE), self.initFileName });
        { // try
            const file: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFileFromAbPath", .{ FILEABPATH }));
            if (file.?.isFile()) {
                const iFile: ?*AbFileInputStream = Inheritance.callStatic(AbFileInputStream, "create1", .{ file });
                const iData: ?*AbDataInputStream = Inheritance.callStatic(AbDataInputStream, "create1", .{ iFile });
                { // try
                    const decryptedJdbcDriver: ?*String = Inheritance.callStatic(String, "create1", .{ Inheritance.callStatic(DatabaseEncoder, "decode", .{ Inheritance.receiver(iData.?, "readUTF").readUTF() }) });
                    const decryptedName: ?*String = Inheritance.callStatic(String, "create1", .{ Inheritance.callStatic(DatabaseEncoder, "decode", .{ Inheritance.receiver(iData.?, "readUTF").readUTF() }) });
                    const decryptedUserName: ?*String = Inheritance.callStatic(String, "create1", .{ Inheritance.callStatic(DatabaseEncoder, "decode", .{ Inheritance.receiver(iData.?, "readUTF").readUTF() }) });
                    const decryptedPassword: ?*String = Inheritance.callStatic(String, "create1", .{ Inheritance.callStatic(DatabaseEncoder, "decode", .{ Inheritance.receiver(iData.?, "readUTF").readUTF() }) });
                    const decryptedSchema: ?*String = Inheritance.callStatic(String, "create1", .{ Inheritance.callStatic(DatabaseEncoder, "decode", .{ Inheritance.receiver(iData.?, "readUTF").readUTF() }) });
                    const decryptedServer: ?*String = Inheritance.callStatic(String, "create1", .{ Inheritance.callStatic(DatabaseEncoder, "decode", .{ Inheritance.receiver(iData.?, "readUTF").readUTF() }) });
                    const decryptedPort: ?*String = Inheritance.callStatic(String, "create1", .{ Inheritance.callStatic(DatabaseEncoder, "decode", .{ Inheritance.receiver(iData.?, "readUTF").readUTF() }) });
                    _ = Inheritance.call(self, "setJdbcDriver", .{ Inheritance.call(Inheritance.callStatic(WeakCrypt, "create1", .{ 1 }), "decrypt", .{ decryptedJdbcDriver }) });
                    _ = Inheritance.call(self, "setName", .{ Inheritance.call(Inheritance.callStatic(WeakCrypt, "create1", .{ 2 }), "decrypt", .{ decryptedName }) });
                    _ = Inheritance.call(self, "setUserName", .{ Inheritance.call(Inheritance.callStatic(WeakCrypt, "create1", .{ 3 }), "decrypt", .{ decryptedUserName }) });
                    _ = Inheritance.call(self, "setPassword", .{ Inheritance.call(Inheritance.callStatic(WeakCrypt, "create1", .{ 4 }), "decrypt", .{ decryptedPassword }) });
                    _ = Inheritance.call(self, "setSchema", .{ Inheritance.call(Inheritance.callStatic(WeakCrypt, "create1", .{ 5 }), "decrypt", .{ decryptedSchema }) });
                    _ = Inheritance.call(self, "setServer", .{ Inheritance.call(Inheritance.callStatic(WeakCrypt, "create1", .{ 6 }), "decrypt", .{ decryptedServer }) });
                    _ = Inheritance.call(self, "setPort", .{ Inheritance.call(Inheritance.callStatic(WeakCrypt, "create1", .{ 7 }), "decrypt", .{ decryptedPort }) });
                    const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance()); _ = stringUtil;
                }
                { // finally
                    _ = Inheritance.call(StreamUtil.getInstance().?, "close", .{ iData });
                }
            } else {
                self.hasRead = false;
                if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.PRELOADER })) {
                    _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(String.literal("Not a File - Failed Loading: "), Object.toString(Object.of(FILEABPATH))), self, self.commonStrings.?.LOAD });
                }
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.PRELOADERERROR })) {
//                 _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ String.plus(String.literal("Failed Loading: "), Object.toString(Object.of(FILEABPATH))), self, self.commonStrings.?.LOAD, e });
//             }
    }
    

    pub fn setHasRead(self: *Self, value: bool) void {
        self.hasRead = value;
    }
    

    pub fn updateIfNeeded(self: *Self) void {
        { // try
            if (!self.hasRead) {
                self.hasRead = true;
                _ = self.load();
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.PRELOADERERROR })) {
//                 _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ self.commonStrings.?.EXCEPTION, self, String.literal("updateIfNeeded"), e });
//             }
    }
    

    pub fn getName(self: *Self) ?*String {
        _ = self.updateIfNeeded();
        if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.PRELOADER })) {
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(String.literal("Name: "), self.base.getName()), self, String.literal("getName") });
        }
        return Inheritance.upcast(?*String, self.base.getName());
    }
    

    pub fn getUserName(self: *Self) ?*String {
        _ = self.updateIfNeeded();
        if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.PRELOADER })) {
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(String.literal("Name: "), self.base.getUserName()), self, String.literal("getUserName") });
        }
        return Inheritance.upcast(?*String, self.base.getUserName());
    }
    

    pub fn getPassword(self: *Self) ?*String {
        _ = self.updateIfNeeded();
        return Inheritance.upcast(?*String, self.base.getPassword());
    }
    

    pub fn getSchema(self: *Self) ?*String {
        _ = self.updateIfNeeded();
        return Inheritance.upcast(?*String, self.base.getSchema());
    }
    

    pub fn getServer(self: *Self) ?*String {
        _ = self.updateIfNeeded();
        return Inheritance.upcast(?*String, self.base.getServer());
    }
    

    pub fn getPort(self: *Self) ?*String {
        _ = self.updateIfNeeded();
        return Inheritance.upcast(?*String, self.base.getPort());
    }
};

