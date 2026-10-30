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
const Notification = @import("android/app/Notification.zig").Notification;
const NotificationManager = @import("android/app/NotificationManager.zig").NotificationManager;
const PendingIntent = @import("android/app/PendingIntent.zig").PendingIntent;
const Context = @import("android/content/Context.zig").Context;
const Intent = @import("android/content/Intent.zig").Intent;
const AndroidInfoFactory = @import("org/allbinary/android/AndroidInfoFactory.zig").AndroidInfoFactory;
const ResourceUtil = @import("org/allbinary/data/resource/ResourceUtil.zig").ResourceUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const CommandUriAction = @import("org/allbinary/content/CommandUriAction.zig").CommandUriAction;
const NotificationBuilder = @import("org/allbinary/content/NotificationBuilder.zig").NotificationBuilder;
const NotificationBuilderAPI23 = @import("org/allbinary/content/NotificationBuilderAPI23.zig").NotificationBuilderAPI23;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const NotificationUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.content.NotificationUtil";
    logUtil: ?*LogUtil = null,
    notificationManager: ?*NotificationManager = null,
    notificationBuilder: ?*NotificationBuilder = null,
    var SINGLETON: ?*NotificationUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = NotificationUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.notificationManager = Inheritance.cast(?*NotificationManager, Inheritance.call(Inheritance.receiverOf(ResourceUtil.getInstance().?, "getContext").getContext().?, "getSystemService", .{ Context.NOTIFICATION_SERVICE }));
        this.notificationBuilder = null;
    }
    

    pub fn getInstance() ?*NotificationUtil {
        return Inheritance.upcast(?*NotificationUtil, NotificationUtil.SINGLETON);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const SDK_VERSION: i32 = Inheritance.receiverOf(AndroidInfoFactory.getInstance().?, "getVersion").getVersion();
        if (SDK_VERSION > 22) {
            this.notificationBuilder = Inheritance.upcast(@TypeOf(this.notificationBuilder), NotificationBuilderAPI23.create());
        } else {
            this.notificationBuilder = Inheritance.upcast(@TypeOf(this.notificationBuilder), NotificationBuilder.NULL_NOTIFICATION_BUILDER);
        }
        return this;
    }
    

    pub fn notify(self: *Self, command: ?*Command, resource: ?*String, message: ?*String) void {
        const context: ?*Context = Inheritance.upcast(?*Context, Inheritance.receiverOf(ResourceUtil.getInstance().?, "getContext").getContext());
        const intent: ?*Intent = Inheritance.upcast(?*Intent, Inheritance.call(CommandUriAction.getInstance().?, "getIntent", .{ command }));
        const integer: ?*Integer = Inheritance.upcast(?*Integer, Inheritance.call(ResourceUtil.getInstance().?, "getResourceId", .{ resource }));
        const FLAG_IMMUTABLE: i32 = 1 << @intCast(26);
        const SDK_VERSION: i32 = Inheritance.receiverOf(AndroidInfoFactory.getInstance().?, "getVersion").getVersion();
        const pendingIntent: ?*PendingIntent = Inheritance.upcast(?*PendingIntent, Inheritance.callStatic(PendingIntent, "getActivity", .{ context, 0, intent, (if (SDK_VERSION > 22) FLAG_IMMUTABLE else 0) }));
        if (self.notificationBuilder == null) {
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
            _ = Inheritance.call(self.logUtil.?, "putF", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.NOT_IMPLEMENTED });
            return;
        }
        _ = Inheritance.call(self.notificationBuilder.?, "build", .{ context, command, message, integer, pendingIntent });
    }
};

