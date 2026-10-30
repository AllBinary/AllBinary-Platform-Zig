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
const Builder = @import("android/app/Notification/Builder.zig").Builder;
const PendingIntent = @import("android/app/PendingIntent.zig").PendingIntent;
const Context = @import("android/content/Context.zig").Context;
const Parcelable = @import("android/os/Parcelable.zig").Parcelable;
const NotificationBuilder = @import("org/allbinary/content/NotificationBuilder.zig").NotificationBuilder;
const System = @import("java/lang/System.zig").System;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const NotificationBuilderAPI23 = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.content.NotificationBuilderAPI23";
    base: NotificationBuilder = undefined,

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = NotificationBuilder.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn build(self: *Self, context: ?*Context, command: ?*Command, message: ?*String, integer: ?*Integer, pendingIntent: ?*PendingIntent) ?*Parcelable {
        _ = self;
        const notification: ?*Notification = Inheritance.upcast(?*Notification, Inheritance.receiverOf(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.callStatic(Builder, "create1", .{ context }), "setSmallIcon", .{ integer.?.intValue() }).?, "setTicker", .{ message }).?, "setWhen", .{ std.Io.Timestamp.now(std.Io.Threaded.global_single_threaded.io(), .real).toMilliseconds() }).?, "setContentTitle", .{ command.?.getLabel() }).?, "setContentText", .{ message }).?, "setContentIntent", .{ pendingIntent }).?, "build").build());
        return Inheritance.upcast(?*Parcelable, notification);
    }
};

