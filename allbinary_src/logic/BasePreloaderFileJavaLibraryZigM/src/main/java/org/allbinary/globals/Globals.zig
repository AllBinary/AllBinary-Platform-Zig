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
// package org.allbinary.globals

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const WebappClassLoaderInfo = @import("org/allbinary/logic/system/loader/WebappClassLoaderInfo.zig").WebappClassLoaderInfo;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const AppUrlGlobals = @import("org/allbinary/globals/AppUrlGlobals.zig").AppUrlGlobals;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;

pub const Globals = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.globals.Globals";
    logUtil: ?*LogUtil = null,
    var instance: ?*Globals = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Globals.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*Globals {
        return Inheritance.upcast(?*Globals, Globals.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn init(self: *Self, classLoader: ?*ClassLoader, pathString: ?*String) void {
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        const appUrlGlobals: ?*AppUrlGlobals = AppUrlGlobals.create();
        _ = Inheritance.call(appUrlGlobals.?, "setWebappPath", .{ pathString });
        _ = Inheritance.callStatic(URLGLOBALS, "init", .{ appUrlGlobals });
        _ = Inheritance.callStatic(WebappClassLoaderInfo, "setLoader", .{ classLoader });
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Setting Up AllBinary System Configuration Args: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ pathString });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" ClassLoader: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(classLoader).?.class))).?))).name) });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, commonStrings.?.INIT });
        const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
        if (Inheritance.call(stringValidationUtil.?, "isEmpty", .{ pathString })) {
            _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("No Path Provided. Using Process Path: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ pathString });
            _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.EQUALS });
            _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ URLGLOBALS.getWebappPath() });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, commonStrings.?.INIT });
        }
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Webapp Path Set To: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ URLGLOBALS.getWebappPath() });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, commonStrings.?.INIT });
    }
};

