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
// package org.allbinary.logic.communication.http.request

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const List = @import("java/util/List.zig").List;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const AbFileUploadFactory = @import("org/allbinary/logic/communication/http/file/upload/AbFileUploadFactory.zig").AbFileUploadFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const FileItem = @import("org/apache/commons/fileupload/FileItem.zig").FileItem;
const InvalidContentTypeException = @import("org/apache/commons/fileupload/FileUploadBase/InvalidContentTypeException.zig").InvalidContentTypeException;
const RequestParams = @import("org/allbinary/logic/communication/http/request/RequestParams.zig").RequestParams;

pub const MultipartRequestParams = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.http.request.MultipartRequestParams";
    base: RequestParams = undefined,
    logUtil: ?*LogUtil = null,
    special: bool = false,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.special = false;
    }
    

    pub fn create1(request: ?*HttpServletRequest) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RequestParams, "create", .{  }).*;
        this.initFields();
        _ = Inheritance.call(this, "processMultipartRequest", .{ request });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RequestParams, "create", .{  }).*;
        this.initFields();
        _ = Inheritance.call(this, "processMultipartRequest", .{ Inheritance.cast(?*HttpServletRequest, pageContext.?.getRequest()) });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setSpecial(self: *Self) void {
        self.special = true;
    }
    

    pub fn processMultipartRequest(self: *Self, request: ?*HttpServletRequest) void {
        { // try
            const specialRequest: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            const multipartRequestList: ?*List = Inheritance.upcast(?*List, Inheritance.call(AbFileUploadFactory.getInstance().?, "getFileItemStreamList", .{ request }));
            if (multipartRequestList != null) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("FileItem List Size: "), multipartRequestList.?.size()), self, String.literal("processMultipartRequest()") });
                }
                const fileItemArray: []?Object = multipartRequestList.?.toArray();
                const size: i32 = @as(i32, @intCast(fileItemArray.len));
                {
                    var index: i32 = 0;
                    while (index < size) : (index += 1) {
                    const fileItem: ?*FileItem = Inheritance.cast(?*FileItem, fileItemArray[@intCast(index)]);
                    const name: ?*String = Inheritance.upcast(?*String, fileItem.?.getName());
                    if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ name })) {
                        _ = Inheritance.call(specialRequest.?, "put", .{ fileItem.?.getFieldName(), fileItem.?.getString() });
                    } else {
                        _ = Inheritance.call(specialRequest.?, "put", .{ fileItem.?.getFieldName(), fileItem });
                    }
                    }
                }
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Special Request Data: "), Object.toString(Object.of(specialRequest))), self, String.literal("processMultipartRequest()") });
                }
                _ = self.setSpecial();
                _ = Inheritance.call(self, "setMap", .{ specialRequest });
            }
        }
        // catch (InvalidContentTypeException e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
//                 _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Using Normal RequestParams"), self, String.literal("processMultipartRequest()") });
//             }
//             _ = Inheritance.call(&self.base, "setMap", .{ request.?.getParameterMap() });
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUESTERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Should Not Occur"), self, String.literal("processMultipartRequest()") });
//             }
//             _ = Inheritance.call(&self.base, "setMap", .{ request.?.getParameterMap() });
    }
    

    // throws Exception
    pub fn toHashMap(self: *Self) ?*HashMap {
        if (self.special) {
            return Inheritance.cast(?*HashMap, Inheritance.receiver(self, "getMap").getMap());
        } else {
            return Inheritance.upcast(?*HashMap, self.base.toHashMap());
        }
    }
};

