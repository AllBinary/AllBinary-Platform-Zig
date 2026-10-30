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
// package org.allbinary.logic.communication.smtp

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const MimeMessage = @import("javax/mail/internet/MimeMessage.zig").MimeMessage;
const BasicEmailInfo = @import("org/allbinary/logic/communication/smtp/info/BasicEmailInfo.zig").BasicEmailInfo;
const EmailInfo = @import("org/allbinary/logic/communication/smtp/info/EmailInfo.zig").EmailInfo;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const AbEmail = @import("org/allbinary/logic/communication/smtp/AbEmail.zig").AbEmail;
const Email = @import("org/allbinary/logic/communication/smtp/Email.zig").Email;
const EmailInterface = @import("org/allbinary/logic/communication/smtp/EmailInterface.zig").EmailInterface;

pub const BasicEmail = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.BasicEmail";
    pub const java_interfaces = .{ EmailInterface };
    email: ?*AbEmail = null,
    // Implements EmailInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create2(emailInfo: ?*EmailInfo, to: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const basicEmailInfo: ?*BasicEmailInfo = Inheritance.upcast(?*BasicEmailInfo, emailInfo.?.getBasicEmailInfo());
        this.email = Inheritance.callStatic(AbEmail, "create7", .{ Inheritance.receiverOf(basicEmailInfo.?.getEmailServerConfigurationInterface().?, "getSmtpServer").getSmtpServer(), Inheritance.receiverOf(basicEmailInfo.?.getEmailServerConfigurationInterface().?, "getAccountName").getAccountName(), to, basicEmailInfo.?.getSubject(), basicEmailInfo.?.getTextBody(), emailInfo.?.getHtmlAttachment(), emailInfo.?.getContentBase() });
        return this;
    }
    

    pub fn getEmail(self: *Self) ?*Email {
        return Inheritance.cast(?*Email, self.email.?.getEmail());
    }
    

    pub fn getMimeMessage(self: *Self) ?*MimeMessage {
        return Inheritance.upcast(?*MimeMessage, self.email.?.getMimeMessage());
    }
    

    pub fn getDebugInfo(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.email.?.getDebugInfo());
    }
    

    // throws Exception
    pub fn log(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.email.?.log());
    }
    

    // throws Exception
    pub fn toHashMap(self: *Self) ?*HashMap {
        return Inheritance.upcast(?*HashMap, self.email.?.toHashMap());
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        return Inheritance.upcast(?*Node, Inheritance.call(self.email.?, "toXmlNode", .{ document }));
    }
    

    // throws Exception
    pub fn toXmlDoc(self: *Self) ?*Document {
        return Inheritance.upcast(?*Document, self.email.?.toXmlDoc());
    }
};

