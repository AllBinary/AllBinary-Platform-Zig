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
// package org.allbinary.logic.communication.smtp.email

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const UserInterface = @import("org/allbinary/business/user/UserInterface.zig").UserInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const UserEmailEventNameData = @import("org/allbinary/logic/communication/smtp/event/UserEmailEventNameData.zig").UserEmailEventNameData;
const UserEmailEventHandler = @import("org/allbinary/logic/communication/smtp/event/handler/UserEmailEventHandler.zig").UserEmailEventHandler;
const AdminUserEmailEventHandlerSingletons = @import("org/allbinary/logic/communication/smtp/event/handler/factory/AdminUserEmailEventHandlerSingletons.zig").AdminUserEmailEventHandlerSingletons;
const UserEmailEventHandlerSingletons = @import("org/allbinary/logic/communication/smtp/event/handler/factory/UserEmailEventHandlerSingletons.zig").UserEmailEventHandlerSingletons;
const AdminEmailInfo = @import("org/allbinary/logic/communication/smtp/info/AdminEmailInfo.zig").AdminEmailInfo;
const BasicEmailInfo = @import("org/allbinary/logic/communication/smtp/info/BasicEmailInfo.zig").BasicEmailInfo;
const EmailInfo = @import("org/allbinary/logic/communication/smtp/info/EmailInfo.zig").EmailInfo;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const NewPasswordEmail = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.email.NewPasswordEmail";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    abeClientInformation: ?*AbeClientInformationInterface = null,
    userInterface: ?*UserInterface = null,
    newPassword: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        
        
    }
    

    pub fn create3(abeClientInformation: ?*AbeClientInformationInterface, userInterface: ?*UserInterface, newPassword: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.abeClientInformation = abeClientInformation;
        this.userInterface = userInterface;
        this.newPassword = newPassword;
        return this;
    }
    

    // throws Exception
    pub fn process(self: *Self) void {
        _ = self.notifyStoreAdmin();
        _ = self.notifyUser();
    }
    

    // throws Exception
    pub fn notifyStoreAdmin(self: *Self) void {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("notifyStoreAdmin"), self, String.literal("notifyStoreAdmin") });
            }
            const emailSubject: ?*String = Inheritance.upcast(?*String, String.plus(String.literal("New Password For User: "), Inheritance.receiver(self.userInterface.?, "getUserName").getUserName()));
            const emailBody: ?*String = Inheritance.upcast(?*String, String.plus(String.literal("New Password: "), self.newPassword));
            const basicEmailInfo: ?*BasicEmailInfo = Inheritance.cast(?*BasicEmailInfo, Inheritance.callStatic(AdminEmailInfo, "create2", .{ emailSubject, emailBody }));
            const emailInfo: ?*EmailInfo = Inheritance.callStatic(EmailInfo, "create1", .{ basicEmailInfo });
            const adminUserEmailEventHandler: ?*UserEmailEventHandler = Inheritance.upcast(?*UserEmailEventHandler, Inheritance.call(AdminUserEmailEventHandlerSingletons.getInstance().?, "getInstance", .{ self.abeClientInformation, UserEmailEventNameData.NEWPASSWORD }));
            _ = Inheritance.call(adminUserEmailEventHandler.?, "receiveEmailInfo", .{ UserEmailEventNameData.NEWPASSWORD, emailInfo });
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("emailAdmin"), e });
//             }
    }
    

    // throws Exception
    pub fn notifyUser(self: *Self) void {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Email User"), self, String.literal("notifyUser()") });
            }
            const subject: ?*String = String.literal("New Password");
            const body: ?*String = Inheritance.upcast(?*String, String.plus(String.literal("New Password: "), self.newPassword));
            const basicEmailInfo: ?*BasicEmailInfo = Inheritance.cast(?*BasicEmailInfo, Inheritance.callStatic(AdminEmailInfo, "create2", .{ subject, body }));
            const emailInfo: ?*EmailInfo = Inheritance.callStatic(EmailInfo, "create1", .{ basicEmailInfo });
            const userEmailEventHandler: ?*UserEmailEventHandler = Inheritance.upcast(?*UserEmailEventHandler, Inheritance.call(UserEmailEventHandlerSingletons.getInstance().?, "getInstance", .{ self.abeClientInformation, UserEmailEventNameData.NEWPASSWORD, self.userInterface }));
            _ = Inheritance.call(userEmailEventHandler.?, "receiveEmailInfo", .{ UserEmailEventNameData.NEWPASSWORD, emailInfo });
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("notifyUser"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

