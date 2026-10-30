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
// package org.allbinary.logic.system.security.licensing

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const File = @import("java/io/File.zig").File;
// const FileReader = @import("java/io/FileReader.zig").FileReader;
// const LineNumberReader = @import("java/io/LineNumberReader.zig").LineNumberReader;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const LicenseInitInfo = @import("org/allbinary/business/init/LicenseInitInfo.zig").LicenseInitInfo;
const LicenseInitInfoUtil = @import("org/allbinary/business/init/LicenseInitInfoUtil.zig").LicenseInitInfoUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const XmlRpcAbeLicenseRetrievalClient = @import("org/allbinary/logic/system/security/licensing/client/XmlRpcAbeLicenseRetrievalClient.zig").XmlRpcAbeLicenseRetrievalClient;
const PATH_GLOBALS = @import("org/allbinary/globals/PATH_GLOBALS.zig").PATH_GLOBALS;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const AbeLicenseInterface = @import("org/allbinary/logic/system/security/licensing/AbeLicenseInterface.zig").AbeLicenseInterface;
const PrintLicenseInitInfo = @import("org/allbinary/logic/system/security/licensing/PrintLicenseInitInfo.zig").PrintLicenseInitInfo;

pub const LicenseClientAndServerTest = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest";
    logUtil: ?*LogUtil = null,
    vector: ?*BasicArrayList = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.vector = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn create1(options: []?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(LicenseInitInfoUtil.getInstance().?, "setFilePath", .{ PrintLicenseInitInfo.PATH + PATH_GLOBALS.getInstance().?.INIT_PATH });
        {
            var index: i32 = 1;
            while (index < @as(i32, @intCast(options.len))) : (index += 1) {
            _ = Inheritance.call(this.vector.?, "add", .{ options[@intCast(index)] });
            }
        }
        if (@as(i32, @intCast(options.len)) < 2) {
            const file: ?*File = Inheritance.callStatic(File, "create1", .{ String.plus(PrintLicenseInitInfo.PATH, String.literal("testlicenseservers.txt")) });
            const reader: ?*FileReader = Inheritance.callStatic(FileReader, "create1", .{ file });
            const lineNumberReader: ?*LineNumberReader = Inheritance.callStatic(LineNumberReader, "create1", .{ reader });
            while (true) {
                const line: ?*String = Inheritance.upcast(?*String, lineNumberReader.?.readLine());
                if (line != null) {
                    _ = Inheritance.call(this.vector.?, "add", .{ line });
                } else {
                    break;
                }
            }
        }
        return this;
    }
    

    pub fn @"test"(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const stringBuffer: ?*StringMaker = StringMaker.create();
        { // try
            const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            const TESTING: ?*String = String.literal("Testing with new licence:<br/>");
            const PROCESSING: ?*String = String.literal("Processing: <br/>");
            const END: ?*String = String.literal("<br/>End<br/>");
            const RESULT: ?*String = String.literal("Test Result: ");
            const size: i32 = self.vector.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ TESTING });
                const serverName: ?*String = Inheritance.cast(?*String, Inheritance.call(self.vector.?, "get", .{ index }));
                { // try
                    const licenseInitInfo: ?*LicenseInitInfo = LicenseInitInfo.create();
                    _ = Inheritance.call(licenseInitInfo.?, "addServer", .{ serverName });
                    _ = Inheritance.call(LicenseInitInfoUtil.getInstance().?, "write", .{ licenseInitInfo });
                    const abeClientInformation: ?*AbeClientInformationInterface = Inheritance.upcast(?*AbeClientInformationInterface, AbeClientInformationInterfaceFactory.getInstance());
                    const xmlRpcAbeLicenseClient: ?*XmlRpcAbeLicenseRetrievalClient = Inheritance.callStatic(XmlRpcAbeLicenseRetrievalClient, "create1", .{ abeClientInformation });
                    const abeLicenseInterface: ?*AbeLicenseInterface = Inheritance.cast(?*AbeLicenseInterface, Inheritance.call(xmlRpcAbeLicenseClient.?, "get", .{ null }));
                    if (abeLicenseInterface != null) {
                        _ = Inheritance.call(stringBuffer.?, "append", .{ PROCESSING });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(abeLicenseInterface)) });
                    }
                    _ = Inheritance.call(stringBuffer.?, "append", .{ END });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(RESULT, Object.toString(Object.of(stringBuffer))), self, String.literal("test") });
                    _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                }
                // catch (Exception e):
//                     _ = Inheritance.call(list.?, "add", .{ serverName });
//                     _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(String.literal("Test Error: "), Object.toString(Object.of(stringBuffer))), self, String.literal("test"), e });
                }
            }
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.literal("Total Servers Failed: "), list.?.size()), String.literal(" Failed Servers: ")), Object.toString(Object.of(list))), self, String.literal("test") });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(String.literal("Test Error: "), Object.toString(Object.of(stringBuffer))), self, String.literal("test"), e });
    }
    

    pub fn main(args: []?*String) void {
        { // try
            const licensingTest: ?*LicenseClientAndServerTest = Inheritance.callStatic(LicenseClientAndServerTest, "create1", .{ args });
            _ = licensingTest.?.@"test"();
        }
        // catch (Exception e):
//             const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, String.literal("main()"), String.literal("main()"), e });
    }
};

