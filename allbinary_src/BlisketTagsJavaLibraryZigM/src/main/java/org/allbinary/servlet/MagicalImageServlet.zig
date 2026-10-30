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
// package org.allbinary.servlet

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ByteArrayOutputStream = @import("java/io/ByteArrayOutputStream.zig").ByteArrayOutputStream;
// const IOException = @import("java/io/IOException.zig").IOException;
// const InputStream = @import("java/io/InputStream.zig").InputStream;
// const ServletException = @import("javax/servlet/ServletException.zig").ServletException;
// const HttpServlet = @import("javax/servlet/http/HttpServlet.zig").HttpServlet;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const HttpServletResponse = @import("javax/servlet/http/HttpServletResponse.zig").HttpServletResponse;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CloudStreamUtil = @import("org/allbinary/logic/io/CloudStreamUtil.zig").CloudStreamUtil;
const StreamUtil = @import("org/allbinary/logic/io/StreamUtil.zig").StreamUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BlisketServletUtil = @import("org/allbinary/servlet/BlisketServletUtil.zig").BlisketServletUtil;

pub const MagicalImageServlet = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.servlet.MagicalImageServlet";
    base: HttpServlet = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = HttpServlet.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws ServletException, IOException
    pub fn processRequest(self: *Self, request: ?*HttpServletRequest, response: ?*HttpServletResponse) void {
        _ = self;
        var inputStream: ?*InputStream = null;
        { // try
            _ = Inheritance.call(BlisketServletUtil.getInstance().?, "init", .{ request });
            const requestURI: ?*String = Inheritance.upcast(?*String, request.?.getRequestURI());
            const file: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ String.plus(URLGLOBALS.getWebappPath(), requestURI) }));
            inputStream = Inheritance.upcast(@TypeOf(inputStream), Inheritance.call(CloudStreamUtil.getInstance().?, "getFileAnyWhere", .{ file }));
            const outputStream: ?*ByteArrayOutputStream = Inheritance.callStatic(ByteArrayOutputStream, "create1", .{ 8000 });
            const byteArray: []i8 = Inheritance.call(StreamUtil.getInstance().?, "getByteArray", .{ inputStream, outputStream, array_N66557: { const array_N66557_array = allocator.alloc(i8, @intCast(16384)) catch unreachable; @memset(array_N66557_array, 0); break :array_N66557 array_N66557_array; } });
            _ = Inheritance.call(response.?, "setContentType", .{ String.literal("image/jpeg;charset=utf-8") });
            _ = Inheritance.call(response.?.getOutputStream().?, "write", .{ byteArray });
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("processRequest()"), e });
//             }
        { // finally
            _ = Inheritance.call(StreamUtil.getInstance().?, "close", .{ response.?.getOutputStream() });
            if (!Inheritance.call(StreamUtil.getInstance().?, "close", .{ inputStream })) {
                _ = Inheritance.call(response.?, "sendError", .{ HttpServletResponse.SC_NOT_FOUND });
            }
        }
    }
    

    // throws ServletException, IOException
    pub fn doGet(self: *Self, request: ?*HttpServletRequest, response: ?*HttpServletResponse) void {
        _ = Inheritance.call(self, "processRequest", .{ request, response });
    }
    

    // throws ServletException, IOException
    pub fn doPost(self: *Self, request: ?*HttpServletRequest, response: ?*HttpServletResponse) void {
        _ = Inheritance.call(self, "processRequest", .{ request, response });
    }
    

    pub fn getServletInfo(self: *Self) ?*String {
        _ = self;
        return String.literal("Serves Up Image From Local or Cloud");
    }
};

