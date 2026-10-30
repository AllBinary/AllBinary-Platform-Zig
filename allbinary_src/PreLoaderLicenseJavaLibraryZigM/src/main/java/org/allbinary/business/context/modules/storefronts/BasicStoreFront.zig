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
// package org.allbinary.business.context.modules.storefronts

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const UserData = @import("org/allbinary/business/user/UserData.zig").UserData;
const Tokenizer = @import("org/allbinary/logic/string/tokens/Tokenizer.zig").Tokenizer;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicStoreFrontInterface = @import("org/allbinary/business/context/modules/storefronts/BasicStoreFrontInterface.zig").BasicStoreFrontInterface;

pub const BasicStoreFront = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.context.modules.storefronts.BasicStoreFront";
    pub const java_interfaces = .{ BasicStoreFrontInterface };
    name: ?*String = null,
    userName: ?*String = null,
    basketName: ?*String = null,
    homeHostName: ?*String = null,
    homeHostNamePath: ?*String = null,
    hostName: ?*String = null,
    hostNamePath: ?*String = null,
    testHomeHostName: ?*String = null,
    testHomeHostNamePath: ?*String = null,
    testHostName: ?*String = null,
    testHostNamePath: ?*String = null,
    imagePath: ?*String = null,
    staticPath: ?*String = null,
    categoryPath: ?*String = null,
    inventoryControl: ?*String = null,
    subStores: ?*String = null,
    tagLocation: ?*String = null,
    packageLocation: ?*String = null,
    ftp: ?*String = null,
    ftpPath: ?*String = null,
    ftpUserName: ?*String = null,
    ftpPassword: ?*String = null,
    testFtp: ?*String = null,
    testFtpPath: ?*String = null,
    testFtpUserName: ?*String = null,
    testFtpPassword: ?*String = null,
    timeCreated: ?*String = null,
    lastModified: ?*String = null,
    // Implements BasicStoreFrontInterface

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn create1(storeHashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const storeFrontData: ?*StoreFrontData = Inheritance.upcast(?*StoreFrontData, StoreFrontData.getInstance());
        this.name = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.NAME }));
        this.userName = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ UserData.USERNAME }));
        this.basketName = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.NAME }));
        this.homeHostName = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.HOMEHOSTNAME }));
        this.homeHostNamePath = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.HOMEHOSTNAMEPATH }));
        this.hostName = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.HOSTNAME }));
        this.hostNamePath = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.HOSTNAMEPATH }));
        this.testHomeHostName = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.TESTHOMEHOSTNAME }));
        this.testHomeHostNamePath = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.TESTHOMEHOSTNAMEPATH }));
        this.testHostName = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.TESTHOSTNAME }));
        this.testHostNamePath = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.TESTHOSTNAMEPATH }));
        this.imagePath = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.IMAGEPATH }));
        this.staticPath = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.STATICPATH }));
        this.categoryPath = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.CATEGORYPATH }));
        this.inventoryControl = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.INVENTORYCONTROL }));
        this.subStores = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.SUBSTORES }));
        this.tagLocation = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.TAGLOCATION }));
        this.packageLocation = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.PACKAGELOCATION }));
        this.ftp = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.FTP }));
        this.ftpPath = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.FTPPATH }));
        this.ftpUserName = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.FTPUSERNAME }));
        this.ftpPassword = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.FTPPASSWORD }));
        this.testFtp = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.TESTFTP }));
        this.testFtpPath = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.TESTFTPPATH }));
        this.testFtpUserName = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.TESTFTPUSERNAME }));
        this.testFtpPassword = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.TESTFTPPASSWORD }));
        this.timeCreated = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ EntryData.getInstance().?.TIMECREATED }));
        this.lastModified = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ EntryData.getInstance().?.LASTMODIFIED }));
        return this;
    }
    

    pub fn getTestHtmlPath(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Inheritance.receiverOf(org.allbinary.?.globals.?.URLGLOBALS.?, "getTestHtmlPath").getTestHtmlPath() + self.getCurrentHostNamePath());
    }
    

    pub fn getCurrentHostName(self: *Self) ?*String {
        var location: ?*String = null;
        if (Inheritance.receiverOf(org.allbinary.?.globals.?.URLGLOBALS.?, "isTestingMode").isTestingMode()) {
            location = Inheritance.upcast(@TypeOf(location), self.getTestHostName());
        } else {
            location = Inheritance.upcast(@TypeOf(location), self.getHostName());
        }
        return location;
    }
    

    pub fn getCurrentHostNamePath(self: *Self) ?*String {
        var location: ?*String = null;
        if (Inheritance.receiverOf(org.allbinary.?.globals.?.URLGLOBALS.?, "isTestingMode").isTestingMode()) {
            location = Inheritance.upcast(@TypeOf(location), self.getTestHostNamePath());
        } else {
            location = Inheritance.upcast(@TypeOf(location), self.getHostNamePath());
        }
        return location;
    }
    

    pub fn getCurrentHomeHostName(self: *Self) ?*String {
        var location: ?*String = null;
        if (Inheritance.receiverOf(org.allbinary.?.globals.?.URLGLOBALS.?, "isTestingMode").isTestingMode()) {
            location = Inheritance.upcast(@TypeOf(location), self.getTestHomeHostName());
        } else {
            location = Inheritance.upcast(@TypeOf(location), self.getHomeHostName());
        }
        return location;
    }
    

    pub fn getCurrentHomeHostNamePath(self: *Self) ?*String {
        var location: ?*String = null;
        if (Inheritance.receiverOf(org.allbinary.?.globals.?.URLGLOBALS.?, "isTestingMode").isTestingMode()) {
            location = Inheritance.upcast(@TypeOf(location), self.getTestHomeHostNamePath());
        } else {
            location = Inheritance.upcast(@TypeOf(location), self.getHomeHostNamePath());
        }
        return location;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn getUserName(self: *Self) ?*String {
        return self.userName;
    }
    

    pub fn getBasketName(self: *Self) ?*String {
        return self.basketName;
    }
    

    pub fn getHomeHostName(self: *Self) ?*String {
        return self.homeHostName;
    }
    

    pub fn getHomeHostNamePath(self: *Self) ?*String {
        return self.homeHostNamePath;
    }
    

    pub fn getHostName(self: *Self) ?*String {
        return self.hostName;
    }
    

    pub fn getHostNamePath(self: *Self) ?*String {
        return self.hostNamePath;
    }
    

    pub fn getTestHomeHostName(self: *Self) ?*String {
        return self.testHomeHostName;
    }
    

    pub fn getTestHomeHostNamePath(self: *Self) ?*String {
        return self.testHomeHostNamePath;
    }
    

    pub fn getTestHostName(self: *Self) ?*String {
        return self.testHostName;
    }
    

    pub fn getTestHostNamePath(self: *Self) ?*String {
        return self.testHostNamePath;
    }
    

    pub fn getStaticPath(self: *Self) ?*String {
        return self.staticPath;
    }
    

    pub fn getCategoryPath(self: *Self) ?*String {
        return self.categoryPath;
    }
    

    pub fn getInventoryControl(self: *Self) ?*String {
        return self.inventoryControl;
    }
    

    // throws Exception
    pub fn getSubStores(self: *Self) ?*BasicArrayList {
        { // try
            const tokenizer: ?*Tokenizer = Inheritance.callStatic(Tokenizer, "create1", .{ CommonSeps.getInstance().?.SEMICOLON });
            const subStoreVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(tokenizer.?, "getTokensFromString", .{ self.subStores, BasicArrayListD.create() }));
            return subStoreVector;
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
    

    pub fn getTagLocation(self: *Self) ?*String {
        return self.tagLocation;
    }
    

    pub fn getPackageLocation(self: *Self) ?*String {
        return self.packageLocation;
    }
    

    pub fn getFtp(self: *Self) ?*String {
        return self.ftp;
    }
    

    pub fn getFtpUserName(self: *Self) ?*String {
        return self.ftpUserName;
    }
    

    pub fn getFtpPassword(self: *Self) ?*String {
        return self.ftpPassword;
    }
    

    pub fn getTestFtp(self: *Self) ?*String {
        return self.testFtp;
    }
    

    pub fn getTestFtpUserName(self: *Self) ?*String {
        return self.testFtpUserName;
    }
    

    pub fn getTestFtpPassword(self: *Self) ?*String {
        return self.testFtpPassword;
    }
    

    pub fn getFtpPath(self: *Self) ?*String {
        return self.ftpPath;
    }
    

    pub fn getTestFtpPath(self: *Self) ?*String {
        return self.testFtpPath;
    }
    

    pub fn getTimeCreated(self: *Self) ?*String {
        return self.timeCreated;
    }
    

    pub fn getLastModified(self: *Self) ?*String {
        return self.lastModified;
    }
};

