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
// package org.allbinary.data.resource

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const InputStream = @import("java/io/InputStream.zig").InputStream;
const Activity = @import("android/app/Activity.zig").Activity;
const Context = @import("android/content/Context.zig").Context;
const Resources = @import("android/content/res/Resources.zig").Resources;
const DebugFactory = @import("org/allbinary/debug/DebugFactory.zig").DebugFactory;
const NoDebug = @import("org/allbinary/debug/NoDebug.zig").NoDebug;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const HashtableUtil = @import("org/allbinary/util/HashtableUtil.zig").HashtableUtil;
const Integer = @import("java/lang/Integer.zig").Integer;

//Android
pub const ResourceUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.resource.ResourceUtil";
    logUtil: ?*LogUtil = null,
    context: ?Object = null,
    resources: ?Object = null,
    hashMap: ?*ABHashtable = null,
    var instance: ?*ResourceUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ResourceUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.context = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
        this.resources = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
        this.hashMap = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
    }
    

    pub fn getInstance() ?*ResourceUtil {
        return Inheritance.upcast(?*ResourceUtil, ResourceUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn setLoadingPaths(self: *Self, path: ?*String, ext: ?*String) void {
        _ = path;
        _ = ext;
        _ = Inheritance.call(self.logUtil.?, "putF", .{ CommonStrings.getInstance().?.NOT_IMPLEMENTED, self, String.literal("setLoadingPaths") });
    }
    

    pub fn getContext(self: *Self) ?*Context {
        return Inheritance.cast(?*Context, self.context);
    }
    

    pub fn setContextFromActivity(self: *Self, activity: ?*Activity) void {
        self.context = Inheritance.upcast(@TypeOf(self.context), activity);
    }
    

    pub fn setContext(self: *Self, aContext: ?*Context) void {
        self.context = Inheritance.upcast(@TypeOf(self.context), aContext);
    }
    

    pub fn getResourceId(self: *Self, resource: ?*String) ?*Integer {
        const value: ?*Integer = Inheritance.cast(?*Integer, Inheritance.call(self.hashMap.?, "get", .{ resource }));
        if (!Object.same(DebugFactory.getInstance(), NoDebug.getInstance())) {
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ resource }).?, "append", .{ CommonSeps.getInstance().?.COLON }).?, "append", .{ String.valueOf(value.?) }))), self, String.literal("getResourceId") });
        }
        return value;
    }
    

    pub fn addResource(self: *Self, resource: ?*String, value: ?*Integer) void {
        if (!Object.same(DebugFactory.getInstance(), NoDebug.getInstance())) {
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ resource }).?, "append", .{ CommonSeps.getInstance().?.COLON }).?, "append", .{ String.valueOf(value.?) }))), self, String.literal("addResource") });
            if (Inheritance.call(self, "containsDuplicate", .{ resource, value })) {
                _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Found Duplicate Resource: ") }).?, "append", .{ resource }))), self });
            }
        }
        _ = Inheritance.call(self.hashMap.?, "put", .{ resource, value });
    }
    

    pub fn containsDuplicate(self: *Self, resource: ?*String, value: ?*Integer) bool {
        const objectArray: []?Object = Inheritance.call(HashtableUtil.getInstance().?, "getKeysAsArray", .{ self.hashMap });
        {
            var index: i32 = @as(i32, @intCast(objectArray.len));
            while (value_N67732: { index -= 1; break :value_N67732 index; } >= 0) {
            const integer: ?*Integer = Inheritance.cast(?*Integer, Inheritance.call(self.hashMap.?, "get", .{ Inheritance.cast(?Object, objectArray[@intCast(index)]) }));
            if (!Object.same(resource, objectArray[@intCast(index)])) {
                if (!Object.same(value, integer)) {
                    if (Object.same(value.?.intValue(), integer.?.intValue())) {
                        return true;
                    }
                }
            }
            }
        }
        return false;
    }
    

    pub fn setResources(self: *Self, resources: ?*Resources) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Resource Loader: ") }).?, "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(resources).?.class))).?))).name) }))), self, String.literal("setResources") });
        self.resources = resources;
    }
    

    // throws Exception
    pub fn getResourceAsStream(self: *Self, resource: ?*String) ?*InputStream {
        const integer: ?*Integer = Inheritance.cast(?*Integer, Inheritance.call(self.hashMap.?, "get", .{ resource }));
        const id: i32 = integer.?.intValue();
        const resources: ?*Resources = Inheritance.upcast(?*Resources, (Inheritance.cast(?*Resources, self.resources)));
        const inputStream: ?*InputStream = Inheritance.upcast(?*InputStream, Inheritance.call(resources.?, "openRawResource", .{ id }));
        if (inputStream != null) {
            return inputStream;
        }
        return inputStream;
    }
};

