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
// const InputStream = @import("java/io/InputStream.zig").InputStream;
// const OutputStream = @import("java/io/OutputStream.zig").OutputStream;
const LicenseInitInfoUtil = @import("org/allbinary/business/init/LicenseInitInfoUtil.zig").LicenseInitInfoUtil;
const ResourceUtil = @import("org/allbinary/data/resource/ResourceUtil.zig").ResourceUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const FileStreamFactory = @import("org/allbinary/logic/io/FileStreamFactory.zig").FileStreamFactory;
const StreamUtil = @import("org/allbinary/logic/io/StreamUtil.zig").StreamUtil;
const FileFactory = @import("org/allbinary/logic/io/file/FileFactory.zig").FileFactory;
const SimpleFileUtil = @import("org/allbinary/logic/io/file/SimpleFileUtil.zig").SimpleFileUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const LicenseServerInitFileUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    NULL_OUTPUT_STREAM: ?*OutputStream = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.NULL_OUTPUT_STREAM = Inheritance.upcast(?*OutputStream, SimpleFileUtil.nullOutputStream());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn init(self: *Self) void {
        { // try
            const filePath: ?*String = Inheritance.upcast(?*String, LicenseInitInfoUtil.getInstance().?.INITFILENAME);
            _ = Inheritance.call(LicenseInitInfoUtil.getInstance().?, "setFilePath", .{ StringUtil.getInstance().?.EMPTY_STRING });
            if (Inheritance.call(FileFactory.getInstance().?, "isFile", .{ filePath })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Using Existing License File"), self, self.commonStrings.?.INIT });
            } else {
                _ = self.write();
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.INIT, e });
    }
    

    pub fn write(self: *Self) void {
        var fileOutputStream: ?*OutputStream = self.NULL_OUTPUT_STREAM;
        { // try
            const resourceUtil: ?*ResourceUtil = Inheritance.upcast(?*ResourceUtil, ResourceUtil.getInstance());
            const filePath: ?*String = Inheritance.upcast(?*String, LicenseInitInfoUtil.getInstance().?.INITFILENAME);
            const inputStream: ?*InputStream = Inheritance.upcast(?*InputStream, Inheritance.call(resourceUtil.?, "getResourceAsStream", .{ filePath }));
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Writing Default License File"), self, self.commonStrings.?.INIT });
            const fileStreamFactory: ?*FileStreamFactory = Inheritance.upcast(?*FileStreamFactory, FileStreamFactory.getInstance());
            fileOutputStream = Inheritance.upcast(@TypeOf(fileOutputStream), Inheritance.call(fileStreamFactory.?, "getFileOutputStreamInstance", .{ StringUtil.getInstance().?.EMPTY_STRING, filePath }));
            var b: i32 = 0;
            var index: i32 = 0;
            while (true) {
                b = inputStream.?.read();
                if (b == -1) {
                    break;
                }
                _ = Inheritance.call(fileOutputStream.?, "write", .{ b });
                index += 1;
            }
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Wrote Bytes: "), index), self, self.commonStrings.?.INIT });
            _ = fileOutputStream.?.flush();
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.INIT, e });
        { // finally
            _ = Inheritance.call(StreamUtil.getInstance().?, "close", .{ fileOutputStream });
        }
    }
};

