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
// package org.allbinary.logic.system.security

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ByteArrayOutputStream = @import("java/io/ByteArrayOutputStream.zig").ByteArrayOutputStream;
// const InputStream = @import("java/io/InputStream.zig").InputStream;
const StreamUtil = @import("org/allbinary/logic/io/StreamUtil.zig").StreamUtil;
const AbCrypt = @import("org/allbinary/logic/system/security/crypt/jcehelper/AbCrypt.zig").AbCrypt;
const KeySpecFactory = @import("org/allbinary/logic/system/security/crypt/jcehelper/KeySpecFactory.zig").KeySpecFactory;

pub const AbCryptUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.AbCryptUtil";
    streamUtil: ?*StreamUtil = null,
    var instance: ?*AbCryptUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AbCryptUtil.create();
    }

    fn initFields(this: *Self) void {
        this.streamUtil = Inheritance.upcast(?*StreamUtil, StreamUtil.getInstance());
    }
    

    pub fn getInstance() ?*AbCryptUtil {
        return Inheritance.upcast(?*AbCryptUtil, AbCryptUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn decrypt(self: *Self, inputStream: ?*InputStream, key: ?*String) []i8 {
        var outputStream: ?*ByteArrayOutputStream = null;
        { // try
            outputStream = Inheritance.cast(?*ByteArrayOutputStream, Inheritance.call(self.streamUtil.?, "get", .{ inputStream, ByteArrayOutputStream.create(), array_N66099: { const array_N66099_array = allocator.alloc(i8, @intCast(16384)) catch unreachable; @memset(array_N66099_array, 0); break :array_N66099 array_N66099_array; } }));
            const abCrypt: ?*AbCrypt = Inheritance.callStatic(AbCrypt, "create1", .{ KeySpecFactory.getInstance().?.DESEDE });
            _ = Inheritance.call(abCrypt.?, "init", .{ key });
            return Inheritance.call(abCrypt.?, "decrypt", .{ outputStream.?.toByteArray() });
        }
        { // finally
            _ = Inheritance.call(self.streamUtil.?, "close", .{ outputStream });
            _ = Inheritance.call(self.streamUtil.?, "close", .{ inputStream });
        }
    }
};

