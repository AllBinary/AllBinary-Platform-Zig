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
// package org.allbinary.logic.system.security.licensing.registration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const DataInputStream = @import("java/io/DataInputStream.zig").DataInputStream;
// const InputStream = @import("java/io/InputStream.zig").InputStream;
// const OutputStream = @import("java/io/OutputStream.zig").OutputStream;
const AbDataOutputStream = @import("org/allbinary/logic/io/AbDataOutputStream.zig").AbDataOutputStream;
const FileStreamFactory = @import("org/allbinary/logic/io/FileStreamFactory.zig").FileStreamFactory;
const StreamUtil = @import("org/allbinary/logic/io/StreamUtil.zig").StreamUtil;
const FileFactory = @import("org/allbinary/logic/io/file/FileFactory.zig").FileFactory;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;

pub const RegistrationConfiguration = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration";
    logUtil: ?*LogUtil = null,
    registrationCode: ?*String = null,
    NAME: ?*String = null,
    FILE: ?*String = null,
    var SINGLETON: ?*RegistrationConfiguration = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = RegistrationConfiguration.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.registrationCode = String.literal("No Registration Code");
        this.NAME = String.literal("registrationid");
        this.FILE = String.literal("Registration.dat");
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        { // try
            if (Inheritance.call(FileFactory.getInstance().?, "isFile", .{ this.FILE })) {
                _ = this.read();
            } else {
                _ = this.write();
            }
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(this.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, this, commonStrings.?.CONSTRUCTOR, e });
        return this;
    }
    

    pub fn getInstance() ?*RegistrationConfiguration {
        return Inheritance.upcast(?*RegistrationConfiguration, RegistrationConfiguration.SINGLETON);
    }
    

    // throws Exception
    pub fn read(self: *Self) void {
        const fileInputStreamFactory: ?*FileStreamFactory = Inheritance.upcast(?*FileStreamFactory, FileStreamFactory.getInstance());
        const fileInputStream: ?*InputStream = Inheritance.upcast(?*InputStream, Inheritance.call(fileInputStreamFactory.?, "getFileInputStreamInstance", .{ StringUtil.getInstance().?.EMPTY_STRING, self.FILE }));
        const dataInputStream: ?*DataInputStream = Inheritance.callStatic(DataInputStream, "create1", .{ fileInputStream });
        _ = Inheritance.call(self, "setRegistrationCode", .{ dataInputStream.?.readUTF() });
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Read Configuration: ") }).?, "append", .{ Object.toString(Object.of(self)) }))), self, String.literal("read") });
    }
    

    // throws Exception
    pub fn write(self: *Self) void {
        var dataOutputStream: ?*AbDataOutputStream = null;
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Write Configuration: ") }).?, "append", .{ Object.toString(Object.of(self)) }))), self, String.literal("write") });
            const fileInputStreamFactory: ?*FileStreamFactory = Inheritance.upcast(?*FileStreamFactory, FileStreamFactory.getInstance());
            const fileOutputStream: ?*OutputStream = Inheritance.upcast(?*OutputStream, Inheritance.call(fileInputStreamFactory.?, "getFileOutputStreamInstance", .{ StringUtil.getInstance().?.EMPTY_STRING, self.FILE }));
            dataOutputStream = Inheritance.callStatic(AbDataOutputStream, "create1", .{ fileOutputStream });
            _ = Inheritance.call(dataOutputStream.?, "writeUTF", .{ self.getRegistrationCode() });
            _ = Inheritance.receiver(dataOutputStream.?, "flush").flush();
        }
        { // finally
            _ = Inheritance.call(StreamUtil.getInstance().?, "close", .{ dataOutputStream });
        }
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Registration Code: ") }).?, "append", .{ self.getRegistrationCode() }))));
    }
    

    pub fn setRegistrationCode(self: *Self, registrationCode: ?*String) void {
        self.registrationCode = registrationCode;
    }
    

    pub fn getRegistrationCode(self: *Self) ?*String {
        return self.registrationCode;
    }
};

