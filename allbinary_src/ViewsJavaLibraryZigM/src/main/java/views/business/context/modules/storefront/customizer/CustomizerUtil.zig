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
// package views.business.context.modules.storefront.customizer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const TransformInfoEntity = @import("org/allbinary/data/tables/transform/info/TransformInfoEntity.zig").TransformInfoEntity;
const TransformInfoEntityBuilder = @import("org/allbinary/data/tables/transform/info/TransformInfoEntityBuilder.zig").TransformInfoEntityBuilder;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const XmlDocumentHelper = @import("org/allbinary/data/tree/dom/document/XmlDocumentHelper.zig").XmlDocumentHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const TransformInfo = @import("org/allbinary/logic/visual/transform/info/TransformInfo.zig").TransformInfo;
const TransformInfoHttpInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface.zig").TransformInfoHttpInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const TransformInfoObjectConfigInterface = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface.zig").TransformInfoObjectConfigInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;

pub const CustomizerUtil = struct {
    const Self = @This();
    pub const java_name = "views.business.context.modules.storefront.customizer.CustomizerUtil";
    logUtil: ?*LogUtil = null,
    var instance: ?*CustomizerUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = CustomizerUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*CustomizerUtil {
        return Inheritance.upcast(?*CustomizerUtil, CustomizerUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getTransformInfoInterfaceToCustomize(self: *Self, customizerTransformInfoInterface: ?*TransformInfoInterface, transformInfoInterface: ?*TransformInfoInterface) ?*TransformInfoInterface {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("View Name: "), Inheritance.receiver(customizerTransformInfoInterface.?, "getName").getName()), self, String.literal("getTransformInfoInterfaceToCustomize()") });
        }
        const transformInfoEntityInterface: ?*TransformInfoEntity = Inheritance.upcast(?*TransformInfoEntity, TransformInfoEntityBuilder.getInstance());
        const viewName: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(transformInfoInterface.?, "getName").getName());
        const httpTransformInfoInterface: ?*TransformInfoHttpInterface = Inheritance.cast(?*TransformInfoHttpInterface, customizerTransformInfoInterface);
        const customizedTransformInfoInterface: ?*TransformInfoInterface = Inheritance.upcast(?*TransformInfoInterface, Inheritance.call(transformInfoEntityInterface.?, "get", .{ viewName, Inheritance.receiver(httpTransformInfoInterface.?, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.receiver(httpTransformInfoInterface.?, "getPageContext").getPageContext() }));
        return customizedTransformInfoInterface;
    }
    

    // throws Exception
    pub fn getTransformInfoObjectConfigComponentNodesToCustomize(self: *Self, customizerTransformInfoInterface: ?*TransformInfoInterface, transformInfoInterface: ?*TransformInfoInterface) ?*BasicArrayList {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("View Name: "), Inheritance.receiver(customizerTransformInfoInterface.?, "getName").getName()), self, String.literal("getTransformInfoObjectConfigComponentNodesToCustomize()") });
        }
        const transformInfoEntityInterface: ?*TransformInfoEntity = Inheritance.upcast(?*TransformInfoEntity, TransformInfoEntityBuilder.getInstance());
        const viewName: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(transformInfoInterface.?, "getName").getName());
        const httpTransformInfoInterface: ?*TransformInfoHttpInterface = Inheritance.cast(?*TransformInfoHttpInterface, customizerTransformInfoInterface);
        const customizedTransformInfoInterface: ?*TransformInfoInterface = Inheritance.upcast(?*TransformInfoInterface, Inheritance.call(transformInfoEntityInterface.?, "get", .{ viewName, Inheritance.receiver(httpTransformInfoInterface.?, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.receiver(httpTransformInfoInterface.?, "getPageContext").getPageContext() }));
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "getTransformInfoObjectConfigComponentNodes", .{ customizedTransformInfoInterface }));
    }
    

    // throws Exception
    pub fn getTransformInfoObjectConfigComponentNodes(self: *Self, transformInfoInterface: ?*TransformInfoInterface) ?*BasicArrayList {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("View Name: "), Inheritance.receiver(transformInfoInterface.?, "getName").getName()), self, String.literal("getTransformInfoObjectConfigComponentNodes()") });
        }
        const transformInfoObjectConfigInterface: ?*TransformInfoObjectConfigInterface = Inheritance.upcast(?*TransformInfoObjectConfigInterface, Inheritance.receiver(transformInfoInterface.?, "getObjectConfigInterface").getObjectConfigInterface());
        return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(transformInfoObjectConfigInterface.?, "getTransforms").getTransforms());
    }
    

    // throws Exception
    pub fn getTransformInfoObjectConfigGroupComponentNodes(self: *Self, transformInfoInterface: ?*TransformInfoInterface) ?*BasicArrayList {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("View Name: "), Inheritance.receiver(transformInfoInterface.?, "getName").getName()), self, String.literal("getTransformInfoObjectConfigComponentNodes()") });
        }
        const transformInfoObjectConfigInterface: ?*TransformInfoObjectConfigInterface = Inheritance.upcast(?*TransformInfoObjectConfigInterface, Inheritance.receiver(transformInfoInterface.?, "getObjectConfigInterface").getObjectConfigInterface());
        return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(transformInfoObjectConfigInterface.?, "getGroupTransforms").getGroupTransforms());
    }
    

    // throws Exception
    pub fn insert(self: *Self, transformInfoInterface: ?*TransformInfoInterface, domNodeInterface: ?*DomNodeInterface) void {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("View Name: "), Inheritance.receiver(transformInfoInterface.?, "getName").getName()), self, String.literal("insert()") });
        }
        const transformInfoEntityInterface: ?*TransformInfoEntity = Inheritance.upcast(?*TransformInfoEntity, TransformInfoEntityBuilder.getInstance());
        const allViewsToBeModified: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "getTransformInfoObjectConfigGroupComponentNodes", .{ transformInfoInterface }));
        const document: ?*Document = Inheritance.upcast(?*Document, DomDocumentHelper.create());
        _ = Inheritance.call(document.?, "appendChild", .{ Inheritance.call(domNodeInterface.?, "toXmlNode", .{ document }) });
        const documentString: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(XmlDocumentHelper, "toString", .{ document }));
        const stringBuffer: ?*StringMaker = StringMaker.create();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Total Views For Modification: ") });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ allViewsToBeModified.?.size() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" New Xml/Data: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ documentString });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("insert()") });
        }
        _ = Inheritance.call(transformInfoInterface.?, "setData", .{ documentString });
        const size: i32 = allViewsToBeModified.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const transformInfo: ?*TransformInfo = Inheritance.cast(?*TransformInfo, Inheritance.call(allViewsToBeModified.?, "get", .{ index }));
            const viewNameOfViewToBeModified: ?*String = Inheritance.upcast(?*String, transformInfo.?.getName());
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(transformInfoInterface.?, "getName").getName() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" is modifying view: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ viewNameOfViewToBeModified });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("insert()") });
            }
            const httpTransformInfoInterface: ?*TransformInfoHttpInterface = Inheritance.cast(?*TransformInfoHttpInterface, transformInfoInterface);
            const specifiedTransformInfoInterface: ?*TransformInfoInterface = Inheritance.upcast(?*TransformInfoInterface, Inheritance.call(transformInfoEntityInterface.?, "get", .{ viewNameOfViewToBeModified, Inheritance.receiver(httpTransformInfoInterface.?, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.receiver(httpTransformInfoInterface.?, "getPageContext").getPageContext() }));
            if (specifiedTransformInfoInterface == null) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(transformInfoInterface.?, "getName").getName() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" is unable to add data to view: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ viewNameOfViewToBeModified });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" since it does not exist") });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("insert()") });
                }
            } else {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(Inheritance.receiver(transformInfoInterface.?, "getName").getName(), String.literal(" is adding data to view: ")), viewNameOfViewToBeModified), self, String.literal("insert()") });
                }
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ viewNameOfViewToBeModified });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" is changing data in ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(Inheritance.receiver(specifiedTransformInfoInterface.?, "getDataFilePath").getDataFilePath())) });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" to the following data:\n") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ documentString });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("insert()") });
                }
                _ = Inheritance.call(self, "write", .{ specifiedTransformInfoInterface, documentString });
            }
            }
        }
    }
    

    // throws Exception
    pub fn write(self: *Self, specifiedTransformInfoInterface: ?*TransformInfoInterface, documentString: ?*String) void {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("View Name: "), Inheritance.receiver(specifiedTransformInfoInterface.?, "getName").getName()), self, String.literal("write()") });
        }
        const transformInfoEntityInterface: ?*TransformInfoEntity = Inheritance.upcast(?*TransformInfoEntity, TransformInfoEntityBuilder.getInstance());
        _ = Inheritance.call(specifiedTransformInfoInterface.?, "setData", .{ documentString });
        _ = Inheritance.call(transformInfoEntityInterface.?, "update", .{ Inheritance.receiver(specifiedTransformInfoInterface.?, "toHashMap").toHashMap() });
    }
    

    // throws Exception
    pub fn getViewDataForComponentsInObjectConfig(self: *Self, transformInfoInterface: ?*TransformInfoInterface) ?*Document {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("View Name: "), Inheritance.receiver(transformInfoInterface.?, "getName").getName()), self, String.literal("getViewDataForComponentsInObjectConfig()") });
        }
        const transformInfoObjectConfigInterface: ?*TransformInfoObjectConfigInterface = Inheritance.upcast(?*TransformInfoObjectConfigInterface, Inheritance.receiver(transformInfoInterface.?, "getObjectConfigInterface").getObjectConfigInterface());
        const allViewsToBeModified: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(transformInfoObjectConfigInterface.?, "getGroupTransforms").getGroupTransforms());
        const transformInfoEntityInterface: ?*TransformInfoEntity = Inheritance.upcast(?*TransformInfoEntity, TransformInfoEntityBuilder.getInstance());
        const size: i32 = allViewsToBeModified.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const nextTransformInfoInterface: ?*TransformInfo = Inheritance.cast(?*TransformInfo, Inheritance.call(allViewsToBeModified.?, "get", .{ index }));
            const viewNameOfViewToBeModified: ?*String = Inheritance.upcast(?*String, nextTransformInfoInterface.?.getName());
            const httpTransformInfoInterface: ?*TransformInfoHttpInterface = Inheritance.cast(?*TransformInfoHttpInterface, transformInfoInterface);
            const specifiedTransformInfoInterface: ?*TransformInfoInterface = Inheritance.upcast(?*TransformInfoInterface, Inheritance.call(transformInfoEntityInterface.?, "get", .{ viewNameOfViewToBeModified, Inheritance.receiver(httpTransformInfoInterface.?, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.receiver(httpTransformInfoInterface.?, "getPageContext").getPageContext() }));
            return Inheritance.upcast(?*Document, Inheritance.receiver(specifiedTransformInfoInterface.?, "getDataDocument").getDataDocument());
            }
        }
        std.debug.panic("{any}", .{exception: { _ = String.literal("No Components Specified in ObjectConfig"); break :exception error.Exception; }});
    }
};

