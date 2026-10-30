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
// package org.allbinary.logic.control.workflow

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const ServletConfig = @import("javax/servlet/ServletConfig.zig").ServletConfig;
// const ServletContext = @import("javax/servlet/ServletContext.zig").ServletContext;
// const ServletRequest = @import("javax/servlet/ServletRequest.zig").ServletRequest;
// const ServletResponse = @import("javax/servlet/ServletResponse.zig").ServletResponse;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const WorkFlowEntityFactory = @import("org/allbinary/data/tables/workflow/WorkFlowEntityFactory.zig").WorkFlowEntityFactory;
const WeblisketSession = @import("org/allbinary/logic/communication/http/request/session/WeblisketSession.zig").WeblisketSession;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const WorkFlowData = @import("org/allbinary/logic/control/workflow/WorkFlowData.zig").WorkFlowData;
const WorkFlowInterface = @import("org/allbinary/logic/control/workflow/WorkFlowInterface.zig").WorkFlowInterface;

pub const RequestWorkFlowFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.control.workflow.RequestWorkFlowFactory";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception, LicensingException
    pub fn getInstance4(request: ?*ServletRequest, response: ?*ServletResponse, servletConfig: ?*ServletConfig, servletContext: ?*ServletContext) ?*WorkFlowInterface {
        _ = response;
        _ = servletConfig;
        _ = servletContext;
        const httpRequest: ?*HttpServletRequest = Inheritance.cast(?*HttpServletRequest, request);
        const requestCommand: ?*String = Inheritance.upcast(?*String, httpRequest.?.getPathInfo());
        const index: i32 = Inheritance.call(requestCommand.?, "indexOf", .{ AbPathData.getInstance().?.SEPARATOR });
        const storeName: ?*String = Inheritance.upcast(?*String, requestCommand.?.substring2(0, index));
        const requestName: ?*String = Inheritance.upcast(?*String, requestCommand.?.substring2(index, requestCommand.?.length()));
        return Inheritance.upcast(?*WorkFlowInterface, Inheritance.call(Inheritance.receiverOf(WorkFlowEntityFactory.getInstance().?, "create2").create2().?, "get", .{ requestName, storeName }));
    }
    

    // throws Exception, LicensingException
    pub fn getInstance(hashMap: ?*HashMap, pageContext: ?*PageContext) ?*WorkFlowInterface {
        const workFlowName: ?*String = Inheritance.cast(?*String, Inheritance.call(pageContext.?.getRequest().?, "getParameter", .{ WorkFlowData.getInstance().?.NAME }));
        const weblisketSession: ?*WeblisketSession = Inheritance.callStatic(WeblisketSession, "create2", .{ hashMap, pageContext });
        const storeName: ?*String = Inheritance.upcast(?*String, weblisketSession.?.getStoreName());
        return Inheritance.upcast(?*WorkFlowInterface, Inheritance.call(Inheritance.receiverOf(WorkFlowEntityFactory.getInstance().?, "create2").create2().?, "get", .{ workFlowName, storeName }));
    }
};

