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
const ByteArrayOutputStream = @import("java/io/ByteArrayOutputStream.zig").ByteArrayOutputStream;
const PrintStream = @import("java/io/PrintStream.zig").PrintStream;
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Properties = @import("java/util/Properties.zig").Properties;
// const Address = @import("javax/mail/Address.zig").Address;
// const Authenticator = @import("javax/mail/Authenticator.zig").Authenticator;
// const Message = @import("javax/mail/Message.zig").Message;
// const MessagingException = @import("javax/mail/MessagingException.zig").MessagingException;
// const Session = @import("javax/mail/Session.zig").Session;
// const InternetAddress = @import("javax/mail/internet/InternetAddress.zig").InternetAddress;
// const InternetHeaders = @import("javax/mail/internet/InternetHeaders.zig").InternetHeaders;
// const MimeBodyPart = @import("javax/mail/internet/MimeBodyPart.zig").MimeBodyPart;
// const MimeMessage = @import("javax/mail/internet/MimeMessage.zig").MimeMessage;
// const MimeMultipart = @import("javax/mail/internet/MimeMultipart.zig").MimeMultipart;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const EmailData = @import("org/allbinary/logic/communication/smtp/EmailData.zig").EmailData;
const EmailInterface = @import("org/allbinary/logic/communication/smtp/EmailInterface.zig").EmailInterface;

pub const Email = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.Email";
    pub const java_interfaces = .{ EmailInterface };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    msg: ?*MimeMessage = null,
    properties: ?*Properties = null,
    bs: ?*ByteArrayOutputStream = null,
    isDebug: bool = false,
    // Implements EmailInterface
    const DEBUG: ?*String = String.literal("mail.debug");
    const SMTP_HOST: ?*String = String.literal("mail.smtp.host");
    const SMTP_PORT: ?*String = String.literal("mail.smtp.port");
    const SMTP_USER: ?*String = String.literal("mail.smtp.user");
    const SMTP_RETURN_ADDRESS: ?*String = String.literal("mail.from");
    const SMTP_LOCAL_HOST: ?*String = String.literal("mail.smtp.localhost");

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.msg = null;
        this.properties = null;
        this.bs = null;
        
    }
    

    pub fn create7(from: ?*String, to: ?*String, subject: ?*String, server: ?*String, textBody: ?*String, htmlAttachment: ?*String, contentBase: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.isDebug = false;
        _ = Inheritance.call(this, "init", .{ from, to, subject, server, textBody, htmlAttachment, contentBase });
        return this;
    }
    

    pub fn create8(from: ?*String, to: ?*String, subject: ?*String, server: ?*String, textBody: ?*String, htmlAttachment: ?*String, contentBase: ?*String, isDebug: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.isDebug = isDebug;
        _ = Inheritance.call(this, "init", .{ from, to, subject, server, textBody, htmlAttachment, contentBase });
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self, from: ?*String, to: ?*String, subject: ?*String, server: ?*String, textBody: ?*String, htmlAttachment: ?*String, contentBase: ?*String) void {
        { // try
            const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
            const mimeBodyParts: []?*MimeBodyPart = array_N67199: { const array_N67199_array = allocator.alloc(?*MimeBodyPart, @intCast((if (!Inheritance.call(stringValidationUtil.?, "isEmpty", .{ htmlAttachment })) 2 else 1))) catch unreachable; @memset(array_N67199_array, null); break :array_N67199 array_N67199_array; };
            mimeBodyParts[@intCast(0)] = Inheritance.upcast(@TypeOf(mimeBodyParts[@intCast(0)]), MimeBodyPart.create());
            _ = Inheritance.call(mimeBodyParts[@intCast(0)].?, "setText", .{ textBody });
            if (!Inheritance.call(stringValidationUtil.?, "isEmpty", .{ htmlAttachment })) {
                const internetHeaders: ?*InternetHeaders = InternetHeaders.create();
                _ = Inheritance.call(internetHeaders.?, "addHeader", .{ String.literal("Content-Type"), String.literal("text/html") });
                if (!Inheritance.call(stringValidationUtil.?, "isEmpty", .{ contentBase })) {
                    _ = Inheritance.call(internetHeaders.?, "addHeader", .{ String.literal("Content-Base"), contentBase });
                }
                mimeBodyParts[@intCast(1)] = Inheritance.upcast(@TypeOf(mimeBodyParts[@intCast(1)]), Inheritance.callStatic(MimeBodyPart, "create2", .{ internetHeaders, htmlAttachment.?.getBytes() }));
            }
            _ = Inheritance.call(self, "init", .{ server, Inheritance.cast(?*Authenticator, null), @constCast(&[_]?*InternetAddress{ Inheritance.callStatic(InternetAddress, "create1", .{ from }) })[0..], @constCast(&[_]?*InternetAddress{ Inheritance.callStatic(InternetAddress, "create1", .{ to }) })[0..], Inheritance.cast([]?*InternetAddress, null), Inheritance.cast([]?*InternetAddress, null), subject, mimeBodyParts });
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGINGERROR })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("emailConstructor"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    // throws MessagingException
    pub fn init8(self: *Self, server: ?*String, authenticator: ?*Authenticator, addresses_from: []?*InternetAddress, addresses_to: []?*InternetAddress, addresses_cc: []?*InternetAddress, addresses_bcc: []?*InternetAddress, subject: ?*String, mimeBodyParts: []?*MimeBodyPart) void {
        self.properties = Properties.create();
        _ = Inheritance.call(self.properties.?, "put", .{ Email.SMTP_HOST, server });
        { // try
            const hostName: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
            if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ hostName })) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGINGERROR })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Unable to get HostName so using fake"), self, String.literal("init()") });
                }
                _ = Inheritance.call(self.properties.?, "put", .{ Email.SMTP_LOCAL_HOST, String.literal("FakeHostName") });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Continuing on Exception: Unable to get HostName"), self, String.literal("init()"), e });
//             }
//             _ = Inheritance.call(self.properties.?, "put", .{ Email.SMTP_LOCAL_HOST, String.literal("FakeHostName") });
        if (self.isDebug) {
            _ = Inheritance.call(self.properties.?, "put", .{ Email.DEBUG, String.literal("true") });
        }
        const session: ?*Session = Inheritance.upcast(?*Session, Inheritance.callStatic(Session, "getInstance", .{ self.properties, authenticator }));
        if (self.isDebug) {
            _ = Inheritance.call(session.?, "setDebug", .{ true });
            self.bs = ByteArrayOutputStream.create();
            const printStream: ?*PrintStream = Inheritance.callStatic(PrintStream, "create1", .{ self.bs });
            _ = Inheritance.call(session.?, "setDebugOut", .{ printStream });
        }
        self.msg = Inheritance.callStatic(MimeMessage, "create1", .{ session });
        _ = Inheritance.call(self.msg.?, "addFrom", .{ addresses_from });
        _ = Inheritance.call(self.msg.?, "setRecipients", .{ Message.RecipientType.?.TO, addresses_to });
        _ = Inheritance.call(self.msg.?, "setRecipients", .{ Message.RecipientType.?.CC, addresses_cc });
        _ = Inheritance.call(self.msg.?, "setRecipients", .{ Message.RecipientType.?.BCC, addresses_bcc });
        _ = Inheritance.call(self.msg.?, "setSubject", .{ subject });
        const mimeMultipart: ?*MimeMultipart = MimeMultipart.create();
        {
            var i: i32 = 0;
            while (i < @as(i32, @intCast(mimeBodyParts.len))) : (i += 1) {
            _ = Inheritance.call(mimeMultipart.?, "addBodyPart", .{ mimeBodyParts[@intCast(i)] });
            }
        }
        _ = Inheritance.call(self.msg.?, "setContent", .{ mimeMultipart });
    }
    

    pub fn getMimeMessage(self: *Self) ?*MimeMessage {
        return self.msg;
    }
    

    pub fn getDebugInfo(self: *Self) ?*String {
        if (self.isDebug) {
            return Inheritance.upcast(?*String, String.plus(String.literal("More Logging Before This To Standard Out: "), Inheritance.callStatic(String, "create1", .{ Object.toString(Object.of(self.bs)) })));
        } else {
            return String.literal("Debugging Is Off");
        }
    }
    

    // throws Exception
    pub fn log(self: *Self) ?*String {
        return Inheritance.upcast(?*String, String.plus(String.literal("\nHashMap: "), Object.toString(Object.of(self.toHashMap()))));
    }
    

    // throws Exception
    pub fn toHashMap(self: *Self) ?*HashMap {
        { // try
            const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            _ = Inheritance.call(hashMap.?, "put", .{ EmailData.SERVER, Inheritance.cast(?*String, Inheritance.call(self.properties.?, "get", .{ Email.SMTP_HOST })) });
            var addresses: []?*Address = self.msg.?.getFrom();
            if (addresses != null) {
                {
                    var index: i32 = 0;
                    while (index < @as(i32, @intCast(addresses.len))) : (index += 1) {
                    _ = Inheritance.call(hashMap.?, "put", .{ EmailData.FROM, Object.toString(Object.of(addresses[@intCast(index)])) });
                    }
                }
            }
            addresses = Inheritance.upcast(@TypeOf(addresses), Inheritance.call(self.msg.?, "getRecipients", .{ Message.RecipientType.?.TO }));
            if (addresses != null) {
                {
                    var index: i32 = 0;
                    while (index < @as(i32, @intCast(addresses.len))) : (index += 1) {
                    _ = Inheritance.call(hashMap.?, "put", .{ EmailData.TO, Object.toString(Object.of(addresses[@intCast(index)])) });
                    }
                }
            }
            addresses = Inheritance.upcast(@TypeOf(addresses), Inheritance.call(self.msg.?, "getRecipients", .{ Message.RecipientType.?.CC }));
            if (addresses != null) {
                {
                    var index: i32 = 0;
                    while (index < @as(i32, @intCast(addresses.len))) : (index += 1) {
                    _ = Inheritance.call(hashMap.?, "put", .{ EmailData.CC, Object.toString(Object.of(addresses[@intCast(index)])) });
                    }
                }
            }
            addresses = Inheritance.upcast(@TypeOf(addresses), Inheritance.call(self.msg.?, "getRecipients", .{ Message.RecipientType.?.BCC }));
            if (addresses != null) {
                {
                    var index: i32 = 0;
                    while (index < @as(i32, @intCast(addresses.len))) : (index += 1) {
                    _ = Inheritance.call(hashMap.?, "put", .{ EmailData.BCC, Object.toString(Object.of(addresses[@intCast(index)])) });
                    }
                }
            }
            _ = Inheritance.call(hashMap.?, "put", .{ EmailData.SUBJECT, self.msg.?.getSubject() });
            const mimeMultipart: ?*MimeMultipart = Inheritance.cast(?*MimeMultipart, self.msg.?.getContent());
            if (mimeMultipart != null) {
                {
                    var index: i32 = 0;
                    while (index < mimeMultipart.?.getCount()) : (index += 1) {
                    const content: ?*String = Inheritance.cast(?*String, Inheritance.receiverOf(Inheritance.call(mimeMultipart.?, "getBodyPart", .{ index }).?, "getContent").getContent());
                    _ = Inheritance.call(hashMap.?, "put", .{ EmailData.CONTENT, content });
                    }
                }
            }
            return hashMap;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("toHashMap()"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, EmailData.NAME, self.toHashMap() }));
        return node;
    }
    

    // throws Exception
    pub fn toXmlDoc(self: *Self) ?*Document {
        _ = self;
        std.debug.panic("{any}", .{exception: { _ = CommonStrings.getInstance().?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
};

