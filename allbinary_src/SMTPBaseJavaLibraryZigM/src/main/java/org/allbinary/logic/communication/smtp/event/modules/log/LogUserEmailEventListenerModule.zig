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
// package org.allbinary.logic.communication.smtp.event.modules.log

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const EmailEvent = @import("org/allbinary/logic/communication/smtp/event/EmailEvent.zig").EmailEvent;
const UserEmailEventListenerInterface = @import("org/allbinary/logic/communication/smtp/event/UserEmailEventListenerInterface.zig").UserEmailEventListenerInterface;

pub const LogUserEmailEventListenerModule = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule";
    logUtil: ?*LogUtil = null,
    // Implements UserEmailEventListenerInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn onEmailSendRequest(self: *Self, userEmailInfoEvent: ?*EmailEvent) void {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
            const message: ?*String = Inheritance.upcast(?*String, String.plus(String.literal("Logging EmailEvent - Temporary Listener for debugging.\n\n"), Object.toString(Object.of(userEmailInfoEvent))));
            _ = Inheritance.call(self.logUtil.?, "putF", .{ message, self, String.literal("onEmailSendRequest") });
        }
    }
};

