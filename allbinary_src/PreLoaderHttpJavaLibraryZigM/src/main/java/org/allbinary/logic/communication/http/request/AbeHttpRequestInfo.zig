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
// package org.allbinary.logic.communication.http.request

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Enumeration = @import("java/util/Enumeration.zig").Enumeration;
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const AbeHttpRequestInfoData = @import("org/allbinary/logic/communication/http/request/AbeHttpRequestInfoData.zig").AbeHttpRequestInfoData;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const AbeHttpRequestInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.http.request.AbeHttpRequestInfo";
    NAME: ?*String = null,
    abeHttpRequestInfoData: ?*AbeHttpRequestInfoData = null,
    commonSeps: ?*CommonSeps = null,
    httpUserAgent: ?*String = null,
    remoteAddress: ?*String = null,
    remoteHost: ?*String = null,
    remoteHostByAddr: ?*String = null,
    remotePort: ?*String = null,
    requestedFilePath: ?*String = null,

    fn initFields(this: *Self) void {
        this.NAME = String.literal("AbeHttpRequestInfo");
        this.abeHttpRequestInfoData = Inheritance.upcast(?*AbeHttpRequestInfoData, AbeHttpRequestInfoData.getInstance());
        this.commonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        
        
        
        
        
        
    }
    

    pub fn create1(hashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        this.httpUserAgent = Inheritance.upcast(@TypeOf(this.httpUserAgent), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ this.abeHttpRequestInfoData.?.HTTP_USER_AGENT })) }));
        this.remoteAddress = Inheritance.upcast(@TypeOf(this.remoteAddress), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ this.abeHttpRequestInfoData.?.REMOTE_ADDRESS })) }));
        this.remoteHost = Inheritance.upcast(@TypeOf(this.remoteHost), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ this.abeHttpRequestInfoData.?.REMOTE_HOST })) }));
        this.remoteHostByAddr = Inheritance.upcast(@TypeOf(this.remoteHostByAddr), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ this.abeHttpRequestInfoData.?.REMOTE_HOST_BY_ADDRESS })) }));
        this.remotePort = Inheritance.upcast(@TypeOf(this.remotePort), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ this.abeHttpRequestInfoData.?.REMOTE_PORT })) }));
        this.requestedFilePath = Inheritance.upcast(@TypeOf(this.requestedFilePath), Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ this.abeHttpRequestInfoData.?.REQUEST_FILE_PATH })) }));
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(httpServletRequest: ?*HttpServletRequest) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        this.httpUserAgent = Inheritance.upcast(@TypeOf(this.httpUserAgent), stringUtil.?.EMPTY_STRING);
        const enumuration: ?*Enumeration = Inheritance.upcast(?*Enumeration, httpServletRequest.?.getHeaderNames());
        while (enumuration.?.hasMoreElements()) {
            const key: ?*String = Inheritance.cast(?*String, enumuration.?.nextElement());
            const value: ?*String = Inheritance.upcast(?*String, Inheritance.call(httpServletRequest.?, "getHeader", .{ key }));
            if (Inheritance.call(key.?, "indexOf", .{ String.literal("user") }) >= 0) {
                this.httpUserAgent = Inheritance.upcast(@TypeOf(this.httpUserAgent), String.plus(String.plus(String.plus(String.literal("key: "), key), String.literal(" value: ")), value));
            }
        }
        this.remoteHostByAddr = Inheritance.upcast(@TypeOf(this.remoteHostByAddr), stringUtil.?.EMPTY_STRING);
        this.remoteAddress = Inheritance.upcast(@TypeOf(this.remoteAddress), httpServletRequest.?.getRemoteAddr());
        this.remoteHost = Inheritance.upcast(@TypeOf(this.remoteHost), httpServletRequest.?.getRemoteHost());
        this.requestedFilePath = Inheritance.upcast(@TypeOf(this.requestedFilePath), httpServletRequest.?.getServletPath());
        this.remotePort = Inheritance.upcast(@TypeOf(this.remotePort), String.valueOf(httpServletRequest.?.getRemotePort()));
        return this;
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ self.abeHttpRequestInfoData.?.HTTP_USER_AGENT, self.httpUserAgent });
        _ = Inheritance.call(hashMap.?, "put", .{ self.abeHttpRequestInfoData.?.REMOTE_ADDRESS, self.remoteAddress });
        _ = Inheritance.call(hashMap.?, "put", .{ self.abeHttpRequestInfoData.?.REMOTE_HOST, self.remoteHost });
        _ = Inheritance.call(hashMap.?, "put", .{ self.abeHttpRequestInfoData.?.REMOTE_HOST_BY_ADDRESS, self.remoteHostByAddr });
        _ = Inheritance.call(hashMap.?, "put", .{ self.abeHttpRequestInfoData.?.REMOTE_PORT, self.remotePort });
        _ = Inheritance.call(hashMap.?, "put", .{ self.abeHttpRequestInfoData.?.REQUEST_FILE_PATH, self.requestedFilePath });
        return hashMap;
    }
    

    pub fn toVector(self: *Self) ?*BasicArrayList {
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(vector.?, "add", .{ self.httpUserAgent });
        _ = Inheritance.call(vector.?, "add", .{ self.remoteAddress });
        _ = Inheritance.call(vector.?, "add", .{ self.remoteHost });
        _ = Inheritance.call(vector.?, "add", .{ self.remoteHostByAddr });
        _ = Inheritance.call(vector.?, "add", .{ self.remotePort });
        _ = Inheritance.call(vector.?, "add", .{ self.requestedFilePath });
        return vector;
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.NAME }).?, "append", .{ self.commonSeps.?.COLON_SEP }).?, "append", .{ self.abeHttpRequestInfoData.?.HTTP_USER_AGENT }).?, "append", .{ self.commonSeps.?.COLON_SEP }).?, "append", .{ self.httpUserAgent }).?, "append", .{ self.commonSeps.?.SPACE }).?, "append", .{ self.abeHttpRequestInfoData.?.REMOTE_ADDRESS }).?, "append", .{ self.commonSeps.?.COLON_SEP }).?, "append", .{ self.remoteAddress }).?, "append", .{ self.commonSeps.?.SPACE }).?, "append", .{ self.abeHttpRequestInfoData.?.REMOTE_HOST }).?, "append", .{ self.commonSeps.?.COLON_SEP }).?, "append", .{ self.remoteHost }).?, "append", .{ self.commonSeps.?.SPACE }).?, "append", .{ self.abeHttpRequestInfoData.?.REMOTE_HOST_BY_ADDRESS }).?, "append", .{ self.commonSeps.?.COLON_SEP }).?, "append", .{ self.remoteHostByAddr }).?, "append", .{ self.commonSeps.?.SPACE }).?, "append", .{ self.abeHttpRequestInfoData.?.REMOTE_PORT }).?, "append", .{ self.commonSeps.?.COLON_SEP }).?, "append", .{ self.remotePort }).?, "append", .{ self.commonSeps.?.SPACE }).?, "append", .{ self.abeHttpRequestInfoData.?.REQUEST_FILE_PATH }).?, "append", .{ self.commonSeps.?.COLON_SEP }).?, "append", .{ self.requestedFilePath }))));
    }
};

