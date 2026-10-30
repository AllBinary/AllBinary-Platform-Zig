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
const File = @import("java/io/File.zig").File;
// const IOException = @import("java/io/IOException.zig").IOException;
// const InputStream = @import("java/io/InputStream.zig").InputStream;
// const OutputStream = @import("java/io/OutputStream.zig").OutputStream;
// const UnsupportedEncodingException = @import("java/io/UnsupportedEncodingException.zig").UnsupportedEncodingException;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const FileItem = @import("org/apache/commons/fileupload/FileItem.zig").FileItem;
const FileItemHeaders = @import("org/apache/commons/fileupload/FileItemHeaders.zig").FileItemHeaders;
const FileItemUtil = @import("org/apache/commons/fileupload/FileItemUtil.zig").FileItemUtil;

pub const AbFileItem = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.http.file.upload.AbFileItem";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    name: ?*String = null,
    fieldName: ?*String = null,
    byteArray: []i8 = &.{},
    // Implements FileItem

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        
        
    }
    

    pub fn create3(name: ?*String, fieldName: ?*String, byteArray: []i8) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.name = name;
        this.fieldName = fieldName;
        this.byteArray = byteArray;
        return this;
    }
    

    // throws IOException
    pub fn getInputStream(self: *Self) ?*InputStream {
        std.debug.panic("{any}", .{exception: { _ = self.commonStrings.?.NOT_IMPLEMENTED; break :exception error.IOException; }});
    }
    

    pub fn getContentType(self: *Self) ?*String {
        _ = self;
        return null;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn isInMemory(self: *Self) bool {
        _ = self;
        return true;
    }
    

    pub fn getSize(self: *Self) i64 {
        return @as(i64, @intCast(@as(i32, @intCast(self.byteArray.len))));
    }
    

    pub fn get(self: *Self) []i8 {
        return self.byteArray;
    }
    

    // throws UnsupportedEncodingException
    pub fn getString1(self: *Self, encoding: ?*String) ?*String {
        return Inheritance.callStatic(String, "create2", .{ self.byteArray, encoding });
    }
    

    pub fn getString(self: *Self) ?*String {
        { // try
            return Inheritance.upcast(?*String, Inheritance.call(FileItemUtil.getInstance().?, "getString", .{ self.byteArray }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("getString"), e });
//             }
//             return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    // throws Exception
    pub fn write(self: *Self, file: ?*File) void {
        _ = file;
        std.debug.panic("{any}", .{exception: { _ = self.commonStrings.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn write(self: *Self, file: ?*AbFile) void {
        _ = file;
        std.debug.panic("{any}", .{exception: { _ = self.commonStrings.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    pub fn delete(self: *Self) void {
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ self.commonStrings.?.NOT_IMPLEMENTED, String.literal("delete()") });
    }
    

    pub fn getFieldName(self: *Self) ?*String {
        return self.fieldName;
    }
    

    pub fn setFieldName(self: *Self, name: ?*String) void {
        self.fieldName = name;
    }
    

    pub fn isFormField(self: *Self) bool {
        if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ self.fieldName })) {
            return false;
        } else {
            return true;
        }
    }
    

    pub fn setFormField(self: *Self, state: bool) void {
        _ = state;
        _ = self;
    }
    

    // throws IOException
    pub fn getOutputStream(self: *Self) ?*OutputStream {
        std.debug.panic("{any}", .{exception: { _ = self.commonStrings.?.NOT_IMPLEMENTED; break :exception error.IOException; }});
    }
    

    pub fn getHeaders(self: *Self) ?*FileItemHeaders {
        std.debug.panic("{any}", .{exception: { _ = self.commonStrings.?.NOT_IMPLEMENTED; break :exception error.RuntimeException; }});
    }
    

    pub fn setHeaders(self: *Self, fih: ?*FileItemHeaders) void {
        _ = fih;
        std.debug.panic("{any}", .{exception: { _ = self.commonStrings.?.NOT_IMPLEMENTED; break :exception error.RuntimeException; }});
    }
};

