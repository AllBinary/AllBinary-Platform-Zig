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
// package org.allbinary.input.automation.robot

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const GraphicsDevice = @import("java/awt/GraphicsDevice.zig").GraphicsDevice;
// const GraphicsEnvironment = @import("java/awt/GraphicsEnvironment.zig").GraphicsEnvironment;
// const Collection = @import("java/util/Collection.zig").Collection;
// const Iterator = @import("java/util/Iterator.zig").Iterator;
// const Set = @import("java/util/Set.zig").Set;
// const HelpSet = @import("javax/help/HelpSet.zig").HelpSet;
// const HelpSetEvent = @import("javax/help/event/HelpSetEvent.zig").HelpSetEvent;
// const HelpSetListener = @import("javax/help/event/HelpSetListener.zig").HelpSetListener;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const JavaHelpSetNotifier = @import("org/allbinary/logic/java/help/JavaHelpSetNotifier.zig").JavaHelpSetNotifier;
const InterfaceUtil = @import("org/allbinary/logic/java/anyType/InterfaceUtil.zig").InterfaceUtil;
const SecuredNativeLibraryInterface = @import("org/allbinary/logic/system/loader/SecuredNativeLibraryInterface.zig").SecuredNativeLibraryInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const InputRobot = @import("org/allbinary/input/automation/robot/InputRobot.zig").InputRobot;
const InputRobotInterface = @import("org/allbinary/input/automation/robot/InputRobotInterface.zig").InputRobotInterface;

pub const InputRobotFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.robot.InputRobotFactory";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    hashtable: ?*ABHashtable = null,
    helpSetListenerInterface: ?*HelpSetListener = null,
    var inputRobotFactory: ?*InputRobotFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        inputRobotFactory = InputRobotFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.hashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
        this.helpSetListenerInterface = null;
    }
    

    // throws Exception
    pub fn getInstance() ?*InputRobotFactory {
        return Inheritance.upcast(?*InputRobotFactory, InputRobotFactory.inputRobotFactory);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        { // try
            const graphenv: ?*GraphicsEnvironment = Inheritance.upcast(?*GraphicsEnvironment, GraphicsEnvironment.getLocalGraphicsEnvironment());
            const screens: []?*GraphicsDevice = graphenv.?.getScreenDevices();
            var inputRobotInterface: ?*InputRobotInterface = null;
            {
                var i: i32 = 0;
                while (i < @as(i32, @intCast(screens.len))) : (i += 1) {
                inputRobotInterface = Inheritance.cast(?*InputRobotInterface, Inheritance.callStatic(InputRobot, "create1", .{ screens[@intCast(i)] }));
                _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Adding Robot: "), inputRobotInterface.?.getName()), this, String.literal("getRobots") });
                _ = Inheritance.call(this.get().?, "put", .{ inputRobotInterface.?.getName(), inputRobotInterface });
                }
            }
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Number Of Robots: "), Inheritance.receiver(this.hashtable.?, "size").size()), this, String.literal("getRobots") });
        }
        // catch (Exception e):
//             _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.EXCEPTION, this, this.commonStrings.?.CONSTRUCTOR });
        return this;
    }
    

    pub fn addListener(self: *Self, helpSetListenerInterface: ?*HelpSetListener) void {
        self.helpSetListenerInterface = helpSetListenerInterface;
    }
    

    // throws Exception
    pub fn add(self: *Self, inputRobotInterface: ?*InputRobotInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Adding InputRobotInterface: "), inputRobotInterface.?.getName()), self, String.literal("add") });
        _ = Inheritance.call(self.get().?, "put", .{ inputRobotInterface.?.getName(), inputRobotInterface });
        const helpSet: ?*HelpSet = Inheritance.upcast(?*HelpSet, inputRobotInterface.?.getHelpSet());
        if (self.helpSetListenerInterface != null) {
            if (helpSet != null) {
                if (!Inheritance.callStatic(JavaHelpSetNotifier, "isNotified", .{ helpSet })) {
                    const helpSetEvent: ?*HelpSetEvent = Inheritance.callStatic(HelpSetEvent, "create3", .{ self, helpSet, HelpSetEvent.HELPSET_ADDED });
                    _ = Inheritance.call(self.helpSetListenerInterface.?, "helpSetAdded", .{ helpSetEvent });
                }
            } else {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Null HelpSet For: "), inputRobotInterface.?.getName()), self, String.literal("add") });
            }
        } else {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("No HelpSet Listener"), self, String.literal("add") });
        }
    }
    

    // throws Exception
    pub fn loadLibraries(self: *Self) void {
        const set: ?*Set = Inheritance.upcast(?*Set, Inheritance.receiverOf(self.get().?, "keySet").keySet());
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Loading Libraries"), self, String.literal("loadLibraries") });
        const nameArray: []?Object = set.?.toArray();
        const size: i32 = @as(i32, @intCast(nameArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const inputRobotInterface: ?*InputRobotInterface = Inheritance.upcast(?*InputRobotInterface, Inheritance.call(InputRobotFactory.getInstance().?, "get", .{ Inheritance.cast(?*String, nameArray[@intCast(index)]) }));
            _ = Inheritance.callStatic(InputRobotFactory, "loadLibrary", .{ inputRobotInterface });
            }
        }
    }
    

    // throws Exception
    pub fn loadLibraries1(collection: ?*Collection) void {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        _ = Inheritance.call(logUtil.?, "putF", .{ String.literal("Loading Libraries"), String.literal("InputRobotFactory"), String.literal("loadLibraries") });
        const iterator: ?*Iterator = Inheritance.upcast(?*Iterator, collection.?.iterator());
        while (iterator.?.hasNext()) {
            _ = Inheritance.callStatic(InputRobotFactory, "loadLibrary", .{ Inheritance.cast(?*InputRobotInterface, iterator.?.next()) });
        }
    }
    

    // throws Exception
    pub fn loadLibrary(inputRobotInterface: ?*InputRobotInterface) void {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        if (Inheritance.callStatic(InterfaceUtil, "isImplemented", .{ SecuredNativeLibraryInterface, inputRobotInterface })) {
            _ = Inheritance.call(logUtil.?, "putF", .{ String.plus(String.literal("Loading Library: "), inputRobotInterface.?.getName()), String.literal("InputRobotFactory"), String.literal("loadLibraries") });
            const securedNativeLibraryInterface: ?*SecuredNativeLibraryInterface = Inheritance.cast(?*SecuredNativeLibraryInterface, inputRobotInterface);
            _ = securedNativeLibraryInterface.?.load();
        }
    }
    

    // throws Exception
    pub fn unloadLibraries(self: *Self) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Unloading Libraries"), self, String.literal("unloadLibraries") });
        const set: ?*Set = Inheritance.upcast(?*Set, Inheritance.receiverOf(self.get().?, "keySet").keySet());
        var inputRobotInterface: ?*InputRobotInterface = null;
        const inputRobotArray: []?Object = set.?.toArray();
        const size: i32 = @as(i32, @intCast(inputRobotArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            inputRobotInterface = Inheritance.upcast(@TypeOf(inputRobotInterface), Inheritance.call(self, "get", .{ Inheritance.cast(?*String, inputRobotArray[@intCast(index)]) }));
            if (Inheritance.callStatic(InterfaceUtil, "isImplemented", .{ SecuredNativeLibraryInterface, inputRobotInterface })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Unloading Library: "), inputRobotInterface.?.getName()), self, String.literal("unloadLibraries") });
                const securedNativeLibraryInterface: ?*SecuredNativeLibraryInterface = Inheritance.cast(?*SecuredNativeLibraryInterface, inputRobotInterface);
                _ = securedNativeLibraryInterface.?.unload();
            }
            }
        }
    }
    

    // throws Exception
    pub fn get(self: *Self) ?*ABHashtable {
        return self.hashtable;
    }
    

    pub fn get1(self: *Self, name: ?*String) ?*InputRobotInterface {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Getting Robot: "), name), self, String.literal("getRobots") });
        return Inheritance.cast(?*InputRobotInterface, Inheritance.call(self.hashtable.?, "get", .{ name }));
    }
};

