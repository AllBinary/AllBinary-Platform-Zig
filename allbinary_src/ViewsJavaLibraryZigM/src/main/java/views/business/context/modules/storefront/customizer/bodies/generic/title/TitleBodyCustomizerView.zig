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
// package views.business.context.modules.storefront.customizer.bodies.generic.title

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PageData = @import("org/allbinary/business/page/PageData.zig").PageData;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const XmlDocumentHelper = @import("org/allbinary/data/tree/dom/document/XmlDocumentHelper.zig").XmlDocumentHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const StoreTransformer = @import("org/allbinary/logic/visual/transform/StoreTransformer.zig").StoreTransformer;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const TitleBodyValidation = @import("org/allbinary/logic/visual/transform/template/customizer/bodies/title/TitleBodyValidation.zig").TitleBodyValidation;
const TransformTemplateCustomizerUtil = @import("org/allbinary/logic/visual/transform/template/util/TransformTemplateCustomizerUtil.zig").TransformTemplateCustomizerUtil;
const StringEscapeUtils = @import("org/apache/commons/lang3/StringEscapeUtils.zig").StringEscapeUtils;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const HttpStoreComponentView = @import("views/business/context/modules/storefront/HttpStoreComponentView.zig").HttpStoreComponentView;

pub const TitleBodyCustomizerView = struct {
    const Self = @This();
    pub const java_name = "views.business.context.modules.storefront.customizer.bodies.generic.title.TitleBodyCustomizerView";
    base: HttpStoreComponentView = undefined,
    logUtil: ?*LogUtil = null,
    titleBody: ?*TitleBodyValidation = null,
    // Implements DomNodeInterface
    const NAME: ?*String = String.literal("None");

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.titleBody = null;
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HttpStoreComponentView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn addDomNodeInterfaces(self: *Self) void {
        _ = Inheritance.call(self, "addDomNodeInterface", .{ Inheritance.cast(?*DomNodeInterface, self.titleBody) });
        _ = Inheritance.call(self, "addDomNodeInterface", .{ Inheritance.cast(?*DomNodeInterface, self) });
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        var pageName: ?*String = Inheritance.upcast(?*String, Inheritance.call(TransformTemplateCustomizerUtil.getInstance().?, "getPageNameHack", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getName").getName(), Inheritance.receiverOf(Inheritance.receiver(self, "getWeblisketSession").getWeblisketSession().?, "getStoreName").getStoreName() }));
        if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ pageName })) {
            pageName = Inheritance.upcast(@TypeOf(pageName), TitleBodyCustomizerView.NAME);
        }
        return Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, PageData.getInstance().?.NAME, pageName }));
    }
    

    // throws Exception
    pub fn view(self: *Self) ?*String {
        { // try
            const success: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(XmlDocumentHelper, "toString", .{ Inheritance.receiver(self, "getDoc").getDoc() }));
            const result: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.callStatic(StoreTransformer, "create2", .{ Inheritance.fieldPointer(self, "abeClientInformation").*, Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface() }), "translate", .{ success }));
            return Inheritance.upcast(?*String, Inheritance.callStatic(StringEscapeUtils, "unescapeHtml3", .{ result }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("view()"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

