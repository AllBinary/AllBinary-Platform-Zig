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
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const PATH_GLOBALS = @import("org/allbinary/globals/PATH_GLOBALS.zig").PATH_GLOBALS;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbDataInputStream = @import("org/allbinary/logic/io/AbDataInputStream.zig").AbDataInputStream;
const AbDataOutputStream = @import("org/allbinary/logic/io/AbDataOutputStream.zig").AbDataOutputStream;
const AbFileInputStream = @import("org/allbinary/logic/io/AbFileInputStream.zig").AbFileInputStream;
const DataOutputStreamFactory = @import("org/allbinary/logic/io/DataOutputStreamFactory.zig").DataOutputStreamFactory;
const FileStreamFactory = @import("org/allbinary/logic/io/FileStreamFactory.zig").FileStreamFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const DatabaseEncoder = @import("org/allbinary/logic/system/security/crypt/DatabaseEncoder.zig").DatabaseEncoder;
const WeakCrypt = @import("org/allbinary/logic/system/security/crypt/WeakCrypt.zig").WeakCrypt;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const LicenseInitInfo = @import("org/allbinary/business/init/LicenseInitInfo.zig").LicenseInitInfo;

pub const LicenseInitInfoUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.init.LicenseInitInfoUtil";
    logUtil: ?*LogUtil = null,
    stringUtil: ?*StringUtil = null,
    INITFILENAME: ?*String = null,
    ABOUT: ?*String = null,
    PRIVACY_POLICY: ?*String = null,
    filePath: ?*String = null,
    var instance: ?*LicenseInitInfoUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LicenseInitInfoUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.stringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        this.INITFILENAME = String.literal("licenseinitdata.dat");
        this.ABOUT = String.literal("about");
        this.PRIVACY_POLICY = String.literal("privacy_policy");
        this.filePath = Inheritance.upcast(?*String, this.stringUtil.?.EMPTY_STRING);
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*LicenseInitInfoUtil {
        return Inheritance.upcast(?*LicenseInitInfoUtil, LicenseInitInfoUtil.instance);
    }
    

    pub fn setFilePath(self: *Self, filePath: ?*String) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        self.filePath = filePath;
    }
    

    // throws Exception
    pub fn write(self: *Self, initData: ?*LicenseInitInfo) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        if (Object.same(self.filePath, self.stringUtil.?.EMPTY_STRING)) {
            self.filePath = Inheritance.upcast(@TypeOf(self.filePath), URLGLOBALS.getMainPath() + PATH_GLOBALS.getInstance().?.INIT_PATH);
        }
        { // try
            const tsUtil: ?*TsUtil = Inheritance.upcast(?*TsUtil, TsUtil.getInstance());
            const dataOutputStream: ?*AbDataOutputStream = Inheritance.upcast(?*AbDataOutputStream, Inheritance.call(DataOutputStreamFactory.getInstance().?, "getInstance", .{ self.filePath, self.INITFILENAME }));
            const licenseIdCrypted: []i8 = Inheritance.call(tsUtil.?, "getByteArray", .{ Inheritance.call(Inheritance.callStatic(WeakCrypt, "create1", .{ 1 }), "encrypt", .{ initData.?.getLicenseId() }) });
            _ = Inheritance.call(dataOutputStream.?, "writeUTF", .{ Inheritance.callStatic(DatabaseEncoder, "encode", .{ licenseIdCrypted }) });
            const numberOfLicenseServers: i32 = initData.?.getNumberOfServers();
            _ = Inheritance.call(dataOutputStream.?, "writeInt", .{ numberOfLicenseServers });
            var licenseServerCrypted: []i8 = &.{};
            {
                var index: i32 = 0;
                while (index < numberOfLicenseServers) : (index += 1) {
                licenseServerCrypted = Inheritance.upcast(@TypeOf(licenseServerCrypted), Inheritance.call(tsUtil.?, "getByteArray", .{ Inheritance.call(Inheritance.callStatic(WeakCrypt, "create1", .{ 3 }), "encrypt", .{ Inheritance.call(initData.?, "getServer", .{ index }) }) }));
                _ = Inheritance.call(dataOutputStream.?, "writeUTF", .{ Inheritance.callStatic(DatabaseEncoder, "encode", .{ licenseServerCrypted }) });
                }
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(String.literal("Command Failed: "), self.INITFILENAME), self, String.literal("write"), e });
//             _ = Inheritance.call(FileStreamFactory.getInstance().?, "delete", .{ self.filePath, self.INITFILENAME });
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn read(self: *Self) ?*LicenseInitInfo {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        return Inheritance.upcast(?*LicenseInitInfo, Inheritance.call(self, "readAgain", .{ 0 }));
    }
    

    // throws Exception
    pub fn readAgain(self: *Self, initializeCounter: i32) ?*LicenseInitInfo {
        _ = initializeCounter;
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const METHOD_NAME: ?*String = String.literal("readAgain");
        if (Object.same(self.filePath, self.stringUtil.?.EMPTY_STRING)) {
            self.filePath = Inheritance.upcast(@TypeOf(self.filePath), URLGLOBALS.getMainPath() + PATH_GLOBALS.getInstance().?.INIT_PATH);
        }
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("LicenseInitInfo File: "), self.INITFILENAME), self, METHOD_NAME });
            const fileStreamFactory: ?*FileStreamFactory = Inheritance.upcast(?*FileStreamFactory, FileStreamFactory.getInstance());
            const iFile: ?*AbFileInputStream = Inheritance.upcast(?*AbFileInputStream, Inheritance.call(fileStreamFactory.?, "getFileInputStreamInstance", .{ self.filePath, self.INITFILENAME }));
            if (iFile != null) {
                const iData: ?*AbDataInputStream = Inheritance.callStatic(AbDataInputStream, "create1", .{ iFile });
                const initInfo: ?*LicenseInitInfo = LicenseInitInfo.create();
                var decodedByteArray: []i8 = Inheritance.callStatic(DatabaseEncoder, "decode", .{ Inheritance.receiver(iData.?, "readUTF").readUTF() });
                const licenseIdDecoded: ?*String = Inheritance.callStatic(String, "create1", .{ decodedByteArray });
                _ = Inheritance.call(initInfo.?, "setLicenseId", .{ Inheritance.call(Inheritance.callStatic(WeakCrypt, "create1", .{ 1 }), "decrypt", .{ licenseIdDecoded }) });
                const numberOfLicenseServers: i32 = Inheritance.receiver(iData.?, "readInt").readInt();
                const NEXT_FILE: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonLabels.getInstance().?.NEXT }).?, "append", .{ String.literal(" License Server From File: ") }))));
                var licenseServerDecoded: ?*String = null;
                {
                    var index: i32 = 0;
                    while (index < numberOfLicenseServers) : (index += 1) {
                    decodedByteArray = Inheritance.upcast(@TypeOf(decodedByteArray), Inheritance.callStatic(DatabaseEncoder, "decode", .{ Inheritance.receiver(iData.?, "readUTF").readUTF() }));
                    licenseServerDecoded = Inheritance.callStatic(String, "create1", .{ decodedByteArray });
                    _ = Inheritance.call(initInfo.?, "setServer", .{ Inheritance.call(Inheritance.callStatic(WeakCrypt, "create1", .{ 3 }), "decrypt", .{ licenseServerDecoded }), index });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(NEXT_FILE, Inheritance.call(initInfo.?, "getServer", .{ index })), self, METHOD_NAME });
                    }
                }
                return initInfo;
            } else {
                std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Could Not Load License InitInfo: "), self.INITFILENAME); break :exception error.Exception; }});
            }
        }
        // catch (Exception e):
//             { // try
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(String.literal("Command Failed: "), self.INITFILENAME), self, METHOD_NAME, e });
//             }
//             // catch (Exception e2):
// //                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(String.literal("LicenseInitInfo Read Retry: "), self.INITFILENAME), self, String.literal("readAgain()"), e2 });
//             std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("LicenseInitInfo Read Error: "), self.INITFILENAME); break :exception error.Exception; }});
    }
    

    pub fn getFilePath(self: *Self) ?*String {
        return self.filePath;
    }
};

