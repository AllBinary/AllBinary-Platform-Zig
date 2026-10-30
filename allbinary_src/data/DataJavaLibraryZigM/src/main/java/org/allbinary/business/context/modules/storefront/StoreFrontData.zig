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
// package org.allbinary.business.context.modules.storefront

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const StoreFrontData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.context.modules.storefront.StoreFrontData";
    CANCEL: ?*String = null,
    SELECT: ?*String = null,
    INSTALL: ?*String = null,
    INSTALL_COMPLETE: ?*String = null,
    NAME: ?*String = null,
    CURRENTHOSTNAME: ?*String = null,
    CURRENTHOSTNAMEPATH: ?*String = null,
    CURRENTHOMEHOSTNAME: ?*String = null,
    CURRENTHOMEHOSTNAMEPATH: ?*String = null,
    HOMEHOSTNAME: ?*String = null,
    HOMEHOSTNAMEPATH: ?*String = null,
    HOSTNAME: ?*String = null,
    HOSTNAMEPATH: ?*String = null,
    TESTHOMEHOSTNAME: ?*String = null,
    TESTHOMEHOSTNAMEPATH: ?*String = null,
    TESTHOSTNAME: ?*String = null,
    TESTHOSTNAMEPATH: ?*String = null,
    IMAGEPATH: ?*String = null,
    STATICPATH: ?*String = null,
    CATEGORYPATH: ?*String = null,
    INVENTORYCONTROL: ?*String = null,
    CONFIGURATION: ?*String = null,
    SUBSTORES: ?*String = null,
    TAGLOCATION: ?*String = null,
    PACKAGELOCATION: ?*String = null,
    FTP: ?*String = null,
    FTPPATH: ?*String = null,
    FTPUSERNAME: ?*String = null,
    FTPPASSWORD: ?*String = null,
    TESTFTP: ?*String = null,
    TESTFTPPATH: ?*String = null,
    TESTFTPUSERNAME: ?*String = null,
    TESTFTPPASSWORD: ?*String = null,
    SELECTSTORENAME: ?*String = null,
    var instance: ?*StoreFrontData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = StoreFrontData.create();
    }

    fn initFields(this: *Self) void {
        this.CANCEL = String.literal("Cancel Store Front");
        this.SELECT = String.literal("Select Store Front");
        this.INSTALL = String.literal("Install Store Front");
        this.INSTALL_COMPLETE = String.literal("Install Store Front Complete");
        this.NAME = String.literal("STOREFRONT_NAME");
        this.CURRENTHOSTNAME = String.literal("STOREFRONT_CURRENTHOSTNAME");
        this.CURRENTHOSTNAMEPATH = String.literal("STOREFRONT_CURRENTHOSTNAMEPATH");
        this.CURRENTHOMEHOSTNAME = String.literal("STOREFRONT_CURRENTHOMEHOSTNAME");
        this.CURRENTHOMEHOSTNAMEPATH = String.literal("STOREFRONT_CURRENTHOMEHOSTNAMEPATH");
        this.HOMEHOSTNAME = String.literal("STOREFRONT_HOMEHOSTNAME");
        this.HOMEHOSTNAMEPATH = String.literal("STOREFRONT_HOMEHOSTNAMEPATH");
        this.HOSTNAME = String.literal("STOREFRONT_HOSTNAME");
        this.HOSTNAMEPATH = String.literal("STOREFRONT_HOSTNAMEPATH");
        this.TESTHOMEHOSTNAME = String.literal("STOREFRONT_TESTHOMEHOSTNAME");
        this.TESTHOMEHOSTNAMEPATH = String.literal("STOREFRONT_TESTHOMEHOSTNAMEPATH");
        this.TESTHOSTNAME = String.literal("STOREFRONT_TESTHOSTNAME");
        this.TESTHOSTNAMEPATH = String.literal("STOREFRONT_TESTHOSTNAMEPATH");
        this.IMAGEPATH = String.literal("STOREFRONT_IMAGEPATH");
        this.STATICPATH = String.literal("STOREFRONT_STATICPATH");
        this.CATEGORYPATH = String.literal("STOREFRONT_CATEGORYPATH");
        this.INVENTORYCONTROL = String.literal("STOREFRONT_INVENTORYCONTROL");
        this.CONFIGURATION = String.literal("STOREFRONT_CONFIGURATION");
        this.SUBSTORES = String.literal("STOREFRONT_SUBSTORES");
        this.TAGLOCATION = String.literal("STOREFRONT_TAGLOCATION");
        this.PACKAGELOCATION = String.literal("STOREFRONT_PACKAGELOCATION");
        this.FTP = String.literal("STOREFRONT_FTP");
        this.FTPPATH = String.literal("STOREFRONT_FTPPATH");
        this.FTPUSERNAME = String.literal("STOREFRONT_FTPUSERNAME");
        this.FTPPASSWORD = String.literal("STOREFRONT_FTPPASSWORD");
        this.TESTFTP = String.literal("STOREFRONT_TESTFTP");
        this.TESTFTPPATH = String.literal("STOREFRONT_TESTFTPPATH");
        this.TESTFTPUSERNAME = String.literal("STOREFRONT_TESTFTPUSERNAME");
        this.TESTFTPPASSWORD = String.literal("STOREFRONT_TESTFTPPASSWORD");
        this.SELECTSTORENAME = String.literal("STOREFRONT_SELECTSTORENAME");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*StoreFrontData {
        return Inheritance.upcast(?*StoreFrontData, StoreFrontData.instance);
    }
};

