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
// const ArrayList = @import("java/util/ArrayList.zig").ArrayList;
// const List = @import("java/util/List.zig").List;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
const AbFileItemFactory = @import("org/allbinary/logic/communication/http/AbFileItemFactory.zig").AbFileItemFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const FileItemIterator = @import("org/apache/commons/fileupload/FileItemIterator.zig").FileItemIterator;
const FileItemStream = @import("org/apache/commons/fileupload/FileItemStream.zig").FileItemStream;
const FileItemUtil = @import("org/apache/commons/fileupload/FileItemUtil.zig").FileItemUtil;
const AbFileItem = @import("org/allbinary/logic/communication/http/file/upload/AbFileItem.zig").AbFileItem;
const AbFileUpload = @import("org/allbinary/logic/communication/http/file/upload/AbFileUpload.zig").AbFileUpload;
const HttpFileUploadUtil = @import("org/allbinary/logic/communication/http/file/upload/HttpFileUploadUtil.zig").HttpFileUploadUtil;

pub const AbFileUploadFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory";
    logUtil: ?*LogUtil = null,
    var instance: ?*AbFileUploadFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AbFileUploadFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*AbFileUploadFactory {
        return Inheritance.upcast(?*AbFileUploadFactory, AbFileUploadFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getFileItemStreamList(self: *Self, httpServletRequest: ?*HttpServletRequest) ?*List {
        _ = self;
        { // try
            const fileUpload: ?*AbFileUpload = Inheritance.callStatic(AbFileUpload, "create1", .{ AbFileItemFactory.create() });
            const iterator: ?*FileItemIterator = Inheritance.upcast(?*FileItemIterator, Inheritance.call(fileUpload.?, "getItemIterator", .{ httpServletRequest }));
            const items: ?*List = Inheritance.upcast(?*List, ArrayList.create());
            while (iterator.?.hasNext()) {
                const fileItemStream: ?*FileItemStream = Inheritance.upcast(?*FileItemStream, iterator.?.next());
                _ = Inheritance.callStatic(HttpFileUploadUtil, "log", .{ fileItemStream });
                const fileItem: ?*AbFileItem = Inheritance.callStatic(AbFileItem, "create3", .{ fileItemStream.?.getName(), fileItemStream.?.getFieldName(), Inheritance.call(FileItemUtil.getInstance().?, "getBytes", .{ fileItemStream }) });
                _ = Inheritance.call(items.?, "add", .{ fileItem });
            }
            return items;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPERROR })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("get()"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn getFileItemList(self: *Self, httpServletRequest: ?*HttpServletRequest) ?*List {
        _ = self;
        { // try
            const abFileUpload: ?*AbFileUpload = Inheritance.callStatic(AbFileUpload, "create1", .{ AbFileItemFactory.create() });
            return Inheritance.upcast(?*List, Inheritance.call(abFileUpload.?, "parseRequest", .{ httpServletRequest }));
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("get()"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

