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
// package org.allbinary.logic.communication.smtp.info

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ContextConfigurationInterface = @import("org/allbinary/business/context/configuration/ContextConfigurationInterface.zig").ContextConfigurationInterface;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const EmailServerConfigurationInterface = @import("org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationInterface.zig").EmailServerConfigurationInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicEmailInfo = @import("org/allbinary/logic/communication/smtp/info/BasicEmailInfo.zig").BasicEmailInfo;

pub const StoreEmailInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.info.StoreEmailInfo";
    base: BasicEmailInfo = undefined,
    logUtil: ?*LogUtil = null,
    storeFrontInterface: ?*StoreFrontInterface = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create3(storeFrontInterface: ?*StoreFrontInterface, subject: ?*String, textBody: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicEmailInfo, "create2", .{ subject, textBody }).*;
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
            _ = Inheritance.call(this.logUtil.?, "putF", .{ commonStrings.?.START, this, commonStrings.?.CONSTRUCTOR });
        }
        this.storeFrontInterface = storeFrontInterface;
        _ = this.init();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self) void {
        const contextConfigurationInterface: ?*ContextConfigurationInterface = Inheritance.upcast(?*ContextConfigurationInterface, Inheritance.receiver(self.storeFrontInterface.?, "getContextConfigurationInterface").getContextConfigurationInterface());
        const emailServerConfigurationInterface: ?*EmailServerConfigurationInterface = Inheritance.upcast(?*EmailServerConfigurationInterface, contextConfigurationInterface.?.getEmailServerConfigurationInterface());
        _ = Inheritance.call(self, "setEmailServerConfigurationInterface", .{ emailServerConfigurationInterface });
    }
};

