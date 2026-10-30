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
// package org.allbinary.logic.communication.xmlrpc

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const MyRandomFactory = @import("org/allbinary/game/rand/MyRandomFactory.zig").MyRandomFactory;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const NullXmlRpcHandler = @import("org/apache/xmlrpc/NullXmlRpcHandler.zig").NullXmlRpcHandler;
const XmlRpcClient = @import("org/apache/xmlrpc/XmlRpcClient.zig").XmlRpcClient;
const XmlRpcHandler = @import("org/apache/xmlrpc/XmlRpcHandler.zig").XmlRpcHandler;

pub const XmlRpcAbeClient = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    remoteMethod: ?*String = null,
    clientInfo: ?*AbeClientInformationInterface = null,
    client: ?*XmlRpcHandler = null,
    server: i32 = 0,
    start: i32 = 0,
    maxServers: i32 = 0,
    isDone: bool = false,
    START_SERVER: ?*String = null,
    TRYING: ?*String = null,
    SEP: ?*String = null,
    CLIENT_INFO: ?*String = null,
    RESULT: ?*String = null,
    INVALID: ?*String = null,
    EXCEPTION_IN_CLIENT: ?*String = null,
    SERVER_REPORTED_ERROR: ?*String = null,
    UNKNOWN_ERROR: ?*String = null,
    TRYING_OTHER_SERVERS: ?*String = null,
    HOST_NOT_RESOLVED_MSG: ?*String = null,
    HOST_NOT_RESOLVED: ?*String = null,
    myRandomFactory: ?*MyRandomFactory = null,
    pub var isOnline: bool = true;

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        
        this.client = Inheritance.upcast(?*XmlRpcHandler, NullXmlRpcHandler.NULL_XML_RPC_HANDLER);
        
        this.start = 0;
        this.maxServers = 0;
        
        this.START_SERVER = String.literal("Start With Server #");
        this.TRYING = String.literal("Trying Server #");
        this.SEP = Inheritance.upcast(?*String, CommonLabels.getInstance().?.COLON_SEP);
        this.CLIENT_INFO = String.literal("Client Info: \n");
        this.RESULT = Inheritance.upcast(?*String, CommonLabels.getInstance().?.RESULT_ + CommonSeps.getInstance().?.NEW_LINE);
        this.INVALID = String.literal("License data is Invalid Trying Other Servers");
        this.EXCEPTION_IN_CLIENT = String.literal("Exception in client");
        this.SERVER_REPORTED_ERROR = String.literal("Server reported error");
        this.UNKNOWN_ERROR = String.literal("Unknown License Retrieval Failure");
        this.TRYING_OTHER_SERVERS = String.literal("IOException Trying Other Servers");
        this.HOST_NOT_RESOLVED_MSG = String.literal("Not Trying Again Since Host Unresolved");
        this.HOST_NOT_RESOLVED = String.literal("Host is unresolved");
        this.myRandomFactory = Inheritance.upcast(?*MyRandomFactory, MyRandomFactory.getInstance());
    }
    

    pub fn create2(clientInfo: ?*AbeClientInformationInterface, remoteMethod: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.remoteMethod = remoteMethod;
        this.clientInfo = clientInfo;
        if (clientInfo.?.getNumberOfLicenseServers() > 1) {
            this.maxServers = clientInfo.?.getNumberOfLicenseServers() - 2;
            this.start = Inheritance.call(this.myRandomFactory.?, "getAbsoluteNextInt", .{ this.maxServers }) + 1;
        } else if (clientInfo.?.getNumberOfLicenseServers() == 1) {
            this.maxServers = 0;
            this.start = 0;
        }
        this.isDone = false;
        this.server = this.start;
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ this.START_SERVER });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ this.getServer() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ this.SEP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(clientInfo.?, "getLicenseServer", .{ this.getServer() }) });
        _ = Inheritance.call(this.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), this, this.commonStrings.?.CONSTRUCTOR });
        return this;
    }
    

    // throws Exception
    pub fn get(self: *Self, anyType: ?Object) ?Object {
        _ = anyType;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ self.commonStrings.?.NOT_IMPLEMENTED, self });
        return Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }
    

    // throws Exception
    pub fn tryAnother(self: *Self, anyType: ?Object) ?Object {
        if (self.getServer() < self.getMaxServers()) {
            _ = Inheritance.call(self, "setServer", .{ self.getServer() + 1 });
        } else {
            _ = Inheritance.call(self, "setServer", .{ 0 });
        }
        if (self.getServer() != self.getStart() and !self.isIsDone()) {
            return Inheritance.upcast(?Object, Inheritance.call(self, "get", .{ anyType }));
        } else {
            _ = Inheritance.call(self, "setIsDone", .{ true });
        }
        std.debug.panic("{any}", .{exception: { _ = String.literal("Tried All Servers But Still Failed"); break :exception error.Exception; }});
    }
    

    pub fn getClientInfo(self: *Self) ?*AbeClientInformationInterface {
        return self.clientInfo;
    }
    

    pub fn getClient(self: *Self) ?*XmlRpcHandler {
        return self.client;
    }
    

    pub fn setClient(self: *Self, client: ?*XmlRpcClient) void {
        self.client = client;
    }
    

    pub fn getServer(self: *Self) i32 {
        return self.server;
    }
    

    pub fn setServer(self: *Self, server: i32) void {
        self.server = server;
    }
    

    pub fn getStart(self: *Self) i32 {
        return self.start;
    }
    

    pub fn setStart(self: *Self, start: i32) void {
        self.start = start;
    }
    

    pub fn getMaxServers(self: *Self) i32 {
        return self.maxServers;
    }
    

    pub fn setMaxServers(self: *Self, maxServers: i32) void {
        self.maxServers = maxServers;
    }
    

    pub fn isIsDone(self: *Self) bool {
        return self.isDone;
    }
    

    pub fn setIsDone(self: *Self, isDone: bool) void {
        self.isDone = isDone;
    }
    

    pub fn getRemoteMethod(self: *Self) ?*String {
        return self.remoteMethod;
    }
};

