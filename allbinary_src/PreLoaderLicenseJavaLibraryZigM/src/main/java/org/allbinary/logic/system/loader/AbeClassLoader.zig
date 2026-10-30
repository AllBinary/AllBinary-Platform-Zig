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
// const FileInputStream = @import("java/io/FileInputStream.zig").FileInputStream;
// const IOException = @import("java/io/IOException.zig").IOException;
// const Map = @import("java/util/Map.zig").Map;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogBuffer = @import("org/allbinary/logic/communication/log/LogBuffer.zig").LogBuffer;
const LogFactory = @import("org/allbinary/logic/communication/log/LogFactory.zig").LogFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StreamUtil = @import("org/allbinary/logic/io/StreamUtil.zig").StreamUtil;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AbCryptUtil = @import("org/allbinary/logic/system/security/AbCryptUtil.zig").AbCryptUtil;

pub const AbeClassLoader = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.loader.AbeClassLoader";
    base: ClassLoader = undefined,
    logUtil: ?*LogUtil = null,
    abCryptUtil: ?*AbCryptUtil = null,
    LOAD_CLASS: ?*String = null,
    ENCRYPTED_EXTENSION: ?*String = null,
    key: ?*String = null,
    var classes: ?*Map = undefined;
    var PATH: ?*String = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        classes = Inheritance.upcast(?*Map, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.abCryptUtil = Inheritance.upcast(?*AbCryptUtil, AbCryptUtil.getInstance());
        this.LOAD_CLASS = String.literal("loadClass");
        this.ENCRYPTED_EXTENSION = Inheritance.upcast(?*String, String.plus(AbPathData.getInstance().?.EXTENSION_SEP, String.literal("abc")));
        
    }
    

    pub fn create2(parent: ?*ClassLoader, key: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ClassLoader, "create1", .{ parent }).*;
        this.initFields();
        this.key = key;
        AbeClassLoader.PATH = Inheritance.upcast(@TypeOf(AbeClassLoader.PATH), String.plus(Inheritance.receiverOf(org.allbinary.?.globals.?.URLGLOBALS.?, "getWebappPath").getWebappPath(), String.literal("WEB-INF/classes/")));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn findLoadedClass1(self: *Self, name: ?*String) ?*anyopaque {
        _ = self;
        return Inheritance.cast(?*anyopaque, Inheritance.call(AbeClassLoader.classes.?, "get", .{ name }));
    }
    

    // throws ClassNotFoundException
    pub fn loadClass(self: *Self, name: ?*String) ?*anyopaque {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        return Inheritance.upcast(?*anyopaque, Inheritance.call(self, "loadClass", .{ name, false }));
    }
    

    // throws ClassNotFoundException
    pub fn loadClass2(self: *Self, name: ?*String, resolve: bool) ?*anyopaque {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        var loadedWith: ?*String = String.literal("findLoadedClass1");
        const logBuffer: ?*LogBuffer = LogBuffer.create();
        { // try
            var myClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, Inheritance.call(self, "findLoadedClass1", .{ name }));
            if (myClass == null) {
                { // try
                    loadedWith = String.literal("super.loadClass");
                    const normalClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, Inheritance.call(&self.base, "loadClass", .{ name, resolve }));
                    if (normalClass != null) {
                        return normalClass;
                    }
                }
                // catch (ClassNotFoundException e):
//                     _ = Inheritance.call(logBuffer.?, "add", .{ Inheritance.callStatic(LogFactory, "getInstance", .{ String.plus(String.plus(String.plus(String.literal("Failed to Load Class: "), name), String.literal("\nwith: ")), loadedWith), self, self.LOAD_CLASS, e }) });
                // catch (Exception e):
//                     _ = Inheritance.call(logBuffer.?, "add", .{ Inheritance.callStatic(LogFactory, "getInstance", .{ String.plus(String.plus(String.plus(String.literal("Failed to Load Class: "), name), String.literal("\nwith: ")), loadedWith), self, self.LOAD_CLASS, e }) });
                // catch (NoClassDefFoundError e):
//                     _ = Inheritance.call(logBuffer.?, "add", .{ Inheritance.callStatic(LogFactory, "getInstanceF", .{ String.plus(String.plus(String.plus(String.literal("NoClassDefFoundError Failed Loaded Class: "), name), String.literal("\nwith: ")), loadedWith), self, self.LOAD_CLASS }) });
                const classBytes: []i8 = Inheritance.call(self, "loadClassBytesFromFile", .{ name });
                if (classBytes == null) {
                    std.debug.panic("{any}", .{exception: { _ = String.plus(String.plus(String.plus(String.literal("My Bytes not loaded for: "), name), String.literal("\nwith: ")), String.literal("loadClassBytes")); break :exception error.ClassNotFoundException; }});
                }
                myClass = Inheritance.upcast(@TypeOf(myClass), Inheritance.call(self, "defineClass", .{ name, classBytes, 0, @as(i32, @intCast(classBytes.len)) }));
                if (myClass == null) {
                    std.debug.panic("{any}", .{exception: { _ = String.plus(String.plus(String.plus(String.literal("My Class Not Defineable for: "), name), String.literal("\nwith: ")), String.literal("loadClassBytes")); break :exception error.ClassNotFoundException; }});
                }
                _ = Inheritance.call(AbeClassLoader.classes.?, "put", .{ name, myClass });
            } else {
                _ = Inheritance.call(logBuffer.?, "add", .{ Inheritance.callStatic(LogFactory, "getInstanceF", .{ String.plus(String.plus(String.plus(String.literal("Already Loaded: "), name), String.literal("\nwith: ")), loadedWith), self, self.LOAD_CLASS }) });
            }
            _ = Inheritance.call(self, "resolveClass", .{ myClass });
            return myClass;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.LOADERERROR })) {
//                 _ = logBuffer.?.logAll();
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(String.plus(String.plus(String.literal("Failure loading: "), name), String.literal("\nwith: ")), loadedWith), self, self.LOAD_CLASS, e });
//             }
//             return null;
    }
    

    pub fn loadClassBytesFromFile(self: *Self, name: ?*String) []i8 {
        var in: ?*FileInputStream = null;
        var cname: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        { // try
            cname = Inheritance.upcast(@TypeOf(cname), String.plus(String.plus(AbeClassLoader.PATH, Inheritance.call(name.?, "replace", .{ '.', AbPathData.getInstance().?.SEPARATORCHAR })), self.ENCRYPTED_EXTENSION));
            in = Inheritance.callStatic(FileInputStream, "create1", .{ cname });
            const decrypted: []i8 = Inheritance.call(self.abCryptUtil.?, "decrypt", .{ in, self.key });
            return decrypted;
        }
        // catch (IOException e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.LOADERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(String.plus(String.plus(String.literal("(Before LogBuffer Output) Failure loading Encrypted: "), name), String.literal(" File: ")), cname), String.literal("AbeClassLoader"), String.literal("loadClassBytes"), e });
//             }
//             _ = Inheritance.call(StreamUtil.getInstance().?, "close", .{ in });
        // catch (Exception e):
//             const loadedWith: ?*String = String.literal("loadClassBytes"); _ = loadedWith;
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.LOADERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(String.plus(String.plus(String.plus(String.plus(String.literal("(Before LogBuffer Output) Failed to Loaded Class: "), name), String.literal(" File: ")), cname), String.literal("\nwith: ")), loadedWith), self, String.literal("loadClassBytes"), e });
//             }
        // catch (NoClassDefFoundError e):
//             const loadedWith: ?*String = String.literal("loadClassBytes"); _ = loadedWith;
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.LOADERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.plus(String.plus(String.literal("(Before LogBuffer Output) NoClassDefFoundError Failed Loaded Class: "), name), String.literal(" File: ")), cname), String.literal("\nwith: ")), loadedWith), self, String.literal("loadClassBytes") });
//             }
        return null;
    }
    

    // throws ClassNotFoundException
    pub fn oldLoadClass(self: *Self, name: ?*String, resolve: bool) ?*anyopaque {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        var loadedWith: ?*String = String.literal("findLoadedClass1");
        { // try
            var myClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, Inheritance.call(self, "findLoadedClass1", .{ name }));
            if (myClass == null) {
                { // try
                    loadedWith = String.literal("super.loadClass");
                    const normalClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, Inheritance.call(&self.base, "loadClass", .{ name, resolve }));
                    if (normalClass != null) {
                        return normalClass;
                    }
                }
                // catch (ClassNotFoundException e):
//                     if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.LOADER })) {
//                         _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.literal("Failed Loaded Class: "), name), String.literal(" with: ")), loadedWith), self, self.LOAD_CLASS });
//                     }
                // catch (Exception e):
//                     if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.LOADER })) {
//                         _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.literal("Failed Loaded Class: "), name), String.literal(" with: ")), loadedWith), self, self.LOAD_CLASS });
//                     }
                // catch (NoClassDefFoundError e):
//                     if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.LOADER })) {
//                         _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.literal("Failed Loaded Class: "), name), String.literal(" with: ")), loadedWith), self, self.LOAD_CLASS });
//                     }
                loadedWith = String.literal("loadClassBytes");
                const classBytes: []i8 = Inheritance.call(self, "loadClassBytesFromFile", .{ name });
                if (classBytes == null) {
                    std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Bytes not loaded for: "), name); break :exception error.ClassNotFoundException; }});
                }
                myClass = Inheritance.upcast(@TypeOf(myClass), Inheritance.call(self, "defineClass", .{ name, classBytes, 0, @as(i32, @intCast(classBytes.len)) }));
                if (myClass == null) {
                    std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Class Not Defineable for: "), name); break :exception error.ClassNotFoundException; }});
                }
                _ = Inheritance.call(AbeClassLoader.classes.?, "put", .{ name, myClass });
            } else {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.LOADER })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.literal("Already Loaded: "), name), String.literal(" with: ")), loadedWith), self, self.LOAD_CLASS });
                }
            }
            _ = Inheritance.call(self, "resolveClass", .{ myClass });
            return myClass;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.LOADERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(String.literal("Failure loading: "), name), String.literal("AbeClassLoader"), self.LOAD_CLASS, e });
//             }
//             return null;
    }
};

