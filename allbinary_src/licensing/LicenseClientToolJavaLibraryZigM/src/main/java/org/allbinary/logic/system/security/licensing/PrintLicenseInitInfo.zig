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
const LicenseInitInfo = @import("org/allbinary/business/init/LicenseInitInfo.zig").LicenseInitInfo;
const LicenseInitInfoUtil = @import("org/allbinary/business/init/LicenseInitInfoUtil.zig").LicenseInitInfoUtil;
const FileFactory = @import("org/allbinary/logic/io/file/FileFactory.zig").FileFactory;
const PATH_GLOBALS = @import("org/allbinary/globals/PATH_GLOBALS.zig").PATH_GLOBALS;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const System = @import("java/lang/System.zig").System;

pub const PrintLicenseInitInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.PrintLicenseInitInfo";
    pub const PATH: ?*String = String.literal("G:\\mnt\\bc\\mydev\\work\\allbinary_src\\licensing\\data\\");
    

    pub fn create1(options: []?*String) *Self {
        _ = options;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        _ = Inheritance.call(LicenseInitInfoUtil.getInstance().?, "setFilePath", .{ PrintLicenseInitInfo.PATH + PATH_GLOBALS.getInstance().?.INIT_PATH });
        return this;
    }
    

    // throws Exception
    pub fn getLicenseInitInfo(self: *Self) ?*LicenseInitInfo {
        _ = self;
        const licenseInitInfoUtil: ?*LicenseInitInfoUtil = Inheritance.upcast(?*LicenseInitInfoUtil, LicenseInitInfoUtil.getInstance());
        if (Inheritance.call(FileFactory.getInstance().?, "isFile", .{ licenseInitInfoUtil.?.getFilePath() })) {
            return Inheritance.upcast(?*LicenseInitInfo, licenseInitInfoUtil.?.read());
        } else {
            _ = std.debug.print("{s}\n", .{String.text(String.plus(String.literal("No Licence File at: "), licenseInitInfoUtil.?.getFilePath()))});
            return LicenseInitInfo.create();
        }
    }
    

    pub fn printInitInfo(self: *Self) void {
        { // try
            const licenseInitInfo: ?*LicenseInitInfo = Inheritance.upcast(?*LicenseInitInfo, self.getLicenseInitInfo());
            _ = std.debug.print("{s}\n", .{String.text(String.plus(String.literal("License ID: "), licenseInitInfo.?.getLicenseId()))});
            const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, licenseInitInfo.?.getServerList());
            const size: i32 = list.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                _ = std.debug.print("{s}\n", .{String.text(String.plus(String.literal("Lic Serv: "), Inheritance.call(list.?, "get", .{ index })))});
                }
            }
        }
        // catch (Exception e):
//             _ = std.debug.print("{s}", .{String.text(String.plus(String.literal("Error: "), e))});
//             _ = std.debug.print("{any}\n", .{e});
    }
    

    // throws Exception
    pub fn main(args: []?*String) void {
        const initInfo: ?*PrintLicenseInitInfo = Inheritance.callStatic(PrintLicenseInitInfo, "create1", .{ args });
        _ = initInfo.?.printInitInfo();
    }
};

