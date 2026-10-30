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
// const FileInputStream = @import("java/io/FileInputStream.zig").FileInputStream;
// const List = @import("java/util/List.zig").List;
// const JAXBContext = @import("javax/xml/bind/JAXBContext.zig").JAXBContext;
// const JAXBElement = @import("javax/xml/bind/JAXBElement.zig").JAXBElement;
// const Unmarshaller = @import("javax/xml/bind/Unmarshaller.zig").Unmarshaller;
// const StreamSource = @import("javax/xml/transform/stream/StreamSource.zig").StreamSource;
const InputAutomationModuleConfiguration = @import("org/allbinary/input/automation/module/configuration/InputAutomationModuleConfiguration.zig").InputAutomationModuleConfiguration;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const InputAutomationConfiguration = @import("org/allbinary/input/automation/configuration/InputAutomationConfiguration.zig").InputAutomationConfiguration;

pub const InputAutomationConfigurationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory";
    logUtil: ?*LogUtil = null,
    inputAutomationConfiguration: ?*InputAutomationConfiguration = null,
    var instance: ?*InputAutomationConfigurationFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = InputAutomationConfigurationFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.inputAutomationConfiguration = null;
    }
    

    pub fn getInstance() ?*InputAutomationConfigurationFactory {
        return Inheritance.upcast(?*InputAutomationConfigurationFactory, InputAutomationConfigurationFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self, abeClientInformation: ?*AbeClientInformationInterface) void {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        const INPUT_AUTOMATION_CONFIGURATION: ?*String = String.literal("InputAutomationConfiguration");
        const file: ?*File = Inheritance.upcast(?*File, InputAutomationConfiguration.getFile());
        if (file.?.isFile()) {
            _ = Inheritance.call(logUtil.?, "putF", .{ String.literal("LoadingConfiguration"), INPUT_AUTOMATION_CONFIGURATION, commonStrings.?.INIT });
            const jaxbContext: ?*JAXBContext = Inheritance.upcast(?*JAXBContext, Inheritance.callStatic(JAXBContext, "newInstance", .{ InputAutomationConfiguration }));
            const unmarshaller: ?*Unmarshaller = Inheritance.upcast(?*Unmarshaller, jaxbContext.?.createUnmarshaller());
            const root: ?*JAXBElement = Inheritance.upcast(?*JAXBElement, Inheritance.call(unmarshaller.?, "unmarshal", .{ Inheritance.callStatic(StreamSource, "create1", .{ Inheritance.callStatic(FileInputStream, "create1", .{ file }) }), InputAutomationConfiguration }));
            self.inputAutomationConfiguration = Inheritance.cast(?*InputAutomationConfiguration, root.?.getValue());
            const inputAutomationModuleConfigurationList: ?*List = Inheritance.upcast(?*List, self.inputAutomationConfiguration.?.getInputAutomationModuleConfigurationList());
            _ = Inheritance.call(logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.literal("isInstalled: "), self.inputAutomationConfiguration.?.isInstalled()), String.literal(" inputAutomationModuleConfigurationList: ")), inputAutomationModuleConfigurationList), INPUT_AUTOMATION_CONFIGURATION, commonStrings.?.INIT });
            if (inputAutomationModuleConfigurationList != null) {
                const size: i32 = inputAutomationModuleConfigurationList.?.size();
                var inputAutomationModuleConfiguration: ?*InputAutomationModuleConfiguration = null;
                {
                    var index: i32 = 0;
                    while (index < size) : (index += 1) {
                    inputAutomationModuleConfiguration = Inheritance.upcast(@TypeOf(inputAutomationModuleConfiguration), Inheritance.call(inputAutomationModuleConfigurationList.?, "get", .{ index }));
                    _ = Inheritance.call(inputAutomationModuleConfiguration.?, "init", .{ abeClientInformation });
                    }
                }
            }
            _ = Inheritance.call(logUtil.?, "putF", .{ String.literal("LoadedConfiguration"), INPUT_AUTOMATION_CONFIGURATION, commonStrings.?.INIT });
        } else {
            _ = Inheritance.call(logUtil.?, "putF", .{ String.literal("New Configuration"), INPUT_AUTOMATION_CONFIGURATION, commonStrings.?.INIT });
            self.inputAutomationConfiguration = InputAutomationConfiguration.create();
        }
    }
};

