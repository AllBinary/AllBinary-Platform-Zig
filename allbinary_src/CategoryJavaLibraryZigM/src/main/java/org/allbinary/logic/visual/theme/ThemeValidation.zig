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
// package org.allbinary.logic.visual.theme

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const CategoryData = @import("org/allbinary/business/category/CategoryData.zig").CategoryData;
const CategoryFactoryInterface = @import("org/allbinary/business/category/CategoryFactoryInterface.zig").CategoryFactoryInterface;
const StoreThemeCategoryFactory = @import("org/allbinary/business/category/store/theme/StoreThemeCategoryFactory.zig").StoreThemeCategoryFactory;
const StoreThemeCategoryInterface = @import("org/allbinary/business/category/store/theme/StoreThemeCategoryInterface.zig").StoreThemeCategoryInterface;
const CategoryLoaderFactory = @import("org/allbinary/data/tree/category/CategoryLoaderFactory.zig").CategoryLoaderFactory;
const CategoryLoaderInterface = @import("org/allbinary/data/tree/category/CategoryLoaderInterface.zig").CategoryLoaderInterface;
const DomData = @import("org/allbinary/data/tree/dom/DomData.zig").DomData;
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbSqlData = @import("org/allbinary/logic/communication/sql/AbSqlData.zig").AbSqlData;
const CryptFileReader = @import("org/allbinary/logic/control/crypt/file/CryptFileReader.zig").CryptFileReader;
const ValidationInterface = @import("org/allbinary/logic/control/validate/ValidationInterface.zig").ValidationInterface;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const PathUtil = @import("org/allbinary/logic/io/path/PathUtil.zig").PathUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const CompositeTransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/CompositeTransformInfoInterface.zig").CompositeTransformInfoInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const CssStyleValidation = @import("org/allbinary/logic/visual/transform/template/customizer/includes/style/css/template/retail/CssStyleValidation.zig").CssStyleValidation;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const ThemeData = @import("org/allbinary/logic/visual/theme/ThemeData.zig").ThemeData;
const ThemeInterface = @import("org/allbinary/logic/visual/theme/ThemeInterface.zig").ThemeInterface;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const ThemeValidation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.theme.ThemeValidation";
    pub const java_interfaces = .{ ThemeInterface };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    transformInfoInterface: ?*TransformInfoInterface = null,
    styleValidationInterface: ?*ValidationInterface = null,
    themeName: ?*String = null,
    themePreviewImageName: ?*String = null,
    webAppAbPath: ?*AbPath = null,
    categoryAbPath: ?*AbPath = null,
    fileAbPath: ?*AbPath = null,
    // Implements ThemeInterface
    // Implements ValidationInterface
    // Implements DomNodeInterface
    // Implements CompositeTransformInfoInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        
        
        
        
        
        this.fileAbPath = null;
    }
    

    pub fn create3(transformInfoInterface: ?*TransformInfoInterface, cssStyleValidation: ?*CssStyleValidation, categoryThemePath: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.transformInfoInterface = transformInfoInterface;
        const pathData: ?*AbPathData = Inheritance.upcast(?*AbPathData, AbPathData.getInstance());
        const pathUtil: ?*PathUtil = Inheritance.upcast(?*PathUtil, PathUtil.getInstance());
        this.categoryAbPath = Inheritance.upcast(@TypeOf(this.categoryAbPath), Inheritance.call(pathUtil.?, "removeNameFromPath", .{ categoryThemePath }));
        this.themeName = Inheritance.upcast(@TypeOf(this.themeName), Inheritance.call(pathData.?, "getNameFromPath", .{ categoryThemePath }));
        this.styleValidationInterface = Inheritance.upcast(@TypeOf(this.styleValidationInterface), cssStyleValidation);
        _ = this.init();
        return this;
    }
    

    pub fn create2(transformInfoInterface: ?*TransformInfoInterface, hashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.transformInfoInterface = transformInfoInterface;
        const categoryThemeAbPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ ThemeData.getInstance().?.PATH })), StringUtil.getInstance().?.EMPTY_STRING });
        const pathData: ?*AbPathData = Inheritance.upcast(?*AbPathData, AbPathData.getInstance());
        const pathUtil: ?*PathUtil = Inheritance.upcast(?*PathUtil, PathUtil.getInstance());
        this.categoryAbPath = Inheritance.upcast(@TypeOf(this.categoryAbPath), Inheritance.call(pathUtil.?, "removeNameFromPath", .{ Object.toString(Object.of(categoryThemeAbPath)) }));
        this.themeName = Inheritance.upcast(@TypeOf(this.themeName), Inheritance.call(pathData.?, "getNameFromPath", .{ Object.toString(Object.of(categoryThemeAbPath)) }));
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("CategoryThemePath: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(categoryThemeAbPath)) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" & CategoryPath: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(this.categoryAbPath)) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" & ThemeName: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ this.themeName });
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.literal("Http Request Constructor"), this, Object.toString(Object.of(stringBuffer)) });
        }
        _ = this.init();
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create2(storeThemeCategoryInterface: ?*StoreThemeCategoryInterface, node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.transformInfoInterface = Inheritance.upcast(@TypeOf(this.transformInfoInterface), Inheritance.receiver(storeThemeCategoryInterface.?, "getTransformInfoInterface").getTransformInfoInterface());
        this.categoryAbPath = Inheritance.upcast(@TypeOf(this.categoryAbPath), Inheritance.receiver(storeThemeCategoryInterface.?, "getPath").getPath());
        const themeNameNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ ThemeData.getInstance().?.NAME, node.?.getChildNodes() }));
        const valueNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ DomData.VALUE, themeNameNode.?.getChildNodes() }));
        this.themeName = Inheritance.upcast(@TypeOf(this.themeName), Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ valueNode }));
        const previewImageNameNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ ThemeData.getInstance().?.PREVIEW_IMAGE_NAME, node.?.getChildNodes() }));
        const previewImageNameValueNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ DomData.VALUE, previewImageNameNode.?.getChildNodes() }));
        this.themePreviewImageName = Inheritance.upcast(@TypeOf(this.themePreviewImageName), Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ previewImageNameValueNode }));
        this.webAppAbPath = Inheritance.upcast(@TypeOf(this.webAppAbPath), Inheritance.receiver(storeThemeCategoryInterface.?, "getWebAppPath").getWebAppPath());
        _ = Inheritance.call(this, "init", .{ storeThemeCategoryInterface });
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self) void {
        const categoryFactoryInterface: ?*CategoryFactoryInterface = Inheritance.upcast(?*CategoryFactoryInterface, Inheritance.callStatic(StoreThemeCategoryFactory, "create1", .{ self.getTransformInfoInterface() }));
        const categoryLoaderInterface: ?*CategoryLoaderInterface = Inheritance.upcast(?*CategoryLoaderInterface, Inheritance.callStatic(CategoryLoaderFactory, "getInstance", .{ categoryFactoryInterface })); _ = categoryLoaderInterface;
        const rootStoreThemeCategoryInterface: ?*StoreThemeCategoryInterface = Inheritance.cast(?*StoreThemeCategoryInterface, categoryFactoryInterface.?.getRootInstance());
        _ = Inheritance.call(self, "init", .{ rootStoreThemeCategoryInterface });
    }
    

    // throws Exception
    pub fn init1(self: *Self, storeThemeCategoryInterface: ?*StoreThemeCategoryInterface) void {
        self.fileAbPath = Inheritance.callStatic(AbPath, "create2", .{ String.plus(Object.toString(Object.of(Inheritance.receiver(storeThemeCategoryInterface.?, "getRootFilePath").getRootFilePath())), Object.toString(Object.of(self.categoryAbPath))), StringUtil.getInstance().?.EMPTY_STRING });
        self.webAppAbPath = Inheritance.upcast(@TypeOf(self.webAppAbPath), Inheritance.receiver(storeThemeCategoryInterface.?, "getWebAppPath").getWebAppPath());
    }
    

    // throws Exception
    pub fn getTransformInfoInterface(self: *Self) ?*TransformInfoInterface {
        return self.transformInfoInterface;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.themeName;
    }
    

    pub fn getPreviewImageName(self: *Self) ?*String {
        return self.themePreviewImageName;
    }
    

    pub fn getPreviewImagePath(self: *Self) ?*String {
        return Inheritance.upcast(?*String, String.plus(Object.toString(Object.of(self.webAppAbPath)), Object.toString(Object.of(self.categoryAbPath))));
    }
    

    pub fn getPath(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(self.categoryAbPath)));
    }
    

    // throws Exception
    pub fn getCssStyleValidation(self: *Self) ?*CssStyleValidation {
        if (self.styleValidationInterface == null) {
            const cssStyleFileAbPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ Object.toString(Object.of(self.fileAbPath)), String.plus(String.plus(self.themeName, AbPathData.getInstance().?.EXTENSION_SEP), CategoryData.getInstance().?.UNCRYPTED_EXTENSION) });
            const cryptFileReader: ?*CryptFileReader = Inheritance.callStatic(CryptFileReader, "create2", .{ CategoryData.getInstance().?.UNCRYPTED_EXTENSION, CategoryData.getInstance().?.ENCRYPTED_EXTENSION });
            const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.callStatic(DomDocumentHelper, "create", .{ Inheritance.call(cryptFileReader.?, "get", .{ cssStyleFileAbPath }) }));
            self.styleValidationInterface = Inheritance.upcast(@TypeOf(self.styleValidationInterface), Inheritance.callStatic(CssStyleValidation, "create1", .{ document }));
        }
        return Inheritance.cast(?*CssStyleValidation, self.styleValidationInterface);
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        { // try
            var isValid_: ?*Boolean = Inheritance.upcast(?*Boolean, Boolean.TRUE);
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.commonStrings.?.IS_VALID });
            }
            if (!Inheritance.call(StringValidationUtil.getInstance().?, "isValidRequired", .{ Object.toString(Object.of(self.categoryAbPath)), AbSqlData.MINSTRING, AbSqlData.MAXSTRING })) {
                isValid_ = Inheritance.upcast(@TypeOf(isValid_), Boolean.FALSE);
            }
            if (!Inheritance.call(StringValidationUtil.getInstance().?, "isValidRequired", .{ self.themeName, AbSqlData.MINSTRING, AbSqlData.MAXSTRING })) {
                isValid_ = Inheritance.upcast(@TypeOf(isValid_), Boolean.FALSE);
            }
            if (!Inheritance.receiverOf(Inheritance.receiverOf(self.getCssStyleValidation().?, "isValid").isValid().?, "booleanValue").booleanValue()) {
                isValid_ = Inheritance.upcast(@TypeOf(isValid_), Boolean.FALSE);
            }
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("End: "), isValid_), self, self.commonStrings.?.IS_VALID });
            }
            return isValid_;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to validate form"), self, self.commonStrings.?.IS_VALID, e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        _ = self;
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Theme Validation Error") });
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to generate validation error info"), self, String.literal("validationInfo()"), e });
//             }
//             return String.literal("Error Validating Form");
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
    

    pub fn getKey(self: *Self) ?Object {
        return Inheritance.cast(?Object, self.getName());
    }
    

    pub fn toVector(self: *Self) ?*BasicArrayList {
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(vector.?, "add", .{ self.getName() });
        _ = Inheritance.call(vector.?, "add", .{ self.getPath() });
        _ = Inheritance.call(vector.?, "add", .{ self.getPreviewImageName() });
        _ = Inheritance.call(vector.?, "add", .{ self.getPreviewImagePath() });
        return vector;
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const themeData: ?*ThemeData = Inheritance.upcast(?*ThemeData, ThemeData.getInstance());
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ themeData.?.NAME, self.getName() });
        _ = Inheritance.call(hashMap.?, "put", .{ themeData.?.PATH, self.getPath() });
        _ = Inheritance.call(hashMap.?, "put", .{ themeData.?.PREVIEW_IMAGE_NAME, self.getPreviewImageName() });
        _ = Inheritance.call(hashMap.?, "put", .{ themeData.?.PREVIEW_IMAGE_PATH, self.getPreviewImagePath() });
        return hashMap;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, ThemeData.getInstance().?.NAME, self.toHashMap() }));
        const domNodeInterface: ?*DomNodeInterface = Inheritance.cast(?*DomNodeInterface, self.getCssStyleValidation());
        _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(domNodeInterface.?, "toXmlNode", .{ document }) });
        return node;
    }
};

