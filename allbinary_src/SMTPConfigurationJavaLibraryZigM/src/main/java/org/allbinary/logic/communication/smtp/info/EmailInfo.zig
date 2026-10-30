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
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicEmailInfo = @import("org/allbinary/logic/communication/smtp/info/BasicEmailInfo.zig").BasicEmailInfo;

pub const EmailInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.info.EmailInfo";
    logUtil: ?*LogUtil = null,
    basicEmailInfo: ?*BasicEmailInfo = null,
    htmlAttachment: ?*String = null,
    contentBase: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.basicEmailInfo = null;
        this.htmlAttachment = null;
        this.contentBase = null;
    }
    

    pub fn create1(basicEmailInfo: ?*BasicEmailInfo) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
            _ = Inheritance.call(this.logUtil.?, "putF", .{ commonStrings.?.START, this, commonStrings.?.CONSTRUCTOR });
        }
        _ = Inheritance.call(this, "init", .{ basicEmailInfo, null, null });
        return this;
    }
    

    pub fn create3(basicEmailInfo: ?*BasicEmailInfo, htmlAttachment: ?*String, contentBase: ?*String) *Self {
        _ = htmlAttachment;
        _ = contentBase;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
            _ = Inheritance.call(this.logUtil.?, "putF", .{ commonStrings.?.START, this, commonStrings.?.CONSTRUCTOR });
        }
        _ = Inheritance.call(this, "init", .{ basicEmailInfo, null, null });
        return this;
    }
    

    pub fn init(self: *Self, basicEmailInfo: ?*BasicEmailInfo, htmlAttachment: ?*String, contentBase: ?*String) void {
        self.basicEmailInfo = basicEmailInfo;
        self.htmlAttachment = htmlAttachment;
        self.contentBase = contentBase;
    }
    

    pub fn getBasicEmailInfo(self: *Self) ?*BasicEmailInfo {
        return self.basicEmailInfo;
    }
    

    pub fn getHtmlAttachment(self: *Self) ?*String {
        return self.htmlAttachment;
    }
    

    pub fn getContentBase(self: *Self) ?*String {
        return self.contentBase;
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, String.plus(String.literal("Email Info: \n "), Object.toString(Object.of(self.getBasicEmailInfo()))));
    }
};

