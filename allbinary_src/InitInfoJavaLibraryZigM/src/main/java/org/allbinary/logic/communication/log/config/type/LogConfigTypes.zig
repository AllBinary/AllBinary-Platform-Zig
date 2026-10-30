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
// package org.allbinary.logic.communication.log.config.type

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const LoggingInitInfo = @import("org/allbinary/logic/communication/log/config/LoggingInitInfo.zig").LoggingInitInfo;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const Node = @import("org/w3c/dom/Node.zig").Node;
const LogConfigType = @import("org/allbinary/logic/communication/log/config/type/LogConfigType.zig").LogConfigType;
const LogConfigTypeData = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypeData.zig").LogConfigTypeData;
const LogConfigTypeFactory = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.zig").LogConfigTypeFactory;

pub const LogConfigTypes = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.log.config.type.LogConfigTypes";
    pub const JSP_ERROR_NO_FUNCTION: ?*String = String.literal("in JSP Not In Function");
    pub var LOGGING: ?*BasicArrayList = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        LOGGING = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    // Java static initializer: call this once at startup
    pub fn staticInitializer() void {
        _ = LogConfigTypes.init();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn init() void {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        { // try
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.literal("Initialize LogconfigTypes"), String.literal("LogConfigTypes"), String.literal("init()") });
            _ = LogConfigTypeFactory.getInstance();
            const loggingInitInfo: ?*LoggingInitInfo = LoggingInitInfo.create();
            const logConfigTypeVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, loggingInitInfo.?.getTypeList());
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(String.literal("Number Of Log Configs: "), loggingInitInfo.?.getNumberOfLogConfigs()), String.literal("LogConfigTypes"), String.literal("init()") });
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(String.literal("Number Of Log Config Type Names: "), logConfigTypeVector.?.size()), String.literal("LogConfigTypes"), String.literal("init()") });
            _ = Inheritance.call(LogConfigTypes.LOGGING.?, "addAllList", .{ logConfigTypeVector });
            _ = Inheritance.call(LogConfigTypes.LOGGING.?, "add", .{ LogConfigTypeFactory.getInstance().?.NETBEANS_MODULE });
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(PreLogUtil, "putSE", .{ String.literal("Unable to initialize LogConfigTypes"), String.literal("LogConfigTypes"), String.literal("init()"), e });
    }
    

    // throws Exception
    pub fn getInstance(node: ?*Node) ?*LogConfigType {
        const nameValueNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ LogConfigTypeData.getInstance().?.NAME, node.?.getChildNodes() }));
        const name: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ nameValueNode }));
        const descriptionValueNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNodeNoThrow", .{ LogConfigTypeData.getInstance().?.DESCRIPTION, node.?.getChildNodes() }));
        if (descriptionValueNode != null) {
            const description: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ descriptionValueNode })); _ = description;
        }
        const availableLogConfigTypes: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, LogConfigType.availableLogConfigTypes);
        const size: i32 = availableLogConfigTypes.?.size();
        var logConfigType: ?*LogConfigType = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            logConfigType = Inheritance.cast(?*LogConfigType, Inheritance.call(availableLogConfigTypes.?, "get", .{ index }));
            if (Inheritance.call(logConfigType.?.getName().?, "compareTo", .{ name }) == 0) {
                return logConfigType;
            }
            }
        }
        std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("No Such LogConfigType: "), name); break :exception error.Exception; }});
    }
};

