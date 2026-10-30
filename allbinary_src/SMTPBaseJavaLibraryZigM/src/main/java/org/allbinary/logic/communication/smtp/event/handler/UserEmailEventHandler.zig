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
// package org.allbinary.logic.communication.smtp.event.handler

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const EmailEvent = @import("org/allbinary/logic/communication/smtp/event/EmailEvent.zig").EmailEvent;
const UserEmailEventListenerInterface = @import("org/allbinary/logic/communication/smtp/event/UserEmailEventListenerInterface.zig").UserEmailEventListenerInterface;
const UserEmailEventNameData = @import("org/allbinary/logic/communication/smtp/event/UserEmailEventNameData.zig").UserEmailEventNameData;
const EmailInfo = @import("org/allbinary/logic/communication/smtp/info/EmailInfo.zig").EmailInfo;

pub const UserEmailEventHandler = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler";
    emailVector: ?*BasicArrayList = null,
    emailInfo: ?*EmailInfo = null,
    userEmailEventNameData: ?*UserEmailEventNameData = null,

    fn initFields(this: *Self) void {
        
        this.emailInfo = null;
        this.userEmailEventNameData = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.emailVector = Inheritance.upcast(@TypeOf(this.emailVector), BasicArrayListD.create());
        return this;
    }
    

    // throws Exception
    pub fn receiveEmailInfo(self: *Self, userEmailEventNameData: ?*UserEmailEventNameData, emailInfo: ?*EmailInfo) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        self.userEmailEventNameData = userEmailEventNameData;
        self.emailInfo = emailInfo;
        _ = self.fireEmailEvent();
    }
    

    pub fn addListener(self: *Self, vector: ?*BasicArrayList) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const size: i32 = vector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const userEmailEventListenerInterface: ?*UserEmailEventListenerInterface = Inheritance.cast(?*UserEmailEventListenerInterface, Inheritance.call(vector.?, "get", .{ index }));
            _ = Inheritance.call(self, "addListener", .{ userEmailEventListenerInterface });
            }
        }
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn addListener(self: *Self, emailEventListenerInterface: ?*UserEmailEventListenerInterface) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self.emailVector.?, "add", .{ emailEventListenerInterface });
    }
    

    pub fn removeListener(self: *Self, emailEventListenerInterface: ?*UserEmailEventListenerInterface) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self.emailVector.?, "remove", .{ emailEventListenerInterface });
    }
    

    // throws Exception
    pub fn fireEmailEvent(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const emailEvent: ?*EmailEvent = Inheritance.callStatic(EmailEvent, "create4", .{ self, self.userEmailEventNameData, self.emailInfo, 0 });
        const size: i32 = self.emailVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const emailEventListenerInterface: ?*UserEmailEventListenerInterface = Inheritance.cast(?*UserEmailEventListenerInterface, Inheritance.call(self.emailVector.?, "get", .{ index }));
            _ = Inheritance.call(emailEventListenerInterface.?, "onEmailSendRequest", .{ emailEvent });
            }
        }
    }
};

