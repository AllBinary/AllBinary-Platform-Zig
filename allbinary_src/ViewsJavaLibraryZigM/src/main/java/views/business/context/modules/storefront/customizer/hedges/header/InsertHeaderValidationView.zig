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
// package views.business.context.modules.storefront.customizer.hedges.header

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const StoreFrontFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontFactory.zig").StoreFrontFactory;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const MultipartRequestParams = @import("org/allbinary/logic/communication/http/request/MultipartRequestParams.zig").MultipartRequestParams;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ValidationComponentInterface = @import("org/allbinary/logic/control/validate/ValidationComponentInterface.zig").ValidationComponentInterface;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const HeadingValidation = @import("org/allbinary/logic/visual/transform/template/customizer/hedges/heading/HeadingValidation.zig").HeadingValidation;
const LogoData = @import("org/allbinary/logic/visual/transform/template/customizer/widgets/logo/LogoData.zig").LogoData;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const CustomizerUtil = @import("views/business/context/modules/storefront/customizer/CustomizerUtil.zig").CustomizerUtil;
const TopBarView = @import("views/business/context/modules/storefront/customizer/hedges/header/TopBarView.zig").TopBarView;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const InsertHeaderValidationView = struct {
    const Self = @This();
    pub const java_name = "views.business.context.modules.storefront.customizer.hedges.header.InsertHeaderValidationView";
    base: TopBarView = undefined,
    logUtil: ?*LogUtil = null,
    LOGOPATH: ?*String = null,
    // Implements ValidationComponentInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.LOGOPATH = String.literal("logo/");
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TopBarView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        const multipartRequestHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiver(Inheritance.callStatic(MultipartRequestParams, "create1", .{ Inheritance.receiver(this, "getPageContext").getPageContext() }), "toHashMap").toHashMap());
        const storeFrontInterface: ?*StoreFrontInterface = Inheritance.upcast(?*StoreFrontInterface, Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ Inheritance.receiverOf(Inheritance.receiver(this, "getWeblisketSession").getWeblisketSession().?, "getStoreName").getStoreName() }));
        const fullPath: ?*String = Inheritance.upcast(?*String, String.plus(URLGLOBALS.getWebappPath() + Inheritance.receiver(storeFrontInterface.?, "getCurrentHostNamePath").getCurrentHostNamePath(), this.LOGOPATH));
        _ = Inheritance.call(multipartRequestHashMap.?, "put", .{ LogoData.getInstance().?.IMAGEPATH, fullPath });
        Inheritance.fieldPointer(this, "heading").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "heading").*), Inheritance.callStatic(HeadingValidation, "create1", .{ multipartRequestHashMap }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn toXmlDoc(self: *Self) ?*Document {
        _ = self;
        return null;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("topbarValidation"), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
            }
            const isValid_: ?*Boolean = Inheritance.upcast(?*Boolean, Inheritance.receiverOf(Inheritance.fieldPointer(self, "heading").*.?, "isValid").isValid());
            if (Object.same(isValid_, Boolean.TRUE)) {
                _ = Inheritance.call(CustomizerUtil.getInstance().?, "insert", .{ Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface(), Inheritance.cast(?*DomNodeInterface, self) });
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
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "heading").*.?, "validationInfo").validationInfo() });
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

