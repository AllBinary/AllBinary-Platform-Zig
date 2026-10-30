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
// package org.allbinary.logic.communication.log

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
const XmlRpcAbeClient = @import("org/allbinary/logic/communication/xmlrpc/XmlRpcAbeClient.zig").XmlRpcAbeClient;
const NoCrypt = @import("org/allbinary/logic/system/security/crypt/jcehelper/NoCrypt.zig").NoCrypt;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const System = @import("java/lang/System.zig").System;

pub const XmlRpcRemoteLogClient = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.log.XmlRpcRemoteLogClient";
    base: XmlRpcAbeClient = undefined,
    noCrypt: ?*NoCrypt = null,

    fn initFields(this: *Self) void {
        this.noCrypt = NoCrypt.create();
    }
    

    pub fn create1(clientInfo: ?*AbeClientInformationInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(XmlRpcAbeClient, "create2", .{ clientInfo, String.literal("SSLLogServ.logUtil") }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn get(self: *Self, anyType: ?Object) ?Object {
        { // try
            const param: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            var serverUrl: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.receiver(self, "getClientInfo").getClientInfo().?, "getLicenseServer", .{ Inheritance.receiver(self, "getServer").getServer() }));
            const index: i32 = Inheritance.call(serverUrl.?, "lastIndexOf", .{ String.literal("/") });
            serverUrl = Inheritance.upcast(@TypeOf(serverUrl), String.plus(serverUrl.?.substring2(0, index + 1), String.literal("logservssl.php")));
            const xmlRpcClient: ?*XmlRpcClient = Inheritance.callStatic(XmlRpcClient, "create1", .{ serverUrl });
            _ = Inheritance.call(self, "setClient", .{ xmlRpcClient });
            _ = Inheritance.call(xmlRpcClient.?, "setBasicAuthentication", .{ null, null });
            const hashtable: ?*ABHashtable = Inheritance.cast(?*ABHashtable, anyType);
            _ = Inheritance.call(param.?, "add", .{ hashtable });
            const result: ?Object = Inheritance.upcast(?Object, Inheritance.call(xmlRpcClient.?, "execute", .{ Inheritance.receiver(self, "getRemoteMethod").getRemoteMethod(), param, self.noCrypt }));
            _ = std.debug.print("{s}\n", .{String.text(String.plus(CommonLabels.getInstance().?.RESULT_ + CommonSeps.getInstance().?.NEW_LINE, Object.toString(Object.of(result))))});
            return result;
        }
        // catch (IOException e):
//             _ = std.debug.print("{s}\n", .{String.text(String.literal("IOException Trying Other Servers"))});
//             if (!Inheritance.call(String.fromBytes(@errorName(e.?)).?, "startsWith", .{ HOST_NOT_RESOLVED })) {
//                 return Inheritance.upcast(?Object, Inheritance.call(self, "tryAnother", .{ anyType }));
//             } else {
//                 std.debug.panic("{any}", .{exception: { _ = HOST_NOT_RESOLVED_MSG; break :exception error.Exception; }});
//             }
        // catch (XmlRpcException e):
//             return Inheritance.upcast(?Object, Inheritance.call(self, "tryAnother", .{ anyType }));
        // catch (Exception e):
//             return Inheritance.upcast(?Object, Inheritance.call(self, "tryAnother", .{ anyType }));
    }
};

