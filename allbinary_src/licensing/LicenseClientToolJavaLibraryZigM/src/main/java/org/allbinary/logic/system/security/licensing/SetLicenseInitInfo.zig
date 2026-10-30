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
// const BufferedReader = @import("java/io/BufferedReader.zig").BufferedReader;
// const InputStreamReader = @import("java/io/InputStreamReader.zig").InputStreamReader;
const LicenseInitInfo = @import("org/allbinary/business/init/LicenseInitInfo.zig").LicenseInitInfo;
const LicenseInitInfoUtil = @import("org/allbinary/business/init/LicenseInitInfoUtil.zig").LicenseInitInfoUtil;
const FileFactory = @import("org/allbinary/logic/io/file/FileFactory.zig").FileFactory;
const PATH_GLOBALS = @import("org/allbinary/globals/PATH_GLOBALS.zig").PATH_GLOBALS;
const File = @import("java/io/File.zig").File;
// const FileReader = @import("java/io/FileReader.zig").FileReader;
// const LineNumberReader = @import("java/io/LineNumberReader.zig").LineNumberReader;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const PrintLicenseInitInfo = @import("org/allbinary/logic/system/security/licensing/PrintLicenseInitInfo.zig").PrintLicenseInitInfo;
const System = @import("java/lang/System.zig").System;

pub const SetLicenseInitInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.SetLicenseInitInfo";
    vector: ?*BasicArrayList = null,
    var stdinput: ?*BufferedReader = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        stdinput = Inheritance.callStatic(BufferedReader, "create1", .{ Inheritance.callStatic(InputStreamReader, "create1", .{ System.in }) });
    }

    fn initFields(this: *Self) void {
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
        return this;
    }
    

    // throws Exception
    pub fn getLicenseInitInfo(self: *Self) ?*LicenseInitInfo {
        _ = self;
        const licenseInitInfoUtil: ?*LicenseInitInfoUtil = Inheritance.upcast(?*LicenseInitInfoUtil, LicenseInitInfoUtil.getInstance());
        if (Inheritance.call(FileFactory.getInstance().?, "isFile", .{ licenseInitInfoUtil.?.INITFILENAME })) {
            return Inheritance.upcast(?*LicenseInitInfo, licenseInitInfoUtil.?.read());
        } else {
            return LicenseInitInfo.create();
        }
    }
    

    pub fn createNewLicenseInitInfo(self: *Self, licenceServerVector: ?*BasicArrayList) void {
        { // try
            if (licenceServerVector == null) {
                std.debug.panic("{any}", .{exception: { _ = String.literal("null BasicArrayList Passed - Just Make Empty if you want"); break :exception error.Exception; }});
            }
            const licenseInitInfo: ?*LicenseInitInfo = Inheritance.upcast(?*LicenseInitInfo, self.getLicenseInitInfo());
            _ = std.debug.print("{s}\n", .{String.text(String.literal("License Serv Example: http://www.dartstatistics.com/LicServ/serverssl.php"))});
            _ = licenseInitInfo.?.clearServers();
            const file: ?*File = Inheritance.callStatic(File, "create1", .{ String.plus(PrintLicenseInitInfo.PATH, String.literal("licenseservers.txt")) });
            const reader: ?*FileReader = Inheritance.callStatic(FileReader, "create1", .{ file });
            const lineNumberReader: ?*LineNumberReader = Inheritance.callStatic(LineNumberReader, "create1", .{ reader });
            while (true) {
                const line: ?*String = Inheritance.upcast(?*String, lineNumberReader.?.readLine());
                if (line != null) {
                    _ = Inheritance.call(licenseInitInfo.?, "addServer", .{ line });
                } else {
                    break;
                }
            }
            _ = Inheritance.call(LicenseInitInfoUtil.getInstance().?, "write", .{ licenseInitInfo });
            _ = Inheritance.receiverOf(LicenseInitInfoUtil.getInstance().?, "read").read();
        }
        // catch (Exception e):
//             _ = std.debug.print("{s}", .{String.text(String.plus(String.literal("Error: "), e))});
//             _ = std.debug.print("{any}\n", .{e});
    }
    

    // throws Exception
    pub fn main(args: []?*String) void {
        const initInfo: ?*SetLicenseInitInfo = Inheritance.callStatic(SetLicenseInitInfo, "create1", .{ args });
        _ = Inheritance.call(initInfo.?, "createNewLicenseInitInfo", .{ BasicArrayListD.create() });
    }
};

