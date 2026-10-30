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
const ContextTransformer = @import("org/allbinary/logic/visual/transform/ContextTransformer.zig").ContextTransformer;
const TransformHttpRequestDocumentFactory = @import("org/allbinary/logic/visual/transform/data/TransformHttpRequestDocumentFactory.zig").TransformHttpRequestDocumentFactory;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const HttpComponentView = @import("views/HttpComponentView.zig").HttpComponentView;

pub const HttpContextView = struct {
    const Self = @This();
    pub const java_name = "views.business.context.HttpContextView";
    base: HttpComponentView = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HttpComponentView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("View Name: "), Inheritance.receiver(transformInfoInterface.?, "getName").getName()), this, this.commonStrings.?.CONSTRUCTOR });
        }
        _ = Inheritance.call(this, "setTransformDocumentInterface", .{ Inheritance.callStatic(TransformHttpRequestDocumentFactory, "getInstance", .{ Inheritance.receiver(this, "getPageContext").getPageContext(), Inheritance.receiver(this, "getWeblisketSession").getWeblisketSession() }) });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn view(self: *Self) ?*String {
        { // try
            _ = Inheritance.receiver(self, "toXmlDoc").toXmlDoc();
            const success: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(XmlDocumentHelper, "toString", .{ Inheritance.receiver(self, "getDoc").getDoc() }));
            const result: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.callStatic(ContextTransformer, "create2", .{ Inheritance.fieldPointer(self, "abeClientInformation").*, Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface() }), "translate", .{ success }));
            return result;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("view"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

