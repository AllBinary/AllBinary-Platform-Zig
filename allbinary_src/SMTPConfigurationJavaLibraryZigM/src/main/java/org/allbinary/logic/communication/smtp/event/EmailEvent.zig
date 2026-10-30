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
// package org.allbinary.logic.communication.smtp.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const EventObject = @import("java/util/EventObject.zig").EventObject;
const EmailInfo = @import("org/allbinary/logic/communication/smtp/info/EmailInfo.zig").EmailInfo;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const UserEmailEventNameData = @import("org/allbinary/logic/communication/smtp/event/UserEmailEventNameData.zig").UserEmailEventNameData;

pub const EmailEvent = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.event.EmailEvent";
    base: EventObject = undefined,
    emailInfo: ?*EmailInfo = null,
    userEmailEventNameData: ?*UserEmailEventNameData = null,
    attempts: i32 = 0,

    fn initFields(this: *Self) void {
        
        
        this.attempts = 0;
    }
    

    pub fn create4(emailEventHandler: ?Object, userEmailEventNameData: ?*UserEmailEventNameData, emailInfo: ?*EmailInfo, attempts: i32) *Self {
        _ = attempts;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(EventObject, "create1", .{ emailEventHandler }).*;
        this.initFields();
        this.userEmailEventNameData = userEmailEventNameData;
        this.emailInfo = emailInfo;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getEmailInfo(self: *Self) ?*EmailInfo {
        return self.emailInfo;
    }
    

    pub fn getAttempts(self: *Self) i32 {
        return self.attempts;
    }
    

    pub fn setAttempts(self: *Self, attempts: i32) void {
        self.attempts = attempts;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("EmailEvent Log: \n") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Event Name: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.userEmailEventNameData)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.getEmailInfo())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nNumber of Attempts: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getAttempts() });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

