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
const Intent = @import("android/content/Intent.zig").Intent;
const Uri = @import("android/net/Uri.zig").Uri;
const ResourceUtil = @import("org/allbinary/data/resource/ResourceUtil.zig").ResourceUtil;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;

pub const CommandUriAction = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.content.CommandUriAction";
    logUtil: ?*LogUtil = null,
    hashtable: ?*ABHashtable = null,
    var instance: ?*CommandUriAction = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = CommandUriAction.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.hashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*CommandUriAction {
        return Inheritance.upcast(?*CommandUriAction, CommandUriAction.instance);
    }
    

    pub fn add(self: *Self, command: ?*Command, url: ?*String) void {
        _ = Inheritance.call(self.hashtable.?, "put", .{ command, url });
    }
    

    pub fn process(self: *Self, command: ?*Command) void {
        { // try
            const intent: ?*Intent = Inheritance.upcast(?*Intent, Inheritance.call(self, "getIntent", .{ command }));
            _ = Inheritance.call(Inheritance.receiverOf(ResourceUtil.getInstance().?, "getContext").getContext().?, "startActivity", .{ intent });
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.PROCESS, e });
    }
    

    pub fn getIntent(self: *Self, command: ?*Command) ?*Intent {
        const url: ?*String = Inheritance.cast(?*String, Inheritance.call(self.hashtable.?, "get", .{ command }));
        const uri: ?*Uri = Inheritance.upcast(?*Uri, Inheritance.callStatic(Uri, "parse", .{ url }));
        const intent: ?*Intent = Inheritance.callStatic(Intent, "create2", .{ Intent.ACTION_VIEW, uri });
        return intent;
    }
};

