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
// package views.business.context

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const XmlDocumentHelper = @import("org/allbinary/data/tree/dom/document/XmlDocumentHelper.zig").XmlDocumentHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const TransformFactory = @import("org/allbinary/logic/visual/transform/TransformFactory.zig").TransformFactory;
const TransformInterface = @import("org/allbinary/logic/visual/transform/TransformInterface.zig").TransformInterface;
const GeneratorTransformInfoData = @import("org/allbinary/logic/visual/transform/info/GeneratorTransformInfoData.zig").GeneratorTransformInfoData;
const RootTransformInfoData = @import("org/allbinary/logic/visual/transform/info/RootTransformInfoData.zig").RootTransformInfoData;
const TransformInfoHttp = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttp.zig").TransformInfoHttp;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const TransformInfoObjectConfigAndManipulatorFactory = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigAndManipulatorFactory.zig").TransformInfoObjectConfigAndManipulatorFactory;
const TransformInfoObjectConfigInterface = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface.zig").TransformInfoObjectConfigInterface;
const TransformTemplateInterface = @import("org/allbinary/logic/visual/transform/template/TransformTemplateInterface.zig").TransformTemplateInterface;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const Document = @import("org/w3c/dom/Document.zig").Document;
const HttpStoreComponentView = @import("views/business/context/modules/storefront/HttpStoreComponentView.zig").HttpStoreComponentView;

pub const OverrideObjectConfigRootContextView = struct {
    const Self = @This();
    pub const java_name = "views.business.context.OverrideObjectConfigRootContextView";
    base: HttpStoreComponentView = undefined,
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HttpStoreComponentView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("View Name: "), Inheritance.receiver(transformInfoInterface.?, "getName").getName()), this, String.literal("OverrideObjectRootContextView()") });
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn view(self: *Self) ?*String {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("View Name: "), Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getName").getName()), self, String.literal("view()") });
            }
            const rootTransformInfoInterface: ?*TransformInfoInterface = Inheritance.cast(?*TransformInfoInterface, Inheritance.callStatic(TransformInfoHttp, "create1", .{ Inheritance.cast(?*TransformInfoHttp, Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface()) }));
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getStoreName").getStoreName() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
            const nameStart: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            if (Inheritance.call(Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getName").getName().?, "indexOf", .{ GeneratorTransformInfoData.NAME }) > 0) {
                _ = Inheritance.call(rootTransformInfoInterface.?, "setName", .{ String.plus(nameStart, GeneratorTransformInfoData.NAME) });
            } else if (Inheritance.call(Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getName").getName().?, "indexOf", .{ RootTransformInfoData.NAME }) > 0) {
                _ = Inheritance.call(rootTransformInfoInterface.?, "setName", .{ String.plus(nameStart, RootTransformInfoData.NAME) });
            } else {
                std.debug.panic("{any}", .{exception: { _ = String.literal("Override Currently Not Supported"); break :exception error.Exception; }});
            }
            const overrideObjectConfigDocument: ?*Document = Inheritance.upcast(?*Document, Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getObjectConfigInterface").getObjectConfigInterface().?, "toXmlDoc").toXmlDoc());
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Retrieved OverrideObjectConfig: "), Inheritance.callStatic(XmlDocumentHelper, "toString", .{ overrideObjectConfigDocument })), self, String.literal("view()") });
            }
            const transformFactory: ?*TransformFactory = Inheritance.upcast(?*TransformFactory, TransformFactory.getInstance());
            const rootComponentInterface: ?*TransformInterface = Inheritance.upcast(?*TransformInterface, Inheritance.call(transformFactory.?, "getInstance", .{ Inheritance.fieldPointer(self, "abeClientInformation").*, Inheritance.receiver(rootTransformInfoInterface.?, "getName").getName(), rootTransformInfoInterface }));
            const transformTemplateInterface: ?*TransformTemplateInterface = Inheritance.cast(?*TransformTemplateInterface, rootComponentInterface);
            const componentInterface: ?*TransformInterface = Inheritance.upcast(?*TransformInterface, Inheritance.call(transformFactory.?, "getInstance", .{ Inheritance.fieldPointer(self, "abeClientInformation").*, transformTemplateInterface.?.getName(), Inheritance.receiver(rootComponentInterface.?, "getTransformInfoInterface").getTransformInfoInterface() }));
            const transformInfoObjectConfigInterface: ?*TransformInfoObjectConfigInterface = Inheritance.upcast(?*TransformInfoObjectConfigInterface, Inheritance.call(TransformInfoObjectConfigAndManipulatorFactory.getInstance().?, "getInstance", .{ Inheritance.fieldPointer(self, "abeClientInformation").*, Inheritance.receiver(componentInterface.?, "getTransformInfoInterface").getTransformInfoInterface(), overrideObjectConfigDocument }));
            _ = Inheritance.call(Inheritance.receiver(componentInterface.?, "getTransformInfoInterface").getTransformInfoInterface().?, "setObjectConfigInterface", .{ transformInfoObjectConfigInterface });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Set OverrideObjectConfig: "), Object.toString(Object.of(Inheritance.receiverOf(Inheritance.receiver(componentInterface.?, "getTransformInfoInterface").getTransformInfoInterface().?, "getObjectConfigInterface").getObjectConfigInterface()))), self, String.literal("view()") });
            }
            return Inheritance.upcast(?*String, Inheritance.receiver(componentInterface.?, "view").view());
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("view()"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

