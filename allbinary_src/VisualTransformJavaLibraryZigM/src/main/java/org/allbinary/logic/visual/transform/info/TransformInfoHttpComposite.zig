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
// package org.allbinary.logic.visual.transform.info

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const WeblisketSession = @import("org/allbinary/logic/communication/http/request/session/WeblisketSession.zig").WeblisketSession;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const TransformInfoHttpInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface.zig").TransformInfoHttpInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;

pub const TransformInfoHttpComposite = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    transformInfoInterface: ?*TransformInfoHttpInterface = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("View Name: "), Inheritance.receiver(transformInfoInterface.?, "getName").getName()), this, this.commonStrings.?.CONSTRUCTOR });
        }
        this.transformInfoInterface = Inheritance.cast(?*TransformInfoHttpInterface, transformInfoInterface);
        return this;
    }
    

    // throws Exception
    pub fn getTransformInfoInterface(self: *Self) ?*TransformInfoInterface {
        return Inheritance.upcast(?*TransformInfoInterface, self.transformInfoInterface);
    }
    

    pub fn getWeblisketSession(self: *Self) ?*WeblisketSession {
        return Inheritance.callStatic(WeblisketSession, "create2", .{ self.getPropertiesHashMap(), self.getPageContext() });
    }
    

    pub fn getPageContext(self: *Self) ?*PageContext {
        return Inheritance.upcast(?*PageContext, Inheritance.receiver(self.transformInfoInterface.?, "getPageContext").getPageContext());
    }
    

    pub fn getPropertiesHashMap(self: *Self) ?*HashMap {
        return Inheritance.upcast(?*HashMap, Inheritance.receiver(self.transformInfoInterface.?, "getPropertiesHashMap").getPropertiesHashMap());
    }
};

