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
// const InputStream = @import("java/io/InputStream.zig").InputStream;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Integer = @import("java/lang/Integer.zig").Integer;

//J2ME
pub const ResourceUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.resource.ResourceUtil";
    logUtil: ?*LogUtil = null,
    var instance: ?*ResourceUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ResourceUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
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
        _ = path;
        _ = ext;
        _ = Inheritance.call(self.logUtil.?, "putF", .{ CommonStrings.getInstance().?.NOT_IMPLEMENTED, self, String.literal("setLoadingPaths") });
    }
    

    // throws Exception
    pub fn getResourceAsStream(self: *Self, resource: ?*String) ?*InputStream {
        var inputStream: ?*InputStream = Inheritance.upcast(?*InputStream, Inheritance.call(@as(?*anyopaque, @ptrCast(@constCast(Object.of(resource).?.class))).?, "getResourceAsStream", .{ resource }));
        if (inputStream == null) {
            inputStream = Inheritance.upcast(@TypeOf(inputStream), Inheritance.call(self, "getResourceAsStreamAtStart", .{ resource, 2 }));
            if (inputStream == null) {
                inputStream = Inheritance.upcast(@TypeOf(inputStream), Inheritance.call(self, "getResourceAsStreamAtStart", .{ resource, 1 }));
                if (inputStream == null) {
                    const stringMaker: ?*StringMaker = StringMaker.create();
                    const index: i32 = Inheritance.call(resource.?, "lastIndexOf", .{ '/' });
                    var resourcePath: ?*String = Inheritance.upcast(?*String, Inheritance.call(resource.?, "substring", .{ index + 1 }));
                    inputStream = Inheritance.upcast(@TypeOf(inputStream), Inheritance.call(@as(?*anyopaque, @ptrCast(@constCast(Object.of(resource).?.class))).?, "getResourceAsStream", .{ resourcePath }));
                    if (inputStream == null) {
                        resourcePath = Inheritance.upcast(@TypeOf(resourcePath), Inheritance.call(resource.?, "substring", .{ index }));
                        inputStream = Inheritance.upcast(@TypeOf(inputStream), Inheritance.call(@as(?*anyopaque, @ptrCast(@constCast(Object.of(resource).?.class))).?, "getResourceAsStream", .{ resourcePath }));
                        if (inputStream == null) {
                            const RES: ?*String = String.literal("res");
                            resourcePath = Inheritance.upcast(@TypeOf(resourcePath), Object.toString(Object.of(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ RES }).?, "append", .{ Inheritance.call(resource.?, "substring", .{ index }) }))));
                            inputStream = Inheritance.upcast(@TypeOf(inputStream), Inheritance.call(@as(?*anyopaque, @ptrCast(@constCast(Object.of(resource).?.class))).?, "getResourceAsStream", .{ resourcePath }));
                            if (inputStream == null) {
                                _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
                                resourcePath = Inheritance.upcast(@TypeOf(resourcePath), Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ String.literal("/") }).?, "append", .{ RES }).?, "append", .{ Inheritance.call(resource.?, "substring", .{ index }) }))));
                                inputStream = Inheritance.upcast(@TypeOf(inputStream), Inheritance.call(@as(?*anyopaque, @ptrCast(@constCast(Object.of(resource).?.class))).?, "getResourceAsStream", .{ resourcePath }));
                                const COLON: ?*String = Inheritance.upcast(?*String, CommonSeps.getInstance().?.COLON);
                                if (inputStream == null) {
                                    _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
                                    resourcePath = Inheritance.upcast(@TypeOf(resourcePath), Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ RES }).?, "append", .{ COLON }).?, "append", .{ Inheritance.call(resource.?, "substring", .{ index }) }))));
                                    inputStream = Inheritance.upcast(@TypeOf(inputStream), Inheritance.call(@as(?*anyopaque, @ptrCast(@constCast(Object.of(resource).?.class))).?, "getResourceAsStream", .{ resourcePath }));
                                    if (inputStream == null) {
                                        _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
                                        resourcePath = Inheritance.upcast(@TypeOf(resourcePath), Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ RES }).?, "append", .{ COLON }).?, "append", .{ Inheritance.call(resource.?, "substring", .{ index + 1 }) }))));
                                        inputStream = Inheritance.upcast(@TypeOf(inputStream), Inheritance.call(@as(?*anyopaque, @ptrCast(@constCast(Object.of(resource).?.class))).?, "getResourceAsStream", .{ resourcePath }));
                                        if (inputStream == null) {
                                            const RESOURCE_STRING: ?*String = String.literal("resource");
                                            _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
                                            resourcePath = Inheritance.upcast(@TypeOf(resourcePath), Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ RESOURCE_STRING }).?, "append", .{ COLON }).?, "append", .{ Inheritance.call(resource.?, "substring", .{ index }) }))));
                                            inputStream = Inheritance.upcast(@TypeOf(inputStream), Inheritance.call(@as(?*anyopaque, @ptrCast(@constCast(Object.of(resource).?.class))).?, "getResourceAsStream", .{ resourcePath }));
                                            if (inputStream == null) {
                                                _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
                                                resourcePath = Inheritance.upcast(@TypeOf(resourcePath), Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ RESOURCE_STRING }).?, "append", .{ COLON }).?, "append", .{ Inheritance.call(resource.?, "substring", .{ index + 1 }) }))));
                                                inputStream = Inheritance.upcast(@TypeOf(inputStream), Inheritance.call(@as(?*anyopaque, @ptrCast(@constCast(Object.of(resource).?.class))).?, "getResourceAsStream", .{ resourcePath }));
                                                if (inputStream == null) {
                                                    _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
                                                    std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ String.literal("Unable to obtain: ") }).?, "append", .{ resource }))); break :exception error.Exception; }});
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return inputStream;
    }
    

    // throws Exception
    pub fn getResourceAsStreamAtStart(self: *Self, resource: ?*String, startIndex: i32) ?*InputStream {
        _ = self;
        const stringMaker: ?*StringMaker = StringMaker.create(); _ = stringMaker;
        const index: i32 = Inheritance.call(resource.?, "indexOf", .{ CommonSeps.getInstance().?.COLON });
        const resourcePath: ?*String = Inheritance.upcast(?*String, Inheritance.call(resource.?, "substring", .{ index + startIndex }));
        const inputStream: ?*InputStream = Inheritance.upcast(?*InputStream, Inheritance.call(@as(?*anyopaque, @ptrCast(@constCast(Object.of(resource).?.class))).?, "getResourceAsStream", .{ resourcePath }));
        if (inputStream != null) {
            return inputStream;
        }
        return inputStream;
    }
    

    pub fn addResource(self: *Self, resource: ?*String, value: ?*Integer) void {
        _ = resource;
        _ = value;
        _ = self;
    }
};

