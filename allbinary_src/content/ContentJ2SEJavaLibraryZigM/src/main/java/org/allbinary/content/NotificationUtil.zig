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
// package org.allbinary.content

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Command = @import("javax/microedition/lcdui/Command.zig").Command;
const ResourceUtil = @import("org/allbinary/data/resource/ResourceUtil.zig").ResourceUtil;
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const CommandUriAction = @import("org/allbinary/content/CommandUriAction.zig").CommandUriAction;
const System = @import("java/lang/System.zig").System;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const NotificationUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.content.NotificationUtil";
    notificationManager: ?*NotificationManager = null,
    var SINGLETON: ?*NotificationUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = NotificationUtil.create();
    }

    fn initFields(this: *Self) void {
        this.notificationManager = Inheritance.cast(?*NotificationManager, Inheritance.call(Inheritance.receiverOf(ResourceUtil.getInstance().?, "getContext").getContext().?, "getSystemService", .{ Context.NOTIFICATION_SERVICE }));
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*NotificationUtil {
        return Inheritance.upcast(?*NotificationUtil, NotificationUtil.SINGLETON);
    }
    

    pub fn notify(self: *Self, command: ?*Command, resource: ?*String, message: ?*String) void {
        const context: ?*Context = Inheritance.upcast(?*Context, Inheritance.receiverOf(ResourceUtil.getInstance().?, "getContext").getContext());
        const intent: ?*Intent = Inheritance.upcast(?*Intent, Inheritance.call(CommandUriAction.getInstance().?, "getIntent", .{ command }));
        const integer: ?*Integer = Inheritance.upcast(?*Integer, Inheritance.call(ResourceUtil.getInstance().?, "getResourceId", .{ resource }));
        const notification: ?*Notification = Inheritance.callStatic(Notification, "create3", .{ integer.?.intValue(), message, std.Io.Timestamp.now(std.Io.Threaded.global_single_threaded.io(), .real).toMilliseconds() });
        const pendingIntent: ?*PendingIntent = Inheritance.upcast(?*PendingIntent, Inheritance.callStatic(PendingIntent, "getActivity", .{ context, 0, intent, 0 }));
        _ = Inheritance.call(notification.?, "setLatestEventInfo", .{ context, command.?.getLabel(), message, pendingIntent });
        _ = Inheritance.call(self.notificationManager.?, "notify", .{ Inheritance.call(TsUtil.getInstance().?, "hashCode", .{ command }), notification });
    }
};

