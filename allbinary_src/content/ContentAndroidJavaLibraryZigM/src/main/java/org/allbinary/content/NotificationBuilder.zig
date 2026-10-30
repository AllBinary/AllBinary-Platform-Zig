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
const NullParcelable = @import("org/allbinary/android/NullParcelable.zig").NullParcelable;
// const Command = @import("javax/microedition/lcdui/Command.zig").Command;
const PendingIntent = @import("android/app/PendingIntent.zig").PendingIntent;
const Context = @import("android/content/Context.zig").Context;
const Parcelable = @import("android/os/Parcelable.zig").Parcelable;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const NotificationBuilder = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.content.NotificationBuilder";
    pub var NULL_NOTIFICATION_BUILDER: ?*NotificationBuilder = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_NOTIFICATION_BUILDER = NotificationBuilder.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn build(self: *Self, context: ?*Context, command: ?*Command, message: ?*String, integer: ?*Integer, pendingIntent: ?*PendingIntent) ?*Parcelable {
        _ = context;
        _ = command;
        _ = message;
        _ = integer;
        _ = pendingIntent;
        _ = self;
        return Inheritance.upcast(?*Parcelable, NullParcelable.NULL_PARCELABLE);
    }
};

