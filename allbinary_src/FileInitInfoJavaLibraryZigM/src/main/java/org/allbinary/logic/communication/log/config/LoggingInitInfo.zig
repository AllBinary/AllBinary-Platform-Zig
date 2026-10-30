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
// package org.allbinary.logic.communication.log.config

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const XmlDocumentHelper = @import("org/allbinary/data/tree/dom/document/XmlDocumentHelper.zig").XmlDocumentHelper;
const PATH_GLOBALS = @import("org/allbinary/globals/PATH_GLOBALS.zig").PATH_GLOBALS;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const AbFileLocalInputStream = @import("org/allbinary/logic/io/AbFileLocalInputStream.zig").AbFileLocalInputStream;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const LogConfig = @import("org/allbinary/logic/communication/log/config/LogConfig.zig").LogConfig;
const LogConfigData = @import("org/allbinary/logic/communication/log/config/LogConfigData.zig").LogConfigData;
const LogConfigsData = @import("org/allbinary/logic/communication/log/config/LogConfigsData.zig").LogConfigsData;

pub const LoggingInitInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.log.config.LoggingInitInfo";
    const INITFILENAME: ?*String = String.literal("logConfig.xml");
    var PACKAGE: ?*String = undefined;
    var logConfigInfoList: ?*BasicArrayList = null;
    var hasRead: bool = false;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        PACKAGE = Inheritance.upcast(?*String, PATH_GLOBALS.getInstance().?.INIT_PATH);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getDoc() ?*Document {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        const path: ?*String = Inheritance.upcast(?*String, URLGLOBALS.getWebappPath() + LoggingInitInfo.PACKAGE);
        const FILEABPATH: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ path, LoggingInitInfo.INITFILENAME });
        const file: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFileFromAbPath", .{ FILEABPATH }));
        const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.callStatic(DomDocumentHelper, "create", .{ Inheritance.callStatic(AbFileLocalInputStream, "create1", .{ file }) }));
        return document;
    }
    

    // throws Exception
    pub fn write() void {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        { // try
            LoggingInitInfo.hasRead = false;
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn read() void {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        { // try
            const document: ?*Document = Inheritance.upcast(?*Document, LoggingInitInfo.getDoc());
            const logConfigsNodeList: ?*NodeList = Inheritance.upcast(?*NodeList, Inheritance.call(document.?, "getElementsByTagName", .{ LogConfigsData.getInstance().?.NAME }));
            const logConfigsNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(logConfigsNodeList.?, "item", .{ 0 }));
            const logConfigNodeVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(DomSearchHelper, "getAllNodes", .{ LogConfigData.getInstance().?.NAME, logConfigsNode.?.getChildNodes() }));
            LoggingInitInfo.logConfigInfoList = Inheritance.upcast(@TypeOf(LoggingInitInfo.logConfigInfoList), BasicArrayListD.create());
            const size: i32 = logConfigNodeVector.?.size();
            {
                var i: i32 = 0;
                while (i < size) : (i += 1) {
                const node: ?*Node = Inheritance.cast(?*Node, Inheritance.call(logConfigNodeVector.?, "get", .{ i }));
                const logConfigInfo: ?*LogConfig = Inheritance.callStatic(LogConfig, "create1", .{ node });
                _ = Inheritance.call(LoggingInitInfo.logConfigInfoList.?, "add", .{ logConfigInfo });
                }
            }
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
    

    pub fn setHasRead(value: bool) void {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        LoggingInitInfo.hasRead = Inheritance.upcast(@TypeOf(LoggingInitInfo.hasRead), value);
    }
    

    // throws Exception
    pub fn updateIfNeeded() void {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        if (!LoggingInitInfo.hasRead) {
            _ = LoggingInitInfo.read();
            LoggingInitInfo.hasRead = true;
            if (LoggingInitInfo.logConfigInfoList == null) {
                std.debug.panic("{any}", .{exception: { _ = String.literal("Read Failed"); break :exception error.Exception; }});
            }
        }
    }
    

    pub fn isValid(self: *Self) bool {
        _ = self;
        { // try
            return true;
        }
        // catch (Exception e):
//             return false;
    }
    

    pub fn set(logConfigInfoVector: ?*BasicArrayList) void {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        LoggingInitInfo.logConfigInfoList = Inheritance.upcast(@TypeOf(LoggingInitInfo.logConfigInfoList), logConfigInfoVector);
    }
    

    // throws Exception
    pub fn get() ?*BasicArrayList {
        _ = LoggingInitInfo.updateIfNeeded();
        return Inheritance.upcast(?*BasicArrayList, LoggingInitInfo.logConfigInfoList);
    }
    

    // throws Exception
    pub fn getTypeNameList() ?*BasicArrayList {
        _ = LoggingInitInfo.updateIfNeeded();
        const allLogTypeVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const size: i32 = Inheritance.receiverOf(LoggingInitInfo.logConfigInfoList.?, "size").size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const logConfigInfo: ?*LogConfig = Inheritance.cast(?*LogConfig, LoggingInitInfo.logConfigInfoList.?.objectArray[@intCast(index)]);
            const logTypeVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, logConfigInfo.?.getTypeVector());
            if (logConfigInfo.?.isEnabled()) {
                _ = Inheritance.call(allLogTypeVector.?, "addAllList", .{ logTypeVector });
            }
            }
        }
        return allLogTypeVector;
    }
    

    // throws Exception
    pub fn getTypeList() ?*BasicArrayList {
        _ = LoggingInitInfo.updateIfNeeded();
        const allLogTypeVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const size: i32 = Inheritance.receiverOf(LoggingInitInfo.logConfigInfoList.?, "size").size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const logConfigInfo: ?*LogConfig = Inheritance.cast(?*LogConfig, LoggingInitInfo.logConfigInfoList.?.objectArray[@intCast(index)]);
            const logTypeVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, logConfigInfo.?.getTypeVector());
            if (logConfigInfo.?.isEnabled()) {
                _ = Inheritance.call(allLogTypeVector.?, "addAllList", .{ logTypeVector });
            }
            }
        }
        return allLogTypeVector;
    }
    

    // throws Exception
    pub fn getNumberOfLogConfigs(self: *Self) i32 {
        _ = self;
        return Inheritance.receiverOf(LoggingInitInfo.logConfigInfoList.?, "size").size();
    }
    

    pub fn toString(self: *Self) ?*String {
        _ = self;
        { // try
            const document: ?*Document = Inheritance.upcast(?*Document, LoggingInitInfo.getDoc());
            return Inheritance.upcast(?*String, Inheritance.callStatic(XmlDocumentHelper, "toString", .{ document }));
        }
        // catch (Exception e):
//             return String.literal("Error");
    }
};

