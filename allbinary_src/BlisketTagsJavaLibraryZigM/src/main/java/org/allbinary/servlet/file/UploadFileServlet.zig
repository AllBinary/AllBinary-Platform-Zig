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
const FileUploadData = @import("org/allbinary/logic/communication/http/file/upload/FileUploadData.zig").FileUploadData;
const HttpFileUploadUtil = @import("org/allbinary/logic/communication/http/file/upload/HttpFileUploadUtil.zig").HttpFileUploadUtil;
const HttpRequestUtil = @import("org/allbinary/logic/communication/http/request/HttpRequestUtil.zig").HttpRequestUtil;
const MultipartRequestParams = @import("org/allbinary/logic/communication/http/request/MultipartRequestParams.zig").MultipartRequestParams;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbFileOutputStream = @import("org/allbinary/logic/io/AbFileOutputStream.zig").AbFileOutputStream;
const StreamUtil = @import("org/allbinary/logic/io/StreamUtil.zig").StreamUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const BlisketServletUtil = @import("org/allbinary/servlet/BlisketServletUtil.zig").BlisketServletUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const FileItem = @import("org/apache/commons/fileupload/FileItem.zig").FileItem;

pub const UploadFileServlet = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.servlet.file.UploadFileServlet";
    base: HttpServlet = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    requestHashMap: ?*HashMap = null,
    fileName: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.requestHashMap = null;
        this.fileName = null;
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
        var isError: bool = false;
        const inputStream: ?*InputStream = null;
        { // try
            _ = Inheritance.call(BlisketServletUtil.getInstance().?, "init", .{ request });
            self.requestHashMap = Inheritance.upcast(@TypeOf(self.requestHashMap), Inheritance.receiver(Inheritance.callStatic(MultipartRequestParams, "create1", .{ request }), "toHashMap").toHashMap());
            const filePath: ?*String = Inheritance.cast(?*String, Inheritance.call(self.requestHashMap.?, "get", .{ FileUploadData.getInstance().?.UPLOAD_TO_FILE_PATH }));
            if (filePath == null) {
                isError = true;
                _ = Inheritance.call(response.?, "sendError", .{ HttpServletResponse.SC_NOT_FOUND });
                return;
            }
            const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            const authenticationHelper: ?*AuthenticationHelper = Inheritance.cast(?*AuthenticationHelper, Inheritance.call(AuthenticationHelperFactory.create(), "getInstance", .{ hashMap, request }));
            if (Inheritance.receiver(authenticationHelper.?, "isAuthenticated").isAuthenticated()) {
                if (Inheritance.call(AuthenticationHelperUtil.getInstance().?, "isAuthorized", .{ authenticationHelper, filePath })) {
                    _ = Inheritance.call(self, "saveFile", .{ filePath });
                    _ = Inheritance.call(response.?, "setContentType", .{ String.literal("text/plain") });
                    _ = Inheritance.call(response.?.getOutputStream().?, "write", .{ String.literal("OK!").?.getBytes() });
                } else {
                    isError = true;
                    _ = Inheritance.call(response.?, "sendError", .{ HttpServletResponse.SC_UNAUTHORIZED, String.literal("You are not Authorized") });
                }
            } else {
                isError = true;
                _ = Inheritance.call(response.?, "sendError", .{ HttpServletResponse.SC_UNAUTHORIZED, String.literal("Please Login") });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("processRequest()"), e });
//             }
//             isError = true;
//             _ = Inheritance.call(response.?, "sendError", .{ HttpServletResponse.SC_NOT_FOUND });
        { // finally
            if (!isError) {
                _ = Inheritance.call(StreamUtil.getInstance().?, "close", .{ response.?.getOutputStream() });
            }
            if (!Inheritance.call(StreamUtil.getInstance().?, "close", .{ inputStream })) {
            }
        }
    }
    

    // throws Exception
    pub fn saveFile(self: *Self, filePathParameter: ?*String) void {
        var filePath = filePathParameter;
        var fileOutputStream: ?*AbFileOutputStream = null;
        { // try
            const fileItem: ?*FileItem = Inheritance.cast(?*FileItem, Inheritance.call(self.requestHashMap.?, "get", .{ FileUploadData.getInstance().?.FILE_DATA }));
            if (fileItem != null and fileItem.?.getSize() > 1) {
                self.fileName = Inheritance.upcast(@TypeOf(self.fileName), Inheritance.call(HttpRequestUtil.getInstance().?, "generateFileName", .{ fileItem.?.getName() }));
                if (Inheritance.call(filePath.?, "endsWith", .{ String.literal("/") }) or Inheritance.call(filePath.?, "endsWith", .{ String.literal("\\") })) {
                    filePath = Inheritance.upcast(@TypeOf(filePath), String.plus(filePath, self.fileName));
                }
                const file: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ String.plus(URLGLOBALS.getWebappPath(), filePath) }));
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
                    const stringBuffer: ?*StringMaker = StringMaker.create();
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Uploaded File: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ self.fileName });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" New File: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ file.?.getPath() });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("saveFile()") });
                }
                _ = Inheritance.callStatic(HttpFileUploadUtil, "log", .{ fileItem });
                const byteArray: []i8 = fileItem.?.get();
                if (file.?.isFile()) {
                    _ = file.?.delete();
                    _ = file.?.createNewFile();
                }
                fileOutputStream = Inheritance.upcast(@TypeOf(fileOutputStream), Inheritance.callStatic(AbFileOutputStream, "createFromAbFile", .{ file }));
                _ = Inheritance.call(fileOutputStream.?, "write", .{ byteArray });
            }
        }
        { // finally
            if (fileOutputStream != null) {
                _ = Inheritance.receiver(fileOutputStream.?, "close").close();
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
        return String.literal("Upload Cloud Files");
    }
};

