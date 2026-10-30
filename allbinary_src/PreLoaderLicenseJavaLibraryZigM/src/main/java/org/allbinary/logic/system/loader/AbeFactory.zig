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
// package org.allbinary.logic.system.loader

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Constructor = @import("java/lang/reflect/Constructor.zig").Constructor;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ConstructorUtil = @import("org/allbinary/logic/java/anyType/ConstructorUtil.zig").ConstructorUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AbKeys = @import("org/allbinary/logic/system/security/AbKeys.zig").AbKeys;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const AbeClassLoader = @import("org/allbinary/logic/system/loader/AbeClassLoader.zig").AbeClassLoader;
const WebappClassLoaderInfo = @import("org/allbinary/logic/system/loader/WebappClassLoaderInfo.zig").WebappClassLoaderInfo;

pub const AbeFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.loader.AbeFactory";
    logUtil: ?*LogUtil = null,
    useCustomLoader: bool = false,
    var instance: ?*AbeFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AbeFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.useCustomLoader = false;
    }
    

    pub fn getInstance() ?*AbeFactory {
        return Inheritance.upcast(?*AbeFactory, AbeFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws LicensingException
    pub fn getInstance2(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, className: ?*String) ?Object {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            return Inheritance.upcast(?Object, Inheritance.receiverOf(Inheritance.call(self, "getClass", .{ abeClientInformation, className }).?, "newInstance").newInstance());
        }
        // catch (LicensingException e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.LOADERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(String.literal("Failure for: "), className), self, String.literal("getInstance(classname)"), e });
//             }
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.LOADERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(String.literal("Failure for: "), className), self, String.literal("getInstance(classname)"), e });
//             }
//             return null;
    }
    

    // throws LicensingException
    pub fn getInstance4(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, className: ?*String, classes: []?*anyopaque, params: []?Object) ?Object {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        var constructor: ?*Constructor = null;
        { // try
            const parent: ?*ClassLoader = Inheritance.upcast(?*ClassLoader, WebappClassLoaderInfo.getLoader());
            if (self.useCustomLoader) {
                const loader: ?*ClassLoader = Inheritance.upcast(?*ClassLoader, Inheritance.callStatic(AbeClassLoader, "create2", .{ parent, Inheritance.call(AbKeys.getInstance().?, "getKey", .{ abeClientInformation, className }) }));
                const myClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, Inheritance.call(loader.?, "loadClass", .{ className }));
                constructor = Inheritance.upcast(@TypeOf(constructor), Inheritance.call(myClass.?, "getConstructor", .{ classes }));
                return Inheritance.upcast(?Object, Inheritance.call(constructor.?, "newInstance", .{ params }));
            } else {
                const myClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, Inheritance.call(parent.?, "loadClass", .{ className }));
                constructor = Inheritance.upcast(@TypeOf(constructor), Inheritance.call(myClass.?, "getConstructor", .{ classes }));
                return Inheritance.upcast(?Object, Inheritance.call(constructor.?, "newInstance", .{ params }));
            }
        }
        // catch (LicensingException e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.LOADERERROR })) {
//                 const stringBuffer: ?*StringMaker = StringMaker.create(); _ = stringBuffer;
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Failure for: ") });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ className });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.callStatic(ConstructorUtil, "view", .{ constructor, CommonSeps.getInstance().?.NEW_LINE }) });
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("getInstance(className,params)"), e });
//             }
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.LOADERERROR })) {
//                 const stringBuffer: ?*StringMaker = StringMaker.create(); _ = stringBuffer;
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Failure for: ") });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ className });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.callStatic(ConstructorUtil, "view", .{ constructor, CommonSeps.getInstance().?.NEW_LINE }) });
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("getInstance(className,params)"), e });
//             }
//             return null;
    }
    

    // throws LicensingException
    pub fn getClass(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, className: ?*String) ?*anyopaque {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            const parent: ?*ClassLoader = Inheritance.upcast(?*ClassLoader, WebappClassLoaderInfo.getLoader());
            if (self.useCustomLoader) {
                const loader: ?*ClassLoader = Inheritance.upcast(?*ClassLoader, Inheritance.callStatic(AbeClassLoader, "create2", .{ parent, Inheritance.call(AbKeys.getInstance().?, "getKey", .{ abeClientInformation, className }) }));
                const c: ?*anyopaque = Inheritance.upcast(?*anyopaque, Inheritance.call(loader.?, "loadClass", .{ className }));
                return c;
            } else {
                const c: ?*anyopaque = Inheritance.upcast(?*anyopaque, Inheritance.call(parent.?, "loadClass", .{ className }));
                return c;
            }
        }
        // catch (LicensingException e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.LOADERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(String.literal("Failure for: "), className), self, String.literal("getClass(className)"), e });
//             }
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.LOADERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(String.literal("Failure for: "), className), self, String.literal("getClass(className)"), e });
//             }
//             return null;
    }
};

