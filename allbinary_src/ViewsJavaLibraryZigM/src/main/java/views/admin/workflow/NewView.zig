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
// package views.admin.workflow

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DynamicObjectData = @import("org/allbinary/business/DynamicObjectData.zig").DynamicObjectData;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ValidationComponentInterface = @import("org/allbinary/logic/control/validate/ValidationComponentInterface.zig").ValidationComponentInterface;
const NewWorkFlowFactory = @import("org/allbinary/logic/control/workflow/NewWorkFlowFactory.zig").NewWorkFlowFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const ServiceClientInformationInterfaceFactory = @import("org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory.zig").ServiceClientInformationInterfaceFactory;
const TransformInfoHttpInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface.zig").TransformInfoHttpInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const WorkFlowView = @import("views/admin/workflow/WorkFlowView.zig").WorkFlowView;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const NewView = struct {
    const Self = @This();
    pub const java_name = "views.admin.workflow.NewView";
    base: WorkFlowView = undefined,
    logUtil: ?*LogUtil = null,
    abeClientInformation: ?*AbeClientInformationInterface = null,
    // Implements ValidationComponentInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.abeClientInformation = Inheritance.upcast(?*AbeClientInformationInterface, ServiceClientInformationInterfaceFactory.getInstance());
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(WorkFlowView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        const httpTransformInfoInterface: ?*TransformInfoHttpInterface = Inheritance.cast(?*TransformInfoHttpInterface, Inheritance.receiver(this, "getTransformInfoInterface").getTransformInfoInterface());
        Inheritance.fieldPointer(this, "workFlowInterface").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "workFlowInterface").*), Inheritance.call(NewWorkFlowFactory.getInstance().?, "getInstance", .{ this.abeClientInformation, Inheritance.cast(?*String, Inheritance.call(Inheritance.receiver(httpTransformInfoInterface.?, "getPropertiesHashMap").getPropertiesHashMap().?, "get", .{ DynamicObjectData.NAME })) }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        _ = self;
        { // try
            return Inheritance.upcast(?*Boolean, Boolean.TRUE);
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to validate"), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID, e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        _ = self;
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Please Contact Administrator") });
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to generate validation error info"), self, String.literal("validationInfo()"), e });
//             }
//             return String.literal("Error Getting Validation Info");
    }
    

    pub fn toValidationInfoDoc(self: *Self) ?*Document {
        _ = self;
        return null;
    }
    

    pub fn toValidationInfoNode(self: *Self, document: ?*Document) ?*Node {
        _ = document;
        _ = self;
        return null;
    }
};

