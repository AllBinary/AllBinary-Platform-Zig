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
// package views.business.context.modules.storefront.customizer.template

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const TransformInfoEntityBuilder = @import("org/allbinary/data/tables/transform/info/TransformInfoEntityBuilder.zig").TransformInfoEntityBuilder;
const RequestParams = @import("org/allbinary/logic/communication/http/request/RequestParams.zig").RequestParams;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ValidationComponentInterface = @import("org/allbinary/logic/control/validate/ValidationComponentInterface.zig").ValidationComponentInterface;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const TransformFactory = @import("org/allbinary/logic/visual/transform/TransformFactory.zig").TransformFactory;
const TransformInterface = @import("org/allbinary/logic/visual/transform/TransformInterface.zig").TransformInterface;
const GeneratorTransformInfoData = @import("org/allbinary/logic/visual/transform/info/GeneratorTransformInfoData.zig").GeneratorTransformInfoData;
const TransformInfo = @import("org/allbinary/logic/visual/transform/info/TransformInfo.zig").TransformInfo;
const TransformInfoData = @import("org/allbinary/logic/visual/transform/info/TransformInfoData.zig").TransformInfoData;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const TransformInfosData = @import("org/allbinary/logic/visual/transform/info/TransformInfosData.zig").TransformInfosData;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const HttpStoreComponentView = @import("views/business/context/modules/storefront/HttpStoreComponentView.zig").HttpStoreComponentView;
const InsertTemplateCustomizerTransformInfoObjectConfig = @import("views/business/context/modules/storefront/customizer/template/objectConfig/InsertTemplateCustomizerTransformInfoObjectConfig.zig").InsertTemplateCustomizerTransformInfoObjectConfig;
const NoTemplateTransformInfoObjectConfig = @import("views/business/context/modules/storefront/customizer/template/objectConfig/NoTemplateTransformInfoObjectConfig.zig").NoTemplateTransformInfoObjectConfig;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

//Sets Template Type
pub const InsertCustomizerValidationView = struct {
    const Self = @This();
    pub const java_name = "views.business.context.modules.storefront.customizer.template.InsertCustomizerValidationView";
    base: HttpStoreComponentView = undefined,
    logUtil: ?*LogUtil = null,
    viewName: ?*String = null,
    // Implements ValidationComponentInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HttpStoreComponentView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("View Name: "), Inheritance.receiver(transformInfoInterface.?, "getName").getName()), this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        }
        const requestHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.callStatic(RequestParams, "create1", .{ Inheritance.receiver(this, "getPageContext").getPageContext() }).toHashMap());
        this.viewName = Inheritance.cast(?*String, Inheritance.call(requestHashMap.?, "get", .{ TransformInfoData.getInstance().?.NAME }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Started Validation"), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
            }
            var isValid_: ?*Boolean = Inheritance.upcast(?*Boolean, Boolean.TRUE);
            if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ self.viewName })) {
                isValid_ = Inheritance.upcast(@TypeOf(isValid_), Boolean.FALSE);
            } else {
                const objectConfig: ?*NoTemplateTransformInfoObjectConfig = Inheritance.callStatic(NoTemplateTransformInfoObjectConfig, "create2", .{ Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface(), Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getObjectConfigInterface").getObjectConfigInterface().?, "toXmlDoc").toXmlDoc() });
                const componentVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(objectConfig.?, "getGroupTransforms").getGroupTransforms());
                const size: i32 = componentVector.?.size();
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    const stringBuffer: ?*StringMaker = StringMaker.create();
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Pointing ") });
                    _ = Inheritance.call(stringBuffer.?, "appendint", .{ componentVector.?.size() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Components") });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
                }
                {
                    var index: i32 = 0;
                    while (index < size) : (index += 1) {
                    const transformInfo: ?*TransformInfo = Inheritance.cast(?*TransformInfo, Inheritance.call(componentVector.?, "get", .{ index }));
                    const transformInfoName: ?*String = Inheritance.upcast(?*String, transformInfo.?.getName());
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Setting Template Component with ViewName: "), transformInfoName), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
                    }
                    const componentInterface: ?*TransformInterface = Inheritance.upcast(?*TransformInterface, Inheritance.call(TransformFactory.getInstance().?, "getInstance", .{ Inheritance.fieldPointer(self, "abeClientInformation").*, transformInfoName, Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface() }));
                    const templateViewObjectConfig: ?*InsertTemplateCustomizerTransformInfoObjectConfig = Inheritance.callStatic(InsertTemplateCustomizerTransformInfoObjectConfig, "create2", .{ Inheritance.receiver(componentInterface.?, "getTransformInfoInterface").getTransformInfoInterface(), Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.receiver(componentInterface.?, "getTransformInfoInterface").getTransformInfoInterface().?, "getObjectConfigInterface").getObjectConfigInterface().?, "toXmlDoc").toXmlDoc() });
                    const storeName: ?*String = Inheritance.upcast(?*String, Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getStoreName").getStoreName());
                    const endIndex: i32 = Inheritance.call(self.viewName.?, "indexOf", .{ storeName }) + storeName.?.length();
                    const storePrepend: ?*String = Inheritance.upcast(?*String, self.viewName.?.substring2(0, endIndex));
                    const viewNamePostfix: ?*String = Inheritance.upcast(?*String, self.viewName.?.substring2(endIndex, self.viewName.?.length()));
                    const newViewNameStringBuffer: ?*StringMaker = StringMaker.create();
                    _ = Inheritance.call(newViewNameStringBuffer.?, "append", .{ storePrepend });
                    const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
                    const transformInfosData: ?*TransformInfosData = Inheritance.upcast(?*TransformInfosData, TransformInfosData.getInstance());
                    if (Inheritance.call(transformInfoName.?, "indexOf", .{ transformInfosData.?.SMALL_PREVIEW }) >= 0) {
                        _ = Inheritance.call(newViewNameStringBuffer.?, "append", .{ commonSeps.?.SPACE });
                        _ = Inheritance.call(newViewNameStringBuffer.?, "append", .{ transformInfosData.?.SMALL_PREVIEW });
                    } else if (Inheritance.call(transformInfoName.?, "indexOf", .{ transformInfosData.?.PREVIEW }) >= 0) {
                        _ = Inheritance.call(newViewNameStringBuffer.?, "append", .{ commonSeps.?.SPACE });
                        _ = Inheritance.call(newViewNameStringBuffer.?, "append", .{ transformInfosData.?.PREVIEW });
                    }
                    _ = Inheritance.call(newViewNameStringBuffer.?, "append", .{ commonSeps.?.SPACE });
                    _ = Inheritance.call(newViewNameStringBuffer.?, "append", .{ viewNamePostfix });
                    if (Inheritance.call(transformInfoName.?, "indexOf", .{ GeneratorTransformInfoData.NAME }) >= 0) {
                        _ = Inheritance.call(newViewNameStringBuffer.?, "append", .{ commonSeps.?.SPACE });
                        _ = Inheritance.call(newViewNameStringBuffer.?, "append", .{ GeneratorTransformInfoData.NAME });
                    }
                    const newViewName: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(newViewNameStringBuffer)));
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                        const stringBuffer: ?*StringMaker = StringMaker.create();
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Template Component: ") });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ transformInfoName });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\n Now Pointing To View Name: ") });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ newViewName });
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
                    }
                    _ = Inheritance.call(templateViewObjectConfig.?, "set", .{ newViewName });
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                        const stringBuffer: ?*StringMaker = StringMaker.create();
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Template Component: ") });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ transformInfoName });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\n with ObjectConfig: ") });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(templateViewObjectConfig)) });
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
                    }
                    _ = Inheritance.call(Inheritance.receiver(componentInterface.?, "getTransformInfoInterface").getTransformInfoInterface().?, "setObjectConfigInterface", .{ templateViewObjectConfig });
                    const updatedTransformInfoHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(Inheritance.receiver(componentInterface.?, "getTransformInfoInterface").getTransformInfoInterface().?, "toHashMap").toHashMap());
                    _ = Inheritance.call(TransformInfoEntityBuilder.getInstance().?, "update", .{ updatedTransformInfoHashMap });
                    }
                }
            }
            return isValid_;
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
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Error: Template Name Is Empty.") });
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
    

    // throws Exception
    pub fn view(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "views").*.?.ValidationOnlyTempUtil.?, "getInstance").getInstance().?, "view", .{ self }));
    }
};

