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
// package org.allbinary.logic.visual.transform.info.objectConfig

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const XmlDocumentHelper = @import("org/allbinary/data/tree/dom/document/XmlDocumentHelper.zig").XmlDocumentHelper;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Replace = @import("org/allbinary/logic/string/regex/replace/Replace.zig").Replace;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const RootTransformInfoData = @import("org/allbinary/logic/visual/transform/info/RootTransformInfoData.zig").RootTransformInfoData;
const TransformInfoData = @import("org/allbinary/logic/visual/transform/info/TransformInfoData.zig").TransformInfoData;
const TransformInfoHttp = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttp.zig").TransformInfoHttp;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const TransformTemplateFactory = @import("org/allbinary/logic/visual/transform/template/TransformTemplateFactory.zig").TransformTemplateFactory;
const TransformTemplateInterface = @import("org/allbinary/logic/visual/transform/template/TransformTemplateInterface.zig").TransformTemplateInterface;
const TransformTemplateCustomizerUtil = @import("org/allbinary/logic/visual/transform/template/util/TransformTemplateCustomizerUtil.zig").TransformTemplateCustomizerUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const Document = @import("org/w3c/dom/Document.zig").Document;
const TransformInfoObjectConfig = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfig.zig").TransformInfoObjectConfig;
const TransformInfoObjectConfigData = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData.zig").TransformInfoObjectConfigData;

pub const GenericStoreTransformInfoObjectConfig = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig";
    base: TransformInfoObjectConfig = undefined,
    logUtil: ?*LogUtil = null,
    abeClientInformation: ?*AbeClientInformationInterface = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create2(abeClientInformation: ?*AbeClientInformationInterface, transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TransformInfoObjectConfig, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        this.abeClientInformation = abeClientInformation;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create3(abeClientInformation: ?*AbeClientInformationInterface, transformInfoInterface: ?*TransformInfoInterface, document: ?*Document) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TransformInfoObjectConfig, "create2", .{ transformInfoInterface, document }).*;
        this.initFields();
        this.abeClientInformation = abeClientInformation;
        _ = Inheritance.call(this, "setDocument", .{ Inheritance.call(this, "generate", .{ Inheritance.receiver(this, "toXmlDoc").toXmlDoc() }) });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create4(abeClientInformation: ?*AbeClientInformationInterface, transformInfoInterface: ?*TransformInfoInterface, name: ?*String, @"type": ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TransformInfoObjectConfig, "create3", .{ transformInfoInterface, name, @"type" }).*;
        this.initFields();
        this.abeClientInformation = abeClientInformation;
        _ = Inheritance.call(this, "setDocument", .{ Inheritance.call(this, "generate", .{ Inheritance.receiver(this, "toXmlDoc").toXmlDoc() }) });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn generate(self: *Self, objectConfigDocument: ?*Document) ?*Document {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("TransformInfo: ") });
            if (Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface() != null) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getName").getName() });
            } else {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("No Owner!?#@") });
            }
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("generate()") });
        }
        const transformInfoHttpStoreInterface: ?*TransformInfoHttp = Inheritance.cast(?*TransformInfoHttp, Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface());
        const objectConfigDocumentString: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(XmlDocumentHelper, "toString", .{ objectConfigDocument }));
        const replaceHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.call(self, "createReplaceHashMap", .{ transformInfoHttpStoreInterface, objectConfigDocumentString }));
        return Inheritance.upcast(?*Document, Inheritance.call(self, "generate", .{ objectConfigDocumentString, replaceHashMap }));
    }
    

    // throws Exception
    pub fn createReplaceHashMap(self: *Self, transformInfoHttpStoreInterface: ?*TransformInfoHttp, objectConfigDocumentString: ?*String) ?*HashMap {
        const storeName: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(transformInfoHttpStoreInterface.?, "getStoreName").getStoreName());
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.call(self, "createHashMap", .{ transformInfoHttpStoreInterface, objectConfigDocumentString }));
        const transformInfoObjectConfigData: ?*TransformInfoObjectConfigData = Inheritance.upcast(?*TransformInfoObjectConfigData, TransformInfoObjectConfigData.getInstance());
        _ = Inheritance.call(hashMap.?, "put", .{ transformInfoObjectConfigData.?.VARKEY + StoreFrontData.getInstance().?.NAME, storeName });
        const pageName: ?*String = Inheritance.upcast(?*String, Inheritance.call(TransformTemplateCustomizerUtil.getInstance().?, "getPageNameHack", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getName").getName(), storeName }));
        _ = Inheritance.call(hashMap.?, "put", .{ transformInfoObjectConfigData.?.VARKEY + TransformInfoData.getInstance().?.PARTIAL, pageName });
        return hashMap;
    }
    

    // throws Exception
    pub fn createHashMap(self: *Self, transformInfoHttpStoreInterface: ?*TransformInfoHttp, objectConfigDocumentString: ?*String) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        const storeName: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(transformInfoHttpStoreInterface.?, "getStoreName").getStoreName());
        const propertiesHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiver(transformInfoHttpStoreInterface.?, "getPropertiesHashMap").getPropertiesHashMap());
        const templateNameOverride: ?*String = Inheritance.upcast(?*String, Inheritance.call(StringUtil.getInstance().?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(propertiesHashMap.?, "get", .{ TransformInfoData.getInstance().?.PARTIAL })) }));
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("TemplateNameOverride: "), templateNameOverride), self, String.literal("generate()") });
        }
        const templateNameStringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(templateNameStringBuffer.?, "append", .{ storeName });
        _ = Inheritance.call(templateNameStringBuffer.?, "append", .{ templateNameOverride });
        _ = Inheritance.call(templateNameStringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
        _ = Inheritance.call(templateNameStringBuffer.?, "append", .{ RootTransformInfoData.NAME });
        const templateNameKey: ?*String = Inheritance.upcast(?*String, TransformInfoObjectConfigData.getInstance().?.VARKEY + TransformInfoData.getInstance().?.OWNER);
        if (Inheritance.call(objectConfigDocumentString.?, "indexOf", .{ templateNameKey }) != -1) {
            const templateInterface: ?*TransformTemplateInterface = Inheritance.upcast(?*TransformTemplateInterface, Inheritance.call(TransformTemplateFactory.getInstance().?, "getInstance", .{ self.abeClientInformation, Object.toString(Object.of(templateNameStringBuffer)), Inheritance.receiver(transformInfoHttpStoreInterface.?, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.receiver(transformInfoHttpStoreInterface.?, "getPageContext").getPageContext() }));
            const selectedTemplate: ?*String = Inheritance.upcast(?*String, templateInterface.?.getName());
            _ = Inheritance.call(hashMap.?, "put", .{ templateNameKey, selectedTemplate });
        }
        return hashMap;
    }
    

    // throws Exception
    pub fn generate2(self: *Self, objectConfigDocumentString: ?*String, hashMap: ?*HashMap) ?*Document {
        const replace: ?*Replace = Inheritance.callStatic(Replace, "create1", .{ hashMap });
        const newObjectConfigDocument: ?*Document = Inheritance.upcast(?*Document, Inheritance.callStatic(DomDocumentHelper, "create", .{ Inheritance.call(replace.?, "all", .{ objectConfigDocumentString }) }));
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Final ObjectConfig: "), Inheritance.callStatic(XmlDocumentHelper, "toString", .{ newObjectConfigDocument })), self, String.literal("generate()") });
        }
        return newObjectConfigDocument;
    }
};

