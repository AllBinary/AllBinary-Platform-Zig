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
// package org.allbinary.logic.communication.ftp.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const FtpConfiguration = @import("org/allbinary/logic/communication/ftp/configuration/FtpConfiguration.zig").FtpConfiguration;
const FtpConfigurationData = @import("org/allbinary/logic/communication/ftp/configuration/FtpConfigurationData.zig").FtpConfigurationData;
const FtpConfigurationInterface = @import("org/allbinary/logic/communication/ftp/configuration/FtpConfigurationInterface.zig").FtpConfigurationInterface;
const FtpConfigurationMapping = @import("org/allbinary/logic/communication/ftp/configuration/FtpConfigurationMapping.zig").FtpConfigurationMapping;

pub const FtpConfigurationView = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.ftp.configuration.FtpConfigurationView";
    ftpConfigurationInterface: ?*FtpConfigurationInterface = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.ftpConfigurationInterface = null;
    }
    

    pub fn create1(node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setFtpConfigurationInterface", .{ Inheritance.cast(?*FtpConfigurationInterface, FtpConfiguration.create()) });
        const chileNodeList: ?*NodeList = Inheritance.upcast(?*NodeList, node.?.getChildNodes());
        const server: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ FtpConfigurationData.SERVER, chileNodeList }));
        _ = Inheritance.call(this.getFtpConfigurationInterface().?, "setServer", .{ server });
        const userName: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ FtpConfigurationData.USERNAME, chileNodeList }));
        _ = Inheritance.call(this.getFtpConfigurationInterface().?, "setUserName", .{ userName });
        const password: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ FtpConfigurationData.PASSWORD, chileNodeList }));
        _ = Inheritance.call(this.getFtpConfigurationInterface().?, "setPassword", .{ password });
        const path: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ FtpConfigurationData.PATH, chileNodeList }));
        _ = Inheritance.call(this.getFtpConfigurationInterface().?, "setPath", .{ path });
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(ftpConfigurationInterface: ?*FtpConfigurationInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setFtpConfigurationInterface", .{ ftpConfigurationInterface });
        return this;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const ftpConfigurationMapping: ?*FtpConfigurationMapping = Inheritance.callStatic(FtpConfigurationMapping, "create1", .{ self.getFtpConfigurationInterface() });
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, ftpConfigurationMapping.?.toHashMap());
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, FtpConfigurationData.NAME, hashMap }));
        return node;
    }
    

    pub fn getFtpConfigurationInterface(self: *Self) ?*FtpConfigurationInterface {
        return self.ftpConfigurationInterface;
    }
    

    pub fn setFtpConfigurationInterface(self: *Self, ftpConfigurationInterface: ?*FtpConfigurationInterface) void {
        self.ftpConfigurationInterface = ftpConfigurationInterface;
    }
};

