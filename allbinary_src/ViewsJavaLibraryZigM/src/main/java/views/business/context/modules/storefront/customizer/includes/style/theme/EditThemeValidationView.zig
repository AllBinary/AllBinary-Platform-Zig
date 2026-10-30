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
// package views.business.context.modules.storefront.customizer.includes.style.theme

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CategoryFactoryInterface = @import("org/allbinary/business/category/CategoryFactoryInterface.zig").CategoryFactoryInterface;
const CategoryInterface = @import("org/allbinary/business/category/CategoryInterface.zig").CategoryInterface;
const StoreThemeCategoryFactory = @import("org/allbinary/business/category/store/theme/StoreThemeCategoryFactory.zig").StoreThemeCategoryFactory;
const StoreThemeCategoryInterface = @import("org/allbinary/business/category/store/theme/StoreThemeCategoryInterface.zig").StoreThemeCategoryInterface;
const StoreThemeCategoryPathValidationView = @import("org/allbinary/business/category/store/theme/StoreThemeCategoryPathValidationView.zig").StoreThemeCategoryPathValidationView;
const CategoryLoaderFactory = @import("org/allbinary/data/tree/category/CategoryLoaderFactory.zig").CategoryLoaderFactory;
const CategoryLoaderInterface = @import("org/allbinary/data/tree/category/CategoryLoaderInterface.zig").CategoryLoaderInterface;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const XmlDocumentHelper = @import("org/allbinary/data/tree/dom/document/XmlDocumentHelper.zig").XmlDocumentHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ValidationComponentInterface = @import("org/allbinary/logic/control/validate/ValidationComponentInterface.zig").ValidationComponentInterface;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const ThemeCustomizerView = @import("views/business/context/modules/storefront/customizer/includes/style/theme/ThemeCustomizerView.zig").ThemeCustomizerView;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const EditThemeValidationView = struct {
    const Self = @This();
    pub const java_name = "views.business.context.modules.storefront.customizer.includes.style.theme.EditThemeValidationView";
    base: ThemeCustomizerView = undefined,
    logUtil: ?*LogUtil = null,
    // Implements ValidationComponentInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ThemeCustomizerView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        { // try
            var isValid_: ?*Boolean = Inheritance.upcast(?*Boolean, Boolean.TRUE);
            const categoryFactoryInterface: ?*CategoryFactoryInterface = Inheritance.upcast(?*CategoryFactoryInterface, Inheritance.callStatic(StoreThemeCategoryFactory, "create1", .{ Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface() }));
            const categoryLoaderInterface: ?*CategoryLoaderInterface = Inheritance.upcast(?*CategoryLoaderInterface, Inheritance.callStatic(CategoryLoaderFactory, "getInstance", .{ categoryFactoryInterface }));
            const rootStoreThemeCategoryInterface: ?*StoreThemeCategoryInterface = Inheritance.cast(?*StoreThemeCategoryInterface, categoryFactoryInterface.?.getRootInstance());
            const storeThemeCategoryInterface: ?*StoreThemeCategoryInterface = Inheritance.cast(?*StoreThemeCategoryInterface, Inheritance.call(categoryLoaderInterface.?, "getAll", .{ Inheritance.cast(?*CategoryInterface, rootStoreThemeCategoryInterface) }));
            Inheritance.fieldPointer(self, "validationInterface").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "validationInterface").*), Inheritance.callStatic(StoreThemeCategoryPathValidationView, "create1", .{ Inheritance.cast(?*StoreThemeCategoryInterface, storeThemeCategoryInterface) }));
            isValid_ = Inheritance.upcast(@TypeOf(isValid_), Inheritance.receiverOf(Inheritance.fieldPointer(self, "validationInterface").*.?, "isValid").isValid());
            const domNodeInterface: ?*DomNodeInterface = Inheritance.cast(?*DomNodeInterface, Inheritance.fieldPointer(self, "validationInterface").*);
            const document: ?*Document = Inheritance.upcast(?*Document, DomDocumentHelper.create());
            _ = Inheritance.call(document.?, "appendChild", .{ Inheritance.call(domNodeInterface.?, "toXmlNode", .{ document }) });
            const documentString: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(XmlDocumentHelper, "toString", .{ document }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Setting Data: "), documentString), self, Inheritance.fieldPointer(self, "commonStrings").*.?.CONSTRUCTOR });
            }
            _ = Inheritance.call(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "setData", .{ documentString });
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
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "validationInterface").*.?, "validationInfo").validationInfo() });
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

