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
// package views.business.context.modules.storefront.customizer.generic.page

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const TransformInfoEntity = @import("org/allbinary/data/tables/transform/info/TransformInfoEntity.zig").TransformInfoEntity;
const TransformInfoEntityBuilder = @import("org/allbinary/data/tables/transform/info/TransformInfoEntityBuilder.zig").TransformInfoEntityBuilder;
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const XmlDocumentHelper = @import("org/allbinary/data/tree/dom/document/XmlDocumentHelper.zig").XmlDocumentHelper;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ValidationComponentInterface = @import("org/allbinary/logic/control/validate/ValidationComponentInterface.zig").ValidationComponentInterface;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const TransformInfo = @import("org/allbinary/logic/visual/transform/info/TransformInfo.zig").TransformInfo;
const TransformInfoHttpInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface.zig").TransformInfoHttpInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const TransformInfoObjectConfigInterface = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface.zig").TransformInfoObjectConfigInterface;
const PageValidation = @import("org/allbinary/logic/visual/transform/template/customizer/page/PageValidation.zig").PageValidation;
const TitleData = @import("org/allbinary/logic/visual/transform/template/customizer/widgets/title/TitleData.zig").TitleData;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const CustomizerUtil = @import("views/business/context/modules/storefront/customizer/CustomizerUtil.zig").CustomizerUtil;
const PageView = @import("views/business/context/modules/storefront/customizer/generic/page/PageView.zig").PageView;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const PageValidationView = struct {
    const Self = @This();
    pub const java_name = "views.business.context.modules.storefront.customizer.generic.page.PageValidationView";
    base: PageView = undefined,
    logUtil: ?*LogUtil = null,
    // Implements ValidationComponentInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(PageView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("View Name: "), Inheritance.receiver(transformInfoInterface.?, "getName").getName()), this, String.literal("PageViewValidation()") });
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        { // try
            var isValid_: ?*Boolean = Inheritance.upcast(?*Boolean, Boolean.TRUE);
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
            }
            const transformInfoEntityInterface: ?*TransformInfoEntity = Inheritance.upcast(?*TransformInfoEntity, TransformInfoEntityBuilder.getInstance());
            const pageObjectConfigInterface: ?*TransformInfoObjectConfigInterface = Inheritance.upcast(?*TransformInfoObjectConfigInterface, Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getObjectConfigInterface").getObjectConfigInterface());
            const allViewsToBeModifiedVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(pageObjectConfigInterface.?, "getGroupTransforms").getGroupTransforms());
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Views To Be Modified: "), allViewsToBeModifiedVector.?.size()), self, String.literal("get(transformInfoInterface)") });
            }
            const size: i32 = allViewsToBeModifiedVector.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const transformInfoInterface: ?*TransformInfo = Inheritance.cast(?*TransformInfo, Inheritance.call(allViewsToBeModifiedVector.?, "get", .{ index }));
                const viewNameOfViewToBeModified: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(transformInfoInterface.?, "getName").getName());
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    const stringBuffer: ?*StringMaker = StringMaker.create();
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getName").getName() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" is modifying view: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ viewNameOfViewToBeModified });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("insert()") });
                }
                const httpTransformInfoInterface: ?*TransformInfoHttpInterface = Inheritance.cast(?*TransformInfoHttpInterface, Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface());
                const specifiedTransformInfoInterface: ?*TransformInfoInterface = Inheritance.upcast(?*TransformInfoInterface, Inheritance.call(transformInfoEntityInterface.?, "get", .{ viewNameOfViewToBeModified, Inheritance.receiver(httpTransformInfoInterface.?, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.receiver(httpTransformInfoInterface.?, "getPageContext").getPageContext() }));
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    const stringBuffer: ?*StringMaker = StringMaker.create();
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getName").getName() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" is adding data to view: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ viewNameOfViewToBeModified });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("insert()") });
                }
                const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
                const title: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.receiver(specifiedTransformInfoInterface.?, "getName").getName().?, "substring", .{ Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getStoreName").getStoreName().?, "length").length() }));
                if (Inheritance.call(title.?, "compareTo", .{ String.literal("index") }) == 0) {
                    _ = Inheritance.call(hashMap.?, "put", .{ TitleData.getInstance().?.TEXT, String.plus(Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getStoreName").getStoreName(), String.literal(" - Home Page")) });
                } else {
                    _ = Inheritance.call(hashMap.?, "put", .{ TitleData.getInstance().?.TEXT, String.plus(String.plus(Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getStoreName").getStoreName(), String.literal(" -")), title) });
                }
                const pageValidation: ?*PageValidation = Inheritance.callStatic(PageValidation, "create1", .{ hashMap });
                if (Object.same(Inheritance.receiver(pageValidation.?, "isValid").isValid(), Boolean.FALSE)) {
                    isValid_ = Inheritance.upcast(@TypeOf(isValid_), Boolean.FALSE);
                }
                if (Object.same(isValid_, Boolean.TRUE)) {
                    const document: ?*Document = Inheritance.upcast(?*Document, DomDocumentHelper.create());
                    _ = Inheritance.call(document.?, "appendChild", .{ Inheritance.call(pageValidation.?, "toXmlNode", .{ document }) });
                    const documentString: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(XmlDocumentHelper, "toString", .{ document }));
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                        const stringBuffer: ?*StringMaker = StringMaker.create();
                        _ = Inheritance.call(stringBuffer.?, "append", .{ viewNameOfViewToBeModified });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" is changing data in ") });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(Inheritance.receiver(specifiedTransformInfoInterface.?, "getDataFilePath").getDataFilePath())) });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" to the following data:\n") });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ documentString });
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
                    }
                    _ = Inheritance.call(CustomizerUtil.getInstance().?, "write", .{ specifiedTransformInfoInterface, documentString });
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
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            const transformInfoEntityInterface: ?*TransformInfoEntity = Inheritance.upcast(?*TransformInfoEntity, TransformInfoEntityBuilder.getInstance());
            const objectConfig: ?*TransformInfoObjectConfigInterface = Inheritance.upcast(?*TransformInfoObjectConfigInterface, Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getObjectConfigInterface").getObjectConfigInterface());
            const httpTransformInfoInterface: ?*TransformInfoHttpInterface = Inheritance.cast(?*TransformInfoHttpInterface, Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface());
            const allViewsToBeModifiedVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(objectConfig.?, "getGroupTransforms").getGroupTransforms());
            const size: i32 = allViewsToBeModifiedVector.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const transformInfoInterface: ?*TransformInfo = Inheritance.cast(?*TransformInfo, Inheritance.call(allViewsToBeModifiedVector.?, "get", .{ index }));
                const viewNameOfViewToBeModified: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(transformInfoInterface.?, "getName").getName());
                const specifiedTransformInfoInterface: ?*TransformInfoInterface = Inheritance.upcast(?*TransformInfoInterface, Inheritance.call(transformInfoEntityInterface.?, "get", .{ viewNameOfViewToBeModified, Inheritance.receiver(httpTransformInfoInterface.?, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.receiver(httpTransformInfoInterface.?, "getPageContext").getPageContext() }));
                const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
                const title: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.receiver(specifiedTransformInfoInterface.?, "getName").getName().?, "substring", .{ Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getStoreName").getStoreName().?, "length").length() }));
                if (Inheritance.call(title.?, "compareTo", .{ String.literal("index") }) == 0) {
                    _ = Inheritance.call(hashMap.?, "put", .{ TitleData.getInstance().?.TEXT, String.plus(Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getStoreName").getStoreName(), String.literal(" - Home Page")) });
                } else {
                    _ = Inheritance.call(hashMap.?, "put", .{ TitleData.getInstance().?.TEXT, String.plus(String.plus(Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getStoreName").getStoreName(), String.literal(" -")), title) });
                }
                const pageValidation: ?*PageValidation = Inheritance.callStatic(PageValidation, "create1", .{ hashMap });
                if (Object.same(Inheritance.receiver(pageValidation.?, "isValid").isValid(), Boolean.FALSE)) {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.literal("TransformInfo Name for PageValidation:"), Inheritance.receiver(specifiedTransformInfoInterface.?, "getName").getName()) });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.literal("PageValidation:"), hashMap) });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.literal("PageValidation Info:"), Inheritance.receiver(pageValidation.?, "validationInfo").validationInfo()) });
                }
                }
            }
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to generate validation error info"), self, String.literal("validationInfo()"), e });
//             }
//             return String.literal("An auto generated page name was invalid.");
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

