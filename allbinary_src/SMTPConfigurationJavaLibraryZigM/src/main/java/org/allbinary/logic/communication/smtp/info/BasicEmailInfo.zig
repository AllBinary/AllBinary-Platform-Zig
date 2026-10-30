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
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const EmailServerConfigurationInterface = @import("org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationInterface.zig").EmailServerConfigurationInterface;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const BasicEmailInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.info.BasicEmailInfo";
    logUtil: ?*LogUtil = null,
    subject: ?*String = null,
    textBody: ?*String = null,
    emailServerConfigurationInterface: ?*EmailServerConfigurationInterface = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
        this.emailServerConfigurationInterface = null;
    }
    

    pub fn create2(subject: ?*String, textBody: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
            _ = Inheritance.call(this.logUtil.?, "putF", .{ commonStrings.?.START, this, commonStrings.?.CONSTRUCTOR });
        }
        this.subject = subject;
        this.textBody = textBody;
        return this;
    }
    

    pub fn getSubject(self: *Self) ?*String {
        return self.subject;
    }
    

    pub fn getTextBody(self: *Self) ?*String {
        return self.textBody;
    }
    

    pub fn getEmailServerConfigurationInterface(self: *Self) ?*EmailServerConfigurationInterface {
        return self.emailServerConfigurationInterface;
    }
    

    pub fn setEmailServerConfigurationInterface(self: *Self, emailServerConfigurationInterface: ?*EmailServerConfigurationInterface) void {
        self.emailServerConfigurationInterface = emailServerConfigurationInterface;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.getEmailServerConfigurationInterface())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Subject: \n") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getSubject() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nText Body: \n") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getTextBody() });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    // throws Exception
    pub fn init(self: *Self) void {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};

