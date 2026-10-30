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
// package servlet.request

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const WorkFlowInterface = @import("org/allbinary/logic/control/workflow/WorkFlowInterface.zig").WorkFlowInterface;
const RequestWorkFlowFactory = @import("org/allbinary/logic/control/workflow/RequestWorkFlowFactory.zig").RequestWorkFlowFactory;

pub const RequestHandler = struct {
    const Self = @This();
    pub const java_name = "servlet.request.RequestHandler";
    base: HttpServlet = undefined,
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = HttpServlet.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws ServletException
    pub fn init(self: *Self, config: ?*ServletConfig) void {
        _ = Inheritance.call(&self.base, "init", .{ config });
    }
    

    pub fn destroy(self: *Self) void {
        _ = self;
    }
    

    // throws ServletException, IOException
    pub fn processRequest(self: *Self, request: ?*HttpServletRequest, response: ?*HttpServletResponse) void {
        { // try
            _ = Inheritance.call(response.?, "setContentType", .{ String.literal("text/html") });
            const out: ?*PrintWriter = Inheritance.upcast(?*PrintWriter, response.?.getWriter());
            const workflowInterface: ?*WorkFlowInterface = Inheritance.upcast(?*WorkFlowInterface, Inheritance.callStatic(RequestWorkFlowFactory, "getInstance", .{ Inheritance.cast(?*ServletRequest, request), Inheritance.cast(?*ServletResponse, response), Inheritance.receiver(self, "getServletConfig").getServletConfig(), Inheritance.receiver(self, "getServletContext").getServletContext() }));
            if (workflowInterface != null) {
                _ = Inheritance.call(out.?, "print", .{ workflowInterface.?.process() });
            }
            _ = out.?.flush();
            _ = out.?.close();
        }
        // catch (LicensingException e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SERVLETERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Servlet LicensingException"), self, String.literal("processRequest()"), e });
//             }
//             _ = Inheritance.call(response.?, "sendRedirect", .{ Inheritance.fieldPointer(self, "abcs").*.?.globals.?.URLGLOBALS.?.LICENSEERRORPAGE });
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SERVLETERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Servlet Exception"), self, String.literal("processRequest()"), e });
//             }
//             _ = Inheritance.call(response.?, "sendRedirect", .{ Inheritance.fieldPointer(self, "abcs").*.?.globals.?.URLGLOBALS.?.ERRORPAGE });
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
        return String.literal("WorkFlow Request Handler");
    }
};

