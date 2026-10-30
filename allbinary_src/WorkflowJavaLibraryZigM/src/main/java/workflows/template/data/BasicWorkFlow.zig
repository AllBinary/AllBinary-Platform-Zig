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
// package workflows.template.data

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
// const TagSupport = @import("javax/servlet/jsp/tagext/TagSupport.zig").TagSupport;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ValidationComponentInterface = @import("org/allbinary/logic/control/validate/ValidationComponentInterface.zig").ValidationComponentInterface;
const WorkFlowData = @import("org/allbinary/logic/control/workflow/WorkFlowData.zig").WorkFlowData;
const WorkFlowInterface = @import("org/allbinary/logic/control/workflow/WorkFlowInterface.zig").WorkFlowInterface;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const ServiceClientInformationInterfaceFactory = @import("org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory.zig").ServiceClientInformationInterfaceFactory;
const TransformFactory = @import("org/allbinary/logic/visual/transform/TransformFactory.zig").TransformFactory;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const BasicWorkFlow = struct {
    const Self = @This();
    pub const java_name = "workflows.template.data.BasicWorkFlow";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    abeClientInformation: ?*AbeClientInformationInterface = null,
    validationDomNodeInterface: ?*ValidationComponentInterface = null,
    propertiesHashMap: ?*HashMap = null,
    pageContext: ?*PageContext = null,
    // Implements WorkFlowInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.abeClientInformation = Inheritance.upcast(?*AbeClientInformationInterface, ServiceClientInformationInterfaceFactory.getInstance());
        
        
        
    }
    

    pub fn create2(propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.WORKFLOW })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Properties: "), Object.toString(Object.of(propertiesHashMap))), this, String.literal("BasicWorkFlow()") });
        }
        this.propertiesHashMap = propertiesHashMap;
        this.pageContext = pageContext;
        this.validationDomNodeInterface = Inheritance.cast(?*ValidationComponentInterface, Inheritance.call(TransformFactory.getInstance().?, "getInstance", .{ this.abeClientInformation, propertiesHashMap, pageContext }));
        return this;
    }
    

    // throws Exception
    pub fn getName(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.getPropertiesHashMap().?, "get", .{ WorkFlowData.getInstance().?.NAME }));
    }
    

    pub fn getPropertiesHashMap(self: *Self) ?*HashMap {
        return self.propertiesHashMap;
    }
    

    pub fn getPageContext(self: *Self) ?*PageContext {
        return self.pageContext;
    }
    

    // throws Exception
    pub fn process(self: *Self) ?*Integer {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.WORKFLOW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.commonStrings.?.PROCESS });
        }
        if (Inheritance.receiverOf(Inheritance.receiver(self.validationDomNodeInterface.?, "isValid").isValid().?, "booleanValue").booleanValue()) {
            _ = Inheritance.call(self.pageContext.?.getOut().?, "print", .{ Inheritance.receiver(self.validationDomNodeInterface.?, "view").view() });
            return Inheritance.upcast(?*Integer, Inheritance.callStatic(Integer, "valueOf", .{ TagSupport.EVAL_BODY_INCLUDE }));
        } else {
            _ = Inheritance.call(self.pageContext.?.getOut().?, "print", .{ Inheritance.receiver(self.validationDomNodeInterface.?, "validationInfo").validationInfo() });
            return Inheritance.upcast(?*Integer, Inheritance.callStatic(Integer, "valueOf", .{ TagSupport.SKIP_BODY }));
        }
    }
};

