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
// package org.allbinary.input.automation.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const File = @import("java/io/File.zig").File;
// const List = @import("java/util/List.zig").List;
// const JAXBContext = @import("javax/xml/bind/JAXBContext.zig").JAXBContext;
// const Marshaller = @import("javax/xml/bind/Marshaller.zig").Marshaller;
// const XmlAccessType = @import("javax/xml/bind/annotation/XmlAccessType.zig").XmlAccessType;
// const XmlAccessorType = @import("javax/xml/bind/annotation/XmlAccessorType.zig").XmlAccessorType;
// const XmlElement = @import("javax/xml/bind/annotation/XmlElement.zig").XmlElement;
// const XmlRootElement = @import("javax/xml/bind/annotation/XmlRootElement.zig").XmlRootElement;
// const XmlType = @import("javax/xml/bind/annotation/XmlType.zig").XmlType;
const DomDocumentFileHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentFileHelper.zig").DomDocumentFileHelper;
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const InputAutomationModuleConfiguration = @import("org/allbinary/input/automation/module/configuration/InputAutomationModuleConfiguration.zig").InputAutomationModuleConfiguration;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const FileUtil = @import("org/allbinary/logic/io/file/FileUtil.zig").FileUtil;
const FileWrapperUtil = @import("org/allbinary/logic/io/file/FileWrapperUtil.zig").FileWrapperUtil;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Document = @import("org/w3c/dom/Document.zig").Document;

//name="inputAutomationConfiguration", 
pub const InputAutomationConfiguration = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.configuration.InputAutomationConfiguration";
    logUtil: ?*LogUtil = null,
    installed: bool = false,
    inputAutomationModuleConfigurationList: ?*List = null,
    const FILENAME: ?*String = String.literal("InputAutomationConfig.xml");

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.installed = false;
        this.inputAutomationModuleConfigurationList = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getFile() ?*File {
        return Inheritance.callStatic(File, "create1", .{ InputAutomationConfiguration.FILENAME });
    }
    

    pub fn isInstalled(self: *Self) bool {
        return self.installed;
    }
    

    pub fn setInstalled(self: *Self, installed: bool) void {
        self.installed = installed;
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Installed: "), installed), self, String.literal("setIntalled") });
    }
    

    pub fn getInputAutomationModuleConfigurationList(self: *Self) ?*List {
        return self.inputAutomationModuleConfigurationList;
    }
    

    // throws Exception
    pub fn save(self: *Self) void {
        const document: ?*Document = Inheritance.upcast(?*Document, DomDocumentHelper.create());
        const file: ?*File = Inheritance.callStatic(File, "create1", .{ InputAutomationConfiguration.FILENAME });
        _ = Inheritance.call(FileUtil.getInstance().?, "copy", .{ Inheritance.callStatic(AbPath, "create2", .{ file.?.getAbsolutePath(), StringUtil.getInstance().?.EMPTY_STRING }), Inheritance.callStatic(AbPath, "create2", .{ String.plus(file.?.getAbsolutePath(), String.literal(".bak.xml")), StringUtil.getInstance().?.EMPTY_STRING }) });
        const jaxbContext: ?*JAXBContext = Inheritance.upcast(?*JAXBContext, Inheritance.callStatic(JAXBContext, "newInstance", .{ InputAutomationConfiguration }));
        const marshaller: ?*Marshaller = Inheritance.upcast(?*Marshaller, jaxbContext.?.createMarshaller());
        _ = Inheritance.call(marshaller.?, "setProperty", .{ Marshaller.JAXB_FORMATTED_OUTPUT, true });
        _ = Inheritance.call(marshaller.?, "marshal", .{ self, document });
        _ = Inheritance.callStatic(DomDocumentFileHelper, "save", .{ Inheritance.callStatic(FileWrapperUtil, "wrapFile", .{ file }), document });
    }
};

