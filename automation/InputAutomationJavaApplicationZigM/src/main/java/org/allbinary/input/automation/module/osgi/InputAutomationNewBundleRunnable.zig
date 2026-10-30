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
// package org.allbinary.input.automation.module.osgi

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const File = @import("java/io/File.zig").File;
// const FileFilter = @import("java/io/FileFilter.zig").FileFilter;
// const FileInputStream = @import("java/io/FileInputStream.zig").FileInputStream;
// const URL = @import("java/net/URL.zig").URL;
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Set = @import("java/util/Set.zig").Set;
// const JarInputStream = @import("java/util/jar/JarInputStream.zig").JarInputStream;
// const Manifest = @import("java/util/jar/Manifest.zig").Manifest;
const Bundle = @import("org/osgi/framework/Bundle.zig").Bundle;
const BundleContext = @import("org/osgi/framework/BundleContext.zig").BundleContext;
const Constants = @import("org/osgi/framework/Constants.zig").Constants;
const InputAutomationBundleActivator = @import("bundle/input/automation/InputAutomationBundleActivator.zig").InputAutomationBundleActivator;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const FileWrapperUtil = @import("org/allbinary/logic/io/file/FileWrapperUtil.zig").FileWrapperUtil;
const SubDirectory = @import("org/allbinary/logic/io/file/directory/SubDirectory.zig").SubDirectory;
const BasicFileFilterUtil = @import("org/allbinary/logic/io/file/filter/BasicFileFilterUtil.zig").BasicFileFilterUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const RunnableInterface = @import("org/allbinary/thread/RunnableInterface.zig").RunnableInterface;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const System = @import("java/lang/System.zig").System;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const InputAutomationNewBundleRunnable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.osgi.InputAutomationNewBundleRunnable";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    inputAutomationBundleActivator: ?*InputAutomationBundleActivator = null,
    running: bool = false,
    fileBasicArrayList: ?*BasicArrayList = null,
    // Implements RunnableInterface
    const FILE: ?*String = String.literal("file:");
    const JAR_DIR_PROP: ?*String = String.literal("org.knopflerfish.gosg.jars");
    const INPUT_AUTMATION_MODULE_BUNDLE_JAR_PATH: ?*String = String.literal("ia/auto");
    const MODULES_START_LEVEL: i32 = 8;

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        this.running = false;
        
    }
    

    pub fn create1(inputAutomationBundleActivator: ?*InputAutomationBundleActivator) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.inputAutomationBundleActivator = inputAutomationBundleActivator;
        this.fileBasicArrayList = Inheritance.upcast(@TypeOf(this.fileBasicArrayList), BasicArrayListD.create());
        return this;
    }
    

    // throws Exception
    pub fn setThread(self: *Self, thread: ?*Thread) void {
        _ = thread;
        _ = self;
    }
    

    pub fn isRunning(self: *Self) bool {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        return self.running;
    }
    

    pub fn setRunning(self: *Self, running: bool) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        self.running = running;
    }
    

    // throws Exception
    pub fn updateModules(self: *Self) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("updateModules") });
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, self.findNewModules());
        const size: i32 = list.?.size();
        var bundle: ?*Bundle = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            bundle = Inheritance.upcast(@TypeOf(bundle), Inheritance.call(self, "install", .{ Inheritance.cast(?*URL, Inheritance.call(list.?, "get", .{ index })) }));
            if (bundle != null) {
                _ = Inheritance.call(bundle.?, "start", .{ InputAutomationNewBundleRunnable.MODULES_START_LEVEL });
            }
            }
        }
    }
    

    // throws Exception
    pub fn getAllJarSymbolicNameHashMap(self: *Self) ?*HashMap {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("getAllJarSymbolicNameHashMap") });
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        const jarFileBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, self.getJarModuleFileBasicArrayList());
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Jar Module Files: "), jarFileBasicArrayList), self, String.literal("getAllJarSymbolicNameHashMap") });
        const size: i32 = jarFileBasicArrayList.?.size();
        var file: ?*File = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            file = Inheritance.cast(?*File, Inheritance.call(jarFileBasicArrayList.?, "get", .{ index }));
            if (!file.?.isDirectory()) {
                const fileInputStream: ?*FileInputStream = Inheritance.callStatic(FileInputStream, "create1", .{ file });
                const jarInputStream: ?*JarInputStream = Inheritance.callStatic(JarInputStream, "create1", .{ fileInputStream });
                const manifest: ?*Manifest = Inheritance.upcast(?*Manifest, jarInputStream.?.getManifest());
                if (manifest == null) {
                } else {
                    const symbolicName: ?*String = Inheritance.upcast(?*String, Inheritance.call(manifest.?.getMainAttributes().?, "getValue", .{ Constants.BUNDLE_SYMBOLICNAME }));
                    if (symbolicName != null) {
                        _ = Inheritance.call(hashMap.?, "put", .{ symbolicName, Inheritance.callStatic(URL, "create1", .{ InputAutomationNewBundleRunnable.FILE + file.?.getAbsolutePath() }) });
                    }
                }
            }
            }
        }
        return hashMap;
    }
    

    pub fn getJarModuleFileBasicArrayList(self: *Self) ?*BasicArrayList {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("getJarModuleFileBasicArrayList") });
        var baseJarPath: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(System, "getProperty", .{ InputAutomationNewBundleRunnable.JAR_DIR_PROP }));
        if (Inheritance.call(baseJarPath.?, "startsWith", .{ InputAutomationNewBundleRunnable.FILE })) {
            baseJarPath = Inheritance.upcast(@TypeOf(baseJarPath), Inheritance.call(baseJarPath.?, "substring", .{ Inheritance.receiverOf(InputAutomationNewBundleRunnable.FILE.?, "length").length() }));
        }
        const jarFileFilter: ?*FileFilter = Inheritance.upcast(?*FileFilter, Inheritance.callStatic(BasicFileFilterUtil, "getInstance", .{ String.literal(".jar") }));
        const path: ?*String = Inheritance.upcast(?*String, String.plus(baseJarPath, InputAutomationNewBundleRunnable.INPUT_AUTMATION_MODULE_BUNDLE_JAR_PATH));
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Path: "), path), self, String.literal("getJarModuleFileBasicArrayList") });
        const file: ?*File = Inheritance.callStatic(File, "create1", .{ path });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.literal("File: "), file.?.getAbsolutePath()), String.literal(" isDirectory: ")), file.?.isDirectory()), self, String.literal("getJarModuleFileBasicArrayList") });
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(SubDirectory.getInstance().?, "search", .{ jarFileFilter, Inheritance.callStatic(FileWrapperUtil, "wrapFile", .{ file }) }));
    }
    

    // throws Exception
    pub fn getInstalledJarSymbolicNameBasicArrayList(self: *Self) ?*BasicArrayList {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("getInstalledJarSymbolicNameBasicArrayList") });
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const bundleContext: ?*BundleContext = Inheritance.upcast(?*BundleContext, InputAutomationBundleActivator.getBundleContext());
        const bundleArray: []?*Bundle = bundleContext.?.getBundles();
        if (bundleArray != null) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("bundleArray: "), @as(i32, @intCast(bundleArray.len))), self, String.literal("getInputAutomationModuleServices") });
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(bundleArray.len))) : (index += 1) {
                const bundle: ?*Bundle = Inheritance.upcast(?*Bundle, bundleArray[@intCast(index)]);
                _ = Inheritance.call(vector.?, "add", .{ bundle.?.getSymbolicName() });
                }
            }
        }
        return vector;
    }
    

    // throws Exception
    pub fn isInstalled(self: *Self, symbolicName: ?*String) bool {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(CommonLabels.getInstance().?.START, symbolicName), self, String.literal("isInstalled") });
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, self.getInstalledJarSymbolicNameBasicArrayList());
        const size: i32 = list.?.size();
        var nextSymbolicName: ?*String = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            nextSymbolicName = Inheritance.cast(?*String, Inheritance.call(list.?, "get", .{ index }));
            if (Inheritance.call(nextSymbolicName.?, "compareTo", .{ symbolicName }) == 0) {
                return true;
            }
            }
        }
        return false;
    }
    

    // throws Exception
    pub fn findNewModules(self: *Self) ?*BasicArrayList {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("findNewModules") });
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, self.getAllJarSymbolicNameHashMap());
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("All: "), hashMap), self, String.literal("findNewModules") });
        const set: ?*Set = Inheritance.upcast(?*Set, hashMap.?.keySet());
        const symbolicNameArray: []?Object = set.?.toArray();
        const size: i32 = @as(i32, @intCast(symbolicNameArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const symbolicName: ?*String = Inheritance.cast(?*String, symbolicNameArray[@intCast(index)]);
            if (!Inheritance.call(self, "isInstalled", .{ symbolicName })) {
                _ = Inheritance.call(vector.?, "add", .{ Inheritance.call(hashMap.?, "get", .{ symbolicName }) });
            }
            }
        }
        return vector;
    }
    

    // throws Exception
    pub fn install(self: *Self, url: ?*URL) ?*Bundle {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ CommonLabels.getInstance().?.START + url, self, String.literal("install") });
        const bundleContext: ?*BundleContext = Inheritance.upcast(?*BundleContext, InputAutomationBundleActivator.getBundleContext());
        return Inheritance.upcast(?*Bundle, Inheritance.call(bundleContext.?, "installBundle", .{ Object.toString(Object.of(url)) }));
    }
    

    pub fn run(self: *Self) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.commonStrings.?.RUN });
            _ = Inheritance.call(self, "setRunning", .{ true });
            const timeHelper: ?*TimeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 1000 });
            while (self.isRunning()) {
                _ = timeHelper.?.setStartTimeTNT();
                _ = Inheritance.call(self.logUtil.?, "putF", .{ CommonLabels.getInstance().?.ELAPSED + timeHelper.?.getElapsedTNT(), self, self.commonStrings.?.RUN });
                _ = self.updateModules();
                break;
            }
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.END, self, self.commonStrings.?.RUN });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.RUN, e });
    }
};

