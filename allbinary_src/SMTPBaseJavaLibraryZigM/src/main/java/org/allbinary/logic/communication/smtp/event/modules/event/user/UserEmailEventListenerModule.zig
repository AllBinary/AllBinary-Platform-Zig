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
// package org.allbinary.logic.communication.smtp.event.modules.event.user

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const UserInterface = @import("org/allbinary/business/user/UserInterface.zig").UserInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const BasicEmail = @import("org/allbinary/logic/communication/smtp/BasicEmail.zig").BasicEmail;
const EmailInterface = @import("org/allbinary/logic/communication/smtp/EmailInterface.zig").EmailInterface;
const EmailEvent = @import("org/allbinary/logic/communication/smtp/event/EmailEvent.zig").EmailEvent;
const UserEmailEventListenerInterface = @import("org/allbinary/logic/communication/smtp/event/UserEmailEventListenerInterface.zig").UserEmailEventListenerInterface;
const EmailQueueFactory = @import("org/allbinary/logic/communication/smtp/queue/EmailQueueFactory.zig").EmailQueueFactory;

pub const UserEmailEventListenerModule = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.event.modules.event.user.UserEmailEventListenerModule";
    logUtil: ?*LogUtil = null,
    userInterface: ?*UserInterface = null,
    // Implements UserEmailEventListenerInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create1(userInterface: ?*UserInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.userInterface = userInterface;
        return this;
    }
    

    // throws Exception
    pub fn onEmailSendFailure(self: *Self, emailEvent: ?*EmailEvent) void {
        const to: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.userInterface.?, "getSecondaryEmail").getSecondaryEmail());
        const email: ?*BasicEmail = Inheritance.callStatic(BasicEmail, "create2", .{ Inheritance.receiver(emailEvent.?, "getEmailInfo").getEmailInfo(), to });
        _ = Inheritance.call(EmailQueueFactory.getInstance().?, "offer", .{ Inheritance.cast(?*EmailInterface, email.?.getEmail()) });
    }
    

    // throws Exception
    pub fn onEmailSendRequest(self: *Self, emailEvent: ?*EmailEvent) void {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Add Email To Que For Sending: "), Object.toString(Object.of(emailEvent))), self, String.literal("onEmailSendRequest") });
        }
        const to: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(self.userInterface.?, "getMainEmail").getMainEmail());
        const email: ?*BasicEmail = Inheritance.callStatic(BasicEmail, "create2", .{ Inheritance.receiver(emailEvent.?, "getEmailInfo").getEmailInfo(), to });
        _ = Inheritance.call(EmailQueueFactory.getInstance().?, "offer", .{ Inheritance.cast(?*EmailInterface, email.?.getEmail()) });
    }
};

