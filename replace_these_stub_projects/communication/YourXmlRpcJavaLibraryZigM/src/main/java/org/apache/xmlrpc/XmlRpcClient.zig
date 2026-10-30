// Generated Code Do Not Modify
// package org.apache.xmlrpc

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const IOException = @import("java/io/IOException.zig").IOException;
// const MalformedURLException = @import("java/net/MalformedURLException.zig").MalformedURLException;
// const URL = @import("java/net/URL.zig").URL;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const CryptInterface = @import("org/allbinary/init/crypt/jcehelper/CryptInterface.zig").CryptInterface;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const XmlRpcException = @import("org/apache/xmlrpc/XmlRpcException.zig").XmlRpcException;
const XmlRpcHandler = @import("org/apache/xmlrpc/XmlRpcHandler.zig").XmlRpcHandler;

pub const XmlRpcClient = struct {
    const Self = @This();
    pub const java_name = "org.apache.xmlrpc.XmlRpcClient";
    pub const java_interfaces = .{ XmlRpcHandler };
    url: ?*URL = null,
    // Implements XmlRpcHandler

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(url: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.url = Inheritance.callStatic(URL, "create1", .{ url });
        return this;
    }
    

    pub fn getURL(self: *Self) ?*URL {
        return self.url;
    }
    

    pub fn setBasicAuthentication(self: *Self, user: ?*String, password: ?*String) void {
        _ = user;
        _ = password;
        _ = self;
    }
    

    // throws XmlRpcException, IOException
    pub fn execute(self: *Self, method: ?*String, params: ?*BasicArrayList) ?Object {
        _ = method;
        _ = params;
        _ = self;
        return Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }
    

    // throws XmlRpcException, IOException
    pub fn execute3(self: *Self, method: ?*String, params: ?*BasicArrayList, cryptInterface: ?*CryptInterface) ?Object {
        _ = method;
        _ = params;
        _ = cryptInterface;
        _ = self;
        return Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }
};

