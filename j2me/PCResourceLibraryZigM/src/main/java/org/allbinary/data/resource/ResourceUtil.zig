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
// package org.allbinary.data.resource

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const ByteArrayInputStream = @import("java/io/ByteArrayInputStream.zig").ByteArrayInputStream;
const ByteArrayOutputStream = @import("java/io/ByteArrayOutputStream.zig").ByteArrayOutputStream;
// const FileInputStream = @import("java/io/FileInputStream.zig").FileInputStream;
// const InputStream = @import("java/io/InputStream.zig").InputStream;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StreamUtil = @import("org/allbinary/logic/io/StreamUtil.zig").StreamUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Integer = @import("java/lang/Integer.zig").Integer;

//J2SE - PC
pub const ResourceUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.resource.ResourceUtil";
    logUtil: ?*LogUtil = null,
    path: ?*String = null,
    ext: ?*String = null,
    var instance: ?*ResourceUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ResourceUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.path = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.ext = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    pub fn getInstance() ?*ResourceUtil {
        return Inheritance.upcast(?*ResourceUtil, ResourceUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn setLoadingPaths(self: *Self, path: ?*String, ext: ?*String) void {
        self.path = path;
        self.ext = ext;
    }
    

    pub fn setClassLoader(self: *Self, classLoader: ?*ClassLoader) void {
        _ = classLoader;
        _ = self;
    }
    

    // throws Exception
    pub fn getResourceAsStream(self: *Self, resource: ?*String) ?*InputStream {
        var inputStream: ?*InputStream = Inheritance.upcast(?*InputStream, Inheritance.call(self, "getResourceAsStreamAtStart", .{ resource, 2 }));
        if (inputStream == null) {
            inputStream = Inheritance.upcast(@TypeOf(inputStream), Inheritance.call(self, "getResourceAsStreamAtStart", .{ resource, 1 }));
            if (inputStream == null) {
                std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Unable to obtain: ") }).?, "append", .{ resource }))); break :exception error.Exception; }});
            }
        }
        return inputStream;
    }
    

    // throws Exception
    pub fn getResourceAsStreamAtStart(self: *Self, resource: ?*String, startIndex: i32) ?*InputStream {
        _ = startIndex;
        const inputStream: ?*InputStream = Inheritance.upcast(?*InputStream, Inheritance.callStatic(FileInputStream, "create1", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.path }).?, "append", .{ resource }).?, "append", .{ self.ext }))) }));
        if (inputStream != null) {
            const byteArray: []i8 = array_N66728: { const array_N66728_array = allocator.alloc(i8, @intCast(inputStream.?.available())) catch unreachable; @memset(array_N66728_array, 0); break :array_N66728 array_N66728_array; };
            _ = Inheritance.call(StreamUtil.getInstance().?, "getByteArray", .{ inputStream, ByteArrayOutputStream.create(), byteArray });
            return Inheritance.upcast(?*InputStream, Inheritance.callStatic(ByteArrayInputStream, "create1", .{ byteArray }));
        }
        return inputStream;
    }
    

    pub fn addResource(self: *Self, resource: ?*String, value: ?*Integer) void {
        _ = resource;
        _ = value;
        _ = self;
    }
};

