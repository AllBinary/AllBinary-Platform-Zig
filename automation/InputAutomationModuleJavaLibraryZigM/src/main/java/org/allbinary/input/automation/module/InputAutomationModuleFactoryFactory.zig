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
// package org.allbinary.input.automation.module

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Collection = @import("java/util/Collection.zig").Collection;
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Iterator = @import("java/util/Iterator.zig").Iterator;
// const HelpSet = @import("javax/help/HelpSet.zig").HelpSet;
// const HelpSetEvent = @import("javax/help/event/HelpSetEvent.zig").HelpSetEvent;
// const HelpSetListener = @import("javax/help/event/HelpSetListener.zig").HelpSetListener;
// const ListModel = @import("javax/swing/ListModel.zig").ListModel;
const InputAutomationModuleConfiguration = @import("org/allbinary/input/automation/module/configuration/InputAutomationModuleConfiguration.zig").InputAutomationModuleConfiguration;
const InputAutomationModuleConfigurations = @import("org/allbinary/input/automation/module/configuration/InputAutomationModuleConfigurations.zig").InputAutomationModuleConfigurations;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const JavaHelpSetNotifier = @import("org/allbinary/logic/java/help/JavaHelpSetNotifier.zig").JavaHelpSetNotifier;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const DefaultListModelHelper = @import("org/allbinary/input/automation/module/DefaultListModelHelper.zig").DefaultListModelHelper;
const InputAutomationModuleFactoryInterface = @import("org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface.zig").InputAutomationModuleFactoryInterface;

pub const InputAutomationModuleFactoryFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory";
    logUtil: ?*LogUtil = null,
    hashMap: ?*HashMap = null,
    defaultListModelHelper: ?*DefaultListModelHelper = null,
    helpSetListenerInterface: ?*HelpSetListener = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
        
    }
    

    pub fn create2(inputAutomationModuleConfigurations: ?*InputAutomationModuleConfigurations, helpSetListenerInterface: ?*HelpSetListener) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.helpSetListenerInterface = helpSetListenerInterface;
        this.defaultListModelHelper = DefaultListModelHelper.create();
        this.hashMap = Inheritance.upcast(@TypeOf(this.hashMap), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        const collection: ?*Collection = Inheritance.upcast(?*Collection, Inheritance.receiverOf(inputAutomationModuleConfigurations.?.getHashMap().?, "values").values());
        const iterator: ?*Iterator = Inheritance.upcast(?*Iterator, collection.?.iterator());
        var inputAutomationModuleConfiguration: ?*InputAutomationModuleConfiguration = null;
        while (iterator.?.hasNext()) {
            inputAutomationModuleConfiguration = Inheritance.cast(?*InputAutomationModuleConfiguration, iterator.?.next());
            _ = Inheritance.call(this, "add", .{ inputAutomationModuleConfiguration });
        }
        _ = this.defaultListModelHelper.?.initDefaultModelList();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.plus(String.literal("Loaded "), this.hashMap.?.size()), String.literal("/")), Inheritance.receiverOf(this.defaultListModelHelper.?.getListModel().?, "getSize").getSize()), String.literal(" Input Automation Modules")), this, String.literal("Contructor") });
        return this;
    }
    

    pub fn add(self: *Self, inputAutomationModuleConfiguration: ?*InputAutomationModuleConfiguration) void {
        const inputAutomationModuleInterface: ?*InputAutomationModuleFactoryInterface = Inheritance.upcast(?*InputAutomationModuleFactoryInterface, inputAutomationModuleConfiguration.?.getInputAutomationModuleInterface());
        _ = Inheritance.call(self.hashMap.?, "put", .{ inputAutomationModuleConfiguration.?.getName(), inputAutomationModuleInterface });
        _ = Inheritance.call(self.defaultListModelHelper.?, "add", .{ inputAutomationModuleConfiguration.?.getName() });
        const helpSet: ?*HelpSet = Inheritance.upcast(?*HelpSet, inputAutomationModuleInterface.?.getHelpSet());
        if (!Inheritance.callStatic(JavaHelpSetNotifier, "isNotified", .{ helpSet })) {
            const helpSetEvent: ?*HelpSetEvent = Inheritance.callStatic(HelpSetEvent, "create3", .{ self, helpSet, HelpSetEvent.HELPSET_ADDED });
            _ = Inheritance.call(self.helpSetListenerInterface.?, "helpSetAdded", .{ helpSetEvent });
        }
    }
    

    pub fn getListModel(self: *Self) ?*ListModel {
        return Inheritance.cast(?*ListModel, self.defaultListModelHelper.?.getListModel());
    }
    

    pub fn getInstance(self: *Self, moduleName: ?*String) ?*InputAutomationModuleFactoryInterface {
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Getting Module: "), moduleName), self, commonStrings.?.GET_INSTANCE });
        const inputAutomationModuleFactoryInterface: ?*InputAutomationModuleFactoryInterface = Inheritance.cast(?*InputAutomationModuleFactoryInterface, Inheritance.call(self.hashMap.?, "get", .{ moduleName }));
        if (inputAutomationModuleFactoryInterface == null) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.literal("Module: "), moduleName), String.literal(" was null")), self, commonStrings.?.GET_INSTANCE });
        }
        return inputAutomationModuleFactoryInterface;
    }
};

