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
// package org.allbinary.logic.communication.http.file.upload

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ClassUtil = @import("org/allbinary/logic/java/anyType/clazz/ClassUtil.zig").ClassUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const FileItem = @import("org/apache/commons/fileupload/FileItem.zig").FileItem;
const FileItemStream = @import("org/apache/commons/fileupload/FileItemStream.zig").FileItemStream;

pub const HttpFileUploadUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil";
    logUtil: ?*LogUtil = null,
    var instance: ?*HttpFileUploadUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = HttpFileUploadUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*HttpFileUploadUtil {
        return Inheritance.upcast(?*HttpFileUploadUtil, HttpFileUploadUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn isValid(self: *Self, anyType: ?Object) bool {
        _ = self;
        if (anyType != null and !(Object.instanceOf(Object.of(anyType), String))) {
            if (Object.instanceOf(Object.of(anyType), FileItem)) {
                return true;
            } else {
                std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Object Not Instance Of FileItem but is: "), Inheritance.callStatic(ClassUtil, "viewAll", .{ anyType, CommonSeps.getInstance().?.NEW_LINE })); break :exception error.Exception; }});
            }
        }
        return false;
    }
    

    // throws Exception
    pub fn log(fileItem: ?*FileItemStream) void {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("FileItem Log:") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Content Type:") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ fileItem.?.getContentType() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Field Name:") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ fileItem.?.getFieldName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Name:") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ fileItem.?.getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Size:") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Not Calculated Yet") });
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTP })) {
            _ = Inheritance.call(logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), HttpFileUploadUtil.getInstance(), String.literal("log()") });
        }
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn log(fileItem: ?*FileItem) void {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("FileItem Log:") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Content Type:") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ fileItem.?.getContentType() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Field Name:") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ fileItem.?.getFieldName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Name:") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ fileItem.?.getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Size:") });
        _ = Inheritance.call(stringBuffer.?, "appendlong", .{ @as(i64, @intCast(fileItem.?.getSize())) });
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
            _ = Inheritance.call(logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), HttpFileUploadUtil.getInstance(), String.literal("log()") });
        }
    }
};

