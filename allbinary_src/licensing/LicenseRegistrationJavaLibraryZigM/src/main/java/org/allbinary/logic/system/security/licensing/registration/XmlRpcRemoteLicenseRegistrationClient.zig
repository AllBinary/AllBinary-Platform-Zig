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
// package org.allbinary.logic.system.security.licensing.registration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const IOException = @import("java/io/IOException.zig").IOException;
const XmlRpcClient = @import("org/apache/xmlrpc/XmlRpcClient.zig").XmlRpcClient;
const XmlRpcException = @import("org/apache/xmlrpc/XmlRpcException.zig").XmlRpcException;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const CryptInterface = @import("org/allbinary/init/crypt/jcehelper/CryptInterface.zig").CryptInterface;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const XmlRpcAbeClient = @import("org/allbinary/logic/communication/xmlrpc/XmlRpcAbeClient.zig").XmlRpcAbeClient;
const ExceptionUtil = @import("org/allbinary/logic/java/exception/ExceptionUtil.zig").ExceptionUtil;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;

pub const XmlRpcRemoteLicenseRegistrationClient = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient";
    base: XmlRpcAbeClient = undefined,
    logUtil: ?*LogUtil = null,
    PAGE: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.PAGE = String.literal("licenseregistrationserverssl.php");
    }
    

    pub fn create1(clientInfo: ?*AbeClientInformationInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(XmlRpcAbeClient, "create2", .{ clientInfo, String.literal("LicenseRegistrationServer.process") }).*;
        this.initFields();
        _ = Inheritance.call(this, "setServer", .{ 0 });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn get(self: *Self, anyType: ?Object, cryptInterface: ?*CryptInterface) ?Object {
        { // try
            const server: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.receiver(self, "getClientInfo").getClientInfo().?, "getLicenseServer", .{ Inheritance.receiver(self, "getServer").getServer() }));
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ TRYING });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiver(self, "getServer").getServer())) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ SEP });
            _ = Inheritance.call(stringBuffer.?, "append", .{ server });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(CommonLabels.getInstance().?.START_LABEL, Object.toString(Object.of(stringBuffer))), self, Inheritance.fieldPointer(self, "commonStrings").*.?.GET });
            const param: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            var serverUrl: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.receiver(self, "getClientInfo").getClientInfo().?, "getLicenseServer", .{ Inheritance.receiver(self, "getServer").getServer() }));
            const index: i32 = Inheritance.call(serverUrl.?, "lastIndexOf", .{ String.literal("/") });
            serverUrl = Inheritance.upcast(@TypeOf(serverUrl), String.plus(serverUrl.?.substring2(0, index + 1), self.PAGE));
            const xmlRpcClient: ?*XmlRpcClient = Inheritance.callStatic(XmlRpcClient, "create1", .{ serverUrl });
            _ = Inheritance.call(self, "setClient", .{ xmlRpcClient });
            _ = Inheritance.call(xmlRpcClient.?, "setBasicAuthentication", .{ null, null });
            const hashtable: ?*ABHashtable = Inheritance.cast(?*ABHashtable, anyType);
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(CLIENT_INFO, Object.toString(Object.of(hashtable))), self, Inheritance.fieldPointer(self, "commonStrings").*.?.GET });
            _ = Inheritance.call(param.?, "add", .{ hashtable });
            const result: ?Object = Inheritance.upcast(?Object, Inheritance.call(xmlRpcClient.?, "execute", .{ Inheritance.receiver(self, "getRemoteMethod").getRemoteMethod(), param, cryptInterface }));
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(RESULT, Object.toString(Object.of(result))), self, Inheritance.fieldPointer(self, "commonStrings").*.?.GET });
            Inheritance.fieldPointer(self, "isOnline").* = true;
            return result;
        }
        // catch (IOException e):
//             _ = Inheritance.call(self.logUtil.?, "putF", .{ TRYING_OTHER_SERVERS + Inheritance.call(ExceptionUtil.getInstance().?, "getStackTrace", .{ e }), self, Inheritance.fieldPointer(self, "commonStrings").*.?.GET });
//             if (!Inheritance.call(String.fromBytes(@errorName(e.?)).?, "startsWith", .{ HOST_NOT_RESOLVED })) {
//                 return Inheritance.upcast(?Object, Inheritance.call(self, "tryAnother", .{ anyType }));
//             } else {
//                 std.debug.panic("{any}", .{exception: { _ = HOST_NOT_RESOLVED_MSG; break :exception error.Exception; }});
//             }
        // catch (XmlRpcException e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ SERVER_REPORTED_ERROR, self, Inheritance.fieldPointer(self, "commonStrings").*.?.GET, e });
//             return Inheritance.upcast(?Object, Inheritance.call(self, "tryAnother", .{ anyType }));
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ UNKNOWN_ERROR, self, Inheritance.fieldPointer(self, "commonStrings").*.?.GET, e });
//             return Inheritance.upcast(?Object, Inheritance.call(self, "tryAnother", .{ anyType }));
    }
};

