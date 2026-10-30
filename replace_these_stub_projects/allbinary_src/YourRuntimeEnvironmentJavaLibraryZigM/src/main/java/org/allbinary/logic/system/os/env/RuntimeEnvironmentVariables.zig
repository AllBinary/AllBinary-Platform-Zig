// Generated Code Do Not Modify
// package org.allbinary.logic.system.os.env

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const BufferedReader = @import("java/io/BufferedReader.zig").BufferedReader;
// const InputStreamReader = @import("java/io/InputStreamReader.zig").InputStreamReader;
// const Properties = @import("java/util/Properties.zig").Properties;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const GenericOperatingSystem = @import("org/allbinary/logic/system/os/GenericOperatingSystem.zig").GenericOperatingSystem;
const OperatingSystemFactory = @import("org/allbinary/logic/system/os/OperatingSystemFactory.zig").OperatingSystemFactory;
const OperatingSystems = @import("org/allbinary/logic/system/os/OperatingSystems.zig").OperatingSystems;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const System = @import("java/lang/System.zig").System;
const Runtime = @import("java/lang/Runtime.zig").Runtime;

pub const RuntimeEnvironmentVariables = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.os.env.RuntimeEnvironmentVariables";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getTest1(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, Inheritance.callStatic(System, "getProperty", .{ String.literal("java.java.home") }));
    }
    

    pub fn getVariable(self: *Self, @"var": ?*String) ?*String {
        const environmentVariables: ?*Properties = Inheritance.upcast(?*Properties, self.get());
        return Inheritance.upcast(?*String, Inheritance.call(environmentVariables.?, "getProperty", .{ @"var" }));
    }
    

    pub fn get(self: *Self) ?*Properties {
        _ = self;
        { // try
            var process: ?*Process = null;
            const environmentVariables: ?*Properties = Properties.create();
            const operatingSystemInterface: ?*GenericOperatingSystem = Inheritance.upcast(?*GenericOperatingSystem, Inheritance.receiverOf(OperatingSystemFactory.getInstance().?, "getOperatingSystemInstance").getOperatingSystemInstance());
            const osName: ?*String = Inheritance.upcast(?*String, operatingSystemInterface.?.getName());
            const linuxCommand: ?*String = String.literal("env");
            const windowsCommand: ?*String = String.literal("cmd.exe /c set");
            const solarisCommand: ?*String = linuxCommand;
            const operatingSystems: ?*OperatingSystems = Inheritance.upcast(?*OperatingSystems, OperatingSystems.getInstance());
            if (Inheritance.call(osName.?, "compareTo", .{ operatingSystems.?.LINUX }) == 0) {
                process = Inheritance.upcast(@TypeOf(process), Inheritance.call(Runtime.getRuntime().?, "exec", .{ linuxCommand }));
            } else if (Inheritance.call(osName.?, "indexOf", .{ operatingSystems.?.WINDOWS }) >= 0) {
                process = Inheritance.upcast(@TypeOf(process), Inheritance.call(Runtime.getRuntime().?, "exec", .{ windowsCommand }));
            } else if (Inheritance.call(osName.?, "compareTo", .{ operatingSystems.?.SOLARIS }) == 0) {
                process = Inheritance.upcast(@TypeOf(process), Inheritance.call(Runtime.getRuntime().?, "exec", .{ solarisCommand }));
            } else {
                std.debug.panic("{any}", .{error.Exception});
            }
            const processInputStreamReader: ?*InputStreamReader = Inheritance.callStatic(InputStreamReader, "create1", .{ process.?.getInputStream() });
            const bufferedReader: ?*BufferedReader = Inheritance.callStatic(BufferedReader, "create1", .{ processInputStreamReader });
            var keyValuePair: ?*String = null;
            while ((value_N67139: { keyValuePair = Inheritance.upcast(@TypeOf(keyValuePair), bufferedReader.?.readLine()); break :value_N67139 keyValuePair; }) != null) {
                const index: i32 = Inheritance.call(keyValuePair.?, "indexOf", .{ '=' });
                const key: ?*String = Inheritance.upcast(?*String, keyValuePair.?.substring2(0, index));
                const value: ?*String = Inheritance.upcast(?*String, Inheritance.call(keyValuePair.?, "substring", .{ index + 1 }));
                _ = Inheritance.call(environmentVariables.?, "put", .{ key, value });
            }
            return environmentVariables;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.OSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("get()"), e });
//             }
//             return null;
    }
    

    pub fn getTempDir(self: *Self) ?*String {
        _ = self;
        { // try
            return Inheritance.upcast(?*String, Inheritance.callStatic(System, "getProperty", .{ String.literal("java.io.tmpdir") }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.OSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("getTempDir()"), e });
//             }
//             return null;
    }
    

    pub fn getLibraryPath(self: *Self) ?*String {
        _ = self;
        { // try
            return Inheritance.upcast(?*String, Inheritance.callStatic(System, "getProperty", .{ String.literal("java.library.path") }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.OSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("getLibraryPath()"), e });
//             }
//             return null;
    }
    

    pub fn getClassPath(self: *Self) ?*String {
        _ = self;
        { // try
            return Inheritance.upcast(?*String, Inheritance.callStatic(System, "getProperty", .{ String.literal("java.class.path") }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.OSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("getClassPath()"), e });
//             }
//             return null;
    }
    

    pub fn updateLibraryPath(self: *Self, libPath: ?*String) void {
        { // try
            const existingPath: ?*String = Inheritance.upcast(?*String, self.getLibraryPath());
            _ = Inheritance.callStatic(System, "setProperty", .{ String.literal("java.library.path"), String.plus(String.plus(libPath, String.literal(":")), existingPath) });
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.OSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("updateLibraryPath()"), e });
//             }
    }
    

    pub fn getUserHome(self: *Self) ?*String {
        _ = self;
        { // try
            return Inheritance.upcast(?*String, Inheritance.callStatic(System, "getProperty", .{ String.literal("user.home") }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.OSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("getUserHome()"), e });
//             }
//             return null;
    }
    

    pub fn getUserDir(self: *Self) ?*String {
        _ = self;
        { // try
            return Inheritance.upcast(?*String, Inheritance.callStatic(System, "getProperty", .{ String.literal("user.dir") }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.OSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("getUserDir()"), e });
//             }
//             return null;
    }
    

    pub fn set(self: *Self) void {
        _ = self;
        { // try
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.OSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("get()"), e });
//             }
    }
    

    pub fn setVariable(self: *Self, @"var": ?*String, val: ?*String) void {
        _ = self;
        { // try
            var process: ?*Process = null;
            const operatingSystemInterface: ?*GenericOperatingSystem = Inheritance.upcast(?*GenericOperatingSystem, Inheritance.receiverOf(OperatingSystemFactory.getInstance().?, "getOperatingSystemInstance").getOperatingSystemInstance());
            const operatingSystems: ?*OperatingSystems = Inheritance.upcast(?*OperatingSystems, OperatingSystems.getInstance());
            const osName: ?*String = Inheritance.upcast(?*String, operatingSystemInterface.?.getName());
            const windowsCommand: ?*String = Inheritance.upcast(?*String, String.plus(String.plus(String.plus(String.literal("cmd.exe /c set"), @"var"), String.literal("=")), val));
            if (Inheritance.call(osName.?, "compareTo", .{ operatingSystems.?.LINUX }) == 0) {
                std.debug.panic("{any}", .{error.Exception});
            } else if (Inheritance.call(osName.?, "indexOf", .{ operatingSystems.?.WINDOWS }) >= 0) {
                process = Inheritance.upcast(@TypeOf(process), Inheritance.call(Runtime.getRuntime().?, "exec", .{ windowsCommand }));
            } else if (Inheritance.call(osName.?, "compareTo", .{ operatingSystems.?.SOLARIS }) == 0) {
                std.debug.panic("{any}", .{error.Exception});
            } else {
                std.debug.panic("{any}", .{error.Exception});
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.OSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("setVariable()"), e });
//             }
    }
};

