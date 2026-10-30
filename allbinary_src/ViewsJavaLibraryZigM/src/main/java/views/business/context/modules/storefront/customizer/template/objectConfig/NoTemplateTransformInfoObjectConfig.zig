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
// package views.business.context.modules.storefront.customizer.template.objectConfig

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
const Replace = @import("org/allbinary/logic/string/regex/replace/Replace.zig").Replace;
const TransformInfoData = @import("org/allbinary/logic/visual/transform/info/TransformInfoData.zig").TransformInfoData;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const TransformInfoObjectConfig = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfig.zig").TransformInfoObjectConfig;
const TransformInfoObjectConfigData = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData.zig").TransformInfoObjectConfigData;
const TransformTemplateCustomizerUtil = @import("org/allbinary/logic/visual/transform/template/util/TransformTemplateCustomizerUtil.zig").TransformTemplateCustomizerUtil;
const Document = @import("org/w3c/dom/Document.zig").Document;

pub const NoTemplateTransformInfoObjectConfig = struct {
    const Self = @This();
    pub const java_name = "views.business.context.modules.storefront.customizer.template.objectConfig.NoTemplateTransformInfoObjectConfig";
    base: TransformInfoObjectConfig = undefined,
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TransformInfoObjectConfig, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create2(transformInfoInterface: ?*TransformInfoInterface, document: ?*Document) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TransformInfoObjectConfig, "create2", .{ transformInfoInterface, document }).*;
        this.initFields();
        _ = Inheritance.call(this, "setDocument", .{ Inheritance.call(this, "generate", .{ Inheritance.receiver(this, "toXmlDoc").toXmlDoc() }) });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create3(transformInfoInterface: ?*TransformInfoInterface, name: ?*String, @"type": ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TransformInfoObjectConfig, "create3", .{ transformInfoInterface, name, @"type" }).*;
        this.initFields();
        _ = Inheritance.call(this, "setDocument", .{ Inheritance.call(this, "generate", .{ Inheritance.receiver(this, "toXmlDoc").toXmlDoc() }) });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn generate(self: *Self, objectConfigDocument: ?*Document) ?*Document {
        const docString: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(XmlDocumentHelper, "toString", .{ objectConfigDocument }));
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Initial ObjectConfig: "), docString), self, String.literal("generate()") });
        }
        const storeName: ?*String = Inheritance.upcast(?*String, Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getStoreName").getStoreName());
        const viewName: ?*String = Inheritance.upcast(?*String, Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getName").getName());
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        const VARKEY: ?*String = Inheritance.upcast(?*String, TransformInfoObjectConfigData.getInstance().?.VARKEY);
        _ = Inheritance.call(hashMap.?, "put", .{ String.plus(VARKEY, StoreFrontData.getInstance().?.NAME), storeName });
        _ = Inheritance.call(hashMap.?, "put", .{ String.plus(VARKEY, TransformInfoData.getInstance().?.OWNER), viewName });
        const pageName: ?*String = Inheritance.upcast(?*String, Inheritance.call(TransformTemplateCustomizerUtil.getInstance().?, "getPageNameHack", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getName").getName(), Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getStoreName").getStoreName() }));
        _ = Inheritance.call(hashMap.?, "put", .{ String.plus(VARKEY, TransformInfoData.getInstance().?.PARTIAL), pageName });
        const replace: ?*Replace = Inheritance.callStatic(Replace, "create1", .{ hashMap });
        const newObjectConfigDocument: ?*Document = Inheritance.upcast(?*Document, Inheritance.callStatic(DomDocumentHelper, "create", .{ Inheritance.call(replace.?, "all", .{ docString }) }));
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Final ObjectConfig: "), Inheritance.callStatic(XmlDocumentHelper, "toString", .{ newObjectConfigDocument })), self, String.literal("generate()") });
        }
        return newObjectConfigDocument;
    }
};

