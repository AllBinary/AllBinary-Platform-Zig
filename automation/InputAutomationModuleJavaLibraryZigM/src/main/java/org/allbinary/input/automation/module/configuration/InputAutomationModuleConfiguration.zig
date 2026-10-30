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
// const XmlAccessType = @import("javax/xml/bind/annotation/XmlAccessType.zig").XmlAccessType;
// const XmlAccessorType = @import("javax/xml/bind/annotation/XmlAccessorType.zig").XmlAccessorType;
// const XmlElement = @import("javax/xml/bind/annotation/XmlElement.zig").XmlElement;
// const XmlRootElement = @import("javax/xml/bind/annotation/XmlRootElement.zig").XmlRootElement;
// const XmlType = @import("javax/xml/bind/annotation/XmlType.zig").XmlType;
const DynamicObjectData = @import("org/allbinary/business/DynamicObjectData.zig").DynamicObjectData;
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const InputAutomationData = @import("org/allbinary/input/automation/InputAutomationData.zig").InputAutomationData;
const InputAutomationModuleData = @import("org/allbinary/input/automation/module/InputAutomationModuleData.zig").InputAutomationModuleData;
const InputAutomationModuleFactoryInterface = @import("org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface.zig").InputAutomationModuleFactoryInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbeFactory = @import("org/allbinary/logic/system/loader/AbeFactory.zig").AbeFactory;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;

pub const InputAutomationModuleConfiguration = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    className: ?*String = null,
    name: ?*String = null,
    inputAutomationModuleInterface: ?*InputAutomationModuleFactoryInterface = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.className = null;
        this.name = null;
        this.inputAutomationModuleInterface = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn create2(abeClientInformation: ?*AbeClientInformationInterface, node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "init", .{ abeClientInformation, node });
        return this;
    }
    

    pub fn create3(abeClientInformation: ?*AbeClientInformationInterface, name: ?*String, className: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setName", .{ name });
        _ = Inheritance.call(this, "setClassName", .{ className });
        _ = Inheritance.call(this, "init", .{ abeClientInformation });
        return this;
    }
    

    pub fn create1(inputAutomationModuleInterface: ?*InputAutomationModuleFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setInputAutomationModuleInterface", .{ inputAutomationModuleInterface });
        _ = Inheritance.call(this, "setClassName", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(this.inputAutomationModuleInterface).?.class))).?))).name) });
        return this;
    }
    

    // throws Exception
    pub fn init2(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, node: ?*Node) void {
        const nodeList: ?*NodeList = Inheritance.upcast(?*NodeList, node.?.getChildNodes());
        if (nodeList != null) {
            const classNameNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ DynamicObjectData.NAME, nodeList }));
            if (classNameNode != null) {
                _ = Inheritance.call(self, "setClassName", .{ Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ classNameNode }) });
                _ = Inheritance.call(self, "init", .{ abeClientInformation });
            } else {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Class Node Null"), self, self.commonStrings.?.INIT });
            }
        } else {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(InputAutomationData.NAME, String.literal(" Node Has No Children")), self, String.literal("Contructor") });
        }
    }
    

    pub fn init(self: *Self, abeClientInformation: ?*AbeClientInformationInterface) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Name: "), self.getName()), self, self.commonStrings.?.INIT });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("ClassName: "), self.className), self, self.commonStrings.?.INIT });
            _ = Inheritance.call(self, "setInputAutomationModuleInterface", .{ Inheritance.cast(?*InputAutomationModuleFactoryInterface, Inheritance.call(Inheritance.receiverOf(AbeFactory.getInstance().?, "getInstance").getInstance().?, "getInstance", .{ abeClientInformation, self.getClassName() })) });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.INIT, e });
//             std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn toDomNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ InputAutomationModuleData.NAME }));
        const classNameNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createTextNode", .{ document, DynamicObjectData.NAME, self.getClassName() }));
        _ = Inheritance.call(node.?, "appendChild", .{ classNameNode });
        return node;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn setName(self: *Self, name: ?*String) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Name: "), name), self, String.literal("setName") });
        self.name = name;
    }
    

    pub fn getClassName(self: *Self) ?*String {
        return self.className;
    }
    

    pub fn setClassName(self: *Self, className: ?*String) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("ClassName : "), className), self, String.literal("setClassName") });
        self.className = className;
    }
    

    pub fn getInputAutomationModuleInterface(self: *Self) ?*InputAutomationModuleFactoryInterface {
        return self.inputAutomationModuleInterface;
    }
    

    pub fn setInputAutomationModuleInterface(self: *Self, inputAutomationModuleInterface: ?*InputAutomationModuleFactoryInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("InputAutomationModuleFactoryInterface : "), inputAutomationModuleInterface), self, String.literal("setInputAutomationModuleInterface") });
        self.inputAutomationModuleInterface = inputAutomationModuleInterface;
        _ = Inheritance.call(self, "setName", .{ self.inputAutomationModuleInterface.?.getName() });
    }
};

