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
// package views.compound.objectConfig

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const ByteArrayInputStream = @import("java/io/ByteArrayInputStream.zig").ByteArrayInputStream;
// const InputStream = @import("java/io/InputStream.zig").InputStream;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const DocumentToNode = @import("org/allbinary/data/tree/dom/document/DocumentToNode.zig").DocumentToNode;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Replace = @import("org/allbinary/logic/string/regex/replace/Replace.zig").Replace;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const TransformFactory = @import("org/allbinary/logic/visual/transform/TransformFactory.zig").TransformFactory;
const TransformInterface = @import("org/allbinary/logic/visual/transform/TransformInterface.zig").TransformInterface;
const RootTransformInfoData = @import("org/allbinary/logic/visual/transform/info/RootTransformInfoData.zig").RootTransformInfoData;
const TransformInfoData = @import("org/allbinary/logic/visual/transform/info/TransformInfoData.zig").TransformInfoData;
const TransformInfoDomNode = @import("org/allbinary/logic/visual/transform/info/TransformInfoDomNode.zig").TransformInfoDomNode;
const TransformInfoHttpInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface.zig").TransformInfoHttpInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const GenericStoreTransformInfoObjectConfig = @import("org/allbinary/logic/visual/transform/info/objectConfig/GenericStoreTransformInfoObjectConfig.zig").GenericStoreTransformInfoObjectConfig;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const Document = @import("org/w3c/dom/Document.zig").Document;

pub const CompoundContextTransformInfoObjectConfig = struct {
    const Self = @This();
    pub const java_name = "views.compound.objectConfig.CompoundContextTransformInfoObjectConfig";
    base: GenericStoreTransformInfoObjectConfig = undefined,
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create2(abeClientInformation: ?*AbeClientInformationInterface, transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(GenericStoreTransformInfoObjectConfig, "create2", .{ abeClientInformation, transformInfoInterface }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create3(abeClientInformation: ?*AbeClientInformationInterface, transformInfoInterface: ?*TransformInfoInterface, document: ?*Document) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(GenericStoreTransformInfoObjectConfig, "create3", .{ abeClientInformation, transformInfoInterface, document }).*;
        this.initFields();
        _ = Inheritance.call(this, "setDocument", .{ Inheritance.call(this, "generate", .{ Inheritance.receiver(this, "toXmlDoc").toXmlDoc() }) });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create4(abeClientInformation: ?*AbeClientInformationInterface, transformInfoInterface: ?*TransformInfoInterface, name: ?*String, @"type": ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(GenericStoreTransformInfoObjectConfig, "create4", .{ abeClientInformation, transformInfoInterface, name, @"type" }).*;
        this.initFields();
        _ = Inheritance.call(this, "setDocument", .{ Inheritance.call(this, "generate", .{ Inheritance.receiver(this, "toXmlDoc").toXmlDoc() }) });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn get(self: *Self) ?*String {
        const storeName: ?*String = Inheritance.upcast(?*String, Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getStoreName").getStoreName());
        const httpTransformInfoInterface: ?*TransformInfoHttpInterface = Inheritance.cast(?*TransformInfoHttpInterface, Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface());
        const templateNameOverride: ?*String = Inheritance.upcast(?*String, Inheritance.call(StringUtil.getInstance().?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(Inheritance.receiver(httpTransformInfoInterface.?, "getPropertiesHashMap").getPropertiesHashMap().?, "get", .{ TransformInfoData.getInstance().?.PARTIAL })) }));
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ storeName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ templateNameOverride });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ RootTransformInfoData.NAME });
        const rootComponentInterface: ?*TransformInterface = Inheritance.upcast(?*TransformInterface, Inheritance.call(TransformFactory.getInstance().?, "getInstance", .{ Inheritance.fieldPointer(self, "abeClientInformation").*, Object.toString(Object.of(stringBuffer)), Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface() }));
        const viewVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(self, "getTransformDomNodes").getTransformDomNodes());
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Root View Called with: "), viewVector.?.size()), self, String.literal("get(transformInfoInterface)") });
        }
        var rootView: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(rootComponentInterface.?, "view").view());
        const startXMLHeader: ?*String = String.literal("<xsl:text disable-output-escaping=\"yes\" ><![CDATA[");
        const endXMLHeader: ?*String = String.literal("]]></xsl:text>");
        const size: i32 = viewVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const objectConfigTransformInfoDomNode: ?*TransformInfoDomNode = Inheritance.cast(?*TransformInfoDomNode, Inheritance.call(viewVector.?, "get", .{ index }));
            const templateKey: ?*String = Inheritance.upcast(?*String, objectConfigTransformInfoDomNode.?.getReplaceKey());
            const componentInterface: ?*TransformInterface = Inheritance.upcast(?*TransformInterface, Inheritance.call(TransformFactory.getInstance().?, "getInstance", .{ Inheritance.fieldPointer(self, "abeClientInformation").*, Inheritance.receiverOf(objectConfigTransformInfoDomNode.?.getTransformInfoInterface().?, "getName").getName(), Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface() }));
            var replacementViewString: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(componentInterface.?, "view").view());
            replacementViewString = Inheritance.upcast(@TypeOf(replacementViewString), Inheritance.callStatic(DocumentToNode, "convertDocumentToNodeString", .{ replacementViewString }));
            _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ startXMLHeader });
            _ = Inheritance.call(stringBuffer.?, "append", .{ replacementViewString });
            _ = Inheritance.call(stringBuffer.?, "append", .{ endXMLHeader });
            const templateValue: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Replacing: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ templateKey });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" with ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ templateValue });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("get()") });
            }
            const replace: ?*Replace = Inheritance.callStatic(Replace, "create2", .{ templateKey, templateValue });
            rootView = Inheritance.upcast(@TypeOf(rootView), Inheritance.call(replace.?, "all", .{ rootView }));
            }
        }
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("End: Result of a compound view: "), rootView), self, String.literal("get()") });
        }
        return rootView;
    }
    

    // throws Exception
    pub fn createInputStream(self: *Self) ?*InputStream {
        const completeTemplateViewBytes: []i8 = Inheritance.receiverOf(self.get().?, "getBytes").getBytes();
        const bais: ?*ByteArrayInputStream = Inheritance.callStatic(ByteArrayInputStream, "create1", .{ completeTemplateViewBytes });
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Template: "), Inheritance.callStatic(String, "create1", .{ completeTemplateViewBytes }).toString()), self, String.literal("createInputStream()") });
        }
        return Inheritance.upcast(?*InputStream, bais);
    }
};

