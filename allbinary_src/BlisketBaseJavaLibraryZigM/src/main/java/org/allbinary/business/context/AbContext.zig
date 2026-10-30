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
// package org.allbinary.business.context

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const WeblisketSession = @import("org/allbinary/logic/communication/http/request/session/WeblisketSession.zig").WeblisketSession;
const WeblisketSessionInterface = @import("org/allbinary/logic/communication/http/request/session/WeblisketSessionInterface.zig").WeblisketSessionInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const AbContext = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.context.AbContext";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    propertiesHashMap: ?*HashMap = null,
    pageContext: ?*PageContext = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        
    }
    

    pub fn create2(propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Properties HashMap: "), Object.toString(Object.of(propertiesHashMap))), this, this.commonStrings.?.CONSTRUCTOR });
        }
        this.propertiesHashMap = propertiesHashMap;
        this.pageContext = pageContext;
        return this;
    }
    

    pub fn getWeblisketSession(self: *Self) ?*WeblisketSessionInterface {
        return Inheritance.upcast(?*WeblisketSessionInterface, Inheritance.callStatic(WeblisketSession, "create2", .{ self.propertiesHashMap, self.pageContext }));
    }
    

    pub fn getPageContext(self: *Self) ?*PageContext {
        return self.pageContext;
    }
    

    pub fn getPropertiesHashMap(self: *Self) ?*HashMap {
        return self.propertiesHashMap;
    }
};

