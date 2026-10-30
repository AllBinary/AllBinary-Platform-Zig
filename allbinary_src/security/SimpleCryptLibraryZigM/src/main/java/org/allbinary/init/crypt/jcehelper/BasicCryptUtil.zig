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
// package org.allbinary.init.crypt.jcehelper

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const ByteArrayInputStream = @import("java/io/ByteArrayInputStream.zig").ByteArrayInputStream;
const ByteArrayOutputStream = @import("java/io/ByteArrayOutputStream.zig").ByteArrayOutputStream;
// const InputStream = @import("java/io/InputStream.zig").InputStream;
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CryptInterface = @import("org/allbinary/init/crypt/jcehelper/CryptInterface.zig").CryptInterface;

pub const BasicCryptUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.init.crypt.jcehelper.BasicCryptUtil";
    logUtil: ?*LogUtil = null,
    tsUtil: ?*TsUtil = null,
    XML_START: ?*String = null,
    var instance: ?*BasicCryptUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BasicCryptUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.tsUtil = Inheritance.upcast(?*TsUtil, TsUtil.getInstance());
        this.XML_START = String.literal("<?xml");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*BasicCryptUtil {
        return Inheritance.upcast(?*BasicCryptUtil, BasicCryptUtil.instance);
    }
    

    // throws Exception
    pub fn getDecryptedInputStream(self: *Self, inputStream: ?*InputStream, cryptInterface: ?*CryptInterface) ?*InputStream {
        const buffer: ?*ByteArrayOutputStream = ByteArrayOutputStream.create();
        var ch: i32 = 0;
        while (true) {
            ch = inputStream.?.read();
            if (ch == -1) {
                break;
            }
            _ = Inheritance.call(buffer.?, "write", .{ ch });
        }
        const decrypted: []i8 = Inheritance.call(cryptInterface.?, "decrypt", .{ buffer.?.toByteArray() });
        var decryptedString: ?*String = Inheritance.callStatic(String, "create1", .{ decrypted });
        const index: i32 = Inheritance.call(decryptedString.?, "indexOf", .{ self.XML_START });
        if (index > 0) {
            decryptedString = Inheritance.upcast(@TypeOf(decryptedString), Inheritance.call(decryptedString.?, "substring", .{ index }));
        }
        return Inheritance.upcast(?*InputStream, Inheritance.callStatic(ByteArrayInputStream, "create1", .{ Inheritance.call(self.tsUtil.?, "getByteArray", .{ decryptedString }) }));
    }
};

