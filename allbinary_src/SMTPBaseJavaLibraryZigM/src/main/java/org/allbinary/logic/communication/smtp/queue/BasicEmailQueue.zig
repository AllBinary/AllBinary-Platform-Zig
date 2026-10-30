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
// package org.allbinary.logic.communication.smtp.queue

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Transport = @import("javax/mail/Transport.zig").Transport;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const EmailInterface = @import("org/allbinary/logic/communication/smtp/EmailInterface.zig").EmailInterface;
const BasicQueue = @import("org/allbinary/logic/util/queue/BasicQueue.zig").BasicQueue;
const EmailQueueInterface = @import("org/allbinary/logic/communication/smtp/queue/EmailQueueInterface.zig").EmailQueueInterface;

pub const BasicEmailQueue = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.queue.BasicEmailQueue";
    pub const java_interfaces = .{ EmailQueueInterface };
    base: BasicQueue = undefined,
    logUtil: ?*LogUtil = null,
    // Implements EmailQueueInterface
    var instance: ?*BasicEmailQueue = undefined;
    var basicEmailQueue: ?*BasicEmailQueue = null;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BasicEmailQueue.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicQueue.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*BasicEmailQueue {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        if (BasicEmailQueue.basicEmailQueue == null) {
            BasicEmailQueue.basicEmailQueue = Inheritance.upcast(@TypeOf(BasicEmailQueue.basicEmailQueue), BasicEmailQueue.create());
        }
        return Inheritance.upcast(?*BasicEmailQueue, BasicEmailQueue.basicEmailQueue);
    }
    

    // throws Exception
    pub fn offer(self: *Self, emailInterface: ?*EmailInterface) bool {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self, "offer", .{ Inheritance.cast(?Object, emailInterface) });
        _ = Inheritance.call(self, "post", .{ emailInterface });
        return true;
    }
    

    pub fn remove1(self: *Self, emailInterface: ?*EmailInterface) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self, "remove", .{ Inheritance.cast(?Object, emailInterface) });
    }
    

    pub fn remove(self: *Self) ?*EmailInterface {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        return null;
    }
    

    // throws Exception
    pub fn post(self: *Self, emailInterface: ?*EmailInterface) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        if (Inheritance.call(self, "send", .{ emailInterface })) {
            _ = Inheritance.call(self, "remove", .{ emailInterface });
            _ = self.processAllUnsent();
        }
    }
    

    // throws Exception
    pub fn processAllUnsent(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const size: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "queueVector").*.?, "size").size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const emailInterface: ?*EmailInterface = Inheritance.cast(?*EmailInterface, Inheritance.call(Inheritance.fieldPointer(self, "queueVector").*.?, "get", .{ index }));
            if (Inheritance.call(self, "send", .{ emailInterface })) {
                _ = Inheritance.call(self, "remove", .{ emailInterface });
                _ = self.processAllUnsent();
            }
            }
        }
    }
    

    pub fn send(self: *Self, emailInterface: ?*EmailInterface) bool {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Sending: "), Inheritance.receiver(emailInterface.?, "log").log()), self, String.literal("send") });
            }
            _ = Inheritance.callStatic(Transport, "send", .{ Inheritance.receiver(emailInterface.?, "getMimeMessage").getMimeMessage() });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Email Send Debug: "), Inheritance.receiver(emailInterface.?, "getDebugInfo").getDebugInfo()), self, String.literal("send") });
            }
            return true;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(String.literal("Failed Email Send Debug: "), Inheritance.receiver(emailInterface.?, "getDebugInfo").getDebugInfo()), self, String.literal("send"), e });
//             }
//             return false;
    }
};

