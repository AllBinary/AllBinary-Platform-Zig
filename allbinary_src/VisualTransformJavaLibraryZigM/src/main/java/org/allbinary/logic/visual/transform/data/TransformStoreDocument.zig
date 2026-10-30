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
// package org.allbinary.logic.visual.transform.data

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const StoreFrontViewFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontViewFactory.zig").StoreFrontViewFactory;
const RequestParams = @import("org/allbinary/logic/communication/http/request/RequestParams.zig").RequestParams;
const WeblisketSession = @import("org/allbinary/logic/communication/http/request/session/WeblisketSession.zig").WeblisketSession;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const SearchRequest = @import("org/allbinary/logic/control/search/SearchRequest.zig").SearchRequest;
const TransformHttpRequestDocument = @import("org/allbinary/logic/visual/transform/data/TransformHttpRequestDocument.zig").TransformHttpRequestDocument;

pub const TransformStoreDocument = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.data.TransformStoreDocument";
    base: TransformHttpRequestDocument = undefined,
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create2(pageContext: ?*PageContext, weblisketSession: ?*WeblisketSession) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TransformHttpRequestDocument, "create2", .{ pageContext, weblisketSession }).*;
        this.initFields();
        { // try
            const storeName: ?*String = Inheritance.upcast(?*String, weblisketSession.?.getStoreName());
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Using Session StoreName: "), storeName), this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
            }
            _ = Inheritance.call(Inheritance.receiver(this, "getBaseNode").getBaseNode().?, "appendChild", .{ Inheritance.call(Inheritance.callStatic(StoreFrontViewFactory, "getInstance", .{ storeName }).?, "toXmlNode", .{ Inheritance.receiver(this, "getDoc").getDoc() }) });
            _ = Inheritance.call(Inheritance.receiver(this, "getBaseNode").getBaseNode().?, "appendChild", .{ Inheritance.call(Inheritance.callStatic(RequestParams, "create1", .{ Inheritance.cast(?*HttpServletRequest, pageContext.?.getRequest()) }), "toXmlNode", .{ Inheritance.receiver(this, "getDoc").getDoc() }) });
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(this.logUtil.?, "put", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.EXCEPTION, this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR, e });
//             }
//             std.debug.panic("{any}", .{e});
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create1(searchRequest: ?*SearchRequest) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TransformHttpRequestDocument, "create1", .{ searchRequest }).*;
        this.initFields();
        { // try
            _ = Inheritance.call(Inheritance.receiver(this, "getBaseNode").getBaseNode().?, "appendChild", .{ Inheritance.call(Inheritance.callStatic(StoreFrontViewFactory, "getInstance", .{ Inheritance.receiverOf(Inheritance.receiver(searchRequest.?, "getStoreFront").getStoreFront().?, "getName").getName() }).?, "toXmlNode", .{ Inheritance.receiver(this, "getDoc").getDoc() }) });
            _ = Inheritance.call(Inheritance.receiver(this, "getBaseNode").getBaseNode().?, "appendChild", .{ Inheritance.call(Inheritance.receiver(searchRequest.?, "getParams").getParams().?, "getParamsNode", .{ Inheritance.receiver(this, "getDoc").getDoc() }) });
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(this.logUtil.?, "put", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.EXCEPTION, this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR, e });
//             }
//             std.debug.panic("{any}", .{e});
        Inheritance.bindOverrides(this);
        return this;
    }
};

