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
// package org.allbinary.servlet.file

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const IOException = @import("java/io/IOException.zig").IOException;
// const InputStream = @import("java/io/InputStream.zig").InputStream;
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const ServletException = @import("javax/servlet/ServletException.zig").ServletException;
// const HttpServlet = @import("javax/servlet/http/HttpServlet.zig").HttpServlet;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const HttpServletResponse = @import("javax/servlet/http/HttpServletResponse.zig").HttpServletResponse;
const AuthenticationHelper = @import("admin/taghelpers/AuthenticationHelper.zig").AuthenticationHelper;
const AuthenticationHelperFactory = @import("admin/taghelpers/AuthenticationHelperFactory.zig").AuthenticationHelperFactory;
const AuthenticationHelperUtil = @import("admin/taghelpers/AuthenticationHelperUtil.zig").AuthenticationHelperUtil;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CloudStreamUtil = @import("org/allbinary/logic/io/CloudStreamUtil.zig").CloudStreamUtil;
const StreamUtil = @import("org/allbinary/logic/io/StreamUtil.zig").StreamUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const BlisketServletUtil = @import("org/allbinary/servlet/BlisketServletUtil.zig").BlisketServletUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const DownloadFileServlet = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.servlet.file.DownloadFileServlet";
    base: HttpServlet = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    DOWNLOAD: ?*String = null,
    DEFAULT_BUFFER_SIZE: i32 = 0,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.DOWNLOAD = String.literal("download");
        this.DEFAULT_BUFFER_SIZE = 16384;
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
        var inputStream: ?*InputStream = null;
        { // try
            _ = Inheritance.call(BlisketServletUtil.getInstance().?, "init", .{ request });
            const requestPath: ?*String = Inheritance.upcast(?*String, request.?.getRequestURI());
            if (requestPath == null) {
                _ = Inheritance.call(response.?, "sendError", .{ HttpServletResponse.SC_NOT_FOUND });
                return;
            }
            const beginIndex: i32 = Inheritance.call(requestPath.?, "indexOf", .{ self.DOWNLOAD });
            var filePath: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
            if (beginIndex >= 0) {
                filePath = Inheritance.upcast(@TypeOf(filePath), Inheritance.call(requestPath.?, "substring", .{ beginIndex + self.DOWNLOAD.?.length() }));
            } else {
                _ = Inheritance.call(response.?, "sendError", .{ HttpServletResponse.SC_NOT_FOUND });
            }
            const file: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ String.plus(URLGLOBALS.getWebappPath(), filePath) }));
            if (!file.?.exists()) {
                _ = Inheritance.call(response.?, "sendError", .{ HttpServletResponse.SC_NOT_FOUND });
                return;
            }
            const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            const authenticationHelper: ?*AuthenticationHelper = Inheritance.cast(?*AuthenticationHelper, Inheritance.call(AuthenticationHelperFactory.create(), "getInstance", .{ hashMap, request }));
            if (Inheritance.receiver(authenticationHelper.?, "isAuthenticated").isAuthenticated()) {
                if (Inheritance.call(AuthenticationHelperUtil.getInstance().?, "isAuthorized", .{ authenticationHelper, filePath })) {
                    inputStream = Inheritance.upcast(@TypeOf(inputStream), Inheritance.call(CloudStreamUtil.getInstance().?, "getFile", .{ file }));
                    var contentType: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.receiver(self, "getServletContext").getServletContext().?, "getMimeType", .{ file.?.getName() }));
                    if (contentType == null) {
                        contentType = String.literal("application/octet-stream");
                    }
                    _ = response.?.reset();
                    _ = Inheritance.call(response.?, "setBufferSize", .{ self.DEFAULT_BUFFER_SIZE });
                    _ = Inheritance.call(response.?, "setContentType", .{ contentType });
                    _ = Inheritance.call(response.?, "setHeader", .{ String.literal("Content-Length"), String.valueOf(file.?.length()) });
                    const stringBuffer: ?*StringMaker = StringMaker.create();
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("attachment; filename=\"") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ file.?.getName() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.QUOTE });
                    _ = Inheritance.call(response.?, "setHeader", .{ String.literal("Content-Disposition"), Object.toString(Object.of(stringBuffer)) });
                    _ = Inheritance.call(StreamUtil.getInstance().?, "get", .{ inputStream, response.?.getOutputStream(), array_N67869: { const array_N67869_array = allocator.alloc(i8, @intCast(16348)) catch unreachable; @memset(array_N67869_array, 0); break :array_N67869 array_N67869_array; } });
                } else {
                    _ = Inheritance.call(response.?, "sendError", .{ HttpServletResponse.SC_UNAUTHORIZED, String.literal("You are not Authorized") });
                }
            } else {
                _ = Inheritance.call(response.?, "sendError", .{ HttpServletResponse.SC_UNAUTHORIZED, String.literal("Please Login") });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("processRequest()"), e });
//             }
//             _ = Inheritance.call(response.?, "sendError", .{ HttpServletResponse.SC_NOT_FOUND });
        { // finally
            _ = Inheritance.call(StreamUtil.getInstance().?, "close", .{ response.?.getOutputStream() });
            if (!Inheritance.call(StreamUtil.getInstance().?, "close", .{ inputStream })) {
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
        return String.literal("Serves Up Cloud Files");
    }
};

