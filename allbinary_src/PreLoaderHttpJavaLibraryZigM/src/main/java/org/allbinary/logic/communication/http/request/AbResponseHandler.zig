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
// const RequestDispatcher = @import("javax/servlet/RequestDispatcher.zig").RequestDispatcher;
// const ServletException = @import("javax/servlet/ServletException.zig").ServletException;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const HttpServletResponse = @import("javax/servlet/http/HttpServletResponse.zig").HttpServletResponse;
// const JspTagException = @import("javax/servlet/jsp/JspTagException.zig").JspTagException;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const FREEBLISKET_PATH_GLOBALS = @import("org/allbinary/globals/FREEBLISKET_PATH_GLOBALS.zig").FREEBLISKET_PATH_GLOBALS;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const LogConfigTypeFactory = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.zig").LogConfigTypeFactory;
const LogConfigTypes = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypes.zig").LogConfigTypes;

pub const AbResponseHandler = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.http.request.AbResponseHandler";
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws JspTagException
    pub fn sendJspTagRedirect(pageContext: ?*PageContext, e: ?anyerror) void {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        { // try
            if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.JSPTAGERROR })) {
                _ = Inheritance.call(logUtil.?, "put", .{ String.literal("Jsp Tag Exception"), String.literal("AbResponseHandler"), String.literal("sendJspRedirect()"), e });
            }
            _ = Inheritance.callStatic(AbResponseHandler, "sendRedirect", .{ pageContext, FREEBLISKET_PATH_GLOBALS.getInstance().?.ERRORPAGE });
        }
        // catch (Exception e2):
//             if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.LICENSINGERROR })) {
//                 _ = Inheritance.call(logUtil.?, "put", .{ String.literal("Exception in Redirect Handling"), String.literal("AbResponseHandler"), String.literal("sendJspRedirect"), e });
//             }
//             std.debug.panic("{any}", .{error.JspTagException});
    }
    

    // throws ServletException
    pub fn sendServletRedirect(pageContext: ?*PageContext, e: ?anyerror) void {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        { // try
            if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.JSPTAGERROR })) {
                _ = Inheritance.call(logUtil.?, "put", .{ String.literal("Jsp Tag Exception"), String.literal("AbResponseHandler"), String.literal("sendJspRedirect()"), e });
            }
            _ = Inheritance.callStatic(AbResponseHandler, "sendRedirect", .{ pageContext, FREEBLISKET_PATH_GLOBALS.getInstance().?.ERRORPAGE });
        }
        // catch (Exception e2):
//             if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.LICENSINGERROR })) {
//                 _ = Inheritance.call(logUtil.?, "put", .{ String.literal("Exception in Redirect Handling"), String.literal("AbResponseHandler"), String.literal("sendJspRedirect"), e });
//             }
//             std.debug.panic("{any}", .{error.ServletException});
    }
    

    // throws JspTagException
    pub fn sendJspTagLicensingRedirect(pageContext: ?*PageContext, e: ?anyerror) void {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        { // try
            if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.JSPTAGERROR })) {
                _ = Inheritance.call(logUtil.?, "put", .{ String.literal("Licensing Exception"), String.literal("AbResponseHandler"), String.literal("sendJspTagLicensingRedirect()"), e });
            }
            _ = Inheritance.callStatic(AbResponseHandler, "sendRedirect", .{ pageContext, FREEBLISKET_PATH_GLOBALS.getInstance().?.LICENSEERRORPAGE });
        }
        // catch (Exception e2):
//             if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.LICENSINGERROR })) {
//                 _ = Inheritance.call(logUtil.?, "put", .{ String.literal("Exception in Redirect Handling"), String.literal("AbResponseHandler"), String.literal("sendJspTagLicensingRedirect"), e });
//             }
//             std.debug.panic("{any}", .{error.JspTagException});
    }
    

    // throws ServletException
    pub fn sendServletLicensingRedirect(pageContext: ?*PageContext, e: ?anyerror) void {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        { // try
            if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.JSPTAGERROR })) {
                _ = Inheritance.call(logUtil.?, "put", .{ String.literal("Licensing Exception"), String.literal("AbResponseHandler"), String.literal("sendServletLicensingRedirect()"), e });
            }
            _ = Inheritance.callStatic(AbResponseHandler, "sendRedirect", .{ pageContext, FREEBLISKET_PATH_GLOBALS.getInstance().?.LICENSEERRORPAGE });
        }
        // catch (Exception e2):
//             if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.LICENSINGERROR })) {
//                 _ = Inheritance.call(logUtil.?, "put", .{ String.literal("Exception in Redirect Handling"), String.literal("AbResponseHandler"), String.literal("sendServletLicensingRedirect"), e });
//             }
//             std.debug.panic("{any}", .{error.ServletException});
    }
    

    // throws Exception
    pub fn sendRedirect(pageContext: ?*PageContext, page: ?*String) void {
        const request: ?*HttpServletRequest = Inheritance.cast(?*HttpServletRequest, pageContext.?.getRequest());
        const response: ?*HttpServletResponse = Inheritance.cast(?*HttpServletResponse, pageContext.?.getResponse());
        const requestDispatcher: ?*RequestDispatcher = Inheritance.upcast(?*RequestDispatcher, Inheritance.call(request.?, "getRequestDispatcher", .{ page }));
        if (response.?.isCommitted()) {
            _ = Inheritance.call(response.?, "sendRedirect", .{ page });
        } else {
            { // try
                _ = Inheritance.call(requestDispatcher.?, "forward", .{ request, response });
            }
            // catch (Exception e):
//                 _ = Inheritance.call(pageContext.?.getOut().?, "print", .{ String.plus(String.literal("Error: "), page) });
        }
    }
};

