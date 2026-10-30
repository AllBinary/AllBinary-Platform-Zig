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
// package org.allbinary.input.automation.module.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const File = @import("java/io/File.zig").File;
// const FileInputStream = @import("java/io/FileInputStream.zig").FileInputStream;
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const List = @import("java/util/List.zig").List;
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const InputAutomationModuleData = @import("org/allbinary/input/automation/module/InputAutomationModuleData.zig").InputAutomationModuleData;
const NewInputAutomationModulesData = @import("org/allbinary/input/automation/module/NewInputAutomationModulesData.zig").NewInputAutomationModulesData;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const InputAutomationModuleConfiguration = @import("org/allbinary/input/automation/module/configuration/InputAutomationModuleConfiguration.zig").InputAutomationModuleConfiguration;

pub const InputAutomationModuleConfigurations = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations";
    logUtil: ?*LogUtil = null,
    hashMap: ?*HashMap = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.hashMap = null;
    }
    

    pub fn create2(abeClientInformation: ?*AbeClientInformationInterface, file: ?*File) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setHashMap", .{ HashMap.create() });
        const bytes: []i8 = array_N66069: { const array_N66069_array = allocator.alloc(i8, @intCast(100000)) catch unreachable; @memset(array_N66069_array, 0); break :array_N66069 array_N66069_array; };
        const idFile: ?*FileInputStream = Inheritance.callStatic(FileInputStream, "create1", .{ file });
        const length: i32 = Inheritance.call(idFile.?, "read", .{ bytes }); _ = length;
        const data: ?*String = Inheritance.callStatic(String, "create1", .{ bytes });
        const endIndex: i32 = Inheritance.call(data.?, "lastIndexOf", .{ '>' });
        const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.callStatic(DomDocumentHelper, "create", .{ data.?.substring2(0, endIndex + 1) }));
        const nodeList: ?*NodeList = Inheritance.upcast(?*NodeList, Inheritance.call(document.?, "getElementsByTagName", .{ NewInputAutomationModulesData.NAME }));
        if (nodeList.?.getLength() > 0) {
            const nameNodeList: ?*NodeList = Inheritance.upcast(?*NodeList, Inheritance.call(document.?, "getElementsByTagName", .{ InputAutomationModuleData.NAME }));
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Number Of Module(s) Specified: "), nameNodeList.?.getLength()), this, String.literal("Contructor") });
            {
                var index: i32 = 0;
                while (index < nameNodeList.?.getLength()) : (index += 1) {
                const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nameNodeList.?, "item", .{ index }));
                _ = Inheritance.call(this, "add", .{ Inheritance.callStatic(InputAutomationModuleConfiguration, "create2", .{ abeClientInformation, node }) });
                }
            }
        }
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create2(abeClientInformation: ?*AbeClientInformationInterface, document: ?*Document) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setHashMap", .{ HashMap.create() });
        const nameNodeList: ?*NodeList = Inheritance.upcast(?*NodeList, Inheritance.call(document.?, "getElementsByTagName", .{ InputAutomationModuleData.NAME }));
        _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Number Of Module(s) Specified: "), nameNodeList.?.getLength()), this, String.literal("Contructor") });
        {
            var index: i32 = 0;
            while (index < nameNodeList.?.getLength()) : (index += 1) {
            const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nameNodeList.?, "item", .{ index }));
            _ = Inheritance.call(this, "add", .{ Inheritance.callStatic(InputAutomationModuleConfiguration, "create2", .{ abeClientInformation, node }) });
            }
        }
        return this;
    }
    

    pub fn create1(inputAutomationModuleConfigurationList: ?*List) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setHashMap", .{ HashMap.create() });
        const size: i32 = inputAutomationModuleConfigurationList.?.size();
        var inputAutomationModuleConfiguration: ?*InputAutomationModuleConfiguration = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            inputAutomationModuleConfiguration = Inheritance.upcast(@TypeOf(inputAutomationModuleConfiguration), Inheritance.call(inputAutomationModuleConfigurationList.?, "get", .{ index }));
            _ = Inheritance.call(this, "add", .{ inputAutomationModuleConfiguration });
            }
        }
        return this;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setHashMap", .{ HashMap.create() });
        return this;
    }
    

    pub fn add(self: *Self, inputAutomationModuleConfiguration: ?*InputAutomationModuleConfiguration) void {
        _ = Inheritance.call(self.getHashMap().?, "put", .{ inputAutomationModuleConfiguration.?.getClassName(), inputAutomationModuleConfiguration });
    }
    

    pub fn remove(self: *Self, inputAutomationModuleConfiguration: ?*InputAutomationModuleConfiguration) void {
        _ = Inheritance.call(self.getHashMap().?, "remove", .{ inputAutomationModuleConfiguration.?.getClassName() });
    }
    

    pub fn getHashMap(self: *Self) ?*HashMap {
        return self.hashMap;
    }
    

    pub fn setHashMap(self: *Self, hashMap: ?*HashMap) void {
        self.hashMap = hashMap;
    }
};

